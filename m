Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C968618119
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Nov 2022 16:15:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10B7410E61D;
	Thu,  3 Nov 2022 15:14:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out2.suse.de (smtp-out2.suse.de [IPv6:2001:67c:2178:6::1d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F171E10E3C4;
 Thu,  3 Nov 2022 15:14:50 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 77F601F88C;
 Thu,  3 Nov 2022 15:14:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1667488489; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version: content-transfer-encoding:content-transfer-encoding;
 bh=HedAlrS8erHkRoHUc/nk9PZPahT98wWins1TZNQ+myo=;
 b=ts+mFZqzw7nt496UOWxsBj/xG6sJKPY/ZWmHdFZxUG6ONqcbseLnVXu/wXRLAFn+VGn/YR
 Rqass7K9e5Tf8KqeYY+gKZRv+JgfpuuYK6ggxjkZHiOpS0V3LO8NFAUASBN8QOA44nud45
 u9o1mCiJIX4XReB+zkbZ4HbcduFUihs=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1667488489;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version: content-transfer-encoding:content-transfer-encoding;
 bh=HedAlrS8erHkRoHUc/nk9PZPahT98wWins1TZNQ+myo=;
 b=lsvt5cpyVTNQvpmzx5qsqs1XtiL2L/Eibv9TPCR/dY0Qky34DmnJAVBCZYMH6j2JOe7LS2
 KLgvNS9ctlteh0Cg==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id E34DA13AAF;
 Thu,  3 Nov 2022 15:14:48 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id oqOUNujaY2PBGgAAMHmgww
 (envelope-from <tzimmermann@suse.de>); Thu, 03 Nov 2022 15:14:48 +0000
From: Thomas Zimmermann <tzimmermann@suse.de>
To: daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org, javierm@redhat.com,
 mripard@kernel.org, maarten.lankhorst@linux.intel.com
Date: Thu,  3 Nov 2022 16:14:23 +0100
Message-Id: <20221103151446.2638-1-tzimmermann@suse.de>
X-Mailer: git-send-email 2.38.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 00/23] drm/fb-helper: Untangle fbdev
 emulation and helpers
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
Cc: linux-aspeed@lists.ozlabs.org, nouveau@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, virtualization@lists.linux-foundation.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-samsung-soc@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 spice-devel@lists.freedesktop.org, linux-sunxi@lists.linux.dev,
 linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 etnaviv@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 xen-devel@lists.xenproject.org, linux-tegra@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 "linux-hyperv@vger.kernel.orglinux-hyperv"@vger.kernel.org,
 linux-mips@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 Thomas Zimmermann <tzimmermann@suse.de>, freedreno@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Separate generic fbdev emulation from the helper code that is shared
among the various fbdev implementations within DRM. Affects many drivers.

It has become apparent that our fully generic fbdev emulation will
never produce optimal results for all drivers. In its current form,
it is also hard to maintain. The goal of this patchset is to improve
readability and streamline the fbdev helper code within DRM. In the
long term, we want to get to a point where drivers or memory managers
can pick and combine the various helpers for optimal fbdev support.

Patches 1 to 8 start by preparing drivers. Setting struct drm_driver's
lastclose and output_poll_changed is not required by generic fbdev
emulation.

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
other drivers an option to set their own damage handling if neccessary.
The full-featured I/O helpers can be moved under a shared implementation
and called by all drivers. Patches 15 to 18 resolve these issues.

Patch 19 changes fbdev disablement to work at the level of display
detection. If disabled, generic fbdev emulation will be initialized,
but no display will be detected. It can later be enabled by changing
the parameter in sysfs and plugging in a connector.

Patches 20 to 22 move the generic fbdev emulation into their own source
and header files and clean up the include statements throughout DRM. Many
drivers only call drm_fbdev_generic_setup() and can avoid including other
Linux header files.

Patch 23 is a documentation update.

Built on x86-64, aarch64, arm, ppc64le. Tested with various combinations
of bochs, i915, simpledrm.

v3:
	* documentation fixes (Javier)
	* rename drm_fbdev.{c,h} to drm_fbdev_generic.{c,h}
	* keep drm_leak_fbdev_smem in drm_fb_helper.c
	* fix several include statements
	* rebases
v2:
      	* fixed commit descriptions (Christian, Sergey)

Thomas Zimmermann (23):
  drm/komeda: Don't set struct drm_driver.lastclose
  drm/mcde: Don't set struct drm_driver.lastclose
  drm/vboxvideo: Don't set struct drm_driver.lastclose
  drm/amdgpu: Don't set struct drm_driver.output_poll_changed
  drm/imx/dcss: Don't set struct drm_driver.output_poll_changed
  drm/ingenic: Don't set struct drm_driver.output_poll_changed
  drm/logicvc: Don't set struct drm_driver.output_poll_changed
  drm/rockchip: Don't set struct drm_driver.output_poll_changed
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
  drm/fb-helper: Set flag in struct drm_fb_helper for leaking physical
    addresses
  drm/fb-helper: Move generic fbdev emulation into separate source file
  drm/fb-helper: Remove unnecessary include statements
  drm/fb-helper: Clarify use of last_close and output_poll_changed

 drivers/gpu/drm/Makefile                      |    4 +-
 .../gpu/drm/amd/amdgpu/amdgpu_connectors.c    |    1 -
 drivers/gpu/drm/amd/amdgpu/amdgpu_device.c    |    1 +
 drivers/gpu/drm/amd/amdgpu/amdgpu_display.c   |    3 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c       |    1 +
 drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c       |    1 +
 drivers/gpu/drm/amd/amdgpu/amdgpu_mode.h      |    1 -
 drivers/gpu/drm/amd/amdgpu/dce_v10_0.c        |    1 +
 drivers/gpu/drm/amd/amdgpu/dce_v11_0.c        |    1 +
 drivers/gpu/drm/amd/amdgpu/dce_v6_0.c         |    1 +
 drivers/gpu/drm/amd/amdgpu/dce_v8_0.c         |    1 +
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
 drivers/gpu/drm/drm_fb_helper.c               | 1008 ++++++-----------
 drivers/gpu/drm/drm_fbdev_generic.c           |  493 ++++++++
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
 drivers/gpu/drm/rockchip/rockchip_drm_gem.c   |    1 +
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
 drivers/gpu/drm/vmwgfx/vmwgfx_drv.c           |    2 +-
 drivers/gpu/drm/xen/xen_drm_front_gem.c       |    1 -
 drivers/gpu/drm/xlnx/zynqmp_kms.c             |    2 +-
 include/drm/drm_fb_helper.h                   |   61 +-
 include/drm/drm_fbdev_generic.h               |   15 +
 107 files changed, 987 insertions(+), 835 deletions(-)
 create mode 100644 drivers/gpu/drm/drm_fbdev_generic.c
 create mode 100644 include/drm/drm_fbdev_generic.h


base-commit: f5a9fb2d688dfc6efa1fd779a2d225048bfb10f9
prerequisite-patch-id: c2b2f08f0eccc9f5df0c0da49fa1d36267deb11d
prerequisite-patch-id: c67e5d886a47b7d0266d81100837557fda34cb24
prerequisite-patch-id: 3f204510fcbf9530d6540bd8e6128cce598988b6
prerequisite-patch-id: db1c43fc253bf3b55cfa09128a2d83d960599ead
prerequisite-patch-id: 007fca7c89f5fe0e5279021fcac49fb621bf5708
-- 
2.38.0

