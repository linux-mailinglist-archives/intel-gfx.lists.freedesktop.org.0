Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1283E605D80
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Oct 2022 12:39:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57F4710E7B4;
	Thu, 20 Oct 2022 10:38:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out2.suse.de (smtp-out2.suse.de [IPv6:2001:67c:2178:6::1d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B0F810E42B;
 Thu, 20 Oct 2022 10:37:58 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 428851F93A;
 Thu, 20 Oct 2022 10:37:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1666262277; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version: content-transfer-encoding:content-transfer-encoding;
 bh=Y7BdOtp6TFqwXPX3o6UHDb+9HmQzCsygQB8jvOJl5oY=;
 b=pexEAXjK3+YaGpJd+JADtO15n0ydGTiAR9QdozIjQlWTGCJGvjDk3GLtnTjahBibfxqKn8
 e0ZCiKKRAhP4pa+DGq9AHeQHkye84awc19SWK5FgvFa4p4jHOOLv6Ie/+7K77qgyduKGGP
 7xA6whgamY9hl61unJ7iRpO/wohJ91Q=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1666262277;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version: content-transfer-encoding:content-transfer-encoding;
 bh=Y7BdOtp6TFqwXPX3o6UHDb+9HmQzCsygQB8jvOJl5oY=;
 b=CVcd7TwC6JyEu5wf89r3Wdsik/2sML9uk++MZ6TfBQTpvFyIWJxR+TOmqJlzmQsVkjVxBs
 WhUhW1hA4SnyrHBQ==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id BE6B013AF5;
 Thu, 20 Oct 2022 10:37:56 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id 8BWlLQQlUWPPYwAAMHmgww
 (envelope-from <tzimmermann@suse.de>); Thu, 20 Oct 2022 10:37:56 +0000
From: Thomas Zimmermann <tzimmermann@suse.de>
To: daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org, javierm@redhat.com,
 mripard@kernel.org, maarten.lankhorst@linux.intel.com
Date: Thu, 20 Oct 2022 12:37:34 +0200
Message-Id: <20221020103755.24058-1-tzimmermann@suse.de>
X-Mailer: git-send-email 2.38.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/21] drm/fb-helper: Untangle fbdev emulation
 and helpers
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
Cc: linux-hyperv@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 nouveau@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 virtualization@lists.linux-foundation.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-samsung-soc@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 xen-devel@lists.xenproject.org, linux-sunxi@lists.linux.dev,
 linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 etnaviv@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 spice-devel@lists.freedesktop.org, linux-tegra@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-mips@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 Thomas Zimmermann <tzimmermann@suse.de>, freedreno@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Separate generic fbdev emulation from the helper code that is shared
among the various fbdev implementations within DRM. Affects many drivers.

The goal of this patchset is to improve readability and streamline the
fbdev helper code within DRM. In the long term, we want to get to a point
where drivers or memory managers can pick and combine the various helpers
for optimal fbdev support.

Patches 1 to 8 start by preparing drivers. Setting lastclose is not
required by generic fbdev emulation.

Two drivers depend on fb helpers implicitly including other Linux header
files. Fixing this in patches 9 and 10 allows to remove unnecesary include
statements from the fb-helper header in patch 11.

Do some renaming in patches 12 to 14.

There are currently various implementation of the fbdev I/O helpers
with varying feature sets. The fb helpers for fbdev I/O should all call
fb_sync, which is what fbdev's internal implementation does. For DRM,
damage handling needs to be performed after updating a framebuffer. The
damage worker is part of the fb helpers, but the actual update logic only
works with generic fbdev emulation. Separate the two, which also gives
other drivers an option so set their own damage handling if neccessary.
The full-featured I/O helpers can be moved under a shared implementation
and called by all drivers. Patches 15 to 18 resolve these issues.

Patch 19 changes fbdev disablement to work at the level of display
detection. If disabled, generic fbdev emulation will be initialized,
but no display will be detected. It can later be enabled by changing
the parameter in sysfs and plugging in a connector.

Patches 20 and 21 move the generic fbdev emulation into their own source
and header files and clean up the include statements throughout DRM.
Many drivers only call drm_fbdev_generic_setup() and can avoid including
other Linux header files.

Built on x86-64, aarch64, arm, ppc64le. Tested with various combinations
of bochs, radeon, simpledrm.

Thomas Zimmermann (21):
  drm/amdgpu: Don't set struct drm_driver.lastclose
  drm/imx: Don't set struct drm_driver.lastclose
  drm/ingenic: Don't set struct drm_driver.lastclose
  drm/komeda: Don't set struct drm_driver.lastclose
  drm/logicvc: Don't set struct drm_driver.lastclose
  drm/mcde: Don't set struct drm_driver.lastclose
  drm/rockchip: Don't set struct drm_driver.lastclose
  drm/vboxvideo: Don't set struct drm_driver.lastclose
  drm/panel-ili9341: Include <linux/backlight.h>
  drm/tve200: Include <linux/of.h>
  drm/fb-helper: Cleanup include statements in header file
  drm/fb_helper: Rename field fbdev to info in struct drm_fb_helper
  drm/fb-helper: Rename drm_fb_helper_alloc_fbi() to use _info postfix
  drm/fb-helper: Rename drm_fb_helper_unregister_fbi() to use _info
    postfix
  drm/fb-helper: Disconnect damage worker from update logic
  drm/fb-helper: Call fb_sync in I/O functions
  drm/fb-helper: Perform all fbdev I/O with the same implementation
  drm/fb_helper: Minimize damage-helper overhead
  drm/fb-helper: Always initialize generic fbdev emulation
  drm/fb-helper: Move generic fbdev emulation into separate source file
  drm/fb-helper: Remove unnecessary include statements

 drivers/gpu/drm/Makefile                      |    2 +-
 .../gpu/drm/amd/amdgpu/amdgpu_connectors.c    |    1 -
 drivers/gpu/drm/amd/amdgpu/amdgpu_display.c   |    2 -
 drivers/gpu/drm/amd/amdgpu/amdgpu_mode.h      |    1 -
 .../gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c |    2 -
 .../gpu/drm/arm/display/komeda/komeda_drv.c   |    2 +-
 .../gpu/drm/arm/display/komeda/komeda_kms.c   |    2 -
 drivers/gpu/drm/arm/hdlcd_crtc.c              |    1 -
 drivers/gpu/drm/arm/hdlcd_drv.c               |    2 +-
 drivers/gpu/drm/arm/malidp_drv.c              |    2 +-
 drivers/gpu/drm/armada/armada_fbdev.c         |    6 +-
 drivers/gpu/drm/aspeed/aspeed_gfx_drv.c       |    2 +-
 drivers/gpu/drm/ast/ast_drv.c                 |    1 +
 drivers/gpu/drm/ast/ast_drv.h                 |    1 -
 drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c  |    2 +-
 drivers/gpu/drm/bridge/tc358762.c             |    2 +-
 drivers/gpu/drm/drm_crtc_helper.c             |    1 -
 drivers/gpu/drm/drm_fb_helper.c               | 1081 ++++++-----------
 drivers/gpu/drm/drm_fbdev.c                   |  512 ++++++++
 drivers/gpu/drm/drm_gem_framebuffer_helper.c  |    1 -
 drivers/gpu/drm/drm_probe_helper.c            |    1 -
 drivers/gpu/drm/etnaviv/etnaviv_drv.h         |    3 +-
 drivers/gpu/drm/exynos/exynos_drm_fbdev.c     |    6 +-
 drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_drv.c     |    2 +-
 drivers/gpu/drm/gma500/framebuffer.c          |    6 +-
 drivers/gpu/drm/gud/gud_drv.c                 |    2 +-
 .../gpu/drm/hisilicon/hibmc/hibmc_drm_drv.c   |    1 +
 .../gpu/drm/hisilicon/hibmc/hibmc_drm_drv.h   |    1 -
 .../gpu/drm/hisilicon/kirin/kirin_drm_drv.c   |    2 +-
 drivers/gpu/drm/hyperv/hyperv_drm_drv.c       |    2 +-
 drivers/gpu/drm/hyperv/hyperv_drm_modeset.c   |    1 -
 drivers/gpu/drm/i915/display/intel_fbdev.c    |    8 +-
 drivers/gpu/drm/imx/dcss/dcss-kms.c           |    3 +-
 drivers/gpu/drm/imx/imx-drm-core.c            |    2 +-
 drivers/gpu/drm/imx/imx-ldb.c                 |    2 +-
 drivers/gpu/drm/imx/imx-tve.c                 |    1 -
 drivers/gpu/drm/imx/parallel-display.c        |    2 +-
 drivers/gpu/drm/ingenic/ingenic-drm-drv.c     |    3 +-
 drivers/gpu/drm/kmb/kmb_drv.c                 |    2 +-
 drivers/gpu/drm/kmb/kmb_plane.c               |    1 -
 drivers/gpu/drm/logicvc/logicvc_drm.c         |    2 +-
 drivers/gpu/drm/logicvc/logicvc_mode.c        |    2 -
 drivers/gpu/drm/mcde/mcde_drv.c               |    3 +-
 drivers/gpu/drm/mediatek/mtk_drm_drv.c        |    2 +-
 drivers/gpu/drm/meson/meson_drv.c             |    2 +-
 drivers/gpu/drm/mgag200/mgag200_drv.c         |    1 +
 drivers/gpu/drm/mgag200/mgag200_drv.h         |    1 -
 drivers/gpu/drm/msm/msm_fbdev.c               |    4 +-
 drivers/gpu/drm/mxsfb/lcdif_drv.c             |    2 +-
 drivers/gpu/drm/mxsfb/mxsfb_drv.c             |    2 +-
 drivers/gpu/drm/nouveau/nouveau_fbcon.c       |   27 +-
 drivers/gpu/drm/omapdrm/omap_fbdev.c          |    6 +-
 drivers/gpu/drm/panel/panel-ilitek-ili9341.c  |    3 +-
 drivers/gpu/drm/pl111/pl111_drv.c             |    2 +-
 drivers/gpu/drm/qxl/qxl_drv.c                 |    1 +
 drivers/gpu/drm/qxl/qxl_drv.h                 |    1 -
 drivers/gpu/drm/radeon/radeon_fb.c            |    6 +-
 drivers/gpu/drm/rcar-du/rcar_du_drv.c         |    2 +-
 drivers/gpu/drm/rockchip/rockchip_drm_drv.c   |    2 +-
 drivers/gpu/drm/rockchip/rockchip_drm_drv.h   |    2 +-
 drivers/gpu/drm/rockchip/rockchip_drm_fb.c    |    2 -
 drivers/gpu/drm/solomon/ssd130x.c             |    2 +-
 drivers/gpu/drm/sti/sti_drv.c                 |    2 +-
 drivers/gpu/drm/stm/drv.c                     |    2 +-
 drivers/gpu/drm/sun4i/sun4i_drv.c             |    2 +-
 drivers/gpu/drm/tegra/fb.c                    |    8 +-
 drivers/gpu/drm/tidss/tidss_drv.c             |    2 +-
 drivers/gpu/drm/tidss/tidss_kms.c             |    1 -
 drivers/gpu/drm/tilcdc/tilcdc_drv.c           |    2 +-
 drivers/gpu/drm/tiny/arcpgu.c                 |    2 +-
 drivers/gpu/drm/tiny/bochs.c                  |    2 +-
 drivers/gpu/drm/tiny/cirrus.c                 |    2 +-
 drivers/gpu/drm/tiny/gm12u320.c               |    2 +-
 drivers/gpu/drm/tiny/hx8357d.c                |    2 +-
 drivers/gpu/drm/tiny/ili9163.c                |    2 +-
 drivers/gpu/drm/tiny/ili9225.c                |    2 +-
 drivers/gpu/drm/tiny/ili9341.c                |    2 +-
 drivers/gpu/drm/tiny/ili9486.c                |    2 +-
 drivers/gpu/drm/tiny/mi0283qt.c               |    2 +-
 drivers/gpu/drm/tiny/ofdrm.c                  |    2 +-
 drivers/gpu/drm/tiny/panel-mipi-dbi.c         |    2 +-
 drivers/gpu/drm/tiny/repaper.c                |    2 +-
 drivers/gpu/drm/tiny/simpledrm.c              |    2 +-
 drivers/gpu/drm/tiny/st7586.c                 |    2 +-
 drivers/gpu/drm/tiny/st7735r.c                |    2 +-
 drivers/gpu/drm/tve200/tve200_drv.c           |    3 +-
 drivers/gpu/drm/udl/udl_drv.c                 |    2 +-
 drivers/gpu/drm/v3d/v3d_drv.c                 |    1 -
 drivers/gpu/drm/vboxvideo/vbox_drv.c          |    4 +-
 drivers/gpu/drm/vboxvideo/vbox_main.c         |    1 -
 drivers/gpu/drm/vc4/vc4_drv.c                 |    2 +-
 drivers/gpu/drm/virtio/virtgpu_drv.c          |    1 +
 drivers/gpu/drm/virtio/virtgpu_drv.h          |    1 -
 drivers/gpu/drm/vkms/vkms_drv.c               |    2 +-
 drivers/gpu/drm/vmwgfx/vmwgfx_fb.c            |    3 +
 drivers/gpu/drm/xen/xen_drm_front_gem.c       |    1 -
 drivers/gpu/drm/xlnx/zynqmp_dpsub.c           |    2 +-
 include/drm/drm_fb_helper.h                   |   59 +-
 include/drm/drm_fbdev.h                       |   15 +
 99 files changed, 1019 insertions(+), 883 deletions(-)
 create mode 100644 drivers/gpu/drm/drm_fbdev.c
 create mode 100644 include/drm/drm_fbdev.h


base-commit: 8c797a984264f04708d2099e83c85978a0fede89
prerequisite-patch-id: c2b2f08f0eccc9f5df0c0da49fa1d36267deb11d
prerequisite-patch-id: c67e5d886a47b7d0266d81100837557fda34cb24
prerequisite-patch-id: 3f204510fcbf9530d6540bd8e6128cce598988b6
-- 
2.38.0

