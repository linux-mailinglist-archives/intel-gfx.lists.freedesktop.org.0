Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 154961D0C83
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2020 11:42:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 830CC6E9F0;
	Wed, 13 May 2020 09:42:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3D736E9ED
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 May 2020 09:42:26 +0000 (UTC)
IronPort-SDR: JjTngovcoick3h7cSjrxDts3C3b92Mokq3ysjACN0SJPqYjUF6TTwV73FIexLQthEp9NLOM0iC
 gx1P5wjddSsg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2020 02:42:26 -0700
IronPort-SDR: 46VuA9aJvFnrnIaJLYAy8tDCzjKpz6oEzIOdfsqzy99cjGNbOlhZTZHxMiTaHhgELOYPkzeyWf
 A/81/r+ATTag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,387,1583222400"; d="scan'208";a="464071008"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.89])
 by fmsmga006.fm.intel.com with ESMTP; 13 May 2020 02:42:25 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 May 2020 12:38:14 +0300
Message-Id: <20200513093816.11466-5-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20200513093816.11466-1-stanislav.lisovskiy@intel.com>
References: <20200513093816.11466-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v29 4/6] drm/i915: Add TGL+ SAGV support
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
v4, v5, v6: Fixed rebase conflict
v7: - Removed skl_plane_wm_level accessor from skl_allocate_pipe_ddb(Ville)
    - Removed sagv_uv_wm0(Ville)
    - can_sagv->use_sagv_wm(Ville)

v8: - Moved tgl_crtc_can_enable_sagv function up(Ville)
    - Changed comment regarding pipe_wm usage(Ville)
    - Call intel_can_enable_sagv and tgl_compute_sagv_wm only
      for Gen12(Ville)
    - Some sagv debugs removed(Ville)
    - skl_print_wm_changes improvements(Ville)
    - Do assignment instead of memcpy in
      skl_pipe_wm_get_hw_state(Ville)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |   8 +-
 .../drm/i915/display/intel_display_types.h    |   2 +
 drivers/gpu/drm/i915/intel_pm.c               | 112 +++++++++++++++---
 3 files changed, 103 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index fd6d63b03489..be5741cb7595 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -13961,7 +13961,9 @@ static void verify_wm_state(struct intel_crtc *crtc,
 		/* Watermarks */
 		for (level = 0; level <= max_level; level++) {
 			if (skl_wm_level_equals(&hw_plane_wm->wm[level],
-						&sw_plane_wm->wm[level]))
+						&sw_plane_wm->wm[level]) ||
+			    (level == 0 && skl_wm_level_equals(&hw_plane_wm->wm[level],
+							       &sw_plane_wm->sagv_wm0)))
 				continue;
 
 			drm_err(&dev_priv->drm,
@@ -14016,7 +14018,9 @@ static void verify_wm_state(struct intel_crtc *crtc,
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
index 9488449e4b94..8cede29c9562 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -688,11 +688,13 @@ struct skl_plane_wm {
 	struct skl_wm_level wm[8];
 	struct skl_wm_level uv_wm[8];
 	struct skl_wm_level trans_wm;
+	struct skl_wm_level sagv_wm0;
 	bool is_planar;
 };
 
 struct skl_pipe_wm {
 	struct skl_plane_wm planes[I915_MAX_PLANES];
+	bool use_sagv_wm;
 };
 
 enum vlv_wm_level {
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index de0f8cede59c..1f253db3b7c0 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -3853,9 +3853,39 @@ static bool skl_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state)
 	return true;
 }
 
+static bool tgl_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state)
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
 static bool intel_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state)
 {
-	return skl_crtc_can_enable_sagv(crtc_state);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	bool can_sagv;
+
+	if (INTEL_GEN(dev_priv) >= 12)
+		can_sagv = tgl_crtc_can_enable_sagv(crtc_state);
+	else
+		can_sagv = skl_crtc_can_enable_sagv(crtc_state);
+
+	return can_sagv;
 }
 
 bool intel_can_enable_sagv(struct drm_i915_private *dev_priv,
@@ -3873,7 +3903,7 @@ static int intel_compute_sagv_mask(struct intel_atomic_state *state)
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	int ret;
 	struct intel_crtc *crtc;
-	const struct intel_crtc_state *new_crtc_state;
+	struct intel_crtc_state *new_crtc_state;
 	struct intel_bw_state *new_bw_state = NULL;
 	const struct intel_bw_state *old_bw_state = NULL;
 	int i;
@@ -3904,6 +3934,20 @@ static int intel_compute_sagv_mask(struct intel_atomic_state *state)
 			return ret;
 	}
 
+	for_each_new_intel_crtc_in_state(state, crtc,
+					 new_crtc_state, i) {
+		struct skl_pipe_wm *pipe_wm = &new_crtc_state->wm.skl.optimal;
+
+		/*
+		 * We store use_sagv_wm in the crtc state rather than relying on
+		 * that bw state since we have no convenient way to get at the
+		 * latter from the plane commit hooks (especially in the legacy
+		 * cursor case)
+		 */
+		pipe_wm->use_sagv_wm = INTEL_GEN(dev_priv) >= 12 &&
+				       intel_can_enable_sagv(dev_priv, new_bw_state);
+	}
+
 	if (intel_can_enable_sagv(dev_priv, new_bw_state) != intel_can_enable_sagv(dev_priv, old_bw_state)) {
 		ret = intel_atomic_serialize_global_state(&new_bw_state->base);
 		if (ret)
@@ -4646,8 +4690,11 @@ skl_plane_wm_level(const struct intel_crtc_state *crtc_state,
 		   enum plane_id plane_id,
 		   int level)
 {
-	const struct skl_plane_wm *wm =
-		&crtc_state->wm.skl.optimal.planes[plane_id];
+	const struct skl_pipe_wm *pipe_wm = &crtc_state->wm.skl.optimal;
+	const struct skl_plane_wm *wm = &pipe_wm->planes[plane_id];
+
+	if (level == 0 && pipe_wm->use_sagv_wm)
+		return &wm->sagv_wm0;
 
 	return &wm->wm[level];
 }
@@ -4688,7 +4735,6 @@ skl_allocate_pipe_ddb(struct intel_crtc_state *crtc_state)
 							 plane_data_rate,
 							 uv_plane_data_rate);
 
-
 	skl_ddb_get_pipe_allocation_limits(dev_priv, crtc_state, total_data_rate,
 					   alloc, &num_active);
 	alloc_size = skl_ddb_entry_size(alloc);
@@ -5223,6 +5269,22 @@ skl_compute_wm_levels(const struct intel_crtc_state *crtc_state,
 	}
 }
 
+static void tgl_compute_sagv_wm(const struct intel_crtc_state *crtc_state,
+				const struct skl_wm_params *wm_params,
+				struct skl_plane_wm *plane_wm)
+{
+	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
+	struct skl_wm_level *sagv_wm = &plane_wm->sagv_wm0;
+	struct skl_wm_level *levels = plane_wm->wm;
+
+	u32 latency = dev_priv->wm.skl_latency[0];
+
+	latency += dev_priv->sagv_block_time_us;
+	skl_compute_plane_wm(crtc_state, 0, latency,
+			     wm_params, &levels[0],
+			     sagv_wm);
+}
+
 static void skl_compute_transition_wm(const struct intel_crtc_state *crtc_state,
 				      const struct skl_wm_params *wp,
 				      struct skl_plane_wm *wm)
@@ -5290,6 +5352,8 @@ static int skl_build_plane_wm_single(struct intel_crtc_state *crtc_state,
 				     const struct intel_plane_state *plane_state,
 				     enum plane_id plane_id, int color_plane)
 {
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	struct skl_plane_wm *wm = &crtc_state->wm.skl.optimal.planes[plane_id];
 	struct skl_wm_params wm_params;
 	int ret;
@@ -5300,6 +5364,10 @@ static int skl_build_plane_wm_single(struct intel_crtc_state *crtc_state,
 		return ret;
 
 	skl_compute_wm_levels(crtc_state, &wm_params, wm->wm);
+
+	if (INTEL_GEN(dev_priv) >= 12)
+		tgl_compute_sagv_wm(crtc_state, &wm_params, wm);
+
 	skl_compute_transition_wm(crtc_state, &wm_params, wm);
 
 	return 0;
@@ -5666,23 +5734,25 @@ skl_print_wm_changes(struct intel_atomic_state *state)
 				continue;
 
 			drm_dbg_kms(&dev_priv->drm,
-				    "[PLANE:%d:%s]   level %cwm0,%cwm1,%cwm2,%cwm3,%cwm4,%cwm5,%cwm6,%cwm7,%ctwm"
-				    " -> %cwm0,%cwm1,%cwm2,%cwm3,%cwm4,%cwm5,%cwm6,%cwm7,%ctwm\n",
+				    "[PLANE:%d:%s]   level %cwm0,%cwm1,%cwm2,%cwm3,%cwm4,%cwm5,%cwm6,%cwm7,%ctwm,%cswm"
+				    " -> %cwm0,%cwm1,%cwm2,%cwm3,%cwm4,%cwm5,%cwm6,%cwm7,%ctwm,%cswm\n",
 				    plane->base.base.id, plane->base.name,
 				    enast(old_wm->wm[0].plane_en), enast(old_wm->wm[1].plane_en),
 				    enast(old_wm->wm[2].plane_en), enast(old_wm->wm[3].plane_en),
 				    enast(old_wm->wm[4].plane_en), enast(old_wm->wm[5].plane_en),
 				    enast(old_wm->wm[6].plane_en), enast(old_wm->wm[7].plane_en),
 				    enast(old_wm->trans_wm.plane_en),
+				    enast(old_wm->sagv_wm0.plane_en),
 				    enast(new_wm->wm[0].plane_en), enast(new_wm->wm[1].plane_en),
 				    enast(new_wm->wm[2].plane_en), enast(new_wm->wm[3].plane_en),
 				    enast(new_wm->wm[4].plane_en), enast(new_wm->wm[5].plane_en),
 				    enast(new_wm->wm[6].plane_en), enast(new_wm->wm[7].plane_en),
-				    enast(new_wm->trans_wm.plane_en));
+				    enast(new_wm->trans_wm.plane_en),
+				    enast(new_wm->sagv_wm0.plane_en));
 
 			drm_dbg_kms(&dev_priv->drm,
-				    "[PLANE:%d:%s]   lines %c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d"
-				      " -> %c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d\n",
+				    "[PLANE:%d:%s]   lines %c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d"
+				      " -> %c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d\n",
 				    plane->base.base.id, plane->base.name,
 				    enast(old_wm->wm[0].ignore_lines), old_wm->wm[0].plane_res_l,
 				    enast(old_wm->wm[1].ignore_lines), old_wm->wm[1].plane_res_l,
@@ -5693,6 +5763,7 @@ skl_print_wm_changes(struct intel_atomic_state *state)
 				    enast(old_wm->wm[6].ignore_lines), old_wm->wm[6].plane_res_l,
 				    enast(old_wm->wm[7].ignore_lines), old_wm->wm[7].plane_res_l,
 				    enast(old_wm->trans_wm.ignore_lines), old_wm->trans_wm.plane_res_l,
+				    enast(old_wm->sagv_wm0.ignore_lines), old_wm->sagv_wm0.plane_res_l,
 
 				    enast(new_wm->wm[0].ignore_lines), new_wm->wm[0].plane_res_l,
 				    enast(new_wm->wm[1].ignore_lines), new_wm->wm[1].plane_res_l,
@@ -5702,37 +5773,42 @@ skl_print_wm_changes(struct intel_atomic_state *state)
 				    enast(new_wm->wm[5].ignore_lines), new_wm->wm[5].plane_res_l,
 				    enast(new_wm->wm[6].ignore_lines), new_wm->wm[6].plane_res_l,
 				    enast(new_wm->wm[7].ignore_lines), new_wm->wm[7].plane_res_l,
-				    enast(new_wm->trans_wm.ignore_lines), new_wm->trans_wm.plane_res_l);
+				    enast(new_wm->trans_wm.ignore_lines), new_wm->trans_wm.plane_res_l,
+				    enast(new_wm->sagv_wm0.ignore_lines), new_wm->sagv_wm0.plane_res_l);
 
 			drm_dbg_kms(&dev_priv->drm,
-				    "[PLANE:%d:%s]  blocks %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d"
-				    " -> %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d\n",
+				    "[PLANE:%d:%s]  blocks %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d"
+				    " -> %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d\n",
 				    plane->base.base.id, plane->base.name,
 				    old_wm->wm[0].plane_res_b, old_wm->wm[1].plane_res_b,
 				    old_wm->wm[2].plane_res_b, old_wm->wm[3].plane_res_b,
 				    old_wm->wm[4].plane_res_b, old_wm->wm[5].plane_res_b,
 				    old_wm->wm[6].plane_res_b, old_wm->wm[7].plane_res_b,
 				    old_wm->trans_wm.plane_res_b,
+				    old_wm->sagv_wm0.plane_res_b,
 				    new_wm->wm[0].plane_res_b, new_wm->wm[1].plane_res_b,
 				    new_wm->wm[2].plane_res_b, new_wm->wm[3].plane_res_b,
 				    new_wm->wm[4].plane_res_b, new_wm->wm[5].plane_res_b,
 				    new_wm->wm[6].plane_res_b, new_wm->wm[7].plane_res_b,
-				    new_wm->trans_wm.plane_res_b);
+				    new_wm->trans_wm.plane_res_b,
+				    new_wm->sagv_wm0.plane_res_b);
 
 			drm_dbg_kms(&dev_priv->drm,
-				    "[PLANE:%d:%s] min_ddb %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d"
-				    " -> %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d\n",
+				    "[PLANE:%d:%s] min_ddb %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d"
+				    " -> %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d\n",
 				    plane->base.base.id, plane->base.name,
 				    old_wm->wm[0].min_ddb_alloc, old_wm->wm[1].min_ddb_alloc,
 				    old_wm->wm[2].min_ddb_alloc, old_wm->wm[3].min_ddb_alloc,
 				    old_wm->wm[4].min_ddb_alloc, old_wm->wm[5].min_ddb_alloc,
 				    old_wm->wm[6].min_ddb_alloc, old_wm->wm[7].min_ddb_alloc,
 				    old_wm->trans_wm.min_ddb_alloc,
+				    old_wm->sagv_wm0.min_ddb_alloc,
 				    new_wm->wm[0].min_ddb_alloc, new_wm->wm[1].min_ddb_alloc,
 				    new_wm->wm[2].min_ddb_alloc, new_wm->wm[3].min_ddb_alloc,
 				    new_wm->wm[4].min_ddb_alloc, new_wm->wm[5].min_ddb_alloc,
 				    new_wm->wm[6].min_ddb_alloc, new_wm->wm[7].min_ddb_alloc,
-				    new_wm->trans_wm.min_ddb_alloc);
+				    new_wm->trans_wm.min_ddb_alloc,
+				    new_wm->sagv_wm0.min_ddb_alloc);
 		}
 	}
 }
@@ -6025,6 +6101,8 @@ void skl_pipe_wm_get_hw_state(struct intel_crtc *crtc,
 			skl_wm_level_from_reg_val(val, &wm->wm[level]);
 		}
 
+		wm->sagv_wm0 = wm->wm[0];
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
