Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CC64246B9CB
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Dec 2021 12:07:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0FEC73F5B;
	Tue,  7 Dec 2021 11:07:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0179F73F5B
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Dec 2021 11:07:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10190"; a="217579229"
X-IronPort-AV: E=Sophos;i="5.87,293,1631602800"; d="scan'208";a="217579229"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2021 03:07:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,293,1631602800"; d="scan'208";a="515235515"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.167])
 by orsmga008.jf.intel.com with ESMTP; 07 Dec 2021 03:07:23 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Dec 2021 13:07:18 +0200
Message-Id: <20211207110721.30409-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/4] drm/i915: Pass plane to watermark
 calculation functions
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Sometimes we might need to change the way we calculate
watermarks, based on which particular plane it is calculated
for. Thus it would be convenient to pass plane struct to those
functions.

v2: Pass plane instead of plane_id

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 .../gpu/drm/i915/display/intel_atomic_plane.c |  2 +-
 .../gpu/drm/i915/display/intel_atomic_plane.h |  3 +++
 drivers/gpu/drm/i915/intel_pm.c               | 23 +++++++++++++------
 3 files changed, 20 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 27b8f99dd099..023747fb5052 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -372,7 +372,7 @@ int intel_plane_atomic_check_with_state(const struct intel_crtc_state *old_crtc_
 					       old_plane_state, new_plane_state);
 }
 
-static struct intel_plane *
+struct intel_plane *
 intel_crtc_get_plane(struct intel_crtc *crtc, enum plane_id plane_id)
 {
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.h b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
index 7907f601598e..c1499bb7370e 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.h
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
@@ -16,10 +16,13 @@ struct intel_crtc;
 struct intel_crtc_state;
 struct intel_plane;
 struct intel_plane_state;
+enum plane_id;
 
 unsigned int intel_adjusted_rate(const struct drm_rect *src,
 				 const struct drm_rect *dst,
 				 unsigned int rate);
+struct intel_plane *intel_crtc_get_plane(struct intel_crtc *crtc,
+					 enum plane_id plane_id);
 unsigned int intel_plane_pixel_rate(const struct intel_crtc_state *crtc_state,
 				    const struct intel_plane_state *plane_state);
 
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index fe3787425780..79dac38d9eb2 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -4238,7 +4238,9 @@ static int skl_compute_wm_params(const struct intel_crtc_state *crtc_state,
 				 u64 modifier, unsigned int rotation,
 				 u32 plane_pixel_rate, struct skl_wm_params *wp,
 				 int color_plane);
+
 static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
+				 const struct intel_plane *plane,
 				 int level,
 				 unsigned int latency,
 				 const struct skl_wm_params *wp,
@@ -4247,6 +4249,7 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 
 static unsigned int
 skl_cursor_allocation(const struct intel_crtc_state *crtc_state,
+		      const struct intel_plane *plane,
 		      int num_active)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
@@ -4265,7 +4268,7 @@ skl_cursor_allocation(const struct intel_crtc_state *crtc_state,
 	for (level = 0; level <= max_level; level++) {
 		unsigned int latency = dev_priv->wm.skl_latency[level];
 
-		skl_compute_plane_wm(crtc_state, level, latency, &wp, &wm, &wm);
+		skl_compute_plane_wm(crtc_state, plane, level, latency, &wp, &wm, &wm);
 		if (wm.min_ddb_alloc == U16_MAX)
 			break;
 
@@ -5111,6 +5114,7 @@ skl_allocate_plane_ddb(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	const struct intel_dbuf_state *dbuf_state =
 		intel_atomic_get_new_dbuf_state(state);
+	const struct intel_plane *cursor_plane = intel_crtc_get_plane(crtc, PLANE_CURSOR);
 	const struct skl_ddb_entry *alloc = &dbuf_state->ddb[crtc->pipe];
 	int num_active = hweight8(dbuf_state->active_pipes);
 	u16 alloc_size, start = 0;
@@ -5140,7 +5144,7 @@ skl_allocate_plane_ddb(struct intel_atomic_state *state,
 		return 0;
 
 	/* Allocate fixed number of blocks for cursor. */
-	total[PLANE_CURSOR] = skl_cursor_allocation(crtc_state, num_active);
+	total[PLANE_CURSOR] = skl_cursor_allocation(crtc_state, cursor_plane, num_active);
 	alloc_size -= total[PLANE_CURSOR];
 	crtc_state->wm.skl.plane_ddb_y[PLANE_CURSOR].start =
 		alloc->end - total[PLANE_CURSOR];
@@ -5494,6 +5498,7 @@ static int skl_wm_max_lines(struct drm_i915_private *dev_priv)
 }
 
 static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
+				 const struct intel_plane *plane,
 				 int level,
 				 unsigned int latency,
 				 const struct skl_wm_params *wp,
@@ -5621,6 +5626,7 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 
 static void
 skl_compute_wm_levels(const struct intel_crtc_state *crtc_state,
+		      const struct intel_plane *plane,
 		      const struct skl_wm_params *wm_params,
 		      struct skl_wm_level *levels)
 {
@@ -5632,7 +5638,7 @@ skl_compute_wm_levels(const struct intel_crtc_state *crtc_state,
 		struct skl_wm_level *result = &levels[level];
 		unsigned int latency = dev_priv->wm.skl_latency[level];
 
-		skl_compute_plane_wm(crtc_state, level, latency,
+		skl_compute_plane_wm(crtc_state, plane, level, latency,
 				     wm_params, result_prev, result);
 
 		result_prev = result;
@@ -5640,6 +5646,7 @@ skl_compute_wm_levels(const struct intel_crtc_state *crtc_state,
 }
 
 static void tgl_compute_sagv_wm(const struct intel_crtc_state *crtc_state,
+				const struct intel_plane *plane,
 				const struct skl_wm_params *wm_params,
 				struct skl_plane_wm *plane_wm)
 {
@@ -5648,7 +5655,7 @@ static void tgl_compute_sagv_wm(const struct intel_crtc_state *crtc_state,
 	struct skl_wm_level *levels = plane_wm->wm;
 	unsigned int latency = dev_priv->wm.skl_latency[0] + dev_priv->sagv_block_time_us;
 
-	skl_compute_plane_wm(crtc_state, 0, latency,
+	skl_compute_plane_wm(crtc_state, plane, 0, latency,
 			     wm_params, &levels[0],
 			     sagv_wm);
 }
@@ -5723,6 +5730,7 @@ static int skl_build_plane_wm_single(struct intel_crtc_state *crtc_state,
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	struct skl_plane_wm *wm = &crtc_state->wm.skl.raw.planes[plane_id];
+	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
 	struct skl_wm_params wm_params;
 	int ret;
 
@@ -5731,13 +5739,13 @@ static int skl_build_plane_wm_single(struct intel_crtc_state *crtc_state,
 	if (ret)
 		return ret;
 
-	skl_compute_wm_levels(crtc_state, &wm_params, wm->wm);
+	skl_compute_wm_levels(crtc_state, plane, &wm_params, wm->wm);
 
 	skl_compute_transition_wm(dev_priv, &wm->trans_wm,
 				  &wm->wm[0], &wm_params);
 
 	if (DISPLAY_VER(dev_priv) >= 12) {
-		tgl_compute_sagv_wm(crtc_state, &wm_params, wm);
+		tgl_compute_sagv_wm(crtc_state, plane, &wm_params, wm);
 
 		skl_compute_transition_wm(dev_priv, &wm->sagv.trans_wm,
 					  &wm->sagv.wm0, &wm_params);
@@ -5751,6 +5759,7 @@ static int skl_build_plane_wm_uv(struct intel_crtc_state *crtc_state,
 				 enum plane_id plane_id)
 {
 	struct skl_plane_wm *wm = &crtc_state->wm.skl.raw.planes[plane_id];
+	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
 	struct skl_wm_params wm_params;
 	int ret;
 
@@ -5762,7 +5771,7 @@ static int skl_build_plane_wm_uv(struct intel_crtc_state *crtc_state,
 	if (ret)
 		return ret;
 
-	skl_compute_wm_levels(crtc_state, &wm_params, wm->uv_wm);
+	skl_compute_wm_levels(crtc_state, plane, &wm_params, wm->uv_wm);
 
 	return 0;
 }
-- 
2.24.1.485.gad05a3d8e5

