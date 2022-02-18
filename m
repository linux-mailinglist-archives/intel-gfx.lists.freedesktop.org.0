Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DA244BB2A4
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Feb 2022 07:40:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2DFD10EA90;
	Fri, 18 Feb 2022 06:40:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9007A10EA90
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Feb 2022 06:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645166452; x=1676702452;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eTYjlEJYWpXFst6uqlwMlj2W1rERVjasgRor/7opnSY=;
 b=Gdzzg695BsHPQ92nRKAqcSqLGdrYQVOMnK3I+BJNuaNtxSMEekCta1y8
 poMs4FF+hqgue7pMBoXACdoba4Ir7yEFYFUweztkrlO1AP4lXTBwOZnrx
 nupol7anBgoz1wpRRZ8KKy8SQeExQ9EfTYWxyOtz2EZsy9YgQ4TS2QY23
 CjxwcFLoIajlcRhT/UP8c1xQ5ka2tNtx0jYzUlfwAI7KKdMVul/lkkCGb
 gFcMfhyNolHysFpEgmyd88yLMBqIfT3RYVr5H6CbcXP52iSLTuNHV3PP7
 1qNOHhL70xqgYxuR78J6BstARCL+n2t101WYm51hO+vWPNQasbtOJBQJH Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10261"; a="231702712"
X-IronPort-AV: E=Sophos;i="5.88,378,1635231600"; d="scan'208";a="231702712"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2022 22:40:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,378,1635231600"; d="scan'208";a="572187241"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga001.jf.intel.com with SMTP; 17 Feb 2022 22:40:49 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 18 Feb 2022 08:40:48 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Feb 2022 08:40:36 +0200
Message-Id: <20220218064039.12834-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220218064039.12834-1-ville.syrjala@linux.intel.com>
References: <20220218064039.12834-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 3/6] drm/i915: Split pre-icl vs. icl+ SAGV
 hooks apart
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

To further reduce the confusion between the pre-icl vs. icl+
SAGV codepaths let's do a full split.

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 120 ++++++++++++++++++++------------
 1 file changed, 77 insertions(+), 43 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index d0fcc4586983..bf8cf71f5b07 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -3782,34 +3782,44 @@ intel_disable_sagv(struct drm_i915_private *dev_priv)
 	return 0;
 }
 
-void intel_sagv_pre_plane_update(struct intel_atomic_state *state)
+static void skl_sagv_pre_plane_update(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	const struct intel_bw_state *new_bw_state =
+		intel_atomic_get_new_bw_state(state);
+
+	if (!new_bw_state)
+		return;
+
+	if (!intel_can_enable_sagv(i915, new_bw_state))
+		intel_disable_sagv(i915);
+}
+
+static void skl_sagv_post_plane_update(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	const struct intel_bw_state *new_bw_state =
+		intel_atomic_get_new_bw_state(state);
+
+	if (!new_bw_state)
+		return;
+
+	if (intel_can_enable_sagv(i915, new_bw_state))
+		intel_enable_sagv(i915);
+}
+
+static void icl_sagv_pre_plane_update(struct intel_atomic_state *state)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
-	const struct intel_bw_state *new_bw_state;
-	const struct intel_bw_state *old_bw_state;
-	u32 new_mask = 0;
+	const struct intel_bw_state *old_bw_state =
+		intel_atomic_get_old_bw_state(state);
+	const struct intel_bw_state *new_bw_state =
+		intel_atomic_get_new_bw_state(state);
+	u32 new_mask;
 
-	/*
-	 * Just return if we can't control SAGV or don't have it.
-	 * This is different from situation when we have SAGV but just can't
-	 * afford it due to DBuf limitation - in case if SAGV is completely
-	 * disabled in a BIOS, we are not even allowed to send a PCode request,
-	 * as it will throw an error. So have to check it here.
-	 */
-	if (!intel_has_sagv(dev_priv))
-		return;
-
-	new_bw_state = intel_atomic_get_new_bw_state(state);
 	if (!new_bw_state)
 		return;
 
-	if (DISPLAY_VER(dev_priv) < 11) {
-		if (!intel_can_enable_sagv(dev_priv, new_bw_state))
-			intel_disable_sagv(dev_priv);
-		return;
-	}
-
-	old_bw_state = intel_atomic_get_old_bw_state(state);
 	/*
 	 * Nothing to mask
 	 */
@@ -3834,34 +3844,18 @@ void intel_sagv_pre_plane_update(struct intel_atomic_state *state)
 	icl_pcode_restrict_qgv_points(dev_priv, new_mask);
 }
 
-void intel_sagv_post_plane_update(struct intel_atomic_state *state)
+static void icl_sagv_post_plane_update(struct intel_atomic_state *state)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
-	const struct intel_bw_state *new_bw_state;
-	const struct intel_bw_state *old_bw_state;
+	const struct intel_bw_state *old_bw_state =
+		intel_atomic_get_old_bw_state(state);
+	const struct intel_bw_state *new_bw_state =
+		intel_atomic_get_new_bw_state(state);
 	u32 new_mask = 0;
 
-	/*
-	 * Just return if we can't control SAGV or don't have it.
-	 * This is different from situation when we have SAGV but just can't
-	 * afford it due to DBuf limitation - in case if SAGV is completely
-	 * disabled in a BIOS, we are not even allowed to send a PCode request,
-	 * as it will throw an error. So have to check it here.
-	 */
-	if (!intel_has_sagv(dev_priv))
-		return;
-
-	new_bw_state = intel_atomic_get_new_bw_state(state);
 	if (!new_bw_state)
 		return;
 
-	if (DISPLAY_VER(dev_priv) < 11) {
-		if (intel_can_enable_sagv(dev_priv, new_bw_state))
-			intel_enable_sagv(dev_priv);
-		return;
-	}
-
-	old_bw_state = intel_atomic_get_old_bw_state(state);
 	/*
 	 * Nothing to unmask
 	 */
@@ -3879,6 +3873,46 @@ void intel_sagv_post_plane_update(struct intel_atomic_state *state)
 	icl_pcode_restrict_qgv_points(dev_priv, new_mask);
 }
 
+void intel_sagv_pre_plane_update(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+
+	/*
+	 * Just return if we can't control SAGV or don't have it.
+	 * This is different from situation when we have SAGV but just can't
+	 * afford it due to DBuf limitation - in case if SAGV is completely
+	 * disabled in a BIOS, we are not even allowed to send a PCode request,
+	 * as it will throw an error. So have to check it here.
+	 */
+	if (!intel_has_sagv(i915))
+		return;
+
+	if (DISPLAY_VER(i915) >= 11)
+		icl_sagv_pre_plane_update(state);
+	else
+		skl_sagv_pre_plane_update(state);
+}
+
+void intel_sagv_post_plane_update(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+
+	/*
+	 * Just return if we can't control SAGV or don't have it.
+	 * This is different from situation when we have SAGV but just can't
+	 * afford it due to DBuf limitation - in case if SAGV is completely
+	 * disabled in a BIOS, we are not even allowed to send a PCode request,
+	 * as it will throw an error. So have to check it here.
+	 */
+	if (!intel_has_sagv(i915))
+		return;
+
+	if (DISPLAY_VER(i915) >= 11)
+		icl_sagv_post_plane_update(state);
+	else
+		skl_sagv_post_plane_update(state);
+}
+
 static bool skl_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-- 
2.34.1

