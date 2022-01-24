Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A0469497B04
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jan 2022 10:07:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E3F210EDAE;
	Mon, 24 Jan 2022 09:06:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6C7210E74A
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jan 2022 09:06:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643015217; x=1674551217;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oGCOwSYDOL9TM5I2IKDQUR6rKTwJjM/HARtUtMn5cFs=;
 b=NdDevHylkkewP2mJp0nupSUH4AZgekvQCxc1MjA+5zM4HxibU1rbvgG1
 XGtBCo7QPjFifr2H1JxcLtW43G+w6uMAQ2h9cLglAgLARAnfEub/I117B
 O3F09EgB4tbZDk5d/UjAzEdjLRXi7BXmecbapBYO8Ks07A31amZdOXSkx
 J6Xl9Bcy985/odYvUS5L8N+HNZx8XoW5CkImPbcDWp1HCmW+0GePwYrvl
 hDtXdDuWYW6aYisNW+ddQrRySsbP8wW6R/FHR+NW+mWeOkriIEodoQfRw
 0Oc2CoYYGzhBMOspwToTaohh1XJBc94iaVLB+TNOz6DW4yXCl/nCLpcce Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10236"; a="245782537"
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="245782537"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 01:06:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="627424714"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orsmga004.jf.intel.com with ESMTP; 24 Jan 2022 01:06:51 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Jan 2022 11:06:52 +0200
Message-Id: <20220124090653.14547-4-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20220124090653.14547-1-stanislav.lisovskiy@intel.com>
References: <20220124090653.14547-1-stanislav.lisovskiy@intel.com>
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

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 24 +++++++++++++++++++-
 drivers/gpu/drm/i915/intel_pm.c              | 13 ++++++++++-
 2 files changed, 35 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a65bae1f0c35..d4ba6c2910fc 100644
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
+	if (intel_plane_do_async_flip(plane, new_crtc_state, old_crtc_state))
 		new_plane_state->do_async_flip = true;
 
 	return 0;
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 06707d2b5fc5..8269f1e9c784 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -5497,6 +5497,16 @@ static int skl_wm_max_lines(struct drm_i915_private *dev_priv)
 		return 31;
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
 static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 				 struct intel_plane *plane,
 				 int level,
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

