Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C37C5A0212A
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jan 2025 09:51:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 597AB10E5CA;
	Mon,  6 Jan 2025 08:51:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="cweR7nCi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D14C210E5C6
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jan 2025 08:51:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1736153484;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=098p1xYBch/Q4n19SdwF3mHoEwwVBvhF2FE8ZcaNpDQ=;
 b=cweR7nCiJE+u+oxFoKstnQKN/v2cAPHaz9JCpvVAQwaHRbWAC09pzEzTr3ufqYcJQxbos5
 d94IebqWGylctgLjM7kP3HLdkv5RSQwIdPOK/MrKopOL/ZVZI7N5XpZ9IMatRzfLglpsV1
 Uojx7PC4o9zlcHH5Vl5OQl4RjY+Hd1U=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-275-eF5cYHJUPmGrvqhcPW0G-g-1; Mon, 06 Jan 2025 03:51:21 -0500
X-MC-Unique: eF5cYHJUPmGrvqhcPW0G-g-1
X-Mimecast-MFC-AGG-ID: eF5cYHJUPmGrvqhcPW0G-g
Received: by mail-wm1-f70.google.com with SMTP id
 5b1f17b1804b1-4361ac607b6so112611695e9.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 06 Jan 2025 00:51:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736153480; x=1736758280;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=098p1xYBch/Q4n19SdwF3mHoEwwVBvhF2FE8ZcaNpDQ=;
 b=da6vppqLzc6YoLIhRKIDhjbu95nQWGPGmkaRKzKXl4f8Jd/7YPD1jkFUoMr4AhmMiQ
 fQYfBRtVfT/X1enuSSnASVogs3p7Lc757stPxfv8c98OgTspNaQtG+x49whzs95DcskQ
 AtbxIQrXRu6CtKHgOHfJflRWVNNaGFk3LPDSKT983aR0+EBlP9zK0VWrPfVCHOs0MA1K
 aqCXcgu/nEvH6BELz8X98R/jXAnCKg2JOf6JbFKcKu4oPXi42phUz9cUx8KlcL+iSqBA
 MM1OTypSHHHEAeBcGLme5tjGA0nfxBTfMRvLx7ArwxBDPcWREuOQrUojEiQhQvsvMZad
 MgOg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXOmyPNpxChnJUjEhdFa0B/3/yrNUzQFXMdF3K0SC8+2ll2/iC2dGYBXwYjGf3JU+7nCKo/L4aGWuw=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxfXEjKeDKmbMWb7VCn1fVcKMKhiuhQAMKTGTxPV2Dp5i2qEK31
 7gsX+P7v2u9LIG4zvJBG+CTpOQ+wUwbknhYULIRtsEHsDuYFi/ebtJ3Wvc1PdIerIRr4crXGIk4
 OLYwyG3Nxtw3Q/w9PZRKXQ+zjHDwDn4fqamvw8Hx48LCIhHpsZvFN/uwnRIh1hortDQ==
X-Gm-Gg: ASbGncuEQYKAgAAEgqXxz9QbTDvky4Mhcn7uKdyQj3vLXUFOxnUdh7CDC6yPiyPpDlf
 yHwQnABh03OzXU1l3D17CV1T5ZJexojwzyPK8QsDaxjq+1c/prvxldoBt75F1Yy9Zltx8wplII+
 Tn3Y2C6gcPPv9qrsTWV4RWRIZ2vl7mBjWXgNQVWuBIWA2K0M9ziV0e+VqCtINYfXZs79N6e3ofn
 7YNTsdIAvIqFTmafPNWjm3Q98zBv1Rs
X-Received: by 2002:a05:600c:3b20:b0:434:9df4:5485 with SMTP id
 5b1f17b1804b1-43668b76ae9mr424281705e9.32.1736153479896; 
 Mon, 06 Jan 2025 00:51:19 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHI6dbY0ZU/ixtznukD4L7Xl7l/N53yDcvbHdTXuZzsN4F1ae4y50pg46prSiKljOCD404rlw==
X-Received: by 2002:a05:600c:3b20:b0:434:9df4:5485 with SMTP id
 5b1f17b1804b1-43668b76ae9mr424281435e9.32.1736153479413; 
 Mon, 06 Jan 2025 00:51:19 -0800 (PST)
Received: from localhost ([2a01:e0a:b25:f902::ff])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-436604e9c2csm562170745e9.43.2025.01.06.00.51.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Jan 2025 00:51:18 -0800 (PST)
Date: Mon, 6 Jan 2025 09:51:18 +0100
From: Maxime Ripard <mripard@redhat.com>
To: Dave Airlie <airlied@gmail.com>, 
	Simona Vetter <simona.vetter@ffwll.ch>
Cc: Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, 
 Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Oded Gabbay <ogabbay@kernel.org>, 
 Lucas De Marchi <lucas.demarchi@intel.com>, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, dim-tools@lists.freedesktop.org
Subject: [PULL] drm-misc-next
Message-ID: <20250106-augmented-kakapo-of-action-0cf000@houat>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha384;
 protocol="application/pgp-signature"; boundary="xzt4fwkreukgcxyv"
Content-Disposition: inline
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--xzt4fwkreukgcxyv
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: [PULL] drm-misc-next
MIME-Version: 1.0

Hi,

Here's the (last, probably) drm-misc-next PR that covers what has been
merged during the holidays season.

Maxime

drm-misc-next-2025-01-06:
drm-misc-next for 6.14:

UAPI Changes:
- Clarify drm memory stats documentation

Cross-subsystem Changes:

Core Changes:
 - sched: Documentation fixes,

Driver Changes:
 - amdgpu: Track BO memory stats at runtime
 - amdxdna: Various fixes
 - hisilicon: New HIBMC driver
 - bridges:
   - Provide default implementation of atomic_check for HDMI bridges
   - it605: HDCP improvements, MCCS Support
The following changes since commit 1e93f594285faef57651a0c89f61a7d976db7def:

  drm/bridge: synopsys: Fix Copyright Writing Style of dw-hdmi-qp (2024-12-19 11:09:35 +0100)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/misc/kernel.git tags/drm-misc-next-2025-01-06

for you to fetch changes up to 938fbb16aba8f7b88e0fdcf56f315a5bbad41aad:

  drm/rockchip: vop2: Support 32x8 superblock afbc (2025-01-05 17:00:06 +0100)

----------------------------------------------------------------
drm-misc-next for 6.14:

UAPI Changes:
- Clarify drm memory stats documentation

Cross-subsystem Changes:

Core Changes:
 - sched: Documentation fixes,

Driver Changes:
 - amdgpu: Track BO memory stats at runtime
 - amdxdna: Various fixes
 - hisilicon: New HIBMC driver
 - bridges:
   - Provide default implementation of atomic_check for HDMI bridges
   - it605: HDCP improvements, MCCS Support

----------------------------------------------------------------
Ahmad Fatoum (3):
      dt-bindings: vendor-prefixes: add prefix for Topland Electronics (H.K)
      dt-bindings: display: panel-simple: Document Topland TIAN-G07017-01
      drm: panel-simple: support TOPLAND TIAN G07017 LCD panel

Andy Yan (1):
      drm/rockchip: vop2: Support 32x8 superblock afbc

Bagas Sanjaya (1):
      drm/sched: Fix drm_sched_fini() docu generation

Baihan Li (5):
      drm/hisilicon/hibmc: add dp aux in hibmc drivers
      drm/hisilicon/hibmc: add dp link moduel in hibmc drivers
      drm/hisilicon/hibmc: add dp hw moduel in hibmc driver
      drm/hisilicon/hibmc: refactored struct hibmc_drm_private
      drm/hisilicon/hibmc: add dp module in hibmc

Dmitry Baryshkov (14):
      drm/display: bridge_connector: provide atomic_check for HDMI bridges
      drm/bridge: ite-it6263: drop atomic_check() callback
      drm/bridge: lontium-lt9611: drop atomic_check() callback
      drm/bridge: dw-hdmi-qp: drop atomic_check() callback
      ASoC: hdmi-codec: pass data to get_dai_id too
      ASoC: hdmi-codec: move no_capture_mute to struct hdmi_codec_pdata
      drm/connector: implement generic HDMI audio helpers
      drm/bridge: connector: add support for HDMI codec framework
      drm/bridge: lt9611: switch to using the DRM HDMI codec framework
      drm/display/hdmi: implement hotplug functions
      drm/bridge_connector: hook drm_atomic_helper_connector_hdmi_hotplug()
      drm/vc4: hdmi: switch to using generic HDMI Codec infrastructure
      drm/vc4: hdmi: stop rereading EDID in get_modes()
      drm/vc4: hdmi: use drm_atomic_helper_connector_hdmi_hotplug()

Hermes Wu (10):
      drm/bridge: it6505: Change definition of AUX_FIFO_MAX_SIZE
      drm/bridge: it6505: improve AUX operation for edid read
      drm/bridge: it6505: add AUX operation for HDCP KSV list read
      drm/bridge: it6505: Change definition MAX_HDCP_DOWN_STREAM_COUNT
      drm/bridge: it6505: fix HDCP Bstatus check
      drm/bridge: it6505: fix HDCP encryption when R0 ready
      drm/bridge: it6505: fix HDCP CTS KSV list read with UNIGRAF DPR-100.
      drm/bridge: it6505: fix HDCP CTS compare V matching
      drm/bridge: it6505: fix HDCP CTS KSV list wait timer
      drm/bridge: it6505: add I2C functionality on AUX

Linus Walleij (1):
      MAINTAINERS: Assume maintainership of PL111

Lizhi Hou (7):
      accel/amdxdna: Declare npu device profile as static variables
      accel/amdxdna: Declare mailbox register base as __iomem pointer
      accel/amdxdna: Declare aie2_max_col as static
      accel/amdxdna: Use rcu_access_pointer for __rcu pointer
      accel/amdxdna: Declare force_cmdlist as static
      accel/amdxdna: Add __user to second parameter of aie2_query_status
      accel/amdxdna: Declare npu6_dev_priv as static

Rob Herring (Arm) (1):
      drm: Use of_property_present() for non-boolean properties

Xin Ji (1):
      drm/bridge:anx7625: Update HDCP content status

Yunxiang Li (5):
      drm: add drm_memory_stats_is_zero
      drm: make drm-active- stats optional
      Documentation/gpu: Clarify drm memory stats definition
      drm/amdgpu: remove unused function parameter
      drm/amdgpu: track bo memory stats at runtime

 .../bindings/display/panel/panel-simple.yaml       |   2 +
 .../devicetree/bindings/vendor-prefixes.yaml       |   2 +
 Documentation/gpu/drm-usage-stats.rst              |  54 ++--
 MAINTAINERS                                        |   3 +-
 drivers/accel/amdxdna/aie2_ctx.c                   |   2 +-
 drivers/accel/amdxdna/aie2_pci.c                   |   6 +-
 drivers/accel/amdxdna/aie2_pci.h                   |   2 +-
 drivers/accel/amdxdna/amdxdna_mailbox.c            |  24 +-
 drivers/accel/amdxdna/amdxdna_mailbox.h            |   4 +-
 drivers/accel/amdxdna/amdxdna_pci_drv.c            |   2 +-
 drivers/accel/amdxdna/npu1_regs.c                  |   2 +-
 drivers/accel/amdxdna/npu2_regs.c                  |   2 +-
 drivers/accel/amdxdna/npu4_regs.c                  |   2 +-
 drivers/accel/amdxdna/npu5_regs.c                  |   2 +-
 drivers/accel/amdxdna/npu6_regs.c                  |   2 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c             |   4 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_dma_buf.c        |   5 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_fdinfo.c         |  17 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c            |   6 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_object.c         | 111 +++----
 drivers/gpu/drm/amd/amdgpu/amdgpu_object.h         |   4 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.h            |   4 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c             | 209 ++++++++++---
 drivers/gpu/drm/amd/amdgpu/amdgpu_vm.h             |  26 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_vm_pt.c          |   1 +
 drivers/gpu/drm/bridge/adv7511/adv7511_audio.c     |   3 +-
 drivers/gpu/drm/bridge/analogix/anx7625.c          |  76 ++---
 drivers/gpu/drm/bridge/ite-it6263.c                |  10 -
 drivers/gpu/drm/bridge/ite-it6505.c                | 335 +++++++++++++++++----
 drivers/gpu/drm/bridge/ite-it66121.c               |   4 +-
 drivers/gpu/drm/bridge/lontium-lt9611.c            | 179 +++++------
 drivers/gpu/drm/bridge/lontium-lt9611uxc.c         |   3 +-
 drivers/gpu/drm/bridge/sii902x.c                   |   7 +-
 .../gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c    |   3 +-
 drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c       |  17 --
 drivers/gpu/drm/display/Kconfig                    |   8 +
 drivers/gpu/drm/display/Makefile                   |   2 +
 drivers/gpu/drm/display/drm_bridge_connector.c     | 151 +++++++++-
 drivers/gpu/drm/display/drm_hdmi_audio_helper.c    | 190 ++++++++++++
 drivers/gpu/drm/display/drm_hdmi_state_helper.c    |  57 ++++
 drivers/gpu/drm/drm_connector.c                    |   5 +
 drivers/gpu/drm/drm_file.c                         |  23 +-
 drivers/gpu/drm/drm_panel.c                        |   2 +-
 drivers/gpu/drm/exynos/exynos_hdmi.c               |   2 +-
 drivers/gpu/drm/hisilicon/hibmc/Makefile           |   3 +-
 drivers/gpu/drm/hisilicon/hibmc/dp/dp_aux.c        | 164 ++++++++++
 drivers/gpu/drm/hisilicon/hibmc/dp/dp_comm.h       |  63 ++++
 drivers/gpu/drm/hisilicon/hibmc/dp/dp_config.h     |  19 ++
 drivers/gpu/drm/hisilicon/hibmc/dp/dp_hw.c         | 220 ++++++++++++++
 drivers/gpu/drm/hisilicon/hibmc/dp/dp_hw.h         |  28 ++
 drivers/gpu/drm/hisilicon/hibmc/dp/dp_link.c       | 332 ++++++++++++++++++++
 drivers/gpu/drm/hisilicon/hibmc/dp/dp_reg.h        |  76 +++++
 drivers/gpu/drm/hisilicon/hibmc/hibmc_drm_dp.c     | 118 ++++++++
 drivers/gpu/drm/hisilicon/hibmc/hibmc_drm_drv.c    |  14 +
 drivers/gpu/drm/hisilicon/hibmc/hibmc_drm_drv.h    |  19 +-
 drivers/gpu/drm/hisilicon/hibmc/hibmc_drm_i2c.c    |  37 ++-
 drivers/gpu/drm/hisilicon/hibmc/hibmc_drm_vdac.c   |  20 +-
 drivers/gpu/drm/i2c/tda998x_drv.c                  |   2 +-
 drivers/gpu/drm/i915/i915_drm_client.c             |   1 +
 drivers/gpu/drm/mediatek/mtk_dp.c                  |   2 +-
 drivers/gpu/drm/mediatek/mtk_hdmi.c                |   2 +-
 drivers/gpu/drm/msm/dsi/dsi_host.c                 |   2 +-
 drivers/gpu/drm/panel/panel-simple.c               |  34 +++
 drivers/gpu/drm/rockchip/cdn-dp-core.c             |   2 +-
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c       |  17 +-
 drivers/gpu/drm/scheduler/sched_main.c             |   3 +-
 drivers/gpu/drm/sti/sti_hdmi.c                     |   2 +-
 drivers/gpu/drm/vc4/Kconfig                        |   1 +
 drivers/gpu/drm/vc4/vc4_hdmi.c                     | 104 ++-----
 drivers/gpu/drm/vc4/vc4_hdmi.h                     |   2 -
 drivers/gpu/drm/xe/xe_drm_client.c                 |   1 +
 include/drm/display/drm_hdmi_audio_helper.h        |  22 ++
 include/drm/display/drm_hdmi_state_helper.h        |   5 +
 include/drm/drm_bridge.h                           |  74 +++++
 include/drm/drm_connector.h                        | 132 ++++++++
 include/drm/drm_file.h                             |   1 +
 include/drm/drm_gem.h                              |  14 +-
 include/sound/hdmi-codec.h                         |   7 +-
 sound/soc/codecs/hdmi-codec.c                      |   4 +-
 79 files changed, 2516 insertions(+), 606 deletions(-)
 create mode 100644 drivers/gpu/drm/display/drm_hdmi_audio_helper.c
 create mode 100644 drivers/gpu/drm/hisilicon/hibmc/dp/dp_aux.c
 create mode 100644 drivers/gpu/drm/hisilicon/hibmc/dp/dp_comm.h
 create mode 100644 drivers/gpu/drm/hisilicon/hibmc/dp/dp_config.h
 create mode 100644 drivers/gpu/drm/hisilicon/hibmc/dp/dp_hw.c
 create mode 100644 drivers/gpu/drm/hisilicon/hibmc/dp/dp_hw.h
 create mode 100644 drivers/gpu/drm/hisilicon/hibmc/dp/dp_link.c
 create mode 100644 drivers/gpu/drm/hisilicon/hibmc/dp/dp_reg.h
 create mode 100644 drivers/gpu/drm/hisilicon/hibmc/hibmc_drm_dp.c
 create mode 100644 include/drm/display/drm_hdmi_audio_helper.h

--xzt4fwkreukgcxyv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCZ3uZhgAKCRAnX84Zoj2+
drkLAXsFOUyzOYQxi67daPiFjmXU26K4g1BoGPX/RkDdmZk5AVNvTVNeiJ5ScTVP
NGsSSq8BfjRPOtXTBaywiRWZtqjB9xC3u397WuYgbWcnaFm6TzQqeOGjNaaJ5aHH
9fK2pVfpkg==
=HtdS
-----END PGP SIGNATURE-----

--xzt4fwkreukgcxyv--

