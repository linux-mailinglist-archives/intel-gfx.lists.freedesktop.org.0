Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF91A4922A2
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jan 2022 10:24:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFB5F112A40;
	Tue, 18 Jan 2022 09:24:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E04D0112A40
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jan 2022 09:24:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642497866; x=1674033866;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=NN7ebqeO7jeMipqTwyGqR8XOgyDJDGLR6ESilAp1rMw=;
 b=REBF5xrB+G5PsydUnSOKpapbNtLaD9eGRXp36t73WMFY+si5JP9XH7sx
 FvSlLmrKNxD4NUPrM7vWpL9ddk2kQdyJVu1Tphu4AMYnH0n/vQfFpTmQK
 S5Nh/g5i3hudiyfzaQHx0GKMTHNrYf0kaAm2PVDzD2sgNR0RGvYowvLVW
 13vKu9+M2ixK6N43DYCZu9KKXpbCl/ZDPkQqs61rZJLFRoM/tQCYdyD7b
 IUiSyZwp5w3P/auEBENFjBY3A0BVkexgyPJ5r3hpi56qyS6z1VL5V0z2k
 ZSvDCheB2jhCxqDBaxFsYwSrMwPaH6t/1oCzKXbRHILmYong2a7cq36sF g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10230"; a="232133372"
X-IronPort-AV: E=Sophos;i="5.88,297,1635231600"; d="scan'208";a="232133372"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2022 01:24:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,297,1635231600"; d="scan'208";a="476910802"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by orsmga006.jf.intel.com with SMTP; 18 Jan 2022 01:24:24 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 Jan 2022 11:24:23 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Jan 2022 11:23:49 +0200
Message-Id: <20220118092354.11631-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220118092354.11631-1-ville.syrjala@linux.intel.com>
References: <20220118092354.11631-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/15] drm/i915: Remove total[] and uv_total[]
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

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 115 +++++++++++++++-----------------
 1 file changed, 55 insertions(+), 60 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 134584c77697..6c30c57748e8 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -4920,18 +4920,18 @@ skl_plane_trans_wm(const struct skl_pipe_wm *pipe_wm,
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
@@ -4951,13 +4951,12 @@ static bool icl_need_wm1_wa(struct drm_i915_private *i915,
 
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
@@ -4968,7 +4967,8 @@ skl_allocate_plane_ddb(struct skl_plane_ddb_iter *iter,
 	iter->size -= extra;
 	iter->data_rate -= data_rate;
 
-	return wm->min_ddb_alloc + extra;
+	iter->start = skl_ddb_entry_init(ddb, iter->start,
+					 iter->start + wm->min_ddb_alloc + extra);
 }
 
 static int
@@ -4982,8 +4982,9 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
 		intel_atomic_get_new_dbuf_state(state);
 	const struct skl_ddb_entry *alloc = &dbuf_state->ddb[crtc->pipe];
 	int num_active = hweight8(dbuf_state->active_pipes);
-	struct skl_plane_ddb_iter iter = {};
+	struct skl_plane_ddb_iter iter;
 	enum plane_id plane_id;
+	u16 cursor_size;
 	u32 blocks;
 	int level;
 
@@ -4994,15 +4995,16 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
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
 	if (iter.data_rate == 0)
@@ -5019,7 +5021,10 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
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
@@ -5052,6 +5057,10 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
 	 * proportional to its relative data rate.
 	 */
 	for_each_plane_id_on_crtc(crtc, plane_id) {
+		struct skl_ddb_entry *ddb =
+			&crtc_state->wm.skl.plane_ddb[plane_id];
+		struct skl_ddb_entry *ddb_y =
+			&crtc_state->wm.skl.plane_ddb_y[plane_id];
 		const struct skl_plane_wm *wm =
 			&crtc_state->wm.skl.optimal.planes[plane_id];
 
@@ -5067,51 +5076,17 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
 
 		if (DISPLAY_VER(dev_priv) < 11 &&
 		    crtc_state->nv12_planes & BIT(plane_id)) {
-			iter.total[plane_id] =
-				skl_allocate_plane_ddb(&iter, &wm->wm[level],
-						       crtc_state->rel_data_rate_y[plane_id]);
-			iter.uv_total[plane_id] =
-				skl_allocate_plane_ddb(&iter, &wm->uv_wm[level],
-						       crtc_state->rel_data_rate[plane_id]);
+			skl_allocate_plane_ddb(&iter, ddb_y, &wm->wm[level],
+					       crtc_state->rel_data_rate_y[plane_id]);
+			skl_allocate_plane_ddb(&iter, ddb, &wm->uv_wm[level],
+					       crtc_state->rel_data_rate[plane_id]);
 		} else {
-			iter.total[plane_id] =
-				skl_allocate_plane_ddb(&iter, &wm->wm[level],
-						       crtc_state->rel_data_rate[plane_id]);
+			skl_allocate_plane_ddb(&iter, ddb, &wm->wm[level],
+					       crtc_state->rel_data_rate[plane_id]);
 		}
 	}
 	drm_WARN_ON(&dev_priv->drm, iter.size != 0 || iter.data_rate != 0);
 
-	/* Set the actual DDB start/end points for each plane */
-	iter.start = alloc->start;
-	for_each_plane_id_on_crtc(crtc, plane_id) {
-		struct skl_ddb_entry *ddb =
-			&crtc_state->wm.skl.plane_ddb[plane_id];
-		struct skl_ddb_entry *ddb_y =
-			&crtc_state->wm.skl.plane_ddb_y[plane_id];
-
-		if (plane_id == PLANE_CURSOR)
-			continue;
-
-		/* Gen11+ uses a separate plane for UV watermarks */
-		drm_WARN_ON(&dev_priv->drm,
-			    DISPLAY_VER(dev_priv) >= 11 && iter.uv_total[plane_id]);
-
-		/* Leave disabled planes at (0,0) */
-		if (DISPLAY_VER(dev_priv) < 11 &&
-		    crtc_state->nv12_planes & BIT(plane_id)) {
-			if (iter.total[plane_id])
-				iter.start = skl_ddb_entry_init(ddb_y, iter.start,
-								iter.start + iter.total[plane_id]);
-			if (iter.uv_total[plane_id])
-				iter.start = skl_ddb_entry_init(ddb, iter.start,
-								iter.start + iter.uv_total[plane_id]);
-		} else {
-			if (iter.total[plane_id])
-				iter.start = skl_ddb_entry_init(ddb, iter.start,
-								iter.start + iter.total[plane_id]);
-		}
-	}
-
 	/*
 	 * When we calculated watermark values we didn't know how high
 	 * of a level we'd actually be able to hit, so we just marked
@@ -5120,12 +5095,20 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
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
@@ -5141,12 +5124,24 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
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
2.32.0

