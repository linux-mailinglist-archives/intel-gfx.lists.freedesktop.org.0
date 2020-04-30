Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D9DC01C0643
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2020 21:24:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E07F86E23F;
	Thu, 30 Apr 2020 19:24:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7814D6E23F
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Apr 2020 19:24:30 +0000 (UTC)
IronPort-SDR: 7vjzQjKRrZg3ArLDfyCREahIzNPeh9C+PP7TzE+/Z249LttOvfZoa26rtxMdElbAZnMM4OBlXU
 fbvcIllRTjlw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2020 12:24:29 -0700
IronPort-SDR: sMDMS4qD72u0mHrS45MUxzVdfnJrjpCDXANsTD8ttgVg0Vyyismr2ecEQi0gttDZcrGnO4KlOX
 vN3vsmO7dW7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,336,1583222400"; d="scan'208";a="276619930"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.89])
 by orsmga002.jf.intel.com with ESMTP; 30 Apr 2020 12:24:27 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 30 Apr 2020 22:20:11 +0300
Message-Id: <20200430192011.18322-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20200423075902.21892-4-stanislav.lisovskiy@intel.com>
References: <20200423075902.21892-4-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v26 3/9] drm/i915: Track active_pipes in bw_state
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We need to calculate SAGV mask also in a non-modeset
commit, however currently active_pipes are only calculated
for modesets in global atomic state, thus now we will be
tracking those also in bw_state in order to be able to
properly access global data.

v2: - Removed pre/post plane SAGV updates from modeset(Ville)
    - Now tracking active pipes in intel_can_enable_sagv(Ville)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.h      |  3 +++
 drivers/gpu/drm/i915/display/intel_display.c |  9 ++++----
 drivers/gpu/drm/i915/intel_pm.c              | 22 ++++++++------------
 3 files changed, 16 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i915/display/intel_bw.h
index d6df91058223..898b4a85ccab 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.h
+++ b/drivers/gpu/drm/i915/display/intel_bw.h
@@ -26,6 +26,9 @@ struct intel_bw_state {
 
 	unsigned int data_rate[I915_MAX_PIPES];
 	u8 num_active_planes[I915_MAX_PIPES];
+
+	/* bitmask of active pipes */
+	u8 active_pipes;
 };
 
 #define to_intel_bw_state(x) container_of((x), struct intel_bw_state, base)
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index adb08a00bb57..136826edaf49 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -15365,11 +15365,11 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 
 		intel_set_cdclk_pre_plane_update(state);
 
-		intel_sagv_pre_plane_update(state);
-
 		intel_modeset_verify_disabled(dev_priv, state);
 	}
 
+	intel_sagv_pre_plane_update(state);
+
 	/* Complete the events for pipes that have now been disabled */
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
 		bool modeset = needs_modeset(new_crtc_state);
@@ -15462,11 +15462,10 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	intel_check_cpu_fifo_underruns(dev_priv);
 	intel_check_pch_fifo_underruns(dev_priv);
 
-	if (state->modeset) {
+	if (state->modeset)
 		intel_verify_planes(state);
 
-		intel_sagv_post_plane_update(state);
-	}
+	intel_sagv_post_plane_update(state);
 
 	drm_atomic_helper_commit_hw_done(&state->base);
 
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 8d458cf0333d..14689a2efb20 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -3806,7 +3806,6 @@ void intel_sagv_post_plane_update(struct intel_atomic_state *state)
 
 static bool intel_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state)
 {
-	struct intel_atomic_state *state = to_intel_atomic_state(crtc_state->uapi.state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	struct intel_plane *plane;
@@ -3819,13 +3818,6 @@ static bool intel_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state
 	if (!crtc_state->hw.active)
 		return true;
 
-	/*
-	 * SKL+ workaround: bspec recommends we disable SAGV when we have
-	 * more then one pipe enabled
-	 */
-	if (hweight8(state->active_pipes) > 1)
-		return false;
-
 	if (crtc_state->hw.adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE)
 		return false;
 
@@ -3863,6 +3855,9 @@ static bool intel_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state
 
 bool intel_can_enable_sagv(const struct intel_bw_state *bw_state)
 {
+	if (bw_state->active_pipes && !is_power_of_2(bw_state->active_pipes))
+		return false;
+
 	return bw_state->pipe_sagv_reject == 0;
 }
 
@@ -3892,6 +3887,9 @@ static int intel_compute_sagv_mask(struct intel_atomic_state *state)
 	if (!new_bw_state)
 		return 0;
 
+	new_bw_state->active_pipes =
+		intel_calc_active_pipes(state, old_bw_state->active_pipes);
+
 	if (intel_can_enable_sagv(new_bw_state) != intel_can_enable_sagv(old_bw_state)) {
 		ret = intel_atomic_serialize_global_state(&new_bw_state->base);
 		if (ret)
@@ -5915,11 +5913,9 @@ skl_compute_wm(struct intel_atomic_state *state)
 	if (ret)
 		return ret;
 
-	if (state->modeset) {
-		ret = intel_compute_sagv_mask(state);
-		if (ret)
-			return ret;
-	}
+	ret = intel_compute_sagv_mask(state);
+	if (ret)
+		return ret;
 
 	/*
 	 * skl_compute_ddb() will have adjusted the final watermarks
-- 
2.24.1.485.gad05a3d8e5

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
