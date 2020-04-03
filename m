Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E1BE19D02A
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 08:23:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D2EC6EAF1;
	Fri,  3 Apr 2020 06:23:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 924E36EAF1
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Apr 2020 06:23:41 +0000 (UTC)
IronPort-SDR: 6s+x56C611lSCYzRiqIS5a5Qd44kvU0yUOTIWuPubTuvgcHgoIkN6YAIUHfN+APdylGyy9KiZ0
 Ajb1R9OI0OmQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2020 23:23:41 -0700
IronPort-SDR: JAnHuVtM3SV4rcXtKf/0us+dTywBpa8w+Nv5dXvaQZ238Kry+Z580ZKtW7eW1JmGYYm5lgTbk5
 INvRcrnpPBnw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,338,1580803200"; d="scan'208";a="241039543"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.89])
 by fmsmga007.fm.intel.com with ESMTP; 02 Apr 2020 23:23:38 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  3 Apr 2020 09:20:03 +0300
Message-Id: <20200403062003.11539-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20200326181005.11775-6-stanislav.lisovskiy@intel.com>
References: <20200326181005.11775-6-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v21 05/10] drm/i915: Extract gen specific
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

v2: - Renamed icl_can_enable_sagv into icl_crtc_can_enable_sagv(Ville)
    - Removed dev variables(Ville)
    - Constified crtc/plane_state in icl_crtc_can_enable_sagv
      function(Ville)
    - Added hw.active check(Ville)
    - Refactored if ladder(Ville)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 84 +++++++++++++++++++++------------
 1 file changed, 55 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index f8d62d1977ac..27d4d626cb34 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -3757,42 +3757,25 @@ intel_disable_sagv(struct drm_i915_private *dev_priv)
 	return 0;
 }
 
-bool intel_can_enable_sagv(struct intel_atomic_state *state)
+static bool icl_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state)
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
+	if (crtc_state->hw.adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE) {
+		DRM_DEBUG_KMS("No SAGV for interlaced mode on pipe %c\n",
+			      pipe_name(crtc->pipe));
 		return false;
+	}
 
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
-		return false;
-
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
 
@@ -3823,6 +3806,49 @@ bool intel_can_enable_sagv(struct intel_atomic_state *state)
 	return true;
 }
 
+static bool skl_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state)
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
+	return icl_crtc_can_enable_sagv(crtc_state);
+}
+
+bool intel_can_enable_sagv(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_crtc *crtc;
+	const struct intel_crtc_state *crtc_state;
+	int i;
+
+	if (!intel_has_sagv(dev_priv))
+		return false;
+
+	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
+		bool can_sagv;
+
+		if (INTEL_GEN(dev_priv) >= 11)
+			can_sagv = icl_crtc_can_enable_sagv(crtc_state);
+		else
+			can_sagv = skl_crtc_can_enable_sagv(crtc_state);
+
+		if (!can_sagv)
+			return false;
+	}
+
+	return true;
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
