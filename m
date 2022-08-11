Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F61158FF01
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Aug 2022 17:15:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D110B3D68;
	Thu, 11 Aug 2022 15:14:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA4A2B3DBD
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Aug 2022 15:14:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660230867; x=1691766867;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1nYDk6yxMvcUuR17SqNWH6Y8nlS5VFBWsEF1IVy4ZDc=;
 b=Zskv5cnt4pSpIDevwVpdehuUrhudU4bfae3ZzmLqtJCTTAUhAEE+ofah
 yZMBjm3+E841PpwKCnlpF0dzw0oYjyV7aC3706WClObvGLaKW4HGMQ2W/
 eds/seLHHofjHVtAmj+vVduiND1e8uYyxsXnuj55iYk1yFIeb3+Otfhl8
 ozrhECzqVazz6lOoiIlF6Y+QD9EyTUgIoX06gbxY5ZFODC/On62DqUBK5
 4bXOroNHrvfbPId45I78upg56hXrDNWKeSybN1lI712xu0iysgbj2poTh
 cqEBvjpgk+JEEOTKc/G3Nvzu3SqaMkQ/Jxrc2aGK80pwRAdIc7LKVZW1W Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="291373302"
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="291373302"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 08:09:32 -0700
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="605575959"
Received: from gdogaru-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.48.102])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 08:09:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Aug 2022 18:07:31 +0300
Message-Id: <b7162639d0f645946a8e62299ef736a7ba3d8cc4.1660230121.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1660230121.git.jani.nikula@intel.com>
References: <cover.1660230121.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 20/39] drm/i915: move and group max_bw and
 bw_obj under display.bw
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
Cc: jani.nikula@intel.com, lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move display related members under drm_i915_private display sub-struct.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c       | 42 +++++++++----------
 .../gpu/drm/i915/display/intel_display_core.h | 21 ++++++++++
 .../drm/i915/display/intel_modeset_setup.c    |  4 +-
 drivers/gpu/drm/i915/i915_drv.h               | 19 ---------
 4 files changed, 44 insertions(+), 42 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 4e60ad847eb0..3eb281f2cd5e 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -292,7 +292,7 @@ static int icl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel
 	int ipqdepth, ipqdepthpch = 16;
 	int dclk_max;
 	int maxdebw;
-	int num_groups = ARRAY_SIZE(dev_priv->max_bw);
+	int num_groups = ARRAY_SIZE(dev_priv->display.bw.max);
 	int i, ret;
 
 	ret = icl_get_qgv_points(dev_priv, &qi, is_y_tile);
@@ -308,7 +308,7 @@ static int icl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel
 	qi.deinterleave = DIV_ROUND_UP(num_channels, is_y_tile ? 4 : 2);
 
 	for (i = 0; i < num_groups; i++) {
-		struct intel_bw_info *bi = &dev_priv->max_bw[i];
+		struct intel_bw_info *bi = &dev_priv->display.bw.max[i];
 		int clpchgroup;
 		int j;
 
@@ -363,7 +363,7 @@ static int tgl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel
 	int dclk_max;
 	int maxdebw, peakbw;
 	int clperchgroup;
-	int num_groups = ARRAY_SIZE(dev_priv->max_bw);
+	int num_groups = ARRAY_SIZE(dev_priv->display.bw.max);
 	int i, ret;
 
 	ret = icl_get_qgv_points(dev_priv, &qi, is_y_tile);
@@ -399,13 +399,13 @@ static int tgl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel
 	clperchgroup = 4 * DIV_ROUND_UP(8, num_channels) * qi.deinterleave;
 
 	for (i = 0; i < num_groups; i++) {
-		struct intel_bw_info *bi = &dev_priv->max_bw[i];
+		struct intel_bw_info *bi = &dev_priv->display.bw.max[i];
 		struct intel_bw_info *bi_next;
 		int clpchgroup;
 		int j;
 
 		if (i < num_groups - 1)
-			bi_next = &dev_priv->max_bw[i + 1];
+			bi_next = &dev_priv->display.bw.max[i + 1];
 
 		clpchgroup = (sa->deburst * qi.deinterleave / num_channels) << i;
 
@@ -466,7 +466,7 @@ static int tgl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel
 static void dg2_get_bw_info(struct drm_i915_private *i915)
 {
 	unsigned int deratedbw = IS_DG2_G11(i915) ? 38000 : 50000;
-	int num_groups = ARRAY_SIZE(i915->max_bw);
+	int num_groups = ARRAY_SIZE(i915->display.bw.max);
 	int i;
 
 	/*
@@ -477,7 +477,7 @@ static void dg2_get_bw_info(struct drm_i915_private *i915)
 	 * whereas DG2-G11 platforms have 38 GB/s.
 	 */
 	for (i = 0; i < num_groups; i++) {
-		struct intel_bw_info *bi = &i915->max_bw[i];
+		struct intel_bw_info *bi = &i915->display.bw.max[i];
 
 		bi->num_planes = 1;
 		/* Need only one dummy QGV point per group */
@@ -498,9 +498,9 @@ static unsigned int icl_max_bw(struct drm_i915_private *dev_priv,
 	 */
 	num_planes = max(1, num_planes);
 
-	for (i = 0; i < ARRAY_SIZE(dev_priv->max_bw); i++) {
+	for (i = 0; i < ARRAY_SIZE(dev_priv->display.bw.max); i++) {
 		const struct intel_bw_info *bi =
-			&dev_priv->max_bw[i];
+			&dev_priv->display.bw.max[i];
 
 		/*
 		 * Pcode will not expose all QGV points when
@@ -526,9 +526,9 @@ static unsigned int tgl_max_bw(struct drm_i915_private *dev_priv,
 	 */
 	num_planes = max(1, num_planes);
 
-	for (i = ARRAY_SIZE(dev_priv->max_bw) - 1; i >= 0; i--) {
+	for (i = ARRAY_SIZE(dev_priv->display.bw.max) - 1; i >= 0; i--) {
 		const struct intel_bw_info *bi =
-			&dev_priv->max_bw[i];
+			&dev_priv->display.bw.max[i];
 
 		/*
 		 * Pcode will not expose all QGV points when
@@ -541,14 +541,14 @@ static unsigned int tgl_max_bw(struct drm_i915_private *dev_priv,
 			return bi->deratedbw[qgv_point];
 	}
 
-	return dev_priv->max_bw[0].deratedbw[qgv_point];
+	return dev_priv->display.bw.max[0].deratedbw[qgv_point];
 }
 
 static unsigned int adl_psf_bw(struct drm_i915_private *dev_priv,
 			       int psf_gv_point)
 {
 	const struct intel_bw_info *bi =
-			&dev_priv->max_bw[0];
+			&dev_priv->display.bw.max[0];
 
 	return bi->psf_bw[psf_gv_point];
 }
@@ -667,7 +667,7 @@ intel_atomic_get_old_bw_state(struct intel_atomic_state *state)
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	struct intel_global_state *bw_state;
 
-	bw_state = intel_atomic_get_old_global_obj_state(state, &dev_priv->bw_obj);
+	bw_state = intel_atomic_get_old_global_obj_state(state, &dev_priv->display.bw.obj);
 
 	return to_intel_bw_state(bw_state);
 }
@@ -678,7 +678,7 @@ intel_atomic_get_new_bw_state(struct intel_atomic_state *state)
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	struct intel_global_state *bw_state;
 
-	bw_state = intel_atomic_get_new_global_obj_state(state, &dev_priv->bw_obj);
+	bw_state = intel_atomic_get_new_global_obj_state(state, &dev_priv->display.bw.obj);
 
 	return to_intel_bw_state(bw_state);
 }
@@ -689,7 +689,7 @@ intel_atomic_get_bw_state(struct intel_atomic_state *state)
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	struct intel_global_state *bw_state;
 
-	bw_state = intel_atomic_get_global_obj_state(state, &dev_priv->bw_obj);
+	bw_state = intel_atomic_get_global_obj_state(state, &dev_priv->display.bw.obj);
 	if (IS_ERR(bw_state))
 		return ERR_CAST(bw_state);
 
@@ -896,8 +896,8 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_state *state,
 
 static u16 icl_qgv_points_mask(struct drm_i915_private *i915)
 {
-	unsigned int num_psf_gv_points = i915->max_bw[0].num_psf_gv_points;
-	unsigned int num_qgv_points = i915->max_bw[0].num_qgv_points;
+	unsigned int num_psf_gv_points = i915->display.bw.max[0].num_psf_gv_points;
+	unsigned int num_qgv_points = i915->display.bw.max[0].num_qgv_points;
 	u16 qgv_points = 0, psf_points = 0;
 
 	/*
@@ -970,8 +970,8 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
 	int i, ret;
 	u16 qgv_points = 0, psf_points = 0;
 	unsigned int max_bw_point = 0, max_bw = 0;
-	unsigned int num_qgv_points = dev_priv->max_bw[0].num_qgv_points;
-	unsigned int num_psf_gv_points = dev_priv->max_bw[0].num_psf_gv_points;
+	unsigned int num_qgv_points = dev_priv->display.bw.max[0].num_qgv_points;
+	unsigned int num_psf_gv_points = dev_priv->display.bw.max[0].num_psf_gv_points;
 	bool changed = false;
 
 	/* FIXME earlier gens need some checks too */
@@ -1126,7 +1126,7 @@ int intel_bw_init(struct drm_i915_private *dev_priv)
 	if (!state)
 		return -ENOMEM;
 
-	intel_atomic_global_obj_init(dev_priv, &dev_priv->bw_obj,
+	intel_atomic_global_obj_init(dev_priv, &dev_priv->display.bw.obj,
 				     &state->base, &intel_bw_funcs);
 
 	return 0;
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index ab68c8799d1c..65c3394d2e7f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -14,6 +14,7 @@
 #include "intel_display.h"
 #include "intel_dmc.h"
 #include "intel_dpll_mgr.h"
+#include "intel_global_state.h"
 #include "intel_gmbus.h"
 #include "intel_pm_types.h"
 
@@ -35,6 +36,12 @@ struct intel_hotplug_funcs;
 struct intel_initial_plane_config;
 struct intel_overlay;
 
+/* Amount of SAGV/QGV points, BSpec precisely defines this */
+#define I915_NUM_QGV_POINTS 8
+
+/* Amount of PSF GV points, BSpec precisely defines this */
+#define I915_NUM_PSF_GV_POINTS 3
+
 struct intel_display_funcs {
 	/* Returns the active state of the crtc, and if the crtc is active,
 	 * fills out the pipe-config with the hw state. */
@@ -210,6 +217,20 @@ struct intel_display {
 	} funcs;
 
 	/* Grouping using anonymous structs. Keep sorted. */
+	struct {
+		struct intel_global_obj obj;
+
+		struct intel_bw_info {
+			/* for each QGV point */
+			unsigned int deratedbw[I915_NUM_QGV_POINTS];
+			/* for each PSF GV point */
+			unsigned int psf_bw[I915_NUM_PSF_GV_POINTS];
+			u8 num_qgv_points;
+			u8 num_psf_gv_points;
+			u8 num_planes;
+		} max[6];
+	} bw;
+
 	struct {
 		/* list of fbdev register on this device */
 		struct intel_fbdev *fbdev;
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index e0d5c58c2037..e0a6ea61227e 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -30,7 +30,7 @@ static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
 	struct intel_encoder *encoder;
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	struct intel_bw_state *bw_state =
-		to_intel_bw_state(i915->bw_obj.state);
+		to_intel_bw_state(i915->display.bw.obj.state);
 	struct intel_cdclk_state *cdclk_state =
 		to_intel_cdclk_state(i915->cdclk.obj.state);
 	struct intel_dbuf_state *dbuf_state =
@@ -535,7 +535,7 @@ static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
 
 	for_each_intel_crtc(&i915->drm, crtc) {
 		struct intel_bw_state *bw_state =
-			to_intel_bw_state(i915->bw_obj.state);
+			to_intel_bw_state(i915->display.bw.obj.state);
 		struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 		struct intel_plane *plane;
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index daa6266ef127..645eafa53a8f 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -44,7 +44,6 @@
 #include "display/intel_dsb.h"
 #include "display/intel_fbc.h"
 #include "display/intel_frontbuffer.h"
-#include "display/intel_global_state.h"
 #include "display/intel_opregion.h"
 
 #include "gem/i915_gem_context_types.h"
@@ -202,14 +201,8 @@ i915_fence_timeout(const struct drm_i915_private *i915)
 	return i915_fence_context_timeout(i915, U64_MAX);
 }
 
-/* Amount of SAGV/QGV points, BSpec precisely defines this */
-#define I915_NUM_QGV_POINTS 8
-
 #define HAS_HW_SAGV_WM(i915) (DISPLAY_VER(i915) >= 13 && !IS_DGFX(i915))
 
-/* Amount of PSF GV points, BSpec precisely defines this */
-#define I915_NUM_PSF_GV_POINTS 3
-
 struct intel_vbt_data {
 	/* bdb version */
 	u16 version;
@@ -464,18 +457,6 @@ struct drm_i915_private {
 		u8 num_psf_gv_points;
 	} dram_info;
 
-	struct intel_bw_info {
-		/* for each QGV point */
-		unsigned int deratedbw[I915_NUM_QGV_POINTS];
-		/* for each PSF GV point */
-		unsigned int psf_bw[I915_NUM_PSF_GV_POINTS];
-		u8 num_qgv_points;
-		u8 num_psf_gv_points;
-		u8 num_planes;
-	} max_bw[6];
-
-	struct intel_global_obj bw_obj;
-
 	struct intel_runtime_pm runtime_pm;
 
 	struct i915_perf perf;
-- 
2.34.1

