Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0531495B8F
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jan 2022 09:06:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0A3B10E95D;
	Fri, 21 Jan 2022 08:06:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC4F410E956
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jan 2022 08:06:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642752374; x=1674288374;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HKXiv5XTLI0ijNbgeaLqTMKSVYx66l8KbU0xzzkA7Dg=;
 b=mJUsPQWM2Z8xCrmI3xTV50LJ55GlPK7VR3exvCk28Ff59WbqRZzshOCJ
 xJZT8FOMCII9MkA5F7oj8PaKYmHndHcyHf1/ai3j3S2a9n5xHvPMda722
 +jChZ/GGnrzhLU4FMt1wq4T7Q5Ocdd1qFYNzsX+DI35CfrZoy8jOdz0Q5
 Ut2J3vlVJZgK05b6gtlGcRaWYOwKnpR+EcMaa7sg8f3XRgQYxHesZ0NH2
 UU7087x09ka+W+zxhDlHbyCcD0Wal7NRMQvcDi1ubJH4+HcGQ2xVEOwdJ
 PT621Q8NLy5clI+Vp4+Iumc3ypYgpuz1VqUujew5J55k7l1FAEu76ic2O g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10233"; a="270015052"
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="270015052"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 00:06:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="561783875"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orsmga001.jf.intel.com with ESMTP; 21 Jan 2022 00:06:13 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Jan 2022 10:06:14 +0200
Message-Id: <20220121080615.9936-4-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20220121080615.9936-1-stanislav.lisovskiy@intel.com>
References: <20220121080615.9936-1-stanislav.lisovskiy@intel.com>
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

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 24 +++++++++++++++++++-
 drivers/gpu/drm/i915/intel_pm.c              | 12 +++++++++-
 2 files changed, 34 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 9996daa036a0..3b86ede01b57 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4910,6 +4910,28 @@ static bool needs_scaling(const struct intel_plane_state *state)
 	return (src_w != dst_w || src_h != dst_h);
 }
 
+static bool intel_plane_do_async_flip(struct intel_plane *plane,
+				      const struct intel_crtc_state *new_crtc_state,
+				      const struct intel_crtc_state *old_crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(new_crtc_state->uapi.crtc->dev);
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
index 35d0bd8c6e57..5fb022a2a4d7 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -5510,6 +5510,15 @@ static int skl_wm_max_lines(struct drm_i915_private *dev_priv)
 		return 31;
 }
 
+static bool use_minimal_wm0_only(struct drm_i915_private *i915,
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
@@ -5523,7 +5532,8 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 	uint_fixed_16_16_t selected_result;
 	u32 blocks, lines, min_ddb_alloc = 0;
 
-	if (latency == 0) {
+	if (latency == 0 ||
+	    (use_minimal_wm0_only(dev_priv, crtc_state, plane) && level > 0)) {
 		/* reject it */
 		result->min_ddb_alloc = U16_MAX;
 		return;
-- 
2.24.1.485.gad05a3d8e5

