Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F8135A4D9F
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Aug 2022 15:19:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9A6E10F264;
	Mon, 29 Aug 2022 13:18:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 825D110F264
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Aug 2022 13:18:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661779124; x=1693315124;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=y87Tk/QpUb70Dpf8J1jjHTYl2cPMbUJEkYEChVd5isE=;
 b=QmnON7/VufHezegIrlM70XmpI7dRik/v8724NCnBeeeSpxbQlNwSFJnN
 GxYhzQVLvfRQC4zgwfy1scXJK1oNbxOFwpz/aUk1JBshOIuApVtLDNXEL
 tqVgy3WulRPsU4I6D09LMR+Q+1lZaLZsz4C+AuNQIHMpD9nsmaofawpNC
 0wZaY3HsCbaJk4Qs6VHHVeiQ9Wms7NM8QiLprTGXqZtqflgcLXmbiavM4
 6ixi/AOGWFX9QudhEyErDDCrMpT+YOrV2M7vYYickOIIac+9EJguMMMTa
 TQfdNW7Y//q2SMdV6H7fO7CDcmZ/RYLzrg7qcNqsCbcPb9UDV8wjpSQPS g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10454"; a="293634392"
X-IronPort-AV: E=Sophos;i="5.93,272,1654585200"; d="scan'208";a="293634392"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2022 06:18:43 -0700
X-IronPort-AV: E=Sophos;i="5.93,272,1654585200"; d="scan'208";a="588163798"
Received: from idecesar-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.53.198])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2022 06:18:42 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 29 Aug 2022 16:18:09 +0300
Message-Id: <c8b9e2fdc5c226ffb71759a20e561c832a774ba5.1661779055.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1661779055.git.jani.nikula@intel.com>
References: <cover.1661779055.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 02/18] drm/i915: move and group max_bw and
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

v2: Rebase

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c       | 42 +++++++++----------
 .../gpu/drm/i915/display/intel_display_core.h | 21 ++++++++++
 .../drm/i915/display/intel_modeset_setup.c    |  4 +-
 drivers/gpu/drm/i915/i915_drv.h               | 19 ---------
 4 files changed, 44 insertions(+), 42 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index c87bc3117ae4..61308ebe48aa 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -324,7 +324,7 @@ static int icl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel
 	int ipqdepth, ipqdepthpch = 16;
 	int dclk_max;
 	int maxdebw;
-	int num_groups = ARRAY_SIZE(dev_priv->max_bw);
+	int num_groups = ARRAY_SIZE(dev_priv->display.bw.max);
 	int i, ret;
 
 	ret = icl_get_qgv_points(dev_priv, &qi, is_y_tile);
@@ -340,7 +340,7 @@ static int icl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel
 	qi.deinterleave = DIV_ROUND_UP(num_channels, is_y_tile ? 4 : 2);
 
 	for (i = 0; i < num_groups; i++) {
-		struct intel_bw_info *bi = &dev_priv->max_bw[i];
+		struct intel_bw_info *bi = &dev_priv->display.bw.max[i];
 		int clpchgroup;
 		int j;
 
@@ -395,7 +395,7 @@ static int tgl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel
 	int dclk_max;
 	int maxdebw, peakbw;
 	int clperchgroup;
-	int num_groups = ARRAY_SIZE(dev_priv->max_bw);
+	int num_groups = ARRAY_SIZE(dev_priv->display.bw.max);
 	int i, ret;
 
 	ret = icl_get_qgv_points(dev_priv, &qi, is_y_tile);
@@ -431,7 +431,7 @@ static int tgl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel
 	clperchgroup = 4 * DIV_ROUND_UP(8, num_channels) * qi.deinterleave;
 
 	for (i = 0; i < num_groups; i++) {
-		struct intel_bw_info *bi = &dev_priv->max_bw[i];
+		struct intel_bw_info *bi = &dev_priv->display.bw.max[i];
 		struct intel_bw_info *bi_next;
 		int clpchgroup;
 		int j;
@@ -439,7 +439,7 @@ static int tgl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel
 		clpchgroup = (sa->deburst * qi.deinterleave / num_channels) << i;
 
 		if (i < num_groups - 1) {
-			bi_next = &dev_priv->max_bw[i + 1];
+			bi_next = &dev_priv->display.bw.max[i + 1];
 
 			if (clpchgroup < clperchgroup)
 				bi_next->num_planes = (ipqdepth - clpchgroup) /
@@ -500,7 +500,7 @@ static int tgl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel
 static void dg2_get_bw_info(struct drm_i915_private *i915)
 {
 	unsigned int deratedbw = IS_DG2_G11(i915) ? 38000 : 50000;
-	int num_groups = ARRAY_SIZE(i915->max_bw);
+	int num_groups = ARRAY_SIZE(i915->display.bw.max);
 	int i;
 
 	/*
@@ -511,7 +511,7 @@ static void dg2_get_bw_info(struct drm_i915_private *i915)
 	 * whereas DG2-G11 platforms have 38 GB/s.
 	 */
 	for (i = 0; i < num_groups; i++) {
-		struct intel_bw_info *bi = &i915->max_bw[i];
+		struct intel_bw_info *bi = &i915->display.bw.max[i];
 
 		bi->num_planes = 1;
 		/* Need only one dummy QGV point per group */
@@ -532,9 +532,9 @@ static unsigned int icl_max_bw(struct drm_i915_private *dev_priv,
 	 */
 	num_planes = max(1, num_planes);
 
-	for (i = 0; i < ARRAY_SIZE(dev_priv->max_bw); i++) {
+	for (i = 0; i < ARRAY_SIZE(dev_priv->display.bw.max); i++) {
 		const struct intel_bw_info *bi =
-			&dev_priv->max_bw[i];
+			&dev_priv->display.bw.max[i];
 
 		/*
 		 * Pcode will not expose all QGV points when
@@ -560,9 +560,9 @@ static unsigned int tgl_max_bw(struct drm_i915_private *dev_priv,
 	 */
 	num_planes = max(1, num_planes);
 
-	for (i = ARRAY_SIZE(dev_priv->max_bw) - 1; i >= 0; i--) {
+	for (i = ARRAY_SIZE(dev_priv->display.bw.max) - 1; i >= 0; i--) {
 		const struct intel_bw_info *bi =
-			&dev_priv->max_bw[i];
+			&dev_priv->display.bw.max[i];
 
 		/*
 		 * Pcode will not expose all QGV points when
@@ -575,14 +575,14 @@ static unsigned int tgl_max_bw(struct drm_i915_private *dev_priv,
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
@@ -703,7 +703,7 @@ intel_atomic_get_old_bw_state(struct intel_atomic_state *state)
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	struct intel_global_state *bw_state;
 
-	bw_state = intel_atomic_get_old_global_obj_state(state, &dev_priv->bw_obj);
+	bw_state = intel_atomic_get_old_global_obj_state(state, &dev_priv->display.bw.obj);
 
 	return to_intel_bw_state(bw_state);
 }
@@ -714,7 +714,7 @@ intel_atomic_get_new_bw_state(struct intel_atomic_state *state)
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	struct intel_global_state *bw_state;
 
-	bw_state = intel_atomic_get_new_global_obj_state(state, &dev_priv->bw_obj);
+	bw_state = intel_atomic_get_new_global_obj_state(state, &dev_priv->display.bw.obj);
 
 	return to_intel_bw_state(bw_state);
 }
@@ -725,7 +725,7 @@ intel_atomic_get_bw_state(struct intel_atomic_state *state)
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	struct intel_global_state *bw_state;
 
-	bw_state = intel_atomic_get_global_obj_state(state, &dev_priv->bw_obj);
+	bw_state = intel_atomic_get_global_obj_state(state, &dev_priv->display.bw.obj);
 	if (IS_ERR(bw_state))
 		return ERR_CAST(bw_state);
 
@@ -932,8 +932,8 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_state *state,
 
 static u16 icl_qgv_points_mask(struct drm_i915_private *i915)
 {
-	unsigned int num_psf_gv_points = i915->max_bw[0].num_psf_gv_points;
-	unsigned int num_qgv_points = i915->max_bw[0].num_qgv_points;
+	unsigned int num_psf_gv_points = i915->display.bw.max[0].num_psf_gv_points;
+	unsigned int num_qgv_points = i915->display.bw.max[0].num_qgv_points;
 	u16 qgv_points = 0, psf_points = 0;
 
 	/*
@@ -1006,8 +1006,8 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
 	int i, ret;
 	u16 qgv_points = 0, psf_points = 0;
 	unsigned int max_bw_point = 0, max_bw = 0;
-	unsigned int num_qgv_points = dev_priv->max_bw[0].num_qgv_points;
-	unsigned int num_psf_gv_points = dev_priv->max_bw[0].num_psf_gv_points;
+	unsigned int num_qgv_points = dev_priv->display.bw.max[0].num_qgv_points;
+	unsigned int num_psf_gv_points = dev_priv->display.bw.max[0].num_psf_gv_points;
 	bool changed = false;
 
 	/* FIXME earlier gens need some checks too */
@@ -1162,7 +1162,7 @@ int intel_bw_init(struct drm_i915_private *dev_priv)
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
index 51afb5e744d7..2c63cdb64511 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -44,7 +44,6 @@
 #include "display/intel_dsb.h"
 #include "display/intel_fbc.h"
 #include "display/intel_frontbuffer.h"
-#include "display/intel_global_state.h"
 #include "display/intel_opregion.h"
 
 #include "gem/i915_gem_context_types.h"
@@ -204,14 +203,8 @@ i915_fence_timeout(const struct drm_i915_private *i915)
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
@@ -470,18 +463,6 @@ struct drm_i915_private {
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

