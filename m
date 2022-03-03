Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F7744CC5BA
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Mar 2022 20:12:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D36F10EEDB;
	Thu,  3 Mar 2022 19:12:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E833710EF15
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Mar 2022 19:12:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646334743; x=1677870743;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=saiEZS6gCpEMUUTw1N//+kGCEYWeBMOr1JhdUDoLh1k=;
 b=cOyVGnRab5bN393FY3BQzbOzgoRKetGpYFlRmGj6mtNL9B9dP/bfH3Fi
 IQ/Bl+6Vx647j/mvLsDjYFHmAxGqmeFF0+OV5+ctM0ZHBrf/hO89Z1u68
 Z9365byHlpYoLJIf5XvcsyPBv96r6bb/fXVK8ZOiLF1AS0/mheVP2Yj+N
 4Vfjizh75i61ShjXEy9yCYZ0tIKD3dcqINEn1ZRtzHCg7dMZba0GQfpun
 mnwTBb4tte5nSdvsbCVrjnGVEFSwTLqfdbT9XdAB86jdlVVC4uNRrSDEW
 UV8zH/hXb6qoihOPqohGhIuqnnmazvi/eKfTLDYisxyRAR5HZXoMtoxQL w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10275"; a="340217700"
X-IronPort-AV: E=Sophos;i="5.90,151,1643702400"; d="scan'208";a="340217700"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2022 11:12:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,151,1643702400"; d="scan'208";a="508719815"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga002.jf.intel.com with SMTP; 03 Mar 2022 11:12:20 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 03 Mar 2022 21:12:20 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Mar 2022 21:12:02 +0200
Message-Id: <20220303191207.27931-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220303191207.27931-1-ville.syrjala@linux.intel.com>
References: <20220303191207.27931-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/9] drm/i915: Remove total[] and uv_total[]
 from ddb allocation
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

There's really no need to maintain these total[] arrays to
track the size of each plane's ddb allocation. We just stick
the results straight into the crtc_state ddb tracking structures.

The main annoyance with all this is the mismatch between
wm_uv vs. ddb_y on pre-icl. If only the hw was consistent in
what it considers the primary source of information we could
avoid some of the uglyness. But since that is not the case
we need a bit of special casing for planar formats.

v2: Keep the ddb entry zeroed when the plane is disabled

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 122 ++++++++++++++++----------------
 1 file changed, 62 insertions(+), 60 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index d292a9e65e3f..641624937029 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -4969,18 +4969,18 @@ skl_plane_trans_wm(const struct skl_pipe_wm *pipe_wm,
  * So this is actually safe to do.
  */
 static void
-skl_check_wm_level(struct skl_wm_level *wm, u64 total)
+skl_check_wm_level(struct skl_wm_level *wm, const struct skl_ddb_entry *ddb)
 {
-	if (wm->min_ddb_alloc > total)
+	if (wm->min_ddb_alloc > skl_ddb_entry_size(ddb))
 		memset(wm, 0, sizeof(*wm));
 }
 
 static void
 skl_check_nv12_wm_level(struct skl_wm_level *wm, struct skl_wm_level *uv_wm,
-			u64 total, u64 uv_total)
+			const struct skl_ddb_entry *ddb_y, const struct skl_ddb_entry *ddb)
 {
-	if (wm->min_ddb_alloc > total ||
-	    uv_wm->min_ddb_alloc > uv_total) {
+	if (wm->min_ddb_alloc > skl_ddb_entry_size(ddb_y) ||
+	    uv_wm->min_ddb_alloc > skl_ddb_entry_size(ddb)) {
 		memset(wm, 0, sizeof(*wm));
 		memset(uv_wm, 0, sizeof(*uv_wm));
 	}
@@ -5000,17 +5000,16 @@ static bool icl_need_wm1_wa(struct drm_i915_private *i915,
 
 struct skl_plane_ddb_iter {
 	u64 data_rate;
-	u16 total[I915_MAX_PLANES];
-	u16 uv_total[I915_MAX_PLANES];
 	u16 start, size;
 };
 
-static u16
+static void
 skl_allocate_plane_ddb(struct skl_plane_ddb_iter *iter,
+		       struct skl_ddb_entry *ddb,
 		       const struct skl_wm_level *wm,
 		       u64 data_rate)
 {
-	u16 extra = 0;
+	u16 size, extra = 0;
 
 	if (data_rate) {
 		extra = min_t(u16, iter->size,
@@ -5020,7 +5019,15 @@ skl_allocate_plane_ddb(struct skl_plane_ddb_iter *iter,
 		iter->data_rate -= data_rate;
 	}
 
-	return wm->min_ddb_alloc + extra;
+	/*
+	 * Keep ddb entry of all disabled planes explicitly zeroed
+	 * to avoid skl_ddb_add_affected_planes() adding them to
+	 * the state when other planes change their allocations.
+	 */
+	size = wm->min_ddb_alloc + extra;
+	if (size)
+		iter->start = skl_ddb_entry_init(ddb, iter->start,
+						 iter->start + size);
 }
 
 static int
@@ -5034,8 +5041,9 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
 		intel_atomic_get_new_dbuf_state(state);
 	const struct skl_ddb_entry *alloc = &dbuf_state->ddb[crtc->pipe];
 	int num_active = hweight8(dbuf_state->active_pipes);
-	struct skl_plane_ddb_iter iter = {};
+	struct skl_plane_ddb_iter iter;
 	enum plane_id plane_id;
+	u16 cursor_size;
 	u32 blocks;
 	int level;
 
@@ -5046,15 +5054,16 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
 	if (!crtc_state->hw.active)
 		return 0;
 
+	iter.start = alloc->start;
 	iter.size = skl_ddb_entry_size(alloc);
 	if (iter.size == 0)
 		return 0;
 
 	/* Allocate fixed number of blocks for cursor. */
-	iter.total[PLANE_CURSOR] = skl_cursor_allocation(crtc_state, num_active);
-	iter.size -= iter.total[PLANE_CURSOR];
+	cursor_size = skl_cursor_allocation(crtc_state, num_active);
+	iter.size -= cursor_size;
 	skl_ddb_entry_init(&crtc_state->wm.skl.plane_ddb[PLANE_CURSOR],
-			   alloc->end - iter.total[PLANE_CURSOR], alloc->end);
+			   alloc->end - cursor_size, alloc->end);
 
 	iter.data_rate = skl_total_relative_data_rate(crtc_state);
 
@@ -5069,7 +5078,10 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
 				&crtc_state->wm.skl.optimal.planes[plane_id];
 
 			if (plane_id == PLANE_CURSOR) {
-				if (wm->wm[level].min_ddb_alloc > iter.total[PLANE_CURSOR]) {
+				const struct skl_ddb_entry *ddb =
+					&crtc_state->wm.skl.plane_ddb[plane_id];
+
+				if (wm->wm[level].min_ddb_alloc > skl_ddb_entry_size(ddb)) {
 					drm_WARN_ON(&dev_priv->drm,
 						    wm->wm[level].min_ddb_alloc != U16_MAX);
 					blocks = U32_MAX;
@@ -5105,59 +5117,29 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
 	 * watermark level, plus an extra share of the leftover blocks
 	 * proportional to its relative data rate.
 	 */
-	for_each_plane_id_on_crtc(crtc, plane_id) {
-		const struct skl_plane_wm *wm =
-			&crtc_state->wm.skl.optimal.planes[plane_id];
-
-		if (plane_id == PLANE_CURSOR)
-			continue;
-
-		if (DISPLAY_VER(dev_priv) < 11 &&
-		    crtc_state->nv12_planes & BIT(plane_id)) {
-			iter.total[plane_id] =
-				skl_allocate_plane_ddb(&iter, &wm->wm[level],
-						       crtc_state->rel_data_rate_y[plane_id]);
-			iter.uv_total[plane_id] =
-				skl_allocate_plane_ddb(&iter, &wm->uv_wm[level],
-						       crtc_state->rel_data_rate[plane_id]);
-		} else {
-			iter.total[plane_id] =
-				skl_allocate_plane_ddb(&iter, &wm->wm[level],
-						       crtc_state->rel_data_rate[plane_id]);
-		}
-	}
-	drm_WARN_ON(&dev_priv->drm, iter.size != 0 || iter.data_rate != 0);
-
-	/* Set the actual DDB start/end points for each plane */
-	iter.start = alloc->start;
 	for_each_plane_id_on_crtc(crtc, plane_id) {
 		struct skl_ddb_entry *ddb =
 			&crtc_state->wm.skl.plane_ddb[plane_id];
 		struct skl_ddb_entry *ddb_y =
 			&crtc_state->wm.skl.plane_ddb_y[plane_id];
+		const struct skl_plane_wm *wm =
+			&crtc_state->wm.skl.optimal.planes[plane_id];
 
 		if (plane_id == PLANE_CURSOR)
 			continue;
 
-		/* Gen11+ uses a separate plane for UV watermarks */
-		drm_WARN_ON(&dev_priv->drm,
-			    DISPLAY_VER(dev_priv) >= 11 && iter.uv_total[plane_id]);
-
-		/* Leave disabled planes at (0,0) */
 		if (DISPLAY_VER(dev_priv) < 11 &&
 		    crtc_state->nv12_planes & BIT(plane_id)) {
-			if (iter.total[plane_id])
-				iter.start = skl_ddb_entry_init(ddb_y, iter.start,
-								iter.start + iter.total[plane_id]);
-			if (iter.uv_total[plane_id])
-				iter.start = skl_ddb_entry_init(ddb, iter.start,
-								iter.start + iter.uv_total[plane_id]);
+			skl_allocate_plane_ddb(&iter, ddb_y, &wm->wm[level],
+					       crtc_state->rel_data_rate_y[plane_id]);
+			skl_allocate_plane_ddb(&iter, ddb, &wm->uv_wm[level],
+					       crtc_state->rel_data_rate[plane_id]);
 		} else {
-			if (iter.total[plane_id])
-				iter.start = skl_ddb_entry_init(ddb, iter.start,
-								iter.start + iter.total[plane_id]);
+			skl_allocate_plane_ddb(&iter, ddb, &wm->wm[level],
+					       crtc_state->rel_data_rate[plane_id]);
 		}
 	}
+	drm_WARN_ON(&dev_priv->drm, iter.size != 0 || iter.data_rate != 0);
 
 	/*
 	 * When we calculated watermark values we didn't know how high
@@ -5167,12 +5149,20 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
 	 */
 	for (level++; level <= ilk_wm_max_level(dev_priv); level++) {
 		for_each_plane_id_on_crtc(crtc, plane_id) {
+			const struct skl_ddb_entry *ddb =
+				&crtc_state->wm.skl.plane_ddb[plane_id];
+			const struct skl_ddb_entry *ddb_y =
+				&crtc_state->wm.skl.plane_ddb_y[plane_id];
 			struct skl_plane_wm *wm =
 				&crtc_state->wm.skl.optimal.planes[plane_id];
 
-			skl_check_nv12_wm_level(&wm->wm[level], &wm->uv_wm[level],
-						iter.total[plane_id],
-						iter.uv_total[plane_id]);
+			if (DISPLAY_VER(dev_priv) < 11 &&
+			    crtc_state->nv12_planes & BIT(plane_id))
+				skl_check_nv12_wm_level(&wm->wm[level],
+							&wm->uv_wm[level],
+							ddb_y, ddb);
+			else
+				skl_check_wm_level(&wm->wm[level], ddb);
 
 			if (icl_need_wm1_wa(dev_priv, plane_id) &&
 			    level == 1 && wm->wm[0].enable) {
@@ -5188,12 +5178,24 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
 	 * if it turns out we don't have enough DDB blocks for them.
 	 */
 	for_each_plane_id_on_crtc(crtc, plane_id) {
+		const struct skl_ddb_entry *ddb =
+			&crtc_state->wm.skl.plane_ddb[plane_id];
+		const struct skl_ddb_entry *ddb_y =
+			&crtc_state->wm.skl.plane_ddb_y[plane_id];
 		struct skl_plane_wm *wm =
 			&crtc_state->wm.skl.optimal.planes[plane_id];
 
-		skl_check_wm_level(&wm->trans_wm, iter.total[plane_id]);
-		skl_check_wm_level(&wm->sagv.wm0, iter.total[plane_id]);
-		skl_check_wm_level(&wm->sagv.trans_wm, iter.total[plane_id]);
+		if (DISPLAY_VER(dev_priv) < 11 &&
+		    crtc_state->nv12_planes & BIT(plane_id)) {
+			skl_check_wm_level(&wm->trans_wm, ddb_y);
+		} else {
+			WARN_ON(skl_ddb_entry_size(ddb_y));
+
+			skl_check_wm_level(&wm->trans_wm, ddb);
+		}
+
+		skl_check_wm_level(&wm->sagv.wm0, ddb);
+		skl_check_wm_level(&wm->sagv.trans_wm, ddb);
 	}
 
 	return 0;
-- 
2.34.1

