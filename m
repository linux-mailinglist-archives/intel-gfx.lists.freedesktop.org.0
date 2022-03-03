Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F9DB4CC5B9
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Mar 2022 20:12:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D32110EEC4;
	Thu,  3 Mar 2022 19:12:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B7A310EF47
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Mar 2022 19:12:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646334737; x=1677870737;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1xIMPU/LETDs2fjwUWYIu59jLxPvGzdukZoCXGYs1mU=;
 b=Ud9eCZT8kIAFNmQzMrHeIgK9bwnG4eKIMaTCfkHR7zyxDmgziK/PUUgS
 KE3MWleGBEX3ZVCCCr7yrw9GVIqvOkupu3qCZd0VIC6/t+TnKzZsYdO3y
 cR15G8VuSNIdHoq4WBCfY1hkn/a8jKTEOyUQ6sg6jXNFw8PLSKn6+Us4Z
 XwjL25SSNG8R8rSKxs4cyy80LQb30ZK64Db1c07HbABjfbKXvM1zcDIZ8
 Y/BjfBeh6oz6tiWtVoglMOBAoo4y8yrqghMrLDAfHp4m5RuDBxTECHTwW
 9SfR4LFD2ZVOQeOIa1Xo+wFOf0DYc9caz3sx7dpFxGyCqpvFQyBYYgSoY A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10275"; a="340217670"
X-IronPort-AV: E=Sophos;i="5.90,151,1643702400"; d="scan'208";a="340217670"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2022 11:12:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,151,1643702400"; d="scan'208";a="511572560"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga006.jf.intel.com with SMTP; 03 Mar 2022 11:12:14 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 03 Mar 2022 21:12:13 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Mar 2022 21:12:00 +0200
Message-Id: <20220303191207.27931-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220303191207.27931-1-ville.syrjala@linux.intel.com>
References: <20220303191207.27931-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/9] drm/i915: Split plane data_rate into
 data_rate+data_rate_y
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

Split the currently combined plane data_rate into the proper
Y vs. CbCr components. This matches how we now track the
plane dbuf allocations, and thus will make the dbuf bandwidth
calculations actually produce the correct numbers for each
dbuf slice.

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_atomic_plane.c | 34 ++++++++----------
 .../gpu/drm/i915/display/intel_atomic_plane.h |  3 +-
 drivers/gpu/drm/i915/display/intel_bw.c       | 36 +++++++++----------
 drivers/gpu/drm/i915/display/intel_display.c  |  4 +++
 .../drm/i915/display/intel_display_types.h    |  3 ++
 5 files changed, 42 insertions(+), 38 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 0da9e2fa79eb..b0aa65845f90 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -181,29 +181,16 @@ unsigned int intel_plane_pixel_rate(const struct intel_crtc_state *crtc_state,
 }
 
 unsigned int intel_plane_data_rate(const struct intel_crtc_state *crtc_state,
-				   const struct intel_plane_state *plane_state)
+				   const struct intel_plane_state *plane_state,
+				   int color_plane)
 {
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
-	unsigned int cpp;
-	unsigned int pixel_rate;
 
 	if (!plane_state->uapi.visible)
 		return 0;
 
-	pixel_rate = intel_plane_pixel_rate(crtc_state, plane_state);
-
-	cpp = fb->format->cpp[0];
-
-	/*
-	 * Based on HSD#:1408715493
-	 * NV12 cpp == 4, P010 cpp == 8
-	 *
-	 * FIXME what is the logic behind this?
-	 */
-	if (fb->format->is_yuv && fb->format->num_planes > 1)
-		cpp *= 4;
-
-	return pixel_rate * cpp;
+	return intel_plane_pixel_rate(crtc_state, plane_state) *
+		fb->format->cpp[color_plane];
 }
 
 int intel_plane_calc_min_cdclk(struct intel_atomic_state *state,
@@ -326,6 +313,7 @@ void intel_plane_set_invisible(struct intel_crtc_state *crtc_state,
 	crtc_state->nv12_planes &= ~BIT(plane->id);
 	crtc_state->c8_planes &= ~BIT(plane->id);
 	crtc_state->data_rate[plane->id] = 0;
+	crtc_state->data_rate_y[plane->id] = 0;
 	crtc_state->min_cdclk[plane->id] = 0;
 
 	plane_state->uapi.visible = false;
@@ -551,8 +539,16 @@ int intel_plane_atomic_check_with_state(const struct intel_crtc_state *old_crtc_
 	if (new_plane_state->uapi.visible || old_plane_state->uapi.visible)
 		new_crtc_state->update_planes |= BIT(plane->id);
 
-	new_crtc_state->data_rate[plane->id] =
-		intel_plane_data_rate(new_crtc_state, new_plane_state);
+	if (new_plane_state->uapi.visible &&
+	    intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier)) {
+		new_crtc_state->data_rate_y[plane->id] =
+			intel_plane_data_rate(new_crtc_state, new_plane_state, 0);
+		new_crtc_state->data_rate[plane->id] =
+			intel_plane_data_rate(new_crtc_state, new_plane_state, 1);
+	} else if (new_plane_state->uapi.visible) {
+		new_crtc_state->data_rate[plane->id] =
+			intel_plane_data_rate(new_crtc_state, new_plane_state, 0);
+	}
 
 	return intel_plane_atomic_calc_changes(old_crtc_state, new_crtc_state,
 					       old_plane_state, new_plane_state);
diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.h b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
index f4763a53541e..74b6d3b169a7 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.h
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
@@ -25,7 +25,8 @@ unsigned int intel_plane_pixel_rate(const struct intel_crtc_state *crtc_state,
 				    const struct intel_plane_state *plane_state);
 
 unsigned int intel_plane_data_rate(const struct intel_crtc_state *crtc_state,
-				   const struct intel_plane_state *plane_state);
+				   const struct intel_plane_state *plane_state,
+				   int color_plane);
 void intel_plane_copy_uapi_to_hw_state(struct intel_plane_state *plane_state,
 				       const struct intel_plane_state *from_plane_state,
 				       struct intel_crtc *crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index e8fc14ff133f..fa51fa85e431 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -578,6 +578,7 @@ static unsigned int intel_bw_crtc_num_active_planes(const struct intel_crtc_stat
 static unsigned int intel_bw_crtc_data_rate(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	unsigned int data_rate = 0;
 	enum plane_id plane_id;
 
@@ -590,6 +591,9 @@ static unsigned int intel_bw_crtc_data_rate(const struct intel_crtc_state *crtc_
 			continue;
 
 		data_rate += crtc_state->data_rate[plane_id];
+
+		if (DISPLAY_VER(i915) < 11)
+			data_rate += crtc_state->data_rate_y[plane_id];
 	}
 
 	return data_rate;
@@ -690,28 +694,24 @@ static void skl_crtc_calc_dbuf_bw(struct intel_bw_state *bw_state,
 	for_each_plane_id_on_crtc(crtc, plane_id) {
 		const struct skl_ddb_entry *ddb =
 			&crtc_state->wm.skl.plane_ddb[plane_id];
-		const struct skl_ddb_entry *ddb_y =
-			&crtc_state->wm.skl.plane_ddb_y[plane_id];
 		unsigned int data_rate = crtc_state->data_rate[plane_id];
-		unsigned int dbuf_mask = 0;
+		unsigned int dbuf_mask = skl_ddb_dbuf_slice_mask(i915, ddb);
 		enum dbuf_slice slice;
 
-		dbuf_mask |= skl_ddb_dbuf_slice_mask(i915, ddb);
-		dbuf_mask |= skl_ddb_dbuf_slice_mask(i915, ddb_y);
+		for_each_dbuf_slice_in_mask(i915, slice, dbuf_mask)
+			crtc_bw->used_bw[slice] += data_rate;
+	}
+
+	if (DISPLAY_VER(i915) >= 11)
+		return;
+
+	for_each_plane_id_on_crtc(crtc, plane_id) {
+		const struct skl_ddb_entry *ddb =
+			&crtc_state->wm.skl.plane_ddb_y[plane_id];
+		unsigned int data_rate = crtc_state->data_rate_y[plane_id];
+		unsigned int dbuf_mask = skl_ddb_dbuf_slice_mask(i915, ddb);
+		enum dbuf_slice slice;
 
-		/*
-		 * FIXME: To calculate that more properly we probably
-		 * need to split per plane data_rate into data_rate_y
-		 * and data_rate_uv for multiplanar formats in order not
-		 * to get accounted those twice if they happen to reside
-		 * on different slices.
-		 * However for pre-icl this would work anyway because
-		 * we have only single slice and for icl+ uv plane has
-		 * non-zero data rate.
-		 * So in worst case those calculation are a bit
-		 * pessimistic, which shouldn't pose any significant
-		 * problem anyway.
-		 */
 		for_each_dbuf_slice_in_mask(i915, slice, dbuf_mask)
 			crtc_bw->used_bw[slice] += data_rate;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 165e8f1ad14a..5e3174dde876 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -785,6 +785,7 @@ void intel_plane_disable_noatomic(struct intel_crtc *crtc,
 	intel_set_plane_visible(crtc_state, plane_state, false);
 	fixup_plane_bitmasks(crtc_state);
 	crtc_state->data_rate[plane->id] = 0;
+	crtc_state->data_rate_y[plane->id] = 0;
 	crtc_state->min_cdclk[plane->id] = 0;
 
 	if ((crtc_state->active_planes & ~BIT(PLANE_CURSOR)) == 0 &&
@@ -4762,6 +4763,7 @@ static int icl_check_nv12_planes(struct intel_crtc_state *crtc_state)
 			crtc_state->enabled_planes &= ~BIT(plane->id);
 			crtc_state->active_planes &= ~BIT(plane->id);
 			crtc_state->update_planes |= BIT(plane->id);
+			crtc_state->data_rate[plane->id] = 0;
 		}
 
 		plane_state->planar_slave = false;
@@ -4806,6 +4808,8 @@ static int icl_check_nv12_planes(struct intel_crtc_state *crtc_state)
 		crtc_state->enabled_planes |= BIT(linked->id);
 		crtc_state->active_planes |= BIT(linked->id);
 		crtc_state->update_planes |= BIT(linked->id);
+		crtc_state->data_rate[linked->id] =
+			crtc_state->data_rate_y[plane->id];
 		drm_dbg_kms(&dev_priv->drm, "Using %s as Y plane for %s\n",
 			    linked->base.name, plane->base.name);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index e35002ecdcf8..ad48509119ff 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1130,7 +1130,10 @@ struct intel_crtc_state {
 
 	int min_cdclk[I915_MAX_PLANES];
 
+	/* for packed/planar CbCr */
 	u32 data_rate[I915_MAX_PLANES];
+	/* for planar Y */
+	u32 data_rate_y[I915_MAX_PLANES];
 
 	/* FIXME unify with data_rate[] */
 	u64 plane_data_rate[I915_MAX_PLANES];
-- 
2.34.1

