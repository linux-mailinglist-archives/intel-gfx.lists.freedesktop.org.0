Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CFAA19463A
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2020 19:14:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED1F06E900;
	Thu, 26 Mar 2020 18:14:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FA866E902
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2020 18:14:03 +0000 (UTC)
IronPort-SDR: jcnSWlADbqugr5VW9bfe7KQpBWHmGopE/8eyeZfEKnNlviKyEK+HwbgE29IlqgR+juggW6S2rZ
 iyXveurXMaRw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2020 11:14:03 -0700
IronPort-SDR: 7x4r6+STuYV7CIQb2cbrwRKQWG/EQIaaV8iBsturVyi3DCDqtIFff0GJIrQ9ARZla1aT+Xvkq6
 KsXLy1rIj/yg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,309,1580803200"; d="scan'208";a="420808253"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.89])
 by orsmga005.jf.intel.com with ESMTP; 26 Mar 2020 11:14:01 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Mar 2020 20:10:00 +0200
Message-Id: <20200326181005.11775-6-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20200326181005.11775-1-stanislav.lisovskiy@intel.com>
References: <20200326181005.11775-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v20 05/10] drm/i915: Extract gen specific
 functions from intel_can_enable_sagv
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

Current code in intel_can_enable_sagv is valid only for skl,
so this patch adds also proper support for icl, subsequent
patches will add support for tgl+, combined with other required
changes.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 89 ++++++++++++++++++++++-----------
 1 file changed, 61 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index f8d62d1977ac..64193b098175 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -3757,41 +3757,24 @@ intel_disable_sagv(struct drm_i915_private *dev_priv)
 	return 0;
 }
 
-bool intel_can_enable_sagv(struct intel_atomic_state *state)
+static bool icl_can_enable_sagv_on_pipe(struct intel_crtc_state *crtc_state)
 {
-	struct drm_device *dev = state->base.dev;
+	struct drm_device *dev = crtc_state->uapi.crtc->dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct intel_crtc *crtc;
 	struct intel_plane *plane;
-	struct intel_crtc_state *crtc_state;
-	enum pipe pipe;
+	struct intel_plane_state *plane_state;
 	int level, latency;
 
-	if (!intel_has_sagv(dev_priv))
-		return false;
+	crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
-	/*
-	 * If there are no active CRTCs, no additional checks need be performed
-	 */
-	if (hweight8(state->active_pipes) == 0)
-		return true;
-
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
+	intel_atomic_crtc_state_for_each_plane_state(plane, plane_state, crtc_state) {
 		struct skl_plane_wm *wm =
 			&crtc_state->wm.skl.optimal.planes[plane->id];
 
@@ -3807,7 +3790,7 @@ bool intel_can_enable_sagv(struct intel_atomic_state *state)
 		latency = dev_priv->wm.skl_latency[level];
 
 		if (skl_needs_memory_bw_wa(dev_priv) &&
-		    plane->base.state->fb->modifier ==
+		    plane_state->uapi.fb->modifier ==
 		    I915_FORMAT_MOD_X_TILED)
 			latency += 15;
 
@@ -3816,8 +3799,58 @@ bool intel_can_enable_sagv(struct intel_atomic_state *state)
 		 * incur memory latencies higher than sagv_block_time_us we
 		 * can't enable SAGV.
 		 */
-		if (latency < dev_priv->sagv_block_time_us)
+		if (latency < dev_priv->sagv_block_time_us) {
+			DRM_DEBUG_KMS("Latency %d < sagv block time %d, no SAGV for pipe %c\n",
+				      latency, dev_priv->sagv_block_time_us, pipe_name(crtc->pipe));
 			return false;
+		}
+	}
+
+	return true;
+}
+
+static bool skl_can_enable_sagv_on_pipe(struct intel_crtc_state *crtc_state)
+{
+	struct intel_atomic_state *state = to_intel_atomic_state(crtc_state->uapi.state);
+
+	/*
+	 * It has been recommended that for Gen 9 we switch SAGV off when
+	 * multiple pipes are used.
+	 */
+	if (hweight8(state->active_pipes) > 1)
+		return false;
+
+	/*
+	 * Besides active pipe limitation, rest of checks pretty much match ICL
+	 * so no need to duplicate code
+	 */
+	return icl_can_enable_sagv_on_pipe(crtc_state);
+}
+
+bool intel_can_enable_sagv(struct intel_atomic_state *state)
+{
+	struct drm_device *dev = state->base.dev;
+	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct intel_crtc *crtc;
+	struct intel_crtc_state *crtc_state;
+	int i;
+
+	if (!intel_has_sagv(dev_priv))
+		return false;
+
+	/*
+	 * If there are no active CRTCs, no additional checks need be performed
+	 */
+	if (hweight8(state->active_pipes) == 0)
+		return true;
+
+	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
+		if (INTEL_GEN(dev_priv) <= 9) {
+			if (!skl_can_enable_sagv_on_pipe(crtc_state))
+				return false;
+		} else if (!icl_can_enable_sagv_on_pipe(crtc_state)) {
+			return false;
+		}
 	}
 
 	return true;
-- 
2.24.1.485.gad05a3d8e5

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
