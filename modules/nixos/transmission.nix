{
  # Transmission service
  # Downloads in /var/lib/transmission/Downloads
  services.transmission = {
    enable = true;
    settings = {
      # The RPC is the web interface to communicate with transmission.
      rpc-whitelist = "127.0.0.1,::1"; # Only allow connections from localhost.
      rpc-host-whitelist = "127.0.0.1,::1"; # Only connect to localhost.
      rpc-user = "adrian";
      rpc-username = "";
      rpc-password = "";

      start-added-torrents =
        true; # Start torrents as soon as they are added.
      encryption =
        1; # 0 - prefer unencrypted, 1 - prefer encrypted, 2 - require encrypted.
      lpd-enabled = true; # Local Peer Discovery

      port-forwarding-enabled = false;
      upload-slots-per-torrent = 8;

      download-queue-enabled =
        true; # Only download a maximum of 3 torrents at once.
      download-queue-size = 3;

      queue-stalled-enabled =
        true; # If a torrent has not shared data for 8 minutes, do not count it for the queue limits.
      queue-stalled-minutes = 8;

      seed-queue-enabled =
        false; # Don't limit the amount of torrents that can be seeded at once.
    };
  };

}
