Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E74F4B745E
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Feb 2022 19:32:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37E1410E51F;
	Tue, 15 Feb 2022 18:32:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14C3B10E525
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Feb 2022 18:32:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644949955; x=1676485955;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Juugs3oa2Dha6oxgFczd0EoRMNATrXi1aD/TmoEe3ic=;
 b=b9JqDKncHwmVEHqcw7p//rZwiCBU0MYd6GgTY/joi2Vgm3ONYry0Xg03
 tM4tf600S88XE8eC7uKc8LKlsECOuQ29XlUPgegAyLi9rOBgnqnUW04Vc
 WvJzSIkz2zNIE3gAp4mY2yWbWiOa7GC9lp2yKFwzWJhY3OLVzGPXiOZNN
 AjGp7bi3imMf1p3XnnitvEw38k7lDttwYd10lqbTnBSceqrAvF2o9eRKs
 fLwIIYKjgEq7ceyDw4SolGh8qnLJlXB/EzxG6//EzWH2c0qbVaFGd2+UI
 7lVoULWtkwuRW5/vLxrlmdgv+ooY1kaicYrepBOG6+C2Cgr2jCp+88II1 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10259"; a="250166510"
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="250166510"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 10:32:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="502590781"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga002.jf.intel.com with SMTP; 15 Feb 2022 10:32:32 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 15 Feb 2022 20:32:31 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Feb 2022 20:32:04 +0200
Message-Id: <20220215183208.6143-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220215183208.6143-1-ville.syrjala@linux.intel.com>
References: <20220215183208.6143-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/12] drm/i915: Fix MSO vs. bigjoiner timings
 confusion
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

When calculating pipe_mode and when doing readout we need
to order our steps correctly.

1. We start with adjusted_mode crtc timings being populated
   with the transcoder timings (either via readout or
   compute_config(). These will be per-segment for MSO.
2. For all other uses we want the full crtc timings so
   we ask intel_splitter_adjust_timings() to expand
   the per-segment numbers to their full glory
3. If bigjoiner is used we the divide the full numbers
   down to per-pipe numbers using intel_bigjoiner_adjust_timings()

During readout we also have to reconstruct the adjusted_mode
normal timings (ie. not the crtc_ stuff). These are supposed
to reflect the full timings of the display. So we grab these
between steps 2 and 3.

The "user" mode readout (mainly done for fastboot purposes)
should be whatever mode the user would have used had they
asked us to do a modeset. We want the full timings for this
as the per-segment timings are not suppoesed to be user visible.
Also the user mode normal timings hdisplay/vdisplay need to
match PIPESRC (that is where we get our PIPESRC size
we doing a modeset with a user supplied mode).

And we end up with
- adjusted_mode normal timigns == full timings
- adjusted_mode crtc timings == transcoder timings
  (per-segment timings for MSO, full timings otherwise)
- pipe_mode normal/crtc timings == pipe timings
  (full timings divided by the number of bigjoiner pipes, if any)
- user mode normal timings == full timings with
  hdisplay/vdisplay replaced with PIPESRC size
- user mode crtc timings == full timings

Yes, that is a lot of timings. One day we'll try to remove
some of the ones we don't actually need to keep around...

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 50 +++++++++++++-------
 1 file changed, 32 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 6ff58164929c..131be3bb8026 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2769,25 +2769,33 @@ static void intel_crtc_readout_derived_state(struct intel_crtc_state *crtc_state
 	struct drm_display_mode *pipe_mode = &crtc_state->hw.pipe_mode;
 	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 
+	/*
+	 * Start with the adjusted_mode crtc timings, which
+	 * have been filled with the transcoder timings.
+	 */
 	drm_mode_copy(pipe_mode, adjusted_mode);
 
-	intel_bigjoiner_adjust_timings(crtc_state, pipe_mode);
-
-	if (crtc_state->splitter.enable) {
-		intel_splitter_adjust_timings(crtc_state, pipe_mode);
-
-		intel_mode_from_crtc_timings(pipe_mode, pipe_mode);
-		intel_mode_from_crtc_timings(adjusted_mode, pipe_mode);
-	} else {
-		intel_mode_from_crtc_timings(pipe_mode, pipe_mode);
-		intel_mode_from_crtc_timings(adjusted_mode, adjusted_mode);
-	}
-
-	intel_crtc_compute_pixel_rate(crtc_state);
-
-	drm_mode_copy(mode, adjusted_mode);
+	/* Expand MSO per-segment transcoder timings to full */
+	intel_splitter_adjust_timings(crtc_state, pipe_mode);
+
+	/*
+	 * We want the full numbers in adjusted_mode normal timings,
+	 * adjusted_mode crtc timings are left with the raw transcoder
+	 * timings.
+	 */
+	intel_mode_from_crtc_timings(adjusted_mode, pipe_mode);
+
+	/* Populate the "user" mode with full numbers */
+	drm_mode_copy(mode, pipe_mode);
+	intel_mode_from_crtc_timings(mode, mode);
 	mode->hdisplay = crtc_state->pipe_src_w << crtc_state->bigjoiner;
 	mode->vdisplay = crtc_state->pipe_src_h;
+
+	/* Derive per-pipe timings in case bigjoiner is used */
+	intel_bigjoiner_adjust_timings(crtc_state, pipe_mode);
+	intel_mode_from_crtc_timings(pipe_mode, pipe_mode);
+
+	intel_crtc_compute_pixel_rate(crtc_state);
 }
 
 static void intel_encoder_get_config(struct intel_encoder *encoder,
@@ -2836,15 +2844,21 @@ static int intel_crtc_compute_pipe_mode(struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 	struct drm_display_mode *pipe_mode = &crtc_state->hw.pipe_mode;
 	int clock_limit = i915->max_dotclk_freq;
 
-	drm_mode_copy(pipe_mode, &crtc_state->hw.adjusted_mode);
-
-	intel_bigjoiner_adjust_timings(crtc_state, pipe_mode);
+	/*
+	 * Start with the adjusted_mode crtc timings, which
+	 * have been filled with the transcoder timings.
+	 */
+	drm_mode_copy(pipe_mode, adjusted_mode);
 
+	/* Expand MSO per-segment transcoder timings to full */
 	intel_splitter_adjust_timings(crtc_state, pipe_mode);
 
+	/* Derive per-pipe timings in case bigjoiner is used */
+	intel_bigjoiner_adjust_timings(crtc_state, pipe_mode);
 	intel_mode_from_crtc_timings(pipe_mode, pipe_mode);
 
 	if (DISPLAY_VER(i915) < 4) {
-- 
2.34.1

