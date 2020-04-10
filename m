Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7C641A4653
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2020 14:33:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F40476E28A;
	Fri, 10 Apr 2020 12:33:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08A0C6E28A
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Apr 2020 12:33:34 +0000 (UTC)
IronPort-SDR: ClfvrFiknaIMNi3N8uKXCPT/benV5oZNLzdoBQlkDJ8tvzRAMuqNfsEawPum9O0mdT5hMUw94d
 UqOht7ok1DJQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2020 05:33:33 -0700
IronPort-SDR: uZfZ3RQFlQydxT3rhjOeZxq4QwSK2LxUMXW3hKxKnfluiU7wTc+sRpfLcR4ZtG1Twdh1jD1EnH
 dTs9THSFyA/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,366,1580803200"; d="scan'208";a="425873031"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.89])
 by orsmga005.jf.intel.com with ESMTP; 10 Apr 2020 05:33:31 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Apr 2020 15:30:04 +0300
Message-Id: <20200410123004.9415-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20200409154730.18568-10-stanislav.lisovskiy@intel.com>
References: <20200409154730.18568-10-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v23 09/13] drm/i915: Add TGL+ SAGV support
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Starting from TGL we need to have a separate wm0
values for SAGV and non-SAGV which affects
how calculations are done.

v2: Remove long lines

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |   8 +-
 .../drm/i915/display/intel_display_types.h    |   3 +
 drivers/gpu/drm/i915/intel_pm.c               | 128 +++++++++++++++++-
 3 files changed, 130 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index ac7f600c84ca..a591e35d9ac4 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -13932,7 +13932,9 @@ static void verify_wm_state(struct intel_crtc *crtc,
 		/* Watermarks */
 		for (level = 0; level <= max_level; level++) {
 			if (skl_wm_level_equals(&hw_plane_wm->wm[level],
-						&sw_plane_wm->wm[level]))
+						&sw_plane_wm->wm[level]) ||
+			    (level == 0 && skl_wm_level_equals(&hw_plane_wm->wm[level],
+							       &sw_plane_wm->sagv_wm0)))
 				continue;
 
 			drm_err(&dev_priv->drm,
@@ -13987,7 +13989,9 @@ static void verify_wm_state(struct intel_crtc *crtc,
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
index b437182c630a..37e13c98ac10 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -688,6 +688,8 @@ struct skl_plane_wm {
 	struct skl_wm_level wm[8];
 	struct skl_wm_level uv_wm[8];
 	struct skl_wm_level trans_wm;
+	struct skl_wm_level sagv_wm0;
+	struct skl_wm_level uv_sagv_wm0;
 	bool is_planar;
 };
 
@@ -698,6 +700,7 @@ enum color_plane {
 
 struct skl_pipe_wm {
 	struct skl_plane_wm planes[I915_MAX_PLANES];
+	bool can_sagv;
 };
 
 enum vlv_wm_level {
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index ddae1c0b6d7e..02383ff0bf2c 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -3878,6 +3878,9 @@ static bool icl_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state)
 	return intel_crtc_can_enable_sagv(crtc_state);
 }
 
+static bool
+tgl_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state);
+
 bool intel_can_enable_sagv(const struct intel_bw_state *bw_state)
 {
 	return bw_state->pipe_sagv_reject == 0;
@@ -3888,7 +3891,7 @@ static int intel_compute_sagv_mask(struct intel_atomic_state *state)
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	int ret;
 	struct intel_crtc *crtc;
-	const struct intel_crtc_state *new_crtc_state;
+	struct intel_crtc_state *new_crtc_state;
 	struct intel_bw_state *new_bw_state = NULL;
 	const struct intel_bw_state *old_bw_state = NULL;
 	int i;
@@ -3903,7 +3906,9 @@ static int intel_compute_sagv_mask(struct intel_atomic_state *state)
 
 		old_bw_state = intel_atomic_get_old_bw_state(state);
 
-		if (INTEL_GEN(dev_priv) >= 11)
+		if (INTEL_GEN(dev_priv) >= 12)
+			can_sagv = tgl_crtc_can_enable_sagv(new_crtc_state);
+		else if (INTEL_GEN(dev_priv) >= 11)
 			can_sagv = icl_crtc_can_enable_sagv(new_crtc_state);
 		else
 			can_sagv = skl_crtc_can_enable_sagv(new_crtc_state);
@@ -3917,6 +3922,24 @@ static int intel_compute_sagv_mask(struct intel_atomic_state *state)
 	if (!old_bw_state)
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
 	if (new_bw_state->pipe_sagv_reject != old_bw_state->pipe_sagv_reject) {
 		ret = intel_atomic_serialize_global_state(&new_bw_state->base);
 		if (ret)
@@ -4658,12 +4681,39 @@ skl_plane_wm_level(const struct intel_crtc_state *crtc_state,
 		   int level,
 		   enum color_plane color_plane)
 {
-	const struct skl_plane_wm *wm =
-		&crtc_state->wm.skl.optimal.planes[plane_id];
+	const struct skl_pipe_wm *pipe_wm = &crtc_state->wm.skl.optimal;
+	const struct skl_plane_wm *wm = &pipe_wm->planes[plane_id];
+
+	if (!level) {
+		if (pipe_wm->can_sagv)
+			return color_plane == COLOR_PLANE_Y ? &wm->sagv_wm0 : &wm->uv_sagv_wm0;
+	}
 
 	return color_plane == COLOR_PLANE_Y ? &wm->wm[level] : &wm->uv_wm[level];
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
@@ -5245,10 +5295,17 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 static void
 skl_compute_wm_levels(const struct intel_crtc_state *crtc_state,
 		      const struct skl_wm_params *wm_params,
-		      struct skl_wm_level *levels)
+		      struct skl_plane_wm *plane_wm,
+		      enum color_plane color_plane)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 	int level, max_level = ilk_wm_max_level(dev_priv);
+	/*
+	 * Check which kind of plane is it and based on that calculate
+	 * correspondent WM levels.
+	 */
+	struct skl_wm_level *levels = color_plane == COLOR_PLANE_UV ?
+				      plane_wm->uv_wm : plane_wm->wm;
 	struct skl_wm_level *result_prev = &levels[0];
 
 	for (level = 0; level <= max_level; level++) {
@@ -5262,6 +5319,40 @@ skl_compute_wm_levels(const struct intel_crtc_state *crtc_state,
 	}
 }
 
+static void skl_compute_sagv_wm(const struct intel_crtc_state *crtc_state,
+				const struct skl_wm_params *wm_params,
+				struct skl_plane_wm *plane_wm,
+				enum color_plane color_plane)
+{
+	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
+	struct skl_wm_level *sagv_wm = color_plane == COLOR_PLANE_UV ?
+				&plane_wm->uv_sagv_wm0 : &plane_wm->sagv_wm0;
+	struct skl_wm_level *levels = color_plane == COLOR_PLANE_UV ?
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
@@ -5342,7 +5433,8 @@ static int skl_build_plane_wm_single(struct intel_crtc_state *crtc_state,
 	if (ret)
 		return ret;
 
-	skl_compute_wm_levels(crtc_state, &wm_params, wm->wm);
+	skl_compute_wm_levels(crtc_state, &wm_params, wm, COLOR_PLANE_Y);
+	skl_compute_sagv_wm(crtc_state, &wm_params, wm, COLOR_PLANE_Y);
 	skl_compute_transition_wm(crtc_state, &wm_params, wm);
 
 	return 0;
@@ -5364,7 +5456,8 @@ static int skl_build_plane_wm_uv(struct intel_crtc_state *crtc_state,
 	if (ret)
 		return ret;
 
-	skl_compute_wm_levels(crtc_state, &wm_params, wm->uv_wm);
+	skl_compute_wm_levels(crtc_state, &wm_params, wm, COLOR_PLANE_UV);
+	skl_compute_sagv_wm(crtc_state, &wm_params, wm, COLOR_PLANE_UV);
 
 	return 0;
 }
@@ -5749,6 +5842,12 @@ skl_print_wm_changes(struct intel_atomic_state *state)
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
@@ -5764,6 +5863,12 @@ skl_print_wm_changes(struct intel_atomic_state *state)
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
@@ -5778,6 +5883,12 @@ skl_print_wm_changes(struct intel_atomic_state *state)
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
@@ -6071,6 +6182,9 @@ void skl_pipe_wm_get_hw_state(struct intel_crtc *crtc,
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
