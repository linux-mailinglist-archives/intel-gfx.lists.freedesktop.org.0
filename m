Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 756AD497C70
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jan 2022 10:51:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80D6110E14B;
	Mon, 24 Jan 2022 09:51:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2A1910E14B
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jan 2022 09:51:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643017878; x=1674553878;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Lf3l8K9hBTGnrr4Covi1IjIsgP5VFJwXkabAX04jOtI=;
 b=e0yRqQdAV5sAGHRjJ0/FZmCJW72OBQPxJxAZYhOuVMbQJZf8lUwvViYO
 CN/lDsAseSrQ3kl4syn5kWx5P0rpEADnohBnZFI/ZOlnHQ29QHuVa3KM1
 QIfnTIHu7YufKUJEOoX07xc96n9+cnijJE6pEsj42l6J1Qazb7se6uq3g
 R351YBe9K1utBiXcdsrd5y0YxSi4SGTy6IpUxU/5uUAvL7EsiYpoy14kL
 fKKHPZot6HwfqsJJlVwQyX22RlNvFEsQyemLAfQpCyP5G0y1t+yddCXIH
 eOCge03ATvp8SsfzzHZE5dbEPNXYtCvMYJiS2dg4ErW2awU7Pn9Y6h8r6 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10236"; a="306724736"
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="306724736"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 01:51:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="479016953"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orsmga006.jf.intel.com with ESMTP; 24 Jan 2022 01:51:15 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Jan 2022 11:51:23 +0200
Message-Id: <20220124095123.31855-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20220124090653.14547-5-stanislav.lisovskiy@intel.com>
References: <20220124090653.14547-5-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/4] drm/i915: Don't allocate extra ddb during
 async flip for DG2
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

In terms of async flip optimization we don't to allocate
extra ddb space, so lets skip it.

v2: - Extracted min ddb async flip check to separate function
      (Ville Syrjälä)
    - Used this function to prevent false positive WARN
      to be triggered(Ville Syrjälä)

v3: - Renamed dg2_need_min_ddb to need_min_ddb thus making
      it more universal.
    - Also used DISPLAY_VER instead of IS_DG2(Ville Syrjälä)
    - Use rate = 0 instead of just setting extra = 0, thus
      letting other planes to use extra ddb and avoiding WARN
      (Ville Syrjälä)

v4: - Renamed needs_min_ddb as s/needs/use/ to match
      the wm0 counterpart(Ville Syrjälä)
    - Added plane->async_flip check to use_min_ddb(now
      passing plane as a parameter to do that)(Ville Syrjälä)
    - Account for use_min_ddb also when calculating total data rate
      (Ville Syrjälä)

v5:
    - Use for_each_intel_plane_on_crtc instead of for_each_intel_plane_id
      to get plane->async_flip check and account for all planes(Ville Syrjälä)
    - Fix line wrapping(Ville Syrjälä)
    - Set plane data rate conditionally, avoiding on redundant assignment
      (Ville Syrjälä)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 .../gpu/drm/i915/display/intel_atomic_plane.h |  1 -
 drivers/gpu/drm/i915/intel_pm.c               | 40 ++++++++++++++++---
 2 files changed, 35 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.h b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
index ead789709477..c238177e5563 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.h
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
@@ -23,7 +23,6 @@ unsigned int intel_adjusted_rate(const struct drm_rect *src,
 				 unsigned int rate);
 unsigned int intel_plane_pixel_rate(const struct intel_crtc_state *crtc_state,
 				    const struct intel_plane_state *plane_state);
-
 unsigned int intel_plane_data_rate(const struct intel_crtc_state *crtc_state,
 				   const struct intel_plane_state *plane_state);
 void intel_plane_copy_uapi_to_hw_state(struct intel_plane_state *plane_state,
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index f6c742b583c1..7ce26f22e10e 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -4988,6 +4988,16 @@ skl_get_total_relative_data_rate(struct intel_atomic_state *state,
 	return total_data_rate;
 }
 
+static bool use_min_ddb(struct intel_crtc_state *crtc_state,
+			struct intel_plane *plane)
+{
+	struct drm_i915_private *i915 = to_i915(plane->base.dev);
+
+	return DISPLAY_VER(i915) >= 13 &&
+	       crtc_state->uapi.async_flip &&
+	       plane->async_flip;
+}
+
 static bool use_minimal_wm0_only(const struct intel_crtc_state *crtc_state,
 				 struct intel_plane *plane)
 {
@@ -5002,6 +5012,7 @@ static u64
 icl_get_total_relative_data_rate(struct intel_atomic_state *state,
 				 struct intel_crtc *crtc)
 {
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	const struct intel_plane_state *plane_state;
@@ -5043,8 +5054,15 @@ icl_get_total_relative_data_rate(struct intel_atomic_state *state,
 		}
 	}
 
-	for_each_plane_id_on_crtc(crtc, plane_id)
-		total_data_rate += crtc_state->plane_data_rate[plane_id];
+	for_each_intel_plane_on_crtc(&i915->drm, crtc, plane) {
+		/*
+		 * We calculate extra ddb based on ratio plane rate/total data rate
+		 * in case, in some cases we should not allocate extra ddb for the plane,
+		 * so do not count its data rate, if this is the case.
+		 */
+		if (!use_min_ddb(crtc_state, plane))
+			total_data_rate += crtc_state->plane_data_rate[plane->id];
+	}
 
 	return total_data_rate;
 }
@@ -5130,6 +5148,7 @@ skl_allocate_plane_ddb(struct intel_atomic_state *state,
 	u16 alloc_size, start = 0;
 	u16 total[I915_MAX_PLANES] = {};
 	u16 uv_total[I915_MAX_PLANES] = {};
+	struct intel_plane *plane;
 	u64 total_data_rate;
 	enum plane_id plane_id;
 	u32 blocks;
@@ -5206,7 +5225,7 @@ skl_allocate_plane_ddb(struct intel_atomic_state *state,
 	 * watermark level, plus an extra share of the leftover blocks
 	 * proportional to its relative data rate.
 	 */
-	for_each_plane_id_on_crtc(crtc, plane_id) {
+	for_each_intel_plane_on_crtc(&dev_priv->drm, crtc, plane) {
 		const struct skl_plane_wm *wm =
 			&crtc_state->wm.skl.optimal.planes[plane_id];
 		u64 rate;
@@ -5222,10 +5241,15 @@ skl_allocate_plane_ddb(struct intel_atomic_state *state,
 		if (total_data_rate == 0)
 			break;
 
-		rate = crtc_state->plane_data_rate[plane_id];
+		if (use_min_ddb(crtc_state, plane))
+			rate = 0;
+		else
+			rate = crtc_state->plane_data_rate[plane_id];
+
 		extra = min_t(u16, alloc_size,
 			      DIV64_U64_ROUND_UP(alloc_size * rate,
 						 total_data_rate));
+
 		total[plane_id] = wm->wm[level].min_ddb_alloc + extra;
 		alloc_size -= extra;
 		total_data_rate -= rate;
@@ -5233,14 +5257,20 @@ skl_allocate_plane_ddb(struct intel_atomic_state *state,
 		if (total_data_rate == 0)
 			break;
 
-		rate = crtc_state->uv_plane_data_rate[plane_id];
+		if (use_min_ddb(crtc_state, plane))
+			rate = 0;
+		else
+			rate = crtc_state->uv_plane_data_rate[plane_id];
+
 		extra = min_t(u16, alloc_size,
 			      DIV64_U64_ROUND_UP(alloc_size * rate,
 						 total_data_rate));
+
 		uv_total[plane_id] = wm->uv_wm[level].min_ddb_alloc + extra;
 		alloc_size -= extra;
 		total_data_rate -= rate;
 	}
+
 	drm_WARN_ON(&dev_priv->drm, alloc_size != 0 || total_data_rate != 0);
 
 	/* Set the actual DDB start/end points for each plane */
-- 
2.24.1.485.gad05a3d8e5

