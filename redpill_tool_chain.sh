{
    "docker": {
        "use_buildkit": "true",
        "image_name": "redpill-tool-chain",
        "download_folder": "docker/downloads",
        "local_rp_lkm_use": "false",
        "local_rp_lkm_path": "./redpill-lkm",
        "local_rp_load_use": "false",
        "local_rp_load_path": "./redpill-load",
        "auto_clean": "false",
        "use_build_cache": "false",
        "clean_images": "all",
        "use_custom_bind_mounts": "false",
        "custom_bind_mounts": [
            {
                "host_path": "change_me",
                "container_path" :"/change_me"
            }
        ]
    },
    "build_configs": [
        {
            "id": "bromolow-6.2.4-25556",
            "platform_version": "bromolow-6.2.4-25556",
            "user_config_json": "bromolow_user_config.json",
            "docker_base_image": "debian:8-slim",
            "compile_with": "kernel",
            "redpill_lkm_make_target": "dev-v6",
            "downloads": {
                "kernel": {
                    "url": "https://sourceforge.net/projects/dsgpl/files/Synology%20NAS%20GPL%20Source/25426branch/bromolow-source/linux-3.10.x.txz/download",
                    "sha256": "18aecead760526d652a731121d5b8eae5d6e45087efede0da057413af0b489ed"
                },
                "toolkit_dev": {
                    "url": "https://sourceforge.net/projects/dsgpl/files/toolkit/DSM6.2/ds.bromolow-6.2.dev.txz/download",
                    "sha256": "7a0f0ec5919cd67b9972a21f234603c0e608d647baff067029bd46d8a5d660de"
                }
            },
            "redpill_lkm": {
                "source_url": "https://github.com/RedPill-TTG/redpill-lkm.git",
                "branch": "master"
            },
            "redpill_load": {
                "source_url": "https://github.com/RedPill-TTG/redpill-load.git",
                "branch": "master"
            }
        },
        {
            "id": "bromolow-7.0-41222",
            "platform_version": "bromolow-7.0-41222",
            "user_config_json": "bromolow_user_config.json",
            "docker_base_image": "debian:8-slim",
            "compile_with": "toolkit_dev",
            "redpill_lkm_make_target": "dev-v7",
            "downloads": {
                "kernel": {
                    "url": "https://sourceforge.net/projects/dsgpl/files/Synology%20NAS%20GPL%20Source/25426branch/bromolow-source/linux-3.10.x.txz/download",
                    "sha256": "18aecead760526d652a731121d5b8eae5d6e45087efede0da057413af0b489ed"
                },
                "toolkit_dev": {
                    "url": "https://sourceforge.net/projects/dsgpl/files/toolkit/DSM7.0/ds.bromolow-7.0.dev.txz/download",
                    "sha256": "a5fbc3019ae8787988c2e64191549bfc665a5a9a4cdddb5ee44c10a48ff96cdd"
                }
            },
            "redpill_lkm": {
                "source_url": "https://github.com/RedPill-TTG/redpill-lkm.git",
                "branch": "master"
            },
            "redpill_load": {
                "source_url": "https://github.com/RedPill-TTG/redpill-load.git",
                "branch": "master"
            }
        },
        {
            "id": "bromolow-7.0.1-42218",
            "platform_version": "bromolow-7.0.1-42218",
            "user_config_json": "bromolow_user_config.json",
            "docker_base_image": "debian:8-slim",
            "compile_with": "toolkit_dev",
            "redpill_lkm_make_target": "prod-v7",
            "downloads": {
                "kernel": {
                    "url": "https://sourceforge.net/projects/dsgpl/files/Synology%20NAS%20GPL%20Source/25426branch/bromolow-source/linux-4.4.x.txz/download",
                    "sha256": "af815ee065775d2e569fd7176e25c8ba7ee17a03361557975c8e5a4b64230c5b"
                },
                "toolkit_dev": {
                    "url": "https://sourceforge.net/projects/dsgpl/files/toolkit/DSM7.0/ds.bromolow-7.0.dev.txz/download",
                    "sha256": "a5fbc3019ae8787988c2e64191549bfc665a5a9a4cdddb5ee44c10a48ff96cdd"
                }
            },
            "redpill_lkm": {
                "source_url": "https://github.com/RedPill-TTG/redpill-lkm.git",
                "branch": "master"
            },
            "redpill_load": {
                "source_url": "https://github.com/jumkey/redpill-load.git",
                "branch": "develop"
            }
        },
        {
            "id": "apollolake-6.2.4-25556",
            "platform_version": "apollolake-6.2.4-25556",
            "user_config_json": "apollolake_user_config.json",
            "docker_base_image": "debian:8-slim",
            "compile_with": "kernel",
            "redpill_lkm_make_target": "dev-v6",
            "downloads": {
                "kernel": {
                    "url": "https://sourceforge.net/projects/dsgpl/files/Synology%20NAS%20GPL%20Source/25426branch/apollolake-source/linux-4.4.x.txz/download",
                    "sha256": "af815ee065775d2e569fd7176e25c8ba7ee17a03361557975c8e5a4b64230c5b"
                },
                "toolkit_dev": {
                    "url": "https://sourceforge.net/projects/dsgpl/files/toolkit/DSM6.2/ds.apollolake-6.2.dev.txz/download",
                    "sha256": "4ed228ed21e4190f1ad77a565616409ea1bfb9d271dbf523c636c62c2e8dcf89"
                }
            },
            "redpill_lkm": {
                "source_url": "https://github.com/RedPill-TTG/redpill-lkm.git",
                "branch": "master"
            },
            "redpill_load": {
                "source_url": "https://github.com/RedPill-TTG/redpill-load.git",
                "branch": "master"
            }
        },
        {
            "id": "apollolake-7.0-41890",
            "platform_version": "apollolake-7.0-41890",
            "user_config_json": "apollolake_user_config.json",
            "docker_base_image": "debian:10-slim",
            "compile_with": "toolkit_dev",
            "redpill_lkm_make_target": "dev-v7",
            "downloads": {
                "kernel": {
                    "url": "https://sourceforge.net/projects/dsgpl/files/Synology%20NAS%20GPL%20Source/25426branch/apollolake-source/linux-4.4.x.txz/download",
                    "sha256": "af815ee065775d2e569fd7176e25c8ba7ee17a03361557975c8e5a4b64230c5b"
                },
                "toolkit_dev": {
                    "url": "https://sourceforge.net/projects/dsgpl/files/toolkit/DSM7.0/ds.apollolake-7.0.dev.txz/download",
                    "sha256": "d349fa644392d4cfab8191243ee38aaa32bd517208c144678e0c855cb5a619ea"
                }
            },
            "redpill_lkm": {
                "source_url": "https://github.com/RedPill-TTG/redpill-lkm.git",
                "branch": "master"
            },
            "redpill_load": {
                "source_url": "https://github.com/RedPill-TTG/redpill-load.git",
                "branch": "master"
            }
        },
        {
            "id": "apollolake-7.0.1-42218",
            "platform_version": "apollolake-7.0.1-42218",
            "user_config_json": "apollolake_user_config.json",
            "docker_base_image": "debian:10-slim",
            "compile_with": "toolkit_dev",
            "redpill_lkm_make_target": "prod-v7",
            "downloads": {
                "kernel": {
                    "url": "https://sourceforge.net/projects/dsgpl/files/Synology%20NAS%20GPL%20Source/25426branch/apollolake-source/linux-4.4.x.txz/download",
                    "sha256": "af815ee065775d2e569fd7176e25c8ba7ee17a03361557975c8e5a4b64230c5b"
                },
                "toolkit_dev": {
                    "url": "https://sourceforge.net/projects/dsgpl/files/toolkit/DSM7.0/ds.apollolake-7.0.dev.txz/download",
                    "sha256": "d349fa644392d4cfab8191243ee38aaa32bd517208c144678e0c855cb5a619ea"
                }
            },
            "redpill_lkm": {
                "source_url": "https://github.com/RedPill-TTG/redpill-lkm.git",
                "branch": "master"
            },
            "redpill_load": {
                "source_url": "https://github.com/jumkey/redpill-load.git",
                "branch": "develop"
            }
        } 
    ]
}
