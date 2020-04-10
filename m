Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A6481A463C
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2020 14:28:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A56E6E1F8;
	Fri, 10 Apr 2020 12:28:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F147F6E1F8
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Apr 2020 12:28:02 +0000 (UTC)
IronPort-SDR: 8KrqkqEknSMbiiBQdyOaxzrB4yhntrp3XCZ+MARLppcFbZ/WPfQdEpHSam7wu9TARE9h7DDYbD
 s2OjR3LrZn1Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2020 05:28:02 -0700
IronPort-SDR: YVR/VRKB3kH2X6KvX5/eXxxPbw7FvigkBtEcwyG+ZoUH22cXGwlk/FV3rnZcNEqFJTD7T2TlCM
 /R0H3hT+w1RA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,366,1580803200"; d="scan'208";a="398904092"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.89])
 by orsmga004.jf.intel.com with ESMTP; 10 Apr 2020 05:28:00 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Apr 2020 15:24:32 +0300
Message-Id: <20200410122432.9001-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20200409154730.18568-6-stanislav.lisovskiy@intel.com>
References: <20200409154730.18568-6-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v23 05/13] drm/i915: Prepare to extract gen
 specific functions from intel_can_enable_sagv
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Addressing one of the comments, recommending to extract platform
specific code from intel_can_enable_sagv as a preparation, before
we are going to add support for tgl+.

v2: - Removed whitespace

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 66 ++++++++++++++++++---------------
 1 file changed, 37 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 15ad6a73e0bd..a90cd235954d 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -3757,42 +3757,25 @@ intel_disable_sagv(struct drm_i915_private *dev_priv)
 	return 0;
 }
 
-bool intel_can_enable_sagv(struct intel_atomic_state *state)
+static bool intel_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state)
 {
-	struct drm_device *dev = state->base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
-	struct intel_crtc *crtc;
+	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct intel_plane *plane;
-	struct intel_crtc_state *crtc_state;
-	enum pipe pipe;
+	const struct intel_plane_state *plane_state;
 	int level, latency;
 
-	if (!intel_has_sagv(dev_priv))
-		return false;
-
-	/*
-	 * If there are no active CRTCs, no additional checks need be performed
-	 */
-	if (hweight8(state->active_pipes) == 0)
+	if (!crtc_state->hw.active)
 		return true;
 
-	/*
-	 * SKL+ workaround: bspec recommends we disable SAGV when we have
-	 * more then one pipe enabled
-	 */
-	if (hweight8(state->active_pipes) > 1)
-		return false;
-
-	/* Since we're now guaranteed to only have one active CRTC... */
-	pipe = ffs(state->active_pipes) - 1;
-	crtc = intel_get_crtc_for_pipe(dev_priv, pipe);
-	crtc_state = to_intel_crtc_state(crtc->base.state);
-
-	if (crtc_state->hw.adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE)
+	if (crtc_state->hw.adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE) {
+		DRM_DEBUG_KMS("No SAGV for interlaced mode on pipe %c\n",
+			      pipe_name(crtc->pipe));
 		return false;
+	}
 
-	for_each_intel_plane_on_crtc(dev, crtc, plane) {
-		struct skl_plane_wm *wm =
+	intel_atomic_crtc_state_for_each_plane_state(plane, plane_state, crtc_state) {
+		const struct skl_plane_wm *wm =
 			&crtc_state->wm.skl.optimal.planes[plane->id];
 
 		/* Skip this plane if it's not enabled */
@@ -3807,7 +3790,7 @@ bool intel_can_enable_sagv(struct intel_atomic_state *state)
 		latency = dev_priv->wm.skl_latency[level];
 
 		if (skl_needs_memory_bw_wa(dev_priv) &&
-		    plane->base.state->fb->modifier ==
+		    plane_state->uapi.fb->modifier ==
 		    I915_FORMAT_MOD_X_TILED)
 			latency += 15;
 
@@ -3823,6 +3806,31 @@ bool intel_can_enable_sagv(struct intel_atomic_state *state)
 	return true;
 }
 
+bool intel_can_enable_sagv(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_crtc *crtc;
+	const struct intel_crtc_state *crtc_state;
+	enum pipe pipe;
+
+	if (!intel_has_sagv(dev_priv))
+		return false;
+
+	/*
+	 * SKL+ workaround: bspec recommends we disable SAGV when we have
+	 * more then one pipe enabled
+	 */
+	if (hweight8(state->active_pipes) > 1)
+		return false;
+
+	/* Since we're now guaranteed to only have one active CRTC... */
+	pipe = ffs(state->active_pipes) - 1;
+	crtc = intel_get_crtc_for_pipe(dev_priv, pipe);
+	crtc_state = to_intel_crtc_state(crtc->base.state);
+
+	return intel_crtc_can_enable_sagv(crtc_state);
+}
+
 /*
  * Calculate initial DBuf slice offset, based on slice size
  * and mask(i.e if slice size is 1024 and second slice is enabled
-- 
2.24.1.485.gad05a3d8e5

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
