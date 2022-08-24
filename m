Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D8EB59FB1A
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 15:19:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA006B5268;
	Wed, 24 Aug 2022 13:18:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B230DB5142
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Aug 2022 13:17:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661347056; x=1692883056;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EFC8TAmmTbmFaz6haUgf51hJuMB4aNcXgjHsZduoBes=;
 b=bdyUt5GmQZ+8H+cqDJh4TfauTCSG23mesyBp9iioXynL/RLO2qlHv0J2
 QojTHCmYdCiZa/8MQ2yt1w54sfsa+K8IKFmfs0mP9/m2dWgkVbjNQur7I
 FuLwwAz/t7d9jwf645DZ/b/K3NsxwLknlJlbrNsKsh9s1jVpWF6VIL016
 ABEoTeIAbv8tabX/ewwBONOWYx9LJZXseK5lG5+EWPxWlBH4Pi3P99Z0b
 WCsQqZz1yZF63UYR4eA/3aS5eqNLXbXnbfBj9henM1Lxzv4PtaGOeD1oG
 MVMhDAUU7aDvhPFUo2z8hxjAba8k4ZTjUiRQPPueTtYoBTMN22VKqAc/L w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="294747942"
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="294747942"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2022 06:17:35 -0700
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="670499880"
Received: from zlim2-mobl.gar.corp.intel.com (HELO localhost) ([10.252.52.23])
 by fmsmga008-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Aug 2022 06:17:33 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Aug 2022 16:15:45 +0300
Message-Id: <d5e3d307afaaaff569227ff2fb55b40c85044c68.1661346845.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1661346845.git.jani.nikula@intel.com>
References: <cover.1661346845.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 19/38] drm/i915: move and group max_bw and
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
Cc: jani.nikula@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move display bandwidth related members under drm_i915_private display
sub-struct.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
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
index 4a184eac57c3..0ea479b6c0c9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -14,6 +14,7 @@
 #include "intel_display.h"
 #include "intel_dmc.h"
 #include "intel_dpll_mgr.h"
+#include "intel_global_state.h"
 #include "intel_gmbus.h"
 #include "intel_pm_types.h"
 
@@ -34,6 +35,12 @@ struct intel_hotplug_funcs;
 struct intel_initial_plane_config;
 struct intel_overlay;
 
+/* Amount of SAGV/QGV points, BSpec precisely defines this */
+#define I915_NUM_QGV_POINTS 8
+
+/* Amount of PSF GV points, BSpec precisely defines this */
+#define I915_NUM_PSF_GV_POINTS 3
+
 struct intel_display_funcs {
 	/*
 	 * Returns the active state of the crtc, and if the crtc is active,
@@ -208,6 +215,20 @@ struct intel_display {
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
index 4b30e8228a5e..5010a18fd993 100644
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
index f505344f5c02..23b9e889f4e2 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -44,7 +44,6 @@
 #include "display/intel_dsb.h"
 #include "display/intel_fbc.h"
 #include "display/intel_frontbuffer.h"
-#include "display/intel_global_state.h"
 #include "display/intel_opregion.h"
 
 #include "gem/i915_gem_context_types.h"
@@ -203,14 +202,8 @@ i915_fence_timeout(const struct drm_i915_private *i915)
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
@@ -468,18 +461,6 @@ struct drm_i915_private {
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

