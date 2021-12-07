Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A3F7346B9CD
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Dec 2021 12:07:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5089B7AB3B;
	Tue,  7 Dec 2021 11:07:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4B3F7AB07
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Dec 2021 11:07:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10190"; a="217579242"
X-IronPort-AV: E=Sophos;i="5.87,293,1631602800"; d="scan'208";a="217579242"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2021 03:07:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,293,1631602800"; d="scan'208";a="515235535"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.167])
 by orsmga008.jf.intel.com with ESMTP; 07 Dec 2021 03:07:27 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Dec 2021 13:07:20 +0200
Message-Id: <20211207110721.30409-3-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20211207110721.30409-1-stanislav.lisovskiy@intel.com>
References: <20211207110721.30409-1-stanislav.lisovskiy@intel.com>
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

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 12 +++++++++++-
 drivers/gpu/drm/i915/intel_pm.c              | 12 +++++++++++-
 2 files changed, 22 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index d0552c71a3fd..7c5ca2233ae3 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4906,6 +4906,15 @@ static bool needs_scaling(const struct intel_plane_state *state)
 	return (src_w != dst_w || src_h != dst_h);
 }
 
+static bool needs_async_flip_wm_override(struct intel_plane *plane,
+					 const struct intel_plane_state *new_plane_state,
+					 const struct intel_plane_state *old_plane_state)
+{
+	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
+
+	return DISPLAY_VER(dev_priv) >= 13 && !old_plane_state->do_async_flip;
+}
+
 int intel_plane_atomic_calc_changes(const struct intel_crtc_state *old_crtc_state,
 				    struct intel_crtc_state *new_crtc_state,
 				    const struct intel_plane_state *old_plane_state,
@@ -5025,7 +5034,8 @@ int intel_plane_atomic_calc_changes(const struct intel_crtc_state *old_crtc_stat
 			 needs_scaling(new_plane_state))))
 		new_crtc_state->disable_lp_wm = true;
 
-	if (new_crtc_state->uapi.async_flip && plane->async_flip)
+	if (new_crtc_state->uapi.async_flip &&
+	    !needs_async_flip_wm_override(plane, new_plane_state, old_plane_state))
 		new_plane_state->do_async_flip = true;
 
 	return 0;
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 79dac38d9eb2..a529a116164e 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -5497,6 +5497,15 @@ static int skl_wm_max_lines(struct drm_i915_private *dev_priv)
 		return 31;
 }
 
+bool dg2_async_flip_optimization(struct drm_i915_private *i915,
+				 const struct intel_crtc_state *crtc_state,
+				 const struct intel_plane *plane)
+{
+	return DISPLAY_VER(i915) >= 13 &&
+	       crtc_state->uapi.async_flip &&
+	       plane->async_flip;
+}
+
 static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 				 const struct intel_plane *plane,
 				 int level,
@@ -5510,7 +5519,8 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 	uint_fixed_16_16_t selected_result;
 	u32 blocks, lines, min_ddb_alloc = 0;
 
-	if (latency == 0) {
+	if (latency == 0 ||
+	    (dg2_async_flip_optimization(dev_priv, crtc_state, plane) && level > 0)) {
 		/* reject it */
 		result->min_ddb_alloc = U16_MAX;
 		return;
-- 
2.24.1.485.gad05a3d8e5

