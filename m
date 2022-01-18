Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A503849229C
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jan 2022 10:24:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B31421129E3;
	Tue, 18 Jan 2022 09:24:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9679F112976
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jan 2022 09:24:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642497849; x=1674033849;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=CtvfnIGFEN3ywSmiiSFXvF+4g7oSxGMIdPb4LQQNIWw=;
 b=mZFdIkBd/uc9jVMzNUW9OSZTgyoEKzn4ZLH13LDYBHhkrCGcH7Zb2wKr
 LtvXb/rFxU7czBS1Oodd5RiMXOCvv/JSyzPyRgCqRs+Qaz8SkYgwPdVCT
 UfQJ7QCQAfanVOaTyiANp/jg2lwTfoGOtbG1iwZLElCAeishi0a4gEii9
 L++5TyEZV2QSTGGvtKEt+g841yDcjxqehlOb+QOO88LMCdKf1AKQpF1ds
 cL/IAEdcxKKav31p80UR6CYduZKdAdmiBi/tlVJNJMrIEz32IQLCoBsV0
 q+PDks/VvKTYyPkkiH9Fpn7nH+/PDoEhWbmnd3ypOZkYcAAkcUmA3AtuZ A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10230"; a="269153356"
X-IronPort-AV: E=Sophos;i="5.88,297,1635231600"; d="scan'208";a="269153356"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2022 01:24:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,297,1635231600"; d="scan'208";a="578339327"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by fmsmga008.fm.intel.com with SMTP; 18 Jan 2022 01:24:07 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 Jan 2022 11:24:06 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Jan 2022 11:23:43 +0200
Message-Id: <20220118092354.11631-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220118092354.11631-1-ville.syrjala@linux.intel.com>
References: <20220118092354.11631-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/15] drm/i915: Introduce skl_plane_ddb_iter
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

Collect a bit of the stuff used during the plane ddb
allocation into a struct we can pass around.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 97 +++++++++++++++++----------------
 1 file changed, 49 insertions(+), 48 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index e8fb56f288b4..cd1b5f09f241 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -5066,6 +5066,13 @@ static bool icl_need_wm1_wa(struct drm_i915_private *i915,
 	       (IS_DISPLAY_VER(i915, 12, 13) && plane_id == PLANE_CURSOR);
 }
 
+struct skl_plane_ddb_iter {
+	u64 data_rate;
+	u16 total[I915_MAX_PLANES];
+	u16 uv_total[I915_MAX_PLANES];
+	u16 start, size;
+};
+
 static int
 skl_allocate_plane_ddb(struct intel_atomic_state *state,
 		       struct intel_crtc *crtc)
@@ -5077,10 +5084,7 @@ skl_allocate_plane_ddb(struct intel_atomic_state *state,
 		intel_atomic_get_new_dbuf_state(state);
 	const struct skl_ddb_entry *alloc = &dbuf_state->ddb[crtc->pipe];
 	int num_active = hweight8(dbuf_state->active_pipes);
-	u16 alloc_size, start = 0;
-	u16 total[I915_MAX_PLANES] = {};
-	u16 uv_total[I915_MAX_PLANES] = {};
-	u64 total_data_rate;
+	struct skl_plane_ddb_iter iter = {};
 	enum plane_id plane_id;
 	u32 blocks;
 	int level;
@@ -5093,23 +5097,21 @@ skl_allocate_plane_ddb(struct intel_atomic_state *state,
 		return 0;
 
 	if (DISPLAY_VER(dev_priv) >= 11)
-		total_data_rate =
-			icl_get_total_relative_data_rate(state, crtc);
+		iter.data_rate = icl_get_total_relative_data_rate(state, crtc);
 	else
-		total_data_rate =
-			skl_get_total_relative_data_rate(state, crtc);
+		iter.data_rate = skl_get_total_relative_data_rate(state, crtc);
 
-	alloc_size = skl_ddb_entry_size(alloc);
-	if (alloc_size == 0)
+	iter.size = skl_ddb_entry_size(alloc);
+	if (iter.size == 0)
 		return 0;
 
 	/* Allocate fixed number of blocks for cursor. */
-	total[PLANE_CURSOR] = skl_cursor_allocation(crtc_state, num_active);
-	alloc_size -= total[PLANE_CURSOR];
+	iter.total[PLANE_CURSOR] = skl_cursor_allocation(crtc_state, num_active);
+	iter.size -= iter.total[PLANE_CURSOR];
 	skl_ddb_entry_init(&crtc_state->wm.skl.plane_ddb_y[PLANE_CURSOR],
-			   alloc->end - total[PLANE_CURSOR], alloc->end);
+			   alloc->end - iter.total[PLANE_CURSOR], alloc->end);
 
-	if (total_data_rate == 0)
+	if (iter.data_rate == 0)
 		return 0;
 
 	/*
@@ -5123,7 +5125,7 @@ skl_allocate_plane_ddb(struct intel_atomic_state *state,
 				&crtc_state->wm.skl.optimal.planes[plane_id];
 
 			if (plane_id == PLANE_CURSOR) {
-				if (wm->wm[level].min_ddb_alloc > total[PLANE_CURSOR]) {
+				if (wm->wm[level].min_ddb_alloc > iter.total[PLANE_CURSOR]) {
 					drm_WARN_ON(&dev_priv->drm,
 						    wm->wm[level].min_ddb_alloc != U16_MAX);
 					blocks = U32_MAX;
@@ -5136,8 +5138,8 @@ skl_allocate_plane_ddb(struct intel_atomic_state *state,
 			blocks += wm->uv_wm[level].min_ddb_alloc;
 		}
 
-		if (blocks <= alloc_size) {
-			alloc_size -= blocks;
+		if (blocks <= iter.size) {
+			iter.size -= blocks;
 			break;
 		}
 	}
@@ -5146,7 +5148,7 @@ skl_allocate_plane_ddb(struct intel_atomic_state *state,
 		drm_dbg_kms(&dev_priv->drm,
 			    "Requested display configuration exceeds system DDB limitations");
 		drm_dbg_kms(&dev_priv->drm, "minimum required %d/%d\n",
-			    blocks, alloc_size);
+			    blocks, iter.size);
 		return -EINVAL;
 	}
 
@@ -5158,7 +5160,7 @@ skl_allocate_plane_ddb(struct intel_atomic_state *state,
 	for_each_plane_id_on_crtc(crtc, plane_id) {
 		const struct skl_plane_wm *wm =
 			&crtc_state->wm.skl.optimal.planes[plane_id];
-		u64 rate;
+		u64 data_rate;
 		u16 extra;
 
 		if (plane_id == PLANE_CURSOR)
@@ -5168,32 +5170,30 @@ skl_allocate_plane_ddb(struct intel_atomic_state *state,
 		 * We've accounted for all active planes; remaining planes are
 		 * all disabled.
 		 */
-		if (total_data_rate == 0)
+		if (iter.data_rate == 0)
 			break;
 
-		rate = crtc_state->plane_data_rate[plane_id];
-		extra = min_t(u16, alloc_size,
-			      DIV64_U64_ROUND_UP(alloc_size * rate,
-						 total_data_rate));
-		total[plane_id] = wm->wm[level].min_ddb_alloc + extra;
-		alloc_size -= extra;
-		total_data_rate -= rate;
+		data_rate = crtc_state->plane_data_rate[plane_id];
+		extra = min_t(u16, iter.size,
+			      DIV64_U64_ROUND_UP(iter.size * data_rate, iter.data_rate));
+		iter.total[plane_id] = wm->wm[level].min_ddb_alloc + extra;
+		iter.size -= extra;
+		iter.data_rate -= data_rate;
 
-		if (total_data_rate == 0)
+		if (iter.data_rate == 0)
 			break;
 
-		rate = crtc_state->uv_plane_data_rate[plane_id];
-		extra = min_t(u16, alloc_size,
-			      DIV64_U64_ROUND_UP(alloc_size * rate,
-						 total_data_rate));
-		uv_total[plane_id] = wm->uv_wm[level].min_ddb_alloc + extra;
-		alloc_size -= extra;
-		total_data_rate -= rate;
+		data_rate = crtc_state->uv_plane_data_rate[plane_id];
+		extra = min_t(u16, iter.size,
+			      DIV64_U64_ROUND_UP(iter.size * data_rate, iter.data_rate));
+		iter.uv_total[plane_id] = wm->uv_wm[level].min_ddb_alloc + extra;
+		iter.size -= extra;
+		iter.data_rate -= data_rate;
 	}
-	drm_WARN_ON(&dev_priv->drm, alloc_size != 0 || total_data_rate != 0);
+	drm_WARN_ON(&dev_priv->drm, iter.size != 0 || iter.data_rate != 0);
 
 	/* Set the actual DDB start/end points for each plane */
-	start = alloc->start;
+	iter.start = alloc->start;
 	for_each_plane_id_on_crtc(crtc, plane_id) {
 		struct skl_ddb_entry *plane_alloc =
 			&crtc_state->wm.skl.plane_ddb_y[plane_id];
@@ -5205,16 +5205,16 @@ skl_allocate_plane_ddb(struct intel_atomic_state *state,
 
 		/* Gen11+ uses a separate plane for UV watermarks */
 		drm_WARN_ON(&dev_priv->drm,
-			    DISPLAY_VER(dev_priv) >= 11 && uv_total[plane_id]);
+			    DISPLAY_VER(dev_priv) >= 11 && iter.uv_total[plane_id]);
 
 		/* Leave disabled planes at (0,0) */
-		if (total[plane_id])
-			start = skl_ddb_entry_init(plane_alloc, start,
-						   start + total[plane_id]);
+		if (iter.total[plane_id])
+			iter.start = skl_ddb_entry_init(plane_alloc, iter.start,
+							iter.start + iter.total[plane_id]);
 
-		if (uv_total[plane_id])
-			start = skl_ddb_entry_init(uv_plane_alloc, start,
-						   start + uv_total[plane_id]);
+		if (iter.uv_total[plane_id])
+			iter.start = skl_ddb_entry_init(uv_plane_alloc, iter.start,
+							iter.start + iter.uv_total[plane_id]);
 	}
 
 	/*
@@ -5229,7 +5229,8 @@ skl_allocate_plane_ddb(struct intel_atomic_state *state,
 				&crtc_state->wm.skl.optimal.planes[plane_id];
 
 			skl_check_nv12_wm_level(&wm->wm[level], &wm->uv_wm[level],
-						total[plane_id], uv_total[plane_id]);
+						iter.total[plane_id],
+						iter.uv_total[plane_id]);
 
 			if (icl_need_wm1_wa(dev_priv, plane_id) &&
 			    level == 1 && wm->wm[0].enable) {
@@ -5248,9 +5249,9 @@ skl_allocate_plane_ddb(struct intel_atomic_state *state,
 		struct skl_plane_wm *wm =
 			&crtc_state->wm.skl.optimal.planes[plane_id];
 
-		skl_check_wm_level(&wm->trans_wm, total[plane_id]);
-		skl_check_wm_level(&wm->sagv.wm0, total[plane_id]);
-		skl_check_wm_level(&wm->sagv.trans_wm, total[plane_id]);
+		skl_check_wm_level(&wm->trans_wm, iter.total[plane_id]);
+		skl_check_wm_level(&wm->sagv.wm0, iter.total[plane_id]);
+		skl_check_wm_level(&wm->sagv.trans_wm, iter.total[plane_id]);
 	}
 
 	return 0;
-- 
2.32.0

