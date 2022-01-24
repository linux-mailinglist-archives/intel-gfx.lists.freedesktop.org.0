Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4CEA497C6F
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jan 2022 10:49:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AB5C10E397;
	Mon, 24 Jan 2022 09:49:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0519C10E397
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jan 2022 09:49:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643017787; x=1674553787;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=P/wIU6h0EaW0I20WgBX1lABYqsOnhBIhvduEmGUno7Y=;
 b=UsExB+UIKCJ+1H7QOvuinEIK3xLd+3mGJgmb+aJ5dfHJPx9Oo6SKDJsz
 5A4NN6eb78Fb6ELxNmxdY33o10u8X/bLt7kCgY/6zgpZr4NtbCnU3fFzd
 MLiYqjr5gLdBRd9xwFeTxOr7rFuSJnOUSsiYd21d2CFhGEmJfIlUBOtug
 c1yq+vrQKwn/Tji7s7EzWYzh2CZfkUXVnmCt5qoNAOsQPbbPiBth+dY9A
 mix3+7M3K5a0kXdF6mqSGMHw7elZalQNpotp8irv0lM85ucX1Tf/8ARrF
 rXx8z19GpPfVQ3B/DdaHC07WcvMlN3zeXYTD1T5eO1iH+Ek3p2mFoCcsC g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10236"; a="309329172"
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="309329172"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 01:49:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="695365601"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orsmga005.jf.intel.com with ESMTP; 24 Jan 2022 01:49:21 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Jan 2022 11:49:29 +0200
Message-Id: <20220124094929.31722-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20220124090653.14547-4-stanislav.lisovskiy@intel.com>
References: <20220124090653.14547-4-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/4] drm/i915: Use wm0 only during async flips
 for DG2
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

This optimization allows to achieve higher perfomance
during async flips.
For the first async flip we have to still temporarily
switch to sync flip, in order to reprogram plane
watermarks, so this requires taking into account
old plane state's do_async_flip flag.

v2: - Removed redundant new_plane_state->do_async_flip
      check from needs_async_flip_wm_override condition
      (Ville Syrjälä)
    - Extract dg2_async_flip_optimization to separate
      function(Ville Syrjälä)
    - Check for plane->async_flip instead of plane_id
      (Ville Syrjälä)

v3: - Rename "needs_async_flip_wm_override" to
      "intel_plane_do_async_flip" and move all the required
      checks there (Ville Syrjälä)
    - Rename "dg2_async_flip_optimization" to
      "use_minimal_wm0_only" (Ville Syrjälä)

v4: - Swap new/old_crtc_state in intel_plane_do_async_flip
      argument list(Ville Syrjälä)
    - Use plane->base.dev to grab i915 pointer in
      intel_plane_do_async_flip(Ville Syrjälä)
    - Remove const modifier from plane parameter in
      use_minimal_wm0_only(Ville Syrjälä)
    - Swap also new/old_crtc_state at intel_plane_do_async_flip
      call site(Ville Syrjälä)

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 24 +++++++++++++++++++-
 drivers/gpu/drm/i915/intel_pm.c              | 13 ++++++++++-
 2 files changed, 35 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a65bae1f0c35..54cb7e9bfa59 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4910,6 +4910,28 @@ static bool needs_scaling(const struct intel_plane_state *state)
 	return (src_w != dst_w || src_h != dst_h);
 }
 
+static bool intel_plane_do_async_flip(struct intel_plane *plane,
+				      const struct intel_crtc_state *old_crtc_state,
+				      const struct intel_crtc_state *new_crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(plane->base.dev);
+
+	if (!plane->async_flip)
+		return false;
+
+	if (!new_crtc_state->uapi.async_flip)
+		return false;
+
+	/*
+	 * In platforms after DISPLAY13, we might need to override
+	 * first async flip in order to change watermark levels
+	 * as part of optimization.
+	 * So for those, we are checking if this is a first async flip.
+	 * For platforms earlier than DISPLAY13 we always do async flip.
+	 */
+	return DISPLAY_VER(i915) < 13 || old_crtc_state->uapi.async_flip;
+}
+
 int intel_plane_atomic_calc_changes(const struct intel_crtc_state *old_crtc_state,
 				    struct intel_crtc_state *new_crtc_state,
 				    const struct intel_plane_state *old_plane_state,
@@ -5029,7 +5051,7 @@ int intel_plane_atomic_calc_changes(const struct intel_crtc_state *old_crtc_stat
 			 needs_scaling(new_plane_state))))
 		new_crtc_state->disable_lp_wm = true;
 
-	if (new_crtc_state->uapi.async_flip && plane->async_flip)
+	if (intel_plane_do_async_flip(plane, old_crtc_state, new_crtc_state))
 		new_plane_state->do_async_flip = true;
 
 	return 0;
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 06707d2b5fc5..f6c742b583c1 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -4988,6 +4988,16 @@ skl_get_total_relative_data_rate(struct intel_atomic_state *state,
 	return total_data_rate;
 }
 
+static bool use_minimal_wm0_only(const struct intel_crtc_state *crtc_state,
+				 struct intel_plane *plane)
+{
+	struct drm_i915_private *i915 = to_i915(plane->base.dev);
+
+	return DISPLAY_VER(i915) >= 13 &&
+	       crtc_state->uapi.async_flip &&
+	       plane->async_flip;
+}
+
 static u64
 icl_get_total_relative_data_rate(struct intel_atomic_state *state,
 				 struct intel_crtc *crtc)
@@ -5510,7 +5520,8 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 	uint_fixed_16_16_t selected_result;
 	u32 blocks, lines, min_ddb_alloc = 0;
 
-	if (latency == 0) {
+	if (latency == 0 ||
+	    (use_minimal_wm0_only(crtc_state, plane) && level > 0)) {
 		/* reject it */
 		result->min_ddb_alloc = U16_MAX;
 		return;
-- 
2.24.1.485.gad05a3d8e5

