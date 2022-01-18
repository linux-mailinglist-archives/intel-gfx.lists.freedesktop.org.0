Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 835BE4922A0
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jan 2022 10:24:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2B921129F5;
	Tue, 18 Jan 2022 09:24:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B2EA1129F5
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jan 2022 09:24:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642497861; x=1674033861;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=mfV3yzQzObch+zlQ1u2q60C1y8LuE1HDFWsg4BF+1x8=;
 b=JfNhx/Y/gFufLFH6/kC8kRS22c+2ObND2GY/so7J96ba+FVmtfUDacS+
 gVnstI3NfAii/Ff6ib14G0WG8jaYkNgCyL1RNTtn9jViD9Sax4/9/0V+R
 YPP4Xz1iwmkEDmP+v3TfgW8iAGveerNnHunzz4dlezkEjYLGXk8mn9h8V
 JnKQaG8TE5KYqBHtwH3ZlIq2isB1XJMZB2QzrGSE9OpaySzENYD1n7JON
 ImsiZEfFfUeevUcvrmCHjItJ4gQtxwIZDijdUdioOdydNm+X6Q4Hd2H6D
 pl8hVgk9/pCd5l+nbkNAbkTRA/2B9VLusE6NmzyeYojXul2mC6LKHNCEP A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10230"; a="242334079"
X-IronPort-AV: E=Sophos;i="5.88,297,1635231600"; d="scan'208";a="242334079"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2022 01:24:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,297,1635231600"; d="scan'208";a="531707796"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by orsmga008.jf.intel.com with SMTP; 18 Jan 2022 01:24:18 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 Jan 2022 11:24:18 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Jan 2022 11:23:47 +0200
Message-Id: <20220118092354.11631-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220118092354.11631-1-ville.syrjala@linux.intel.com>
References: <20220118092354.11631-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/15] drm/i915: Split plane data_rate into
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

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_atomic_plane.c | 34 ++++++++----------
 .../gpu/drm/i915/display/intel_atomic_plane.h |  3 +-
 drivers/gpu/drm/i915/display/intel_bw.c       | 36 +++++++++----------
 drivers/gpu/drm/i915/display/intel_display.c  |  4 +++
 .../drm/i915/display/intel_display_types.h    |  3 ++
 5 files changed, 42 insertions(+), 38 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 52239351931c..cd18155830d4 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -180,29 +180,16 @@ unsigned int intel_plane_pixel_rate(const struct intel_crtc_state *crtc_state,
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
@@ -324,6 +311,7 @@ void intel_plane_set_invisible(struct intel_crtc_state *crtc_state,
 	crtc_state->nv12_planes &= ~BIT(plane->id);
 	crtc_state->c8_planes &= ~BIT(plane->id);
 	crtc_state->data_rate[plane->id] = 0;
+	crtc_state->data_rate_y[plane->id] = 0;
 	crtc_state->min_cdclk[plane->id] = 0;
 
 	plane_state->uapi.visible = false;
@@ -366,8 +354,16 @@ int intel_plane_atomic_check_with_state(const struct intel_crtc_state *old_crtc_
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
index 7907f601598e..aa26ce5fb654 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.h
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
@@ -24,7 +24,8 @@ unsigned int intel_plane_pixel_rate(const struct intel_crtc_state *crtc_state,
 				    const struct intel_plane_state *plane_state);
 
 unsigned int intel_plane_data_rate(const struct intel_crtc_state *crtc_state,
-				   const struct intel_plane_state *plane_state);
+				   const struct intel_plane_state *plane_state,
+				   int color_plane);
 void intel_plane_copy_uapi_to_hw_state(struct intel_plane_state *plane_state,
 				       const struct intel_plane_state *from_plane_state,
 				       struct intel_crtc *crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 82f0435bcb6d..93feab671c29 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -576,6 +576,7 @@ static unsigned int intel_bw_crtc_num_active_planes(const struct intel_crtc_stat
 static unsigned int intel_bw_crtc_data_rate(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	unsigned int data_rate = 0;
 	enum plane_id plane_id;
 
@@ -588,6 +589,9 @@ static unsigned int intel_bw_crtc_data_rate(const struct intel_crtc_state *crtc_
 			continue;
 
 		data_rate += crtc_state->data_rate[plane_id];
+
+		if (DISPLAY_VER(i915) < 11)
+			data_rate += crtc_state->data_rate_y[plane_id];
 	}
 
 	return data_rate;
@@ -688,28 +692,24 @@ static void skl_crtc_calc_dbuf_bw(struct intel_bw_state *bw_state,
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
index af23153f6502..39dd2e7383e0 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -761,6 +761,7 @@ void intel_plane_disable_noatomic(struct intel_crtc *crtc,
 	intel_set_plane_visible(crtc_state, plane_state, false);
 	fixup_plane_bitmasks(crtc_state);
 	crtc_state->data_rate[plane->id] = 0;
+	crtc_state->data_rate_y[plane->id] = 0;
 	crtc_state->min_cdclk[plane->id] = 0;
 
 	if (plane->id == PLANE_PRIMARY)
@@ -5110,6 +5111,7 @@ static int icl_check_nv12_planes(struct intel_crtc_state *crtc_state)
 			crtc_state->enabled_planes &= ~BIT(plane->id);
 			crtc_state->active_planes &= ~BIT(plane->id);
 			crtc_state->update_planes |= BIT(plane->id);
+			crtc_state->data_rate[plane->id] = 0;
 		}
 
 		plane_state->planar_slave = false;
@@ -5154,6 +5156,8 @@ static int icl_check_nv12_planes(struct intel_crtc_state *crtc_state)
 		crtc_state->enabled_planes |= BIT(linked->id);
 		crtc_state->active_planes |= BIT(linked->id);
 		crtc_state->update_planes |= BIT(linked->id);
+		crtc_state->data_rate[linked->id] =
+			crtc_state->data_rate_y[plane->id];
 		drm_dbg_kms(&dev_priv->drm, "Using %s as Y plane for %s\n",
 			    linked->base.name, plane->base.name);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 578c6069376b..7e147e110059 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1148,7 +1148,10 @@ struct intel_crtc_state {
 
 	int min_cdclk[I915_MAX_PLANES];
 
+	/* for packed/planar CbCr */
 	u32 data_rate[I915_MAX_PLANES];
+	/* for planar Y */
+	u32 data_rate_y[I915_MAX_PLANES];
 
 	/* FIXME unify with data_rate[] */
 	u64 plane_data_rate[I915_MAX_PLANES];
-- 
2.32.0

