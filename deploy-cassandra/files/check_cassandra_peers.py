
from cassandra.cluster import Cluster
import time


if __name__ == "__main__":
    cluster = Cluster()
    # Wait for cluster setup. Session connect will fail NoHostAvailable.
    time.sleep(20)
    session = cluster.connect()
    print(session.execute("SELECT peer, rack, host_id FROM system.peers").all())
    session.shutdown()

