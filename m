Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24446812BD2
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Dec 2023 10:40:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5643C10E912;
	Thu, 14 Dec 2023 09:39:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F1BD10E912
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Dec 2023 09:39:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1702546793;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=VpEUC5VFMTNhmJYZc7O2VpdrkGA6X2LYoBeOSHNK0D0=;
 b=AYckrA62FWsMeD9/Tfmm5KGB9R0waJNYwlhQ2aCZHb6ea11QVcR5r+pKBcokE66YejGXBd
 amEMIyF9SoFq6Qg10fG75RbkW/FlMgj4i3cTAvjcR2zl/KywmAfZTcHWR14kWLbSX3u9Ra
 ULj/qTKNUQV4sMSIiOlfHlgdKWsQoCo=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-318-i-rjvRNzNIeCfo97TTYmGA-1; Thu, 14 Dec 2023 04:39:50 -0500
X-MC-Unique: i-rjvRNzNIeCfo97TTYmGA-1
Received: by mail-wr1-f69.google.com with SMTP id
 ffacd0b85a97d-33608b14b3cso5630946f8f.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Dec 2023 01:39:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1702546488; x=1703151288;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=VpEUC5VFMTNhmJYZc7O2VpdrkGA6X2LYoBeOSHNK0D0=;
 b=cpscAS6WgHoUCN4E3QNFRcLJ0sZCVNUYVa9W9DA/Le1+/y3EnPfzGTyDXWah/6zqYq
 Rb902sW4Tau4oavqWPvC2ljS2htAghrikE/nHnLFtnsNjV+mKEoP5oAKICpZtR1NI2yT
 a2+M21ZYC8fbtDvDoEfj97b6M9OL4la8LN9dTLS9KpOQSzV1v/8mfzseE5DWWrCsVE4b
 l0znGaW+9WAaAQb+Aw05be1JBu6Hp7p4QsM7oPQVATtNcXVJI7Q9rn8W6sRXGSknJJrN
 LvPtPdg3sPC2adAIu4xa2P8QwaF20OuQKB2vRMtrMjKZdxhigdTNX5V/EcHo5bU5kxmo
 ar7g==
X-Gm-Message-State: AOJu0Yy2tZp6OPCPGuASL/X6vkWzpxl0cKqsgYwQuczP3TPsevjfPz11
 /myo3pxfF4rZGFJs6OcqHywBoeQGBtiDumnqdl5w9vK5oAtGi319VdF3gRELeNw0AFR1X+10zj8
 9L41SMzF5f3Az70m0CazK5Yw3DUavQb8in8jOPwo=
X-Received: by 2002:a05:600c:1c1f:b0:3fe:4cbc:c345 with SMTP id
 j31-20020a05600c1c1f00b003fe4cbcc345mr4719133wms.41.1702546487936; 
 Thu, 14 Dec 2023 01:34:47 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFHXaLUuZNn19Q4GT7ZxgO8qbUr4c2AqVyGBRzGYZwP8/6URF61WmPmNG90CVfKZzjsTqZS4A==
X-Received: by 2002:a05:600c:1c1f:b0:3fe:4cbc:c345 with SMTP id
 j31-20020a05600c1c1f00b003fe4cbcc345mr4719123wms.41.1702546487482; 
 Thu, 14 Dec 2023 01:34:47 -0800 (PST)
Received: from localhost ([2a01:e0a:b25:f902::ff])
 by smtp.gmail.com with ESMTPSA id
 t4-20020adff044000000b0033340937da6sm15405396wro.95.2023.12.14.01.34.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Dec 2023 01:34:47 -0800 (PST)
Date: Thu, 14 Dec 2023 10:34:46 +0100
From: Maxime Ripard <mripard@redhat.com>
To: Dave Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel.vetter@ffwll.ch>
Subject: [PULL] drm-misc-next
Message-ID: <aqpn5miejmkks7pbcfex7b6u63uwsruywxsnr3x5ljs45qatin@nbkkej2elk46>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="kztngmx2kliigdtc"
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
Cc: dim-tools@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--kztngmx2kliigdtc
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

Here's this week (and probably last for 6.8) drm-misc-next PR.

Thanks!
Maxime

drm-misc-next-2023-12-14:
drm-misc-next for $kernel-version:

UAPI Changes:

Cross-subsystem Changes:
 - A few fixes for usb/typec

Core Changes:
 - ci: Updates to the defconfig, igt version, etc.
 - writeback: Move the atomic_check helper from the encoder to connector

Driver Changes:
 - rockchip: Add support for rk3588
 - xe: Update the TODO list
 - panel:
   - nv3052c: Register documentation, init sequence improvements and
     support for the Fascontek FS035VG158
   - st7701: Add support for the Anbernic RG-ARC
   - new driver: Synaptics R63353 panel controller, Ilitek ILI9805 panel
     controller
   - new panel: AUO G156HAN04.0
The following changes since commit 90d50b8d85834e73536fdccd5aa913b30494fef0:

  drm/mipi-dsi: Fix detach call without attach (2023-12-07 09:22:47 +0200)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-misc tags/drm-misc-next-2023-12-14

for you to fetch changes up to b1a2aa9bcbb88a7dc1c4df98dbf4f4df9ca79c9f:

  drm: ci: Update xfails (2023-12-13 15:18:30 -0300)

----------------------------------------------------------------
drm-misc-next for $kernel-version:

UAPI Changes:

Cross-subsystem Changes:
 - A few fixes for usb/typec

Core Changes:
 - ci: Updates to the defconfig, igt version, etc.
 - writeback: Move the atomic_check helper from the encoder to connector

Driver Changes:
 - rockchip: Add support for rk3588
 - xe: Update the TODO list
 - panel:
   - nv3052c: Register documentation, init sequence improvements and
     support for the Fascontek FS035VG158
   - st7701: Add support for the Anbernic RG-ARC
   - new driver: Synaptics R63353 panel controller, Ilitek ILI9805 panel
     controller
   - new panel: AUO G156HAN04.0

----------------------------------------------------------------
Alex Bee (1):
      drm/imagination: vm: Fix heap lookup condition

Andy Yan (13):
      drm/rockchip: move output interface related definition to rockchip_dr=
m_drv.h
      Revert "drm/rockchip: vop2: Use regcache_sync() to fix suspend/resume"
      drm/rockchip: vop2: set half_block_en bit in all mode
      drm/rockchip: vop2: clear afbc en and transform bit for cluster windo=
w at linear mode
      drm/rockchip: vop2: Add write mask for VP config done
      drm/rockchip: vop2: Set YUV/RGB overlay mode
      drm/rockchip: vop2: set bg dly and prescan dly at vop2_post_config
      drm/rockchip: vop2: rename grf to sys_grf
      dt-bindings: display: vop2: Add rk3588 support
      dt-bindings: rockchip,vop2: Add more endpoint definition
      drm/rockchip: vop2: Add support for rk3588
      drm/rockchip: vop2: rename VOP_FEATURE_OUTPUT_10BIT to VOP2_VP_FEATUR=
E_OUTPUT_10BIT
      MAINTAINERS: Add myself as a reviewer for rockchip drm

Chris Morgan (3):
      drm/panel: st7701: Fix AVCL calculation
      dt-bindings: display: st7701: Add Anbernic RG-ARC panel
      drm/panel: st7701: Add Anbernic RG-ARC Panel Support

Dan Carpenter (1):
      drm/imagination: Move dereference after NULL check in pvr_mmu_backing=
_page_init()

Dario Binacchi (2):
      drm/panel: synaptics-r63353: adjust the includes
      drm/panel: ilitek-ili9805: adjust the includes

Dmitry Baryshkov (2):
      drm/atomic-helper: rename drm_atomic_helper_check_wb_encoder_state
      drm/vkms: move wb's atomic_check from encoder to connector

Elmar Albert (2):
      dt-bindings: display: simple: Add AUO G156HAN04.0 LVDS display
      drm/panel: simple: Add AUO G156HAN04.0 LVDS display support

John Watts (7):
      drm/panel: nv3052c: Document known register names
      drm/panel: nv3052c: Add SPI device IDs
      drm/panel: nv3052c: Allow specifying registers per panel
      drm/panel: nv3052c: Add Fascontek FS035VG158 LCD display
      dt-bindings: display: panel: Clean up leadtek,ltk035c5444t properties
      dt-bindings: vendor-prefixes: Add fascontek
      dt-bindings: display: panel: add Fascontek FS035VG158 panel

Marek Szyprowski (1):
      drm/debugfs: fix potential NULL pointer dereference

Matthew Brost (1):
      drm/doc/rfc: Mark long running workload as complete.

Maxime Ripard (1):
      drm/vc4: hdmi: Create destroy state implementation

Michael Trimarchi (4):
      drm/panel: Add Synaptics R63353 panel driver
      dt-bindings: display: panel: Add Ilitek ili9805 panel controller
      drm/panel: Add Ilitek ILI9805 panel driver
      drm/panel: ilitek-ili9805: add support for Tianma TM041XDHG01 panel

Nathan Chancellor (3):
      usb: typec: nb7vpq904m: Only select DRM_AUX_BRIDGE with OF
      usb: typec: qcom-pmic-typec: Only select DRM_AUX_HPD_BRIDGE with OF
      drm/bridge: Return NULL instead of plain 0 in drm_dp_hpd_bridge_regis=
ter() stub

Pin-yen Lin (1):
      drm/edp-panel: Move the KDC panel to a separate group

Randy Dunlap (3):
      drm/fourcc: fix spelling/typos
      drm/drm_modeset_helper_vtables.h: fix typos/spellos
      drm/uapi: drm_mode.h: fix spellos and grammar

Rob Herring (1):
      drm/bridge: aux-hpd: Replace of_device.h with explicit include

Rodrigo Vivi (4):
      drm/doc/rfc: Mark drm_scheduler as completed
      drm/doc/rfc: Move Xe 'ASYNC VM_BIND' to the 'completed' section
      drm/doc/rfc: Move userptr integration and vm_bind to the 'completed' =
section
      drm/doc/rfc: Xe is using drm_exec, so mark as completed

Uwe Kleine-K=F6nig (1):
      drm/bridge: ti-sn65dsi86: Associate PWM device to auxiliary device

Vignesh Raman (10):
      drm: ci: igt_runner: Remove todo
      drm: ci: Force db410c to host mode
      drm: ci: arm64.config: Enable DA9211 regulator
      drm: ci: Enable new jobs
      drm: ci: Use scripts/config to enable/disable configs
      drm: ci: mt8173: Do not set IGT_FORCE_DRIVER to panfrost
      drm: ci: virtio: Make artifacts available
      drm: ci: uprev IGT
      drm/doc: ci: Add IGT version details for flaky tests
      drm: ci: Update xfails

Yang Li (1):
      drm/imagination: Remove unneeded semicolon

 .../display/panel/fascontek,fs035vg158.yaml        |  56 +++
 .../bindings/display/panel/ilitek,ili9805.yaml     |  62 +++
 .../display/panel/leadtek,ltk035c5444t.yaml        |   8 +-
 .../panel/panel-simple-lvds-dual-ports.yaml        |   2 +
 .../bindings/display/panel/sitronix,st7701.yaml    |   1 +
 .../bindings/display/rockchip/rockchip-vop2.yaml   | 100 +++-
 .../devicetree/bindings/vendor-prefixes.yaml       |   2 +
 Documentation/gpu/automated_testing.rst            |   7 +-
 Documentation/gpu/rfc/xe.rst                       | 127 +++--
 MAINTAINERS                                        |  13 +
 drivers/gpu/drm/bridge/aux-hpd-bridge.c            |   2 +-
 drivers/gpu/drm/bridge/ti-sn65dsi86.c              |  16 +-
 drivers/gpu/drm/ci/arm64.config                    |   1 +
 drivers/gpu/drm/ci/build.sh                        |  16 +-
 drivers/gpu/drm/ci/gitlab-ci.yml                   |   2 +-
 drivers/gpu/drm/ci/igt_runner.sh                   |  10 +-
 drivers/gpu/drm/ci/test.yml                        |  13 +-
 .../gpu/drm/ci/xfails/mediatek-mt8173-fails.txt    |  13 +-
 drivers/gpu/drm/ci/xfails/msm-apq8016-fails.txt    |   5 +
 .../gpu/drm/ci/xfails/virtio_gpu-none-fails.txt    |  46 ++
 drivers/gpu/drm/drm_atomic_helper.c                |  16 +-
 drivers/gpu/drm/drm_debugfs.c                      |   2 +-
 drivers/gpu/drm/imagination/pvr_fw_trace.c         |   2 +-
 drivers/gpu/drm/imagination/pvr_mmu.c              |   4 +-
 drivers/gpu/drm/imagination/pvr_vm.c               |   2 +-
 drivers/gpu/drm/panel/Kconfig                      |  18 +
 drivers/gpu/drm/panel/Makefile                     |   2 +
 drivers/gpu/drm/panel/panel-edp.c                  |   3 +-
 drivers/gpu/drm/panel/panel-ilitek-ili9805.c       | 405 ++++++++++++++++
 drivers/gpu/drm/panel/panel-newvision-nv3052c.c    | 515 +++++++++++++++--=
----
 drivers/gpu/drm/panel/panel-simple.c               |  34 ++
 drivers/gpu/drm/panel/panel-sitronix-st7701.c      | 138 +++++-
 drivers/gpu/drm/panel/panel-synaptics-r63353.c     | 362 +++++++++++++++
 drivers/gpu/drm/rockchip/analogix_dp-rockchip.c    |   1 -
 drivers/gpu/drm/rockchip/cdn-dp-core.c             |   1 -
 drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c    |   1 -
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c        |   1 -
 drivers/gpu/drm/rockchip/inno_hdmi.c               |   1 -
 drivers/gpu/drm/rockchip/rk3066_hdmi.c             |   1 -
 drivers/gpu/drm/rockchip/rockchip_drm_drv.h        |  18 +
 drivers/gpu/drm/rockchip/rockchip_drm_vop.h        |  12 -
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c       | 502 +++++++++++++++++=
+--
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.h       | 100 +++-
 drivers/gpu/drm/rockchip/rockchip_lvds.c           |   1 -
 drivers/gpu/drm/rockchip/rockchip_rgb.c            |   1 -
 drivers/gpu/drm/rockchip/rockchip_vop2_reg.c       | 223 ++++++++-
 drivers/gpu/drm/vc4/vc4_hdmi.c                     |  12 +-
 drivers/gpu/drm/vkms/vkms_writeback.c              |  25 +-
 drivers/usb/typec/mux/Kconfig                      |   2 +-
 drivers/usb/typec/tcpm/Kconfig                     |   2 +-
 include/drm/bridge/aux-bridge.h                    |   2 +-
 include/drm/drm_atomic_helper.h                    |   5 +-
 include/drm/drm_modeset_helper_vtables.h           |   6 +-
 include/dt-bindings/soc/rockchip,vop2.h            |   4 +
 include/uapi/drm/drm_fourcc.h                      |  10 +-
 include/uapi/drm/drm_mode.h                        |  18 +-
 56 files changed, 2568 insertions(+), 386 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/panel/fascont=
ek,fs035vg158.yaml
 create mode 100644 Documentation/devicetree/bindings/display/panel/ilitek,=
ili9805.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-ilitek-ili9805.c
 create mode 100644 drivers/gpu/drm/panel/panel-synaptics-r63353.c

--kztngmx2kliigdtc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZXrMNgAKCRDj7w1vZxhR
xRVIAP0Xj0PnzpOL4Jr9IZiB+UjTqUeSloWEvsV4npS49u/SLAD7Bw/O9aIAG8WS
xXqnJdV9THEiAtH2f99ONfzXFnCFKQ4=
=IEu1
-----END PGP SIGNATURE-----

--kztngmx2kliigdtc--

