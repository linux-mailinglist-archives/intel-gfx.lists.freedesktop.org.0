Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D5B8C78FE03
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Sep 2023 15:05:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34BFC10E7C8;
	Fri,  1 Sep 2023 13:05:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F411F10E7C7
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Sep 2023 13:05:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693573501; x=1725109501;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/4rgZdV9fnAY0BKBX/2eYiJA3qQIC8mgSI0VW9Mp09I=;
 b=bCDzvC4EsvTLIyMXYeoWwnCnV5PoYYp9yO4CgxlwKqDv+z6aa7TtJoxa
 8i06gyoQBAd9tqj9sxhcn0FpWYjbJ69rgLmCwIry4L6RK+vz7CTBvlCtY
 7BR/Zikw/wnvhxyX/zZUk36ROUBunj/KQpLH8j/tM5mdd6lhPqu5KH59T
 pq8/RsGDUGlxyi+3dG6klZz2y+Y/SJWhXowjMtFsF0mQ6qHDFRhjsutkZ
 XPhzi2zJqX3FEVGCMT106VEwDUHD0go5mPcrVHM2TM8fe7Q0RnXBoU5W9
 PVX2u4fc4RKaBe/ByxBeBB2A/owYZJqKqvmbdDHV0fagZtD1HrPaDY32z g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="361240568"
X-IronPort-AV: E=Sophos;i="6.02,219,1688454000"; d="scan'208";a="361240568"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2023 06:04:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="774994787"
X-IronPort-AV: E=Sophos;i="6.02,219,1688454000"; d="scan'208";a="774994787"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by orsmga001.jf.intel.com with SMTP; 01 Sep 2023 06:04:51 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 01 Sep 2023 16:04:50 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  1 Sep 2023 16:04:31 +0300
Message-ID: <20230901130440.2085-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230901130440.2085-1-ville.syrjala@linux.intel.com>
References: <20230901130440.2085-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/12] drm/i915: Extract
 intel_crtc_vblank_evade_scanlines()
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

Pull the vblank evasion scanline calculations into their own helper
to declutter intel_pipe_update_start() a bit.

Reviewed-by: Manasi Navare <navaremanasi@chromium.org>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c | 53 +++++++++++++----------
 1 file changed, 31 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 461949b48411..e46a15d59d79 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -468,6 +468,36 @@ static int intel_mode_vblank_start(const struct drm_display_mode *mode)
 	return vblank_start;
 }
 
+static void intel_crtc_vblank_evade_scanlines(struct intel_atomic_state *state,
+					      struct intel_crtc *crtc,
+					      int *min, int *max, int *vblank_start)
+{
+	const struct intel_crtc_state *new_crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+	const struct drm_display_mode *adjusted_mode = &new_crtc_state->hw.adjusted_mode;
+
+	if (new_crtc_state->vrr.enable) {
+		if (intel_vrr_is_push_sent(new_crtc_state))
+			*vblank_start = intel_vrr_vmin_vblank_start(new_crtc_state);
+		else
+			*vblank_start = intel_vrr_vmax_vblank_start(new_crtc_state);
+	} else {
+		*vblank_start = intel_mode_vblank_start(adjusted_mode);
+	}
+
+	/* FIXME needs to be calibrated sensibly */
+	*min = *vblank_start - intel_usecs_to_scanlines(adjusted_mode,
+							VBLANK_EVASION_TIME_US);
+	*max = *vblank_start - 1;
+
+	/*
+	 * M/N is double buffered on the transcoder's undelayed vblank,
+	 * so with seamless M/N we must evade both vblanks.
+	 */
+	if (new_crtc_state->seamless_m_n && intel_crtc_needs_fastset(new_crtc_state))
+		*min -= adjusted_mode->crtc_vblank_start - adjusted_mode->crtc_vdisplay;
+}
+
 /**
  * intel_pipe_update_start() - start update of a set of display registers
  * @state: the atomic state
@@ -487,7 +517,6 @@ void intel_pipe_update_start(struct intel_atomic_state *state,
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
-	const struct drm_display_mode *adjusted_mode = &new_crtc_state->hw.adjusted_mode;
 	long timeout = msecs_to_jiffies_timeout(1);
 	int scanline, min, max, vblank_start;
 	wait_queue_head_t *wq = drm_crtc_vblank_waitqueue(&crtc->base);
@@ -503,27 +532,7 @@ void intel_pipe_update_start(struct intel_atomic_state *state,
 	if (intel_crtc_needs_vblank_work(new_crtc_state))
 		intel_crtc_vblank_work_init(new_crtc_state);
 
-	if (new_crtc_state->vrr.enable) {
-		if (intel_vrr_is_push_sent(new_crtc_state))
-			vblank_start = intel_vrr_vmin_vblank_start(new_crtc_state);
-		else
-			vblank_start = intel_vrr_vmax_vblank_start(new_crtc_state);
-	} else {
-		vblank_start = intel_mode_vblank_start(adjusted_mode);
-	}
-
-	/* FIXME needs to be calibrated sensibly */
-	min = vblank_start - intel_usecs_to_scanlines(adjusted_mode,
-						      VBLANK_EVASION_TIME_US);
-	max = vblank_start - 1;
-
-	/*
-	 * M/N is double buffered on the transcoder's undelayed vblank,
-	 * so with seamless M/N we must evade both vblanks.
-	 */
-	if (new_crtc_state->seamless_m_n && intel_crtc_needs_fastset(new_crtc_state))
-		min -= adjusted_mode->crtc_vblank_start - adjusted_mode->crtc_vdisplay;
-
+	intel_crtc_vblank_evade_scanlines(state, crtc, &min, &max, &vblank_start);
 	if (min <= 0 || max <= 0)
 		goto irq_disable;
 
-- 
2.41.0

