Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A17594922A6
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jan 2022 10:24:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD49710E5CF;
	Tue, 18 Jan 2022 09:24:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2EED10ED72
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jan 2022 09:24:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642497878; x=1674033878;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=E5B38JFnHTI4rUEDf4HA2iMaPlN/pk15On5KgPBUXG0=;
 b=UjDAxKxrsoKTIJEt4Y2Fwqs9bBe/2ychcOxFpY/1aDAJ+CtXJpp4jlcl
 pghUrI+3X0mlqNBZkafOoO4qbXz5tOvYxVQkBsYnYc2FaMKd60mn8qlnD
 WQSl18F1CeRA0ey1LlUIxf4woPIemRc1Ejk+kStWJG2BboOeU5WBENmuo
 jdUyfNeU96MeGJNHBlgjGeuctQcxmrE1yJ2V6GQyg2/n68M1WHbMJSlr1
 CcXa2XeYrt0Ay2+cZvALVqaXptMSAd0NgS+AuM60FKaRJ62DfSltMLQvo
 HtB2NO7EN2pAxpyp2A5NZJ8rNYhPTvTVVxipueSSaiTCosTcDByRKZKCH w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10230"; a="243598431"
X-IronPort-AV: E=Sophos;i="5.88,297,1635231600"; d="scan'208";a="243598431"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2022 01:24:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,297,1635231600"; d="scan'208";a="578339420"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by fmsmga008.fm.intel.com with SMTP; 18 Jan 2022 01:24:36 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 Jan 2022 11:24:35 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Jan 2022 11:23:53 +0200
Message-Id: <20220118092354.11631-15-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220118092354.11631-1-ville.syrjala@linux.intel.com>
References: <20220118092354.11631-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 14/15] drm/i915: Fix DBUF bandwidth vs. cdclk
 handling
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

Make the dbuf bandwidth min cdclk calculations match the spec
more closely. Supposedly the arbiter can only guarantee an equal
share of the total bandwidth of the slice to each active plane
on that slice. So we take the max bandwidth of any of the planes
on each slice and multiply that by the number of active planes
on the slice to get a worst case estimate on how much bandwidth
we require.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c    | 159 +++++++++++++++------
 drivers/gpu/drm/i915/display/intel_bw.h    |  10 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c |  67 ++++-----
 drivers/gpu/drm/i915/display/intel_cdclk.h |   2 +
 4 files changed, 148 insertions(+), 90 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index b1f6cf178678..072e5fcedc54 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -690,12 +690,34 @@ static bool intel_bw_state_changed(struct drm_i915_private *i915,
 		enum dbuf_slice slice;
 
 		for_each_dbuf_slice(i915, slice) {
-			if (old_crtc_bw->used_bw[slice] != new_crtc_bw->used_bw[slice])
+			if (old_crtc_bw->max_bw[slice] != new_crtc_bw->max_bw[slice] ||
+			    old_crtc_bw->active_planes[slice] != new_crtc_bw->active_planes[slice])
 				return true;
 		}
 	}
 
-	return old_bw_state->min_cdclk != new_bw_state->min_cdclk;
+	return false;
+}
+
+static void skl_plane_calc_dbuf_bw(struct intel_bw_state *bw_state,
+				   struct intel_crtc *crtc,
+				   enum plane_id plane_id,
+				   const struct skl_ddb_entry *ddb,
+				   unsigned int data_rate)
+{
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_dbuf_bw *crtc_bw = &bw_state->dbuf_bw[crtc->pipe];
+	unsigned int dbuf_mask = skl_ddb_dbuf_slice_mask(i915, ddb);
+	enum dbuf_slice slice;
+
+	/*
+	 * The arbiter can only really guarantee an
+	 * equal share of the total bw to each plane.
+	 */
+	for_each_dbuf_slice_in_mask(i915, slice, dbuf_mask) {
+		crtc_bw->max_bw[slice] = max(crtc_bw->max_bw[slice], data_rate);
+		crtc_bw->active_planes[slice] |= BIT(plane_id);
+	}
 }
 
 static void skl_crtc_calc_dbuf_bw(struct intel_bw_state *bw_state,
@@ -706,46 +728,77 @@ static void skl_crtc_calc_dbuf_bw(struct intel_bw_state *bw_state,
 	struct intel_dbuf_bw *crtc_bw = &bw_state->dbuf_bw[crtc->pipe];
 	enum plane_id plane_id;
 
-	memset(&crtc_bw->used_bw, 0, sizeof(crtc_bw->used_bw));
+	memset(crtc_bw, 0, sizeof(*crtc_bw));
 
 	if (!crtc_state->hw.active)
 		return;
 
 	for_each_plane_id_on_crtc(crtc, plane_id) {
-		const struct skl_ddb_entry *ddb =
-			&crtc_state->wm.skl.plane_ddb[plane_id];
-		unsigned int data_rate = crtc_state->data_rate[plane_id];
-		unsigned int dbuf_mask = skl_ddb_dbuf_slice_mask(i915, ddb);
-		enum dbuf_slice slice;
-
-		for_each_dbuf_slice_in_mask(i915, slice, dbuf_mask)
-			crtc_bw->used_bw[slice] += data_rate;
+		/*
+		 * We assume cursors are small enough
+		 * to not cause bandwidth problems.
+		 */
+		if (plane_id == PLANE_CURSOR)
+			continue;
+
+		skl_plane_calc_dbuf_bw(bw_state, crtc, plane_id,
+				       &crtc_state->wm.skl.plane_ddb[plane_id],
+				       crtc_state->data_rate[plane_id]);
+
+		if (DISPLAY_VER(i915) < 11)
+			skl_plane_calc_dbuf_bw(bw_state, crtc, plane_id,
+					       &crtc_state->wm.skl.plane_ddb_y[plane_id],
+					       crtc_state->data_rate[plane_id]);
 	}
+}
+
+/* "Maximum Data Buffer Bandwidth" */
+static int
+intel_bw_dbuf_min_cdclk(struct drm_i915_private *i915,
+			const struct intel_bw_state *bw_state)
+{
+	unsigned int total_max_bw = 0;
+	enum dbuf_slice slice;
 
-	if (DISPLAY_VER(i915) >= 11)
-		return;
+	for_each_dbuf_slice(i915, slice) {
+		int num_active_planes = 0;
+		unsigned int max_bw = 0;
+		enum pipe pipe;
 
-	for_each_plane_id_on_crtc(crtc, plane_id) {
-		const struct skl_ddb_entry *ddb =
-			&crtc_state->wm.skl.plane_ddb_y[plane_id];
-		unsigned int data_rate = crtc_state->data_rate_y[plane_id];
-		unsigned int dbuf_mask = skl_ddb_dbuf_slice_mask(i915, ddb);
-		enum dbuf_slice slice;
+		/*
+		 * The arbiter can only really guarantee an
+		 * equal share of the total bw to each plane.
+		 */
+		for_each_pipe(i915, pipe) {
+			const struct intel_dbuf_bw *crtc_bw = &bw_state->dbuf_bw[pipe];
 
-		for_each_dbuf_slice_in_mask(i915, slice, dbuf_mask)
-			crtc_bw->used_bw[slice] += data_rate;
+			max_bw = max(crtc_bw->max_bw[slice], max_bw);
+			num_active_planes += hweight8(crtc_bw->active_planes[slice]);
+		}
+		max_bw *= num_active_planes;
+
+		total_max_bw = max(total_max_bw, max_bw);
 	}
+
+	return DIV_ROUND_UP(total_max_bw, 64);
+}
+
+int intel_bw_min_cdclk(struct drm_i915_private *i915,
+		       const struct intel_bw_state *bw_state)
+{
+	return intel_bw_dbuf_min_cdclk(i915, bw_state);
 }
 
-int intel_bw_calc_min_cdclk(struct intel_atomic_state *state)
+int intel_bw_calc_min_cdclk(struct intel_atomic_state *state,
+			    bool *need_cdclk_calc)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	struct intel_bw_state *new_bw_state = NULL;
-	struct intel_bw_state *old_bw_state = NULL;
+	const struct intel_bw_state *old_bw_state = NULL;
+	const struct intel_cdclk_state *cdclk_state;
 	const struct intel_crtc_state *crtc_state;
+	int old_min_cdclk, new_min_cdclk;
 	struct intel_crtc *crtc;
-	int max_bw = 0;
-	enum pipe pipe;
 	int i;
 
 	if (DISPLAY_VER(dev_priv) < 9)
@@ -764,34 +817,46 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_state *state)
 	if (!old_bw_state)
 		return 0;
 
-	for_each_pipe(dev_priv, pipe) {
-		struct intel_dbuf_bw *crtc_bw;
-		enum dbuf_slice slice;
-
-		crtc_bw = &new_bw_state->dbuf_bw[pipe];
-
-		for_each_dbuf_slice(dev_priv, slice) {
-			/*
-			 * Current experimental observations show that contrary
-			 * to BSpec we get underruns once we exceed 64 * CDCLK
-			 * for slices in total.
-			 * As a temporary measure in order not to keep CDCLK
-			 * bumped up all the time we calculate CDCLK according
-			 * to this formula for  overall bw consumed by slices.
-			 */
-			max_bw += crtc_bw->used_bw[slice];
-		}
-	}
-
-	new_bw_state->min_cdclk = DIV_ROUND_UP(max_bw, 64);
-
 	if (intel_bw_state_changed(dev_priv, old_bw_state, new_bw_state)) {
 		int ret = intel_atomic_lock_global_state(&new_bw_state->base);
-
 		if (ret)
 			return ret;
 	}
 
+	old_min_cdclk = intel_bw_min_cdclk(dev_priv, old_bw_state);
+	new_min_cdclk = intel_bw_min_cdclk(dev_priv, new_bw_state);
+
+	/*
+	 * No need to check against the cdclk state if
+	 * the min cdclk for the dbuf doesn't increase.
+	 *
+	 * Ie. we only ever increase the cdclk due to dbuf
+	 * requirements. This can reduce back and forth
+	 * display blinking due to constant cdclk changes.
+	 */
+	if (new_min_cdclk <= old_min_cdclk)
+		return 0;
+
+	cdclk_state = intel_atomic_get_cdclk_state(state);
+	if (IS_ERR(cdclk_state))
+		return PTR_ERR(cdclk_state);
+
+	/*
+	 * No need to recalculate the cdclk state if
+	 * the min cdclk for the dbuf doesn't increase.
+	 *
+	 * Ie. we only ever increase the cdclk due to dbuf
+	 * requirements. This can reduce back and forth
+	 * display blinking due to constant cdclk changes.
+	 */
+	if (new_min_cdclk <= cdclk_state->bw_min_cdclk)
+		return 0;
+
+	drm_dbg_kms(&dev_priv->drm,
+		    "new bandwidth min cdclk (%d kHz) > old min cdclk (%d kHz)\n",
+		    new_min_cdclk, cdclk_state->bw_min_cdclk);
+	*need_cdclk_calc = true;
+
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i915/display/intel_bw.h
index 57eb755d298a..1edab79d120c 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.h
+++ b/drivers/gpu/drm/i915/display/intel_bw.h
@@ -17,7 +17,8 @@ struct intel_atomic_state;
 struct intel_crtc_state;
 
 struct intel_dbuf_bw {
-	int used_bw[I915_MAX_DBUF_SLICES];
+	unsigned int max_bw[I915_MAX_DBUF_SLICES];
+	u8 active_planes[I915_MAX_DBUF_SLICES];
 };
 
 struct intel_bw_state {
@@ -42,8 +43,6 @@ struct intel_bw_state {
 
 	/* bitmask of active pipes */
 	u8 active_pipes;
-
-	int min_cdclk;
 };
 
 #define to_intel_bw_state(x) container_of((x), struct intel_bw_state, base)
@@ -64,6 +63,9 @@ void intel_bw_crtc_update(struct intel_bw_state *bw_state,
 			  const struct intel_crtc_state *crtc_state);
 int icl_pcode_restrict_qgv_points(struct drm_i915_private *dev_priv,
 				  u32 points_mask);
-int intel_bw_calc_min_cdclk(struct intel_atomic_state *state);
+int intel_bw_calc_min_cdclk(struct intel_atomic_state *state,
+			    bool *need_cdclk_calc);
+int intel_bw_min_cdclk(struct drm_i915_private *i915,
+		       const struct intel_bw_state *bw_state);
 
 #endif /* __INTEL_BW_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 078dc6e1ee34..a2446802ded5 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2315,13 +2315,6 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
 					dev_priv->max_cdclk_freq));
 	}
 
-	if (min_cdclk > dev_priv->max_cdclk_freq) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "required cdclk (%d kHz) exceeds max (%d kHz)\n",
-			    min_cdclk, dev_priv->max_cdclk_freq);
-		return -EINVAL;
-	}
-
 	return min_cdclk;
 }
 
@@ -2329,7 +2322,7 @@ static int intel_compute_min_cdclk(struct intel_cdclk_state *cdclk_state)
 {
 	struct intel_atomic_state *state = cdclk_state->base.state;
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
-	struct intel_bw_state *bw_state = NULL;
+	const struct intel_bw_state *bw_state;
 	struct intel_crtc *crtc;
 	struct intel_crtc_state *crtc_state;
 	int min_cdclk, i;
@@ -2342,10 +2335,6 @@ static int intel_compute_min_cdclk(struct intel_cdclk_state *cdclk_state)
 		if (min_cdclk < 0)
 			return min_cdclk;
 
-		bw_state = intel_atomic_get_bw_state(state);
-		if (IS_ERR(bw_state))
-			return PTR_ERR(bw_state);
-
 		if (cdclk_state->min_cdclk[crtc->pipe] == min_cdclk)
 			continue;
 
@@ -2356,14 +2345,31 @@ static int intel_compute_min_cdclk(struct intel_cdclk_state *cdclk_state)
 			return ret;
 	}
 
-	min_cdclk = cdclk_state->force_min_cdclk;
-	for_each_pipe(dev_priv, pipe) {
+	bw_state = intel_atomic_get_new_bw_state(state);
+	if (bw_state) {
+		min_cdclk = intel_bw_min_cdclk(dev_priv, bw_state);
+
+		if (cdclk_state->bw_min_cdclk != min_cdclk) {
+			int ret;
+
+			cdclk_state->bw_min_cdclk = min_cdclk;
+
+			ret = intel_atomic_lock_global_state(&cdclk_state->base);
+			if (ret)
+				return ret;
+		}
+	}
+
+	min_cdclk = max(cdclk_state->force_min_cdclk,
+			cdclk_state->bw_min_cdclk);
+	for_each_pipe(dev_priv, pipe)
 		min_cdclk = max(cdclk_state->min_cdclk[pipe], min_cdclk);
 
-		if (!bw_state)
-			continue;
-
-		min_cdclk = max(bw_state->min_cdclk, min_cdclk);
+	if (min_cdclk > dev_priv->max_cdclk_freq) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "required cdclk (%d kHz) exceeds max (%d kHz)\n",
+			    min_cdclk, dev_priv->max_cdclk_freq);
+		return -EINVAL;
 	}
 
 	return min_cdclk;
@@ -2644,14 +2650,10 @@ intel_atomic_get_cdclk_state(struct intel_atomic_state *state)
 int intel_cdclk_atomic_check(struct intel_atomic_state *state,
 			     bool *need_cdclk_calc)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	const struct intel_cdclk_state *old_cdclk_state;
 	const struct intel_cdclk_state *new_cdclk_state;
 	struct intel_plane_state *plane_state;
-	struct intel_bw_state *new_bw_state;
 	struct intel_plane *plane;
-	int min_cdclk = 0;
-	enum pipe pipe;
 	int ret;
 	int i;
 
@@ -2666,6 +2668,10 @@ int intel_cdclk_atomic_check(struct intel_atomic_state *state,
 			return ret;
 	}
 
+	ret = intel_bw_calc_min_cdclk(state, need_cdclk_calc);
+	if (ret)
+		return ret;
+
 	old_cdclk_state = intel_atomic_get_old_cdclk_state(state);
 	new_cdclk_state = intel_atomic_get_new_cdclk_state(state);
 
@@ -2673,23 +2679,6 @@ int intel_cdclk_atomic_check(struct intel_atomic_state *state,
 	    old_cdclk_state->force_min_cdclk != new_cdclk_state->force_min_cdclk)
 		*need_cdclk_calc = true;
 
-	ret = intel_bw_calc_min_cdclk(state);
-	if (ret)
-		return ret;
-
-	new_bw_state = intel_atomic_get_new_bw_state(state);
-
-	if (!new_cdclk_state || !new_bw_state)
-		return 0;
-
-	for_each_pipe(i915, pipe) {
-		min_cdclk = max(new_cdclk_state->min_cdclk[pipe], min_cdclk);
-
-		/* Currently do this change only if we need to increase */
-		if (new_bw_state->min_cdclk > min_cdclk)
-			*need_cdclk_calc = true;
-	}
-
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
index 71dd84740ae3..ace24de746a4 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
@@ -36,6 +36,8 @@ struct intel_cdclk_state {
 	 */
 	struct intel_cdclk_config actual;
 
+	/* minimum acceptable cdclk to satisfy bandwidth requirements */
+	int bw_min_cdclk;
 	/* minimum acceptable cdclk for each pipe */
 	int min_cdclk[I915_MAX_PIPES];
 	/* minimum acceptable voltage level for each pipe */
-- 
2.32.0

