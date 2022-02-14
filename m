Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B9B74B457E
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Feb 2022 10:18:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85AAA10E2CB;
	Mon, 14 Feb 2022 09:18:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 428C510E2CC
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Feb 2022 09:18:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644830328; x=1676366328;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KhZN6xCiKOZnNx7H0k5NisN+p7yD6+6P3jqzOpoyydE=;
 b=OdAHJTnQIjKlC4uYCED9y3r+vLGqwBNphOhUjSDZwhbSBHTU1jamWzo3
 zfJbKasm7Swr3r2X9yljlK9zh44hSo0HqD5P9zUbb0dA2CnX95CpAPj1l
 aoxRL21/fB3wLQW6WKgL7uofExC2gHr9a9XcZcgLFh4/h7kZPnP2GPj3w
 Re7p2NzZJpI3qBwHO1kWLKEu1YSDh78cDHrZhqOt89rv8JajqBRFWB6Oy
 qdGv1uz7gnr2bjbZFi0xtvCKAtC1qI9XCECHULEFGheVmIdJjbyw5u6nN
 WuSLEUViEbeUs+qCWjEEuHM1pN2rbVN7FqXthZxPvyRzBTk1u+xex0GAk A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10257"; a="247644102"
X-IronPort-AV: E=Sophos;i="5.88,367,1635231600"; d="scan'208";a="247644102"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2022 01:18:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,367,1635231600"; d="scan'208";a="632012135"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga002.fm.intel.com with SMTP; 14 Feb 2022 01:18:29 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 14 Feb 2022 11:18:28 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Feb 2022 11:18:10 +0200
Message-Id: <20220214091811.13725-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220214091811.13725-1-ville.syrjala@linux.intel.com>
References: <20220214091811.13725-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/6] drm/i915: Split pre-icl vs. icl+ SAGV hooks
 apart
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

Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 120 ++++++++++++++++++++------------
 1 file changed, 77 insertions(+), 43 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 068870b17c43..8b70cdc3b58b 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -3785,34 +3785,44 @@ intel_disable_sagv(struct drm_i915_private *dev_priv)
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
@@ -3837,34 +3847,18 @@ void intel_sagv_pre_plane_update(struct intel_atomic_state *state)
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
@@ -3882,6 +3876,46 @@ void intel_sagv_post_plane_update(struct intel_atomic_state *state)
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

