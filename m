Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B357E549E4E
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jun 2022 22:03:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D44089F08;
	Mon, 13 Jun 2022 20:03:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20D2310F7AA;
 Mon, 13 Jun 2022 20:03:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655150610; x=1686686610;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dBs00jMzc/RbA82mdGqupBNY9+NofzYgemzkE5wIbRw=;
 b=LJ5oKNtoFrz8VWUsdeZ3rHVHlKVNgge/KC/5gug9P99TOEGE45S2BQKy
 EN7zMdg52uLT2tg9itTujIfQ+ZwWZeoZh46uXzEc0JFgGdUTSDl6oW6+y
 dC6XpVj/YqmbxCFKVCH7mj2NDD+lyFrrVG6ZSKFv5NEtmm+/dAoce2um/
 m9PRjAhG13hpykpqmvlipiuPFtql7+eX6vgPeClpznmzIVJs9Lti3EbMU
 jwM9WQnUAvnis1j0j74w3HZ/aZDAtkPOe03XcbM7VvV9FsNZtjf5PN+k2
 +TcN6Iguu98/FaXYdCyqbULCjCAF4winW8N5bd4q1AyZV1EKyyuxneUkA Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10377"; a="275926944"
X-IronPort-AV: E=Sophos;i="5.91,297,1647327600"; d="scan'208";a="275926944"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2022 13:03:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,297,1647327600"; d="scan'208";a="587975369"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by fmsmga007.fm.intel.com with SMTP; 13 Jun 2022 13:03:27 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 13 Jun 2022 23:03:26 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: dri-devel@lists.freedesktop.org
Date: Mon, 13 Jun 2022 23:03:12 +0300
Message-Id: <20220613200317.11305-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220613200317.11305-1-ville.syrjala@linux.intel.com>
References: <20220613200317.11305-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/8] drm: Drop drm_blend.h from drm_crtc.h
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

drm_crtc.h has no need for drm_blend.h, so don't include it.
Avoids useless rebuilds of the entire universe when
touching drm_blend.h.

Quite a few placs do currently depend on drm_blend.h without
actually including it directly. All of those need to be fixed
up.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c  | 1 +
 drivers/gpu/drm/arm/display/komeda/d71/d71_dev.c   | 1 +
 drivers/gpu/drm/arm/display/komeda/komeda_kms.h    | 1 +
 drivers/gpu/drm/arm/display/komeda/komeda_plane.c  | 1 +
 drivers/gpu/drm/arm/malidp_planes.c                | 1 +
 drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c    | 1 +
 drivers/gpu/drm/drm_atomic.c                       | 1 +
 drivers/gpu/drm/drm_atomic_helper.c                | 1 +
 drivers/gpu/drm/drm_atomic_state_helper.c          | 1 +
 drivers/gpu/drm/drm_crtc.c                         | 1 +
 drivers/gpu/drm/exynos/exynos5433_drm_decon.c      | 1 +
 drivers/gpu/drm/exynos/exynos_drm_fimd.c           | 1 +
 drivers/gpu/drm/exynos/exynos_drm_ipp.c            | 1 +
 drivers/gpu/drm/exynos/exynos_drm_plane.c          | 1 +
 drivers/gpu/drm/exynos/exynos_drm_scaler.c         | 1 +
 drivers/gpu/drm/exynos/exynos_mixer.c              | 1 +
 drivers/gpu/drm/gud/gud_drv.c                      | 1 +
 drivers/gpu/drm/i915/display/i9xx_plane.c          | 1 +
 drivers/gpu/drm/i915/display/intel_cursor.c        | 1 +
 drivers/gpu/drm/i915/display/intel_fb.c            | 1 +
 drivers/gpu/drm/i915/display/intel_fbc.c           | 1 +
 drivers/gpu/drm/i915/display/intel_sprite.c        | 1 +
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 1 +
 drivers/gpu/drm/i915/intel_pm.c                    | 1 +
 drivers/gpu/drm/imx/dcss/dcss-plane.c              | 1 +
 drivers/gpu/drm/imx/ipuv3-plane.c                  | 1 +
 drivers/gpu/drm/kmb/kmb_plane.c                    | 1 +
 drivers/gpu/drm/logicvc/logicvc_layer.c            | 1 +
 drivers/gpu/drm/mediatek/mtk_disp_ovl.c            | 1 +
 drivers/gpu/drm/mediatek/mtk_drm_plane.c           | 1 +
 drivers/gpu/drm/meson/meson_overlay.c              | 1 +
 drivers/gpu/drm/meson/meson_plane.c                | 1 +
 drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c           | 1 +
 drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c          | 1 +
 drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c          | 1 +
 drivers/gpu/drm/msm/disp/mdp5/mdp5_plane.c         | 1 +
 drivers/gpu/drm/nouveau/dispnv50/wndw.c            | 1 +
 drivers/gpu/drm/omapdrm/omap_fb.c                  | 1 +
 drivers/gpu/drm/omapdrm/omap_plane.c               | 1 +
 drivers/gpu/drm/rcar-du/rcar_du_plane.c            | 1 +
 drivers/gpu/drm/rcar-du/rcar_du_vsp.c              | 1 +
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c        | 1 +
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c       | 1 +
 drivers/gpu/drm/sprd/sprd_dpu.c                    | 1 +
 drivers/gpu/drm/sti/sti_plane.c                    | 1 +
 drivers/gpu/drm/stm/ltdc.c                         | 1 +
 drivers/gpu/drm/sun4i/sun4i_backend.c              | 1 +
 drivers/gpu/drm/sun4i/sun4i_framebuffer.c          | 1 +
 drivers/gpu/drm/sun4i/sun4i_layer.c                | 1 +
 drivers/gpu/drm/sun4i/sun8i_ui_layer.c             | 1 +
 drivers/gpu/drm/sun4i/sun8i_vi_layer.c             | 1 +
 drivers/gpu/drm/tegra/dc.c                         | 1 +
 drivers/gpu/drm/tegra/hub.c                        | 1 +
 drivers/gpu/drm/tidss/tidss_dispc.c                | 1 +
 drivers/gpu/drm/tidss/tidss_plane.c                | 1 +
 drivers/gpu/drm/vc4/vc4_plane.c                    | 1 +
 include/drm/drm_crtc.h                             | 1 -
 57 files changed, 56 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
index ad4571190a90..1228c69c32c4 100644
--- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
+++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
@@ -78,6 +78,7 @@
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_uapi.h>
 #include <drm/drm_atomic_helper.h>
+#include <drm/drm_blend.h>
 #include <drm/drm_fb_helper.h>
 #include <drm/drm_fourcc.h>
 #include <drm/drm_edid.h>
diff --git a/drivers/gpu/drm/arm/display/komeda/d71/d71_dev.c b/drivers/gpu/drm/arm/display/komeda/d71/d71_dev.c
index 00fa56c29b3e..daa1faccd3e7 100644
--- a/drivers/gpu/drm/arm/display/komeda/d71/d71_dev.c
+++ b/drivers/gpu/drm/arm/display/komeda/d71/d71_dev.c
@@ -5,6 +5,7 @@
  *
  */
 
+#include <drm/drm_blend.h>
 #include <drm/drm_print.h>
 #include "d71_dev.h"
 #include "malidp_io.h"
diff --git a/drivers/gpu/drm/arm/display/komeda/komeda_kms.h b/drivers/gpu/drm/arm/display/komeda/komeda_kms.h
index 456f3c435719..7889e380ab23 100644
--- a/drivers/gpu/drm/arm/display/komeda/komeda_kms.h
+++ b/drivers/gpu/drm/arm/display/komeda/komeda_kms.h
@@ -10,6 +10,7 @@
 #include <linux/list.h>
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
+#include <drm/drm_blend.h>
 #include <drm/drm_crtc_helper.h>
 #include <drm/drm_device.h>
 #include <drm/drm_writeback.h>
diff --git a/drivers/gpu/drm/arm/display/komeda/komeda_plane.c b/drivers/gpu/drm/arm/display/komeda/komeda_plane.c
index e0b9f7063b20..dff22dec54b5 100644
--- a/drivers/gpu/drm/arm/display/komeda/komeda_plane.c
+++ b/drivers/gpu/drm/arm/display/komeda/komeda_plane.c
@@ -6,6 +6,7 @@
  */
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
+#include <drm/drm_blend.h>
 #include <drm/drm_plane_helper.h>
 #include <drm/drm_print.h>
 #include "komeda_dev.h"
diff --git a/drivers/gpu/drm/arm/malidp_planes.c b/drivers/gpu/drm/arm/malidp_planes.c
index 63bccc619193..8a9562642d16 100644
--- a/drivers/gpu/drm/arm/malidp_planes.c
+++ b/drivers/gpu/drm/arm/malidp_planes.c
@@ -11,6 +11,7 @@
 
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
+#include <drm/drm_blend.h>
 #include <drm/drm_drv.h>
 #include <drm/drm_fb_cma_helper.h>
 #include <drm/drm_fourcc.h>
diff --git a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c
index b76d6be3f305..2306ceb3e999 100644
--- a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c
+++ b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c
@@ -11,6 +11,7 @@
 
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
+#include <drm/drm_blend.h>
 #include <drm/drm_fb_cma_helper.h>
 #include <drm/drm_fourcc.h>
 #include <drm/drm_framebuffer.h>
diff --git a/drivers/gpu/drm/drm_atomic.c b/drivers/gpu/drm/drm_atomic.c
index 8e0a77547c1d..f197f59f6d99 100644
--- a/drivers/gpu/drm/drm_atomic.c
+++ b/drivers/gpu/drm/drm_atomic.c
@@ -31,6 +31,7 @@
 
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_uapi.h>
+#include <drm/drm_blend.h>
 #include <drm/drm_bridge.h>
 #include <drm/drm_debugfs.h>
 #include <drm/drm_device.h>
diff --git a/drivers/gpu/drm/drm_atomic_helper.c b/drivers/gpu/drm/drm_atomic_helper.c
index abbeb42976b9..0f685f4b2911 100644
--- a/drivers/gpu/drm/drm_atomic_helper.c
+++ b/drivers/gpu/drm/drm_atomic_helper.c
@@ -31,6 +31,7 @@
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_atomic_uapi.h>
+#include <drm/drm_blend.h>
 #include <drm/drm_bridge.h>
 #include <drm/drm_damage_helper.h>
 #include <drm/drm_device.h>
diff --git a/drivers/gpu/drm/drm_atomic_state_helper.c b/drivers/gpu/drm/drm_atomic_state_helper.c
index c968b3b4d5de..bf31b9d92094 100644
--- a/drivers/gpu/drm/drm_atomic_state_helper.c
+++ b/drivers/gpu/drm/drm_atomic_state_helper.c
@@ -26,6 +26,7 @@
 
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_state_helper.h>
+#include <drm/drm_blend.h>
 #include <drm/drm_bridge.h>
 #include <drm/drm_connector.h>
 #include <drm/drm_crtc.h>
diff --git a/drivers/gpu/drm/drm_crtc.c b/drivers/gpu/drm/drm_crtc.c
index e8a3a0706387..cad2a7e5166f 100644
--- a/drivers/gpu/drm/drm_crtc.c
+++ b/drivers/gpu/drm/drm_crtc.c
@@ -35,6 +35,7 @@
 #include <linux/export.h>
 #include <linux/dma-fence.h>
 #include <linux/uaccess.h>
+#include <drm/drm_blend.h>
 #include <drm/drm_crtc.h>
 #include <drm/drm_edid.h>
 #include <drm/drm_fourcc.h>
diff --git a/drivers/gpu/drm/exynos/exynos5433_drm_decon.c b/drivers/gpu/drm/exynos/exynos5433_drm_decon.c
index 6cf98a1ca83b..8155d7e650f1 100644
--- a/drivers/gpu/drm/exynos/exynos5433_drm_decon.c
+++ b/drivers/gpu/drm/exynos/exynos5433_drm_decon.c
@@ -17,6 +17,7 @@
 #include <linux/pm_runtime.h>
 #include <linux/regmap.h>
 
+#include <drm/drm_blend.h>
 #include <drm/drm_fourcc.h>
 #include <drm/drm_framebuffer.h>
 #include <drm/drm_vblank.h>
diff --git a/drivers/gpu/drm/exynos/exynos_drm_fimd.c b/drivers/gpu/drm/exynos/exynos_drm_fimd.c
index 9a39ee87e58c..ae6636e6658e 100644
--- a/drivers/gpu/drm/exynos/exynos_drm_fimd.c
+++ b/drivers/gpu/drm/exynos/exynos_drm_fimd.c
@@ -21,6 +21,7 @@
 #include <video/of_videomode.h>
 #include <video/samsung_fimd.h>
 
+#include <drm/drm_blend.h>
 #include <drm/drm_fourcc.h>
 #include <drm/drm_framebuffer.h>
 #include <drm/drm_vblank.h>
diff --git a/drivers/gpu/drm/exynos/exynos_drm_ipp.c b/drivers/gpu/drm/exynos/exynos_drm_ipp.c
index 9ae868935357..ea9f66037600 100644
--- a/drivers/gpu/drm/exynos/exynos_drm_ipp.c
+++ b/drivers/gpu/drm/exynos/exynos_drm_ipp.c
@@ -18,6 +18,7 @@
 
 #include <linux/uaccess.h>
 
+#include <drm/drm_blend.h>
 #include <drm/drm_file.h>
 #include <drm/drm_fourcc.h>
 #include <drm/drm_mode.h>
diff --git a/drivers/gpu/drm/exynos/exynos_drm_plane.c b/drivers/gpu/drm/exynos/exynos_drm_plane.c
index 3460065ba484..66e5f1e34044 100644
--- a/drivers/gpu/drm/exynos/exynos_drm_plane.c
+++ b/drivers/gpu/drm/exynos/exynos_drm_plane.c
@@ -7,6 +7,7 @@
 
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
+#include <drm/drm_blend.h>
 #include <drm/drm_framebuffer.h>
 #include <drm/drm_plane_helper.h>
 #include <drm/exynos_drm.h>
diff --git a/drivers/gpu/drm/exynos/exynos_drm_scaler.c b/drivers/gpu/drm/exynos/exynos_drm_scaler.c
index 3a7851b7dc66..3c049fb658a3 100644
--- a/drivers/gpu/drm/exynos/exynos_drm_scaler.c
+++ b/drivers/gpu/drm/exynos/exynos_drm_scaler.c
@@ -15,6 +15,7 @@
 #include <linux/platform_device.h>
 #include <linux/pm_runtime.h>
 
+#include <drm/drm_blend.h>
 #include <drm/drm_fourcc.h>
 #include <drm/exynos_drm.h>
 
diff --git a/drivers/gpu/drm/exynos/exynos_mixer.c b/drivers/gpu/drm/exynos/exynos_mixer.c
index 7e9d4f9bba31..65260a658684 100644
--- a/drivers/gpu/drm/exynos/exynos_mixer.c
+++ b/drivers/gpu/drm/exynos/exynos_mixer.c
@@ -25,6 +25,7 @@
 #include <linux/spinlock.h>
 #include <linux/wait.h>
 
+#include <drm/drm_blend.h>
 #include <drm/drm_edid.h>
 #include <drm/drm_fourcc.h>
 #include <drm/drm_framebuffer.h>
diff --git a/drivers/gpu/drm/gud/gud_drv.c b/drivers/gpu/drm/gud/gud_drv.c
index 3f9d4b9a1e3d..8d1630b8edac 100644
--- a/drivers/gpu/drm/gud/gud_drv.c
+++ b/drivers/gpu/drm/gud/gud_drv.c
@@ -14,6 +14,7 @@
 #include <linux/workqueue.h>
 
 #include <drm/drm_atomic_helper.h>
+#include <drm/drm_blend.h>
 #include <drm/drm_damage_helper.h>
 #include <drm/drm_debugfs.h>
 #include <drm/drm_drv.h>
diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index 7fe1a4e57654..592e5adfed8b 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -5,6 +5,7 @@
 #include <linux/kernel.h>
 
 #include <drm/drm_atomic_helper.h>
+#include <drm/drm_blend.h>
 #include <drm/drm_fourcc.h>
 #include <drm/drm_plane_helper.h>
 
diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 8c80de877605..c2797ad2d313 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -6,6 +6,7 @@
 
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_atomic_uapi.h>
+#include <drm/drm_blend.h>
 #include <drm/drm_damage_helper.h>
 #include <drm/drm_plane_helper.h>
 #include <drm/drm_fourcc.h>
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 9f5a6b79e95b..b191915ab351 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -3,6 +3,7 @@
  * Copyright © 2021 Intel Corporation
  */
 
+#include <drm/drm_blend.h>
 #include <drm/drm_framebuffer.h>
 #include <drm/drm_modeset_helper.h>
 
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 8b807284cde1..16537830ccf0 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -40,6 +40,7 @@
 
 #include <linux/string_helpers.h>
 
+#include <drm/drm_blend.h>
 #include <drm/drm_fourcc.h>
 
 #include "i915_drv.h"
diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index 7c0df80612d0..2713faad0625 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -34,6 +34,7 @@
 
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
+#include <drm/drm_blend.h>
 #include <drm/drm_color_mgmt.h>
 #include <drm/drm_crtc.h>
 #include <drm/drm_damage_helper.h>
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index caa03324a733..c11e15a93164 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -4,6 +4,7 @@
  */
 
 #include <drm/drm_atomic_helper.h>
+#include <drm/drm_blend.h>
 #include <drm/drm_damage_helper.h>
 #include <drm/drm_fourcc.h>
 #include <drm/drm_plane_helper.h>
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 5a61fc3f26c1..187eb5a9726b 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -30,6 +30,7 @@
 #include <linux/pm_runtime.h>
 
 #include <drm/drm_atomic_helper.h>
+#include <drm/drm_blend.h>
 #include <drm/drm_fourcc.h>
 #include <drm/drm_plane_helper.h>
 
diff --git a/drivers/gpu/drm/imx/dcss/dcss-plane.c b/drivers/gpu/drm/imx/dcss/dcss-plane.c
index 1bb770031a6b..c29f343f33e5 100644
--- a/drivers/gpu/drm/imx/dcss/dcss-plane.c
+++ b/drivers/gpu/drm/imx/dcss/dcss-plane.c
@@ -5,6 +5,7 @@
 
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
+#include <drm/drm_blend.h>
 #include <drm/drm_fb_cma_helper.h>
 #include <drm/drm_framebuffer.h>
 #include <drm/drm_gem_atomic_helper.h>
diff --git a/drivers/gpu/drm/imx/ipuv3-plane.c b/drivers/gpu/drm/imx/ipuv3-plane.c
index 6919d5af7f62..ea5f594955df 100644
--- a/drivers/gpu/drm/imx/ipuv3-plane.c
+++ b/drivers/gpu/drm/imx/ipuv3-plane.c
@@ -7,6 +7,7 @@
 
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
+#include <drm/drm_blend.h>
 #include <drm/drm_fb_cma_helper.h>
 #include <drm/drm_fourcc.h>
 #include <drm/drm_framebuffer.h>
diff --git a/drivers/gpu/drm/kmb/kmb_plane.c b/drivers/gpu/drm/kmb/kmb_plane.c
index d03b8b458a7e..89d055a089a6 100644
--- a/drivers/gpu/drm/kmb/kmb_plane.c
+++ b/drivers/gpu/drm/kmb/kmb_plane.c
@@ -5,6 +5,7 @@
 
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
+#include <drm/drm_blend.h>
 #include <drm/drm_crtc.h>
 #include <drm/drm_crtc_helper.h>
 #include <drm/drm_fb_cma_helper.h>
diff --git a/drivers/gpu/drm/logicvc/logicvc_layer.c b/drivers/gpu/drm/logicvc/logicvc_layer.c
index e659884f50d6..fbebe966f93a 100644
--- a/drivers/gpu/drm/logicvc/logicvc_layer.c
+++ b/drivers/gpu/drm/logicvc/logicvc_layer.c
@@ -9,6 +9,7 @@
 
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
+#include <drm/drm_blend.h>
 #include <drm/drm_fb_cma_helper.h>
 #include <drm/drm_fourcc.h>
 #include <drm/drm_framebuffer.h>
diff --git a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
index 5e85f4dfec65..002b0f6cae1a 100644
--- a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
+++ b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
@@ -3,6 +3,7 @@
  * Copyright (c) 2015 MediaTek Inc.
  */
 
+#include <drm/drm_blend.h>
 #include <drm/drm_fourcc.h>
 #include <drm/drm_framebuffer.h>
 
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_plane.c b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
index ce11e574340c..91f57cbde06b 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_plane.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
@@ -7,6 +7,7 @@
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_atomic_uapi.h>
+#include <drm/drm_blend.h>
 #include <drm/drm_fourcc.h>
 #include <drm/drm_framebuffer.h>
 #include <drm/drm_gem_atomic_helper.h>
diff --git a/drivers/gpu/drm/meson/meson_overlay.c b/drivers/gpu/drm/meson/meson_overlay.c
index cd35a5e42528..b4a0518c1028 100644
--- a/drivers/gpu/drm/meson/meson_overlay.c
+++ b/drivers/gpu/drm/meson/meson_overlay.c
@@ -9,6 +9,7 @@
 
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
+#include <drm/drm_blend.h>
 #include <drm/drm_device.h>
 #include <drm/drm_fb_cma_helper.h>
 #include <drm/drm_fourcc.h>
diff --git a/drivers/gpu/drm/meson/meson_plane.c b/drivers/gpu/drm/meson/meson_plane.c
index cea53d8ea4ab..b9ac932af8d0 100644
--- a/drivers/gpu/drm/meson/meson_plane.c
+++ b/drivers/gpu/drm/meson/meson_plane.c
@@ -13,6 +13,7 @@
 
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
+#include <drm/drm_blend.h>
 #include <drm/drm_device.h>
 #include <drm/drm_fb_cma_helper.h>
 #include <drm/drm_fourcc.h>
diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c
index 01104a4f7af6..c141548416aa 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c
@@ -12,6 +12,7 @@
 #include <linux/bits.h>
 
 #include <drm/drm_atomic.h>
+#include <drm/drm_blend.h>
 #include <drm/drm_crtc.h>
 #include <drm/drm_flip_work.h>
 #include <drm/drm_framebuffer.h>
diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c
index 7211e437e51f..edf324889b75 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c
@@ -12,6 +12,7 @@
 
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_uapi.h>
+#include <drm/drm_blend.h>
 #include <drm/drm_damage_helper.h>
 #include <drm/drm_framebuffer.h>
 #include <drm/drm_gem_atomic_helper.h>
diff --git a/drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c b/drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c
index 31447da0af25..e86421c69bd1 100644
--- a/drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c
+++ b/drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c
@@ -8,6 +8,7 @@
 #include <linux/sort.h>
 
 #include <drm/drm_atomic.h>
+#include <drm/drm_blend.h>
 #include <drm/drm_mode.h>
 #include <drm/drm_crtc.h>
 #include <drm/drm_flip_work.h>
diff --git a/drivers/gpu/drm/msm/disp/mdp5/mdp5_plane.c b/drivers/gpu/drm/msm/disp/mdp5/mdp5_plane.c
index a2fe90cdc256..bd2c4ac45601 100644
--- a/drivers/gpu/drm/msm/disp/mdp5/mdp5_plane.c
+++ b/drivers/gpu/drm/msm/disp/mdp5/mdp5_plane.c
@@ -6,6 +6,7 @@
  */
 
 #include <drm/drm_atomic.h>
+#include <drm/drm_blend.h>
 #include <drm/drm_damage_helper.h>
 #include <drm/drm_fourcc.h>
 #include <drm/drm_framebuffer.h>
diff --git a/drivers/gpu/drm/nouveau/dispnv50/wndw.c b/drivers/gpu/drm/nouveau/dispnv50/wndw.c
index bb8a4601e0d9..ef21cfa2b28e 100644
--- a/drivers/gpu/drm/nouveau/dispnv50/wndw.c
+++ b/drivers/gpu/drm/nouveau/dispnv50/wndw.c
@@ -32,6 +32,7 @@
 
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
+#include <drm/drm_blend.h>
 #include <drm/drm_gem_atomic_helper.h>
 #include <drm/drm_fourcc.h>
 
diff --git a/drivers/gpu/drm/omapdrm/omap_fb.c b/drivers/gpu/drm/omapdrm/omap_fb.c
index 0c4a17347fdc..1d414b33fee3 100644
--- a/drivers/gpu/drm/omapdrm/omap_fb.c
+++ b/drivers/gpu/drm/omapdrm/omap_fb.c
@@ -6,6 +6,7 @@
 
 #include <linux/dma-mapping.h>
 
+#include <drm/drm_blend.h>
 #include <drm/drm_modeset_helper.h>
 #include <drm/drm_fourcc.h>
 #include <drm/drm_framebuffer.h>
diff --git a/drivers/gpu/drm/omapdrm/omap_plane.c b/drivers/gpu/drm/omapdrm/omap_plane.c
index 1294b3328f09..b6cb537f7689 100644
--- a/drivers/gpu/drm/omapdrm/omap_plane.c
+++ b/drivers/gpu/drm/omapdrm/omap_plane.c
@@ -6,6 +6,7 @@
 
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
+#include <drm/drm_blend.h>
 #include <drm/drm_gem_atomic_helper.h>
 #include <drm/drm_plane_helper.h>
 #include <drm/drm_fourcc.h>
diff --git a/drivers/gpu/drm/rcar-du/rcar_du_plane.c b/drivers/gpu/drm/rcar-du/rcar_du_plane.c
index 7099eedf0ccb..e98b76db703a 100644
--- a/drivers/gpu/drm/rcar-du/rcar_du_plane.c
+++ b/drivers/gpu/drm/rcar-du/rcar_du_plane.c
@@ -9,6 +9,7 @@
 
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
+#include <drm/drm_blend.h>
 #include <drm/drm_crtc.h>
 #include <drm/drm_device.h>
 #include <drm/drm_fb_cma_helper.h>
diff --git a/drivers/gpu/drm/rcar-du/rcar_du_vsp.c b/drivers/gpu/drm/rcar-du/rcar_du_vsp.c
index 3f55d1d0d094..e778fd52f890 100644
--- a/drivers/gpu/drm/rcar-du/rcar_du_vsp.c
+++ b/drivers/gpu/drm/rcar-du/rcar_du_vsp.c
@@ -9,6 +9,7 @@
 
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
+#include <drm/drm_blend.h>
 #include <drm/drm_crtc.h>
 #include <drm/drm_fb_cma_helper.h>
 #include <drm/drm_fourcc.h>
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index 517a31c7078e..82b011dce5e7 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -20,6 +20,7 @@
 #include <drm/drm.h>
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_uapi.h>
+#include <drm/drm_blend.h>
 #include <drm/drm_crtc.h>
 #include <drm/drm_flip_work.h>
 #include <drm/drm_fourcc.h>
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index fe867263c7d9..16791693b8e6 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -22,6 +22,7 @@
 #include <drm/drm.h>
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_uapi.h>
+#include <drm/drm_blend.h>
 #include <drm/drm_crtc.h>
 #include <drm/drm_crtc_helper.h>
 #include <drm/drm_debugfs.h>
diff --git a/drivers/gpu/drm/sprd/sprd_dpu.c b/drivers/gpu/drm/sprd/sprd_dpu.c
index 907d0c259c46..3664089b6983 100644
--- a/drivers/gpu/drm/sprd/sprd_dpu.c
+++ b/drivers/gpu/drm/sprd/sprd_dpu.c
@@ -17,6 +17,7 @@
 #include <linux/workqueue.h>
 
 #include <drm/drm_atomic_helper.h>
+#include <drm/drm_blend.h>
 #include <drm/drm_crtc_helper.h>
 #include <drm/drm_fb_cma_helper.h>
 #include <drm/drm_framebuffer.h>
diff --git a/drivers/gpu/drm/sti/sti_plane.c b/drivers/gpu/drm/sti/sti_plane.c
index 59814663abc6..c74b524663ab 100644
--- a/drivers/gpu/drm/sti/sti_plane.c
+++ b/drivers/gpu/drm/sti/sti_plane.c
@@ -8,6 +8,7 @@
 
 #include <linux/types.h>
 
+#include <drm/drm_blend.h>
 #include <drm/drm_fb_cma_helper.h>
 #include <drm/drm_fourcc.h>
 #include <drm/drm_framebuffer.h>
diff --git a/drivers/gpu/drm/stm/ltdc.c b/drivers/gpu/drm/stm/ltdc.c
index e9c4ee8d84b3..76230f775081 100644
--- a/drivers/gpu/drm/stm/ltdc.c
+++ b/drivers/gpu/drm/stm/ltdc.c
@@ -23,6 +23,7 @@
 
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
+#include <drm/drm_blend.h>
 #include <drm/drm_bridge.h>
 #include <drm/drm_device.h>
 #include <drm/drm_edid.h>
diff --git a/drivers/gpu/drm/sun4i/sun4i_backend.c b/drivers/gpu/drm/sun4i/sun4i_backend.c
index 80ffc57bdc02..287e8c4bbaea 100644
--- a/drivers/gpu/drm/sun4i/sun4i_backend.c
+++ b/drivers/gpu/drm/sun4i/sun4i_backend.c
@@ -17,6 +17,7 @@
 
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
+#include <drm/drm_blend.h>
 #include <drm/drm_crtc.h>
 #include <drm/drm_fb_cma_helper.h>
 #include <drm/drm_fourcc.h>
diff --git a/drivers/gpu/drm/sun4i/sun4i_framebuffer.c b/drivers/gpu/drm/sun4i/sun4i_framebuffer.c
index 6825ef46f43f..260136d60ceb 100644
--- a/drivers/gpu/drm/sun4i/sun4i_framebuffer.c
+++ b/drivers/gpu/drm/sun4i/sun4i_framebuffer.c
@@ -8,6 +8,7 @@
 
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
+#include <drm/drm_blend.h>
 #include <drm/drm_gem_framebuffer_helper.h>
 
 #include "sun4i_drv.h"
diff --git a/drivers/gpu/drm/sun4i/sun4i_layer.c b/drivers/gpu/drm/sun4i/sun4i_layer.c
index 6d43080791a0..a0920e173fcc 100644
--- a/drivers/gpu/drm/sun4i/sun4i_layer.c
+++ b/drivers/gpu/drm/sun4i/sun4i_layer.c
@@ -8,6 +8,7 @@
 
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
+#include <drm/drm_blend.h>
 #include <drm/drm_gem_atomic_helper.h>
 #include <drm/drm_plane_helper.h>
 
diff --git a/drivers/gpu/drm/sun4i/sun8i_ui_layer.c b/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
index 005d939d4c14..36da962de394 100644
--- a/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
+++ b/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
@@ -11,6 +11,7 @@
 
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
+#include <drm/drm_blend.h>
 #include <drm/drm_crtc.h>
 #include <drm/drm_fb_cma_helper.h>
 #include <drm/drm_fourcc.h>
diff --git a/drivers/gpu/drm/sun4i/sun8i_vi_layer.c b/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
index 91b390594128..1fee6499bdd3 100644
--- a/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
+++ b/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
@@ -5,6 +5,7 @@
 
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
+#include <drm/drm_blend.h>
 #include <drm/drm_crtc.h>
 #include <drm/drm_fb_cma_helper.h>
 #include <drm/drm_framebuffer.h>
diff --git a/drivers/gpu/drm/tegra/dc.c b/drivers/gpu/drm/tegra/dc.c
index d2fce67dfbfd..a2a731e8a8a3 100644
--- a/drivers/gpu/drm/tegra/dc.c
+++ b/drivers/gpu/drm/tegra/dc.c
@@ -21,6 +21,7 @@
 
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
+#include <drm/drm_blend.h>
 #include <drm/drm_debugfs.h>
 #include <drm/drm_fourcc.h>
 #include <drm/drm_framebuffer.h>
diff --git a/drivers/gpu/drm/tegra/hub.c b/drivers/gpu/drm/tegra/hub.c
index b762ed7b6bb4..61729ea9f0af 100644
--- a/drivers/gpu/drm/tegra/hub.c
+++ b/drivers/gpu/drm/tegra/hub.c
@@ -16,6 +16,7 @@
 
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
+#include <drm/drm_blend.h>
 #include <drm/drm_fourcc.h>
 #include <drm/drm_framebuffer.h>
 #include <drm/drm_probe_helper.h>
diff --git a/drivers/gpu/drm/tidss/tidss_dispc.c b/drivers/gpu/drm/tidss/tidss_dispc.c
index 592203c11811..73f591cfb5a0 100644
--- a/drivers/gpu/drm/tidss/tidss_dispc.c
+++ b/drivers/gpu/drm/tidss/tidss_dispc.c
@@ -21,6 +21,7 @@
 #include <linux/regmap.h>
 #include <linux/sys_soc.h>
 
+#include <drm/drm_blend.h>
 #include <drm/drm_fourcc.h>
 #include <drm/drm_fb_cma_helper.h>
 #include <drm/drm_framebuffer.h>
diff --git a/drivers/gpu/drm/tidss/tidss_plane.c b/drivers/gpu/drm/tidss/tidss_plane.c
index 23ac31879186..68a85a94ffcb 100644
--- a/drivers/gpu/drm/tidss/tidss_plane.c
+++ b/drivers/gpu/drm/tidss/tidss_plane.c
@@ -6,6 +6,7 @@
 
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
+#include <drm/drm_blend.h>
 #include <drm/drm_crtc.h>
 #include <drm/drm_crtc_helper.h>
 #include <drm/drm_fourcc.h>
diff --git a/drivers/gpu/drm/vc4/vc4_plane.c b/drivers/gpu/drm/vc4/vc4_plane.c
index 3a1937af17ef..311077647394 100644
--- a/drivers/gpu/drm/vc4/vc4_plane.c
+++ b/drivers/gpu/drm/vc4/vc4_plane.c
@@ -18,6 +18,7 @@
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_atomic_uapi.h>
+#include <drm/drm_blend.h>
 #include <drm/drm_fb_cma_helper.h>
 #include <drm/drm_fourcc.h>
 #include <drm/drm_framebuffer.h>
diff --git a/include/drm/drm_crtc.h b/include/drm/drm_crtc.h
index 042da23b166c..7fbccbe8b4c6 100644
--- a/include/drm/drm_crtc.h
+++ b/include/drm/drm_crtc.h
@@ -41,7 +41,6 @@
 #include <drm/drm_device.h>
 #include <drm/drm_property.h>
 #include <drm/drm_plane.h>
-#include <drm/drm_blend.h>
 #include <drm/drm_color_mgmt.h>
 #include <drm/drm_debugfs_crc.h>
 #include <drm/drm_mode_config.h>
-- 
2.35.1

