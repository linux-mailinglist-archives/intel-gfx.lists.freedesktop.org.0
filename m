Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EBE2D1B56DD
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2020 10:02:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B64E6E3FC;
	Thu, 23 Apr 2020 08:02:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07D7E6E35D
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Apr 2020 08:02:25 +0000 (UTC)
IronPort-SDR: +SDDh1VZeMaH3IiSBFgp26R4eB85IzKy52dZlPT+xhSrRgXAt0+PbFPXW3EXIx2fhD9SBpBDRn
 BKiZP8gvytjw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2020 01:02:25 -0700
IronPort-SDR: SvsH/8Es+cfdoRHame6fo1r3pvG9SMYSarZUVuAig/oSS1iA8Qj8cP5iW+FgiTUqQckKwkirNC
 42u+rTB30+4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,306,1583222400"; d="scan'208";a="259344445"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.89])
 by orsmga006.jf.intel.com with ESMTP; 23 Apr 2020 01:02:24 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Apr 2020 10:58:58 +0300
Message-Id: <20200423075902.21892-6-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20200423075902.21892-1-stanislav.lisovskiy@intel.com>
References: <20200423075902.21892-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v26 5/9] drm/i915: Add TGL+ SAGV support
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Starting from TGL we need to have a separate wm0
values for SAGV and non-SAGV which affects
how calculations are done.

v2: Remove long lines
v3: Removed COLOR_PLANE enum references
v4, v5: Fixed rebase conflict

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |   8 +-
 .../drm/i915/display/intel_display_types.h    |   3 +
 drivers/gpu/drm/i915/intel_pm.c               | 128 +++++++++++++++++-
 3 files changed, 130 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index adb08a00bb57..0380a42b1d41 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -13948,7 +13948,9 @@ static void verify_wm_state(struct intel_crtc *crtc,
 		/* Watermarks */
 		for (level = 0; level <= max_level; level++) {
 			if (skl_wm_level_equals(&hw_plane_wm->wm[level],
-						&sw_plane_wm->wm[level]))
+						&sw_plane_wm->wm[level]) ||
+			    (level == 0 && skl_wm_level_equals(&hw_plane_wm->wm[level],
+							       &sw_plane_wm->sagv_wm0)))
 				continue;
 
 			drm_err(&dev_priv->drm,
@@ -14003,7 +14005,9 @@ static void verify_wm_state(struct intel_crtc *crtc,
 		/* Watermarks */
 		for (level = 0; level <= max_level; level++) {
 			if (skl_wm_level_equals(&hw_plane_wm->wm[level],
-						&sw_plane_wm->wm[level]))
+						&sw_plane_wm->wm[level]) ||
+			    (level == 0 && skl_wm_level_equals(&hw_plane_wm->wm[level],
+							       &sw_plane_wm->sagv_wm0)))
 				continue;
 
 			drm_err(&dev_priv->drm,
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index ba8c08145c88..23a425e565a8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -688,11 +688,14 @@ struct skl_plane_wm {
 	struct skl_wm_level wm[8];
 	struct skl_wm_level uv_wm[8];
 	struct skl_wm_level trans_wm;
+	struct skl_wm_level sagv_wm0;
+	struct skl_wm_level uv_sagv_wm0;
 	bool is_planar;
 };
 
 struct skl_pipe_wm {
 	struct skl_plane_wm planes[I915_MAX_PLANES];
+	bool can_sagv;
 };
 
 enum vlv_wm_level {
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 059bc312c9de..eeee4707d672 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -3871,6 +3871,9 @@ static bool icl_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state)
 	return intel_crtc_can_enable_sagv(crtc_state);
 }
 
+static bool
+tgl_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state);
+
 bool intel_can_enable_sagv(const struct intel_bw_state *bw_state)
 {
 	return bw_state->pipe_sagv_reject == 0;
@@ -3881,7 +3884,7 @@ static int intel_compute_sagv_mask(struct intel_atomic_state *state)
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	int ret;
 	struct intel_crtc *crtc;
-	const struct intel_crtc_state *new_crtc_state;
+	struct intel_crtc_state *new_crtc_state;
 	struct intel_bw_state *new_bw_state = NULL;
 	const struct intel_bw_state *old_bw_state = NULL;
 	int i;
@@ -3903,7 +3906,9 @@ static int intel_compute_sagv_mask(struct intel_atomic_state *state)
 			active_pipes_calculated = true;
 		}
 
-		if (INTEL_GEN(dev_priv) >= 11)
+		if (INTEL_GEN(dev_priv) >= 12)
+			can_sagv = tgl_crtc_can_enable_sagv(new_crtc_state);
+		else if (INTEL_GEN(dev_priv) >= 11)
 			can_sagv = icl_crtc_can_enable_sagv(new_crtc_state);
 		else
 			can_sagv = skl_crtc_can_enable_sagv(new_crtc_state);
@@ -3917,6 +3922,24 @@ static int intel_compute_sagv_mask(struct intel_atomic_state *state)
 	if (!new_bw_state)
 		return 0;
 
+	for_each_new_intel_crtc_in_state(state, crtc,
+					 new_crtc_state, i) {
+		struct skl_pipe_wm *pipe_wm = &new_crtc_state->wm.skl.optimal;
+
+		/*
+		 * Due to drm limitation at commit state, when
+		 * changes are written the whole atomic state is
+		 * zeroed away => which prevents from using it,
+		 * so just sticking it into pipe wm state for
+		 * keeping it simple - anyway this is related to wm.
+		 * Proper way in ideal universe would be of course not
+		 * to lose parent atomic state object from child crtc_state,
+		 * and stick to OOP programming principles, which had been
+		 * scientifically proven to work.
+		 */
+		pipe_wm->can_sagv = intel_can_enable_sagv(new_bw_state);
+	}
+
 	if (intel_can_enable_sagv(new_bw_state) != intel_can_enable_sagv(old_bw_state)) {
 		ret = intel_atomic_lock_global_state(&new_bw_state->base);
 		if (ret)
@@ -4656,12 +4679,39 @@ skl_plane_wm_level(const struct intel_crtc_state *crtc_state,
 		   int level,
 		   int color_plane)
 {
-	const struct skl_plane_wm *wm =
-		&crtc_state->wm.skl.optimal.planes[plane_id];
+	const struct skl_pipe_wm *pipe_wm = &crtc_state->wm.skl.optimal;
+	const struct skl_plane_wm *wm = &pipe_wm->planes[plane_id];
+
+	if (!level) {
+		if (pipe_wm->can_sagv)
+			return color_plane == 0 ? &wm->sagv_wm0 : &wm->uv_sagv_wm0;
+	}
 
 	return color_plane == 0 ? &wm->wm[level] : &wm->uv_wm[level];
 }
 
+static bool
+tgl_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	enum plane_id plane_id;
+
+	if (!crtc_state->hw.active)
+		return true;
+
+	for_each_plane_id_on_crtc(crtc, plane_id) {
+		const struct skl_ddb_entry *plane_alloc =
+			&crtc_state->wm.skl.plane_ddb_y[plane_id];
+		const struct skl_plane_wm *wm =
+			&crtc_state->wm.skl.optimal.planes[plane_id];
+
+		if (skl_ddb_entry_size(plane_alloc) < wm->sagv_wm0.min_ddb_alloc)
+			return false;
+	}
+
+	return true;
+}
+
 static int
 skl_allocate_pipe_ddb(struct intel_crtc_state *crtc_state)
 {
@@ -5243,10 +5293,17 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 static void
 skl_compute_wm_levels(const struct intel_crtc_state *crtc_state,
 		      const struct skl_wm_params *wm_params,
-		      struct skl_wm_level *levels)
+		      struct skl_plane_wm *plane_wm,
+		      int color_plane)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 	int level, max_level = ilk_wm_max_level(dev_priv);
+	/*
+	 * Check which kind of plane is it and based on that calculate
+	 * correspondent WM levels.
+	 */
+	struct skl_wm_level *levels = color_plane == 1 ?
+				      plane_wm->uv_wm : plane_wm->wm;
 	struct skl_wm_level *result_prev = &levels[0];
 
 	for (level = 0; level <= max_level; level++) {
@@ -5260,6 +5317,40 @@ skl_compute_wm_levels(const struct intel_crtc_state *crtc_state,
 	}
 }
 
+static void skl_compute_sagv_wm(const struct intel_crtc_state *crtc_state,
+				const struct skl_wm_params *wm_params,
+				struct skl_plane_wm *plane_wm,
+				int color_plane)
+{
+	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
+	struct skl_wm_level *sagv_wm = color_plane == 1 ?
+				&plane_wm->uv_sagv_wm0 : &plane_wm->sagv_wm0;
+	struct skl_wm_level *levels = color_plane == 1 ?
+				plane_wm->uv_wm : plane_wm->wm;
+
+	/*
+	 * For Gen12 if it is an L0 we need to also
+	 * consider sagv_block_time when calculating
+	 * L0 watermark - we will need that when making
+	 * a decision whether enable SAGV or not.
+	 * For older gens we agreed to copy L0 value for
+	 * compatibility.
+	 */
+	if ((INTEL_GEN(dev_priv) >= 12)) {
+		u32 latency = dev_priv->wm.skl_latency[0];
+
+		latency += dev_priv->sagv_block_time_us;
+		skl_compute_plane_wm(crtc_state, 0, latency,
+				     wm_params, &levels[0],
+				     sagv_wm);
+		DRM_DEBUG_KMS("%d L0 blocks required for SAGV vs %d for non-SAGV\n",
+			      sagv_wm->min_ddb_alloc, levels[0].min_ddb_alloc);
+	} else {
+		/* Since all members are POD */
+		*sagv_wm = levels[0];
+	}
+}
+
 static void skl_compute_transition_wm(const struct intel_crtc_state *crtc_state,
 				      const struct skl_wm_params *wp,
 				      struct skl_plane_wm *wm)
@@ -5340,7 +5431,8 @@ static int skl_build_plane_wm_single(struct intel_crtc_state *crtc_state,
 	if (ret)
 		return ret;
 
-	skl_compute_wm_levels(crtc_state, &wm_params, wm->wm);
+	skl_compute_wm_levels(crtc_state, &wm_params, wm, 0);
+	skl_compute_sagv_wm(crtc_state, &wm_params, wm, 0);
 	skl_compute_transition_wm(crtc_state, &wm_params, wm);
 
 	return 0;
@@ -5362,7 +5454,8 @@ static int skl_build_plane_wm_uv(struct intel_crtc_state *crtc_state,
 	if (ret)
 		return ret;
 
-	skl_compute_wm_levels(crtc_state, &wm_params, wm->uv_wm);
+	skl_compute_wm_levels(crtc_state, &wm_params, wm, 1);
+	skl_compute_sagv_wm(crtc_state, &wm_params, wm, 1);
 
 	return 0;
 }
@@ -5747,6 +5840,12 @@ skl_print_wm_changes(struct intel_atomic_state *state)
 				    enast(new_wm->wm[7].ignore_lines), new_wm->wm[7].plane_res_l,
 				    enast(new_wm->trans_wm.ignore_lines), new_wm->trans_wm.plane_res_l);
 
+			drm_dbg_kms(&dev_priv->drm,
+				    "[PLANE:%d:%s] sagv wm0 lines %4d -> %4d\n",
+				    plane->base.base.id, plane->base.name,
+				    old_wm->sagv_wm0.plane_res_l,
+				    new_wm->sagv_wm0.plane_res_l);
+
 			drm_dbg_kms(&dev_priv->drm,
 				    "[PLANE:%d:%s]  blocks %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d"
 				    " -> %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d\n",
@@ -5762,6 +5861,12 @@ skl_print_wm_changes(struct intel_atomic_state *state)
 				    new_wm->wm[6].plane_res_b, new_wm->wm[7].plane_res_b,
 				    new_wm->trans_wm.plane_res_b);
 
+			drm_dbg_kms(&dev_priv->drm,
+				    "[PLANE:%d:%s] sagv wm0 blocks %4d -> %4d\n",
+				    plane->base.base.id, plane->base.name,
+				    old_wm->sagv_wm0.plane_res_b,
+				    new_wm->sagv_wm0.plane_res_b);
+
 			drm_dbg_kms(&dev_priv->drm,
 				    "[PLANE:%d:%s] min_ddb %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d"
 				    " -> %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d\n",
@@ -5776,6 +5881,12 @@ skl_print_wm_changes(struct intel_atomic_state *state)
 				    new_wm->wm[4].min_ddb_alloc, new_wm->wm[5].min_ddb_alloc,
 				    new_wm->wm[6].min_ddb_alloc, new_wm->wm[7].min_ddb_alloc,
 				    new_wm->trans_wm.min_ddb_alloc);
+
+			drm_dbg_kms(&dev_priv->drm,
+				    "[PLANE:%d:%s] sagv wm0 min ddb %4d -> %4d\n",
+				    plane->base.base.id, plane->base.name,
+				    old_wm->sagv_wm0.min_ddb_alloc,
+				    new_wm->sagv_wm0.min_ddb_alloc);
 		}
 	}
 }
@@ -6068,6 +6179,9 @@ void skl_pipe_wm_get_hw_state(struct intel_crtc *crtc,
 			skl_wm_level_from_reg_val(val, &wm->wm[level]);
 		}
 
+		memcpy(&wm->sagv_wm0, &wm->wm[0],
+		       sizeof(struct skl_wm_level));
+
 		if (plane_id != PLANE_CURSOR)
 			val = I915_READ(PLANE_WM_TRANS(pipe, plane_id));
 		else
-- 
2.24.1.485.gad05a3d8e5

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
