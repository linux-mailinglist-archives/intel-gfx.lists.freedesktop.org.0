Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A226B4B745A
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Feb 2022 19:32:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAA9F10E513;
	Tue, 15 Feb 2022 18:32:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 355BB10E513
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Feb 2022 18:32:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644949943; x=1676485943;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=5orU9tVDFbjHKE1qboHRYiE7d+gY35rSHlvYyhICKGQ=;
 b=ePn41/L5HlR86159H5xfIX+CKChribzLYk5vktYiM6iP9J5j3dXwhaCZ
 +s9IbaCHeIlN4lYZ7dOShGHhqPFKaslMRfYEqiAmCg9Dy9jtGXWaiFCZA
 LBt7f7hKaHO9KOFE2/dPPbWXHnZVARZOldtdhalNOWEKw4MlUljhlg1oz
 w7ON0P0ksuwurHPMx9B8v3f/xQRR+dP/Pn3WdQEmgyLThqn+X1/qj0nwh
 k1Kjjt6lasCLNmKnfCiXeRiSaHEOouDBWmQtZr4vcMDKmjlJJJT8z6xz8
 WiJPdlRK9Ls+atcI6sziyWguRWTtMs3PsYbTK0OP5/uu8z12YtxY4oOvV Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10259"; a="275001561"
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="275001561"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 10:32:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="544436566"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga008.jf.intel.com with SMTP; 15 Feb 2022 10:32:20 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 15 Feb 2022 20:32:19 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Feb 2022 20:32:00 +0200
Message-Id: <20220215183208.6143-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220215183208.6143-1-ville.syrjala@linux.intel.com>
References: <20220215183208.6143-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/12] drm/i915: Extract
 intel_splitter_adjust_timings()
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

Let's not replicate the same piece of code to expand
the MSO segment timings to full width in many places.
Pull it into a helper

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 54 ++++++++++----------
 1 file changed, 26 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 5da8db3dda8f..70017526fa81 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2724,6 +2724,30 @@ static void intel_crtc_compute_pixel_rate(struct intel_crtc_state *crtc_state)
 			ilk_pipe_pixel_rate(crtc_state);
 }
 
+static void intel_splitter_adjust_timings(const struct intel_crtc_state *crtc_state,
+					  struct drm_display_mode *mode)
+{
+	int overlap = crtc_state->splitter.pixel_overlap;
+	int n = crtc_state->splitter.link_count;
+
+	if (!crtc_state->splitter.enable)
+		return;
+
+	/*
+	 * eDP MSO uses segment timings from EDID for transcoder
+	 * timings, but full mode for everything else.
+	 *
+	 * h_full = (h_segment - pixel_overlap) * link_count
+	 */
+	mode->crtc_hdisplay = (mode->crtc_hdisplay - overlap) * n;
+	mode->crtc_hblank_start = (mode->crtc_hblank_start - overlap) * n;
+	mode->crtc_hblank_end = (mode->crtc_hblank_end - overlap) * n;
+	mode->crtc_hsync_start = (mode->crtc_hsync_start - overlap) * n;
+	mode->crtc_hsync_end = (mode->crtc_hsync_end - overlap) * n;
+	mode->crtc_htotal = (mode->crtc_htotal - overlap) * n;
+	mode->crtc_clock *= n;
+}
+
 static void intel_crtc_readout_derived_state(struct intel_crtc_state *crtc_state)
 {
 	struct drm_display_mode *mode = &crtc_state->hw.mode;
@@ -2747,22 +2771,7 @@ static void intel_crtc_readout_derived_state(struct intel_crtc_state *crtc_state
 	}
 
 	if (crtc_state->splitter.enable) {
-		int n = crtc_state->splitter.link_count;
-		int overlap = crtc_state->splitter.pixel_overlap;
-
-		/*
-		 * eDP MSO uses segment timings from EDID for transcoder
-		 * timings, but full mode for everything else.
-		 *
-		 * h_full = (h_segment - pixel_overlap) * link_count
-		 */
-		pipe_mode->crtc_hdisplay = (pipe_mode->crtc_hdisplay - overlap) * n;
-		pipe_mode->crtc_hblank_start = (pipe_mode->crtc_hblank_start - overlap) * n;
-		pipe_mode->crtc_hblank_end = (pipe_mode->crtc_hblank_end - overlap) * n;
-		pipe_mode->crtc_hsync_start = (pipe_mode->crtc_hsync_start - overlap) * n;
-		pipe_mode->crtc_hsync_end = (pipe_mode->crtc_hsync_end - overlap) * n;
-		pipe_mode->crtc_htotal = (pipe_mode->crtc_htotal - overlap) * n;
-		pipe_mode->crtc_clock *= n;
+		intel_splitter_adjust_timings(crtc_state, pipe_mode);
 
 		intel_mode_from_crtc_timings(pipe_mode, pipe_mode);
 		intel_mode_from_crtc_timings(adjusted_mode, pipe_mode);
@@ -2807,18 +2816,7 @@ static int intel_crtc_compute_config(struct intel_crtc *crtc,
 		crtc_state->pipe_src_w /= 2;
 	}
 
-	if (crtc_state->splitter.enable) {
-		int n = crtc_state->splitter.link_count;
-		int overlap = crtc_state->splitter.pixel_overlap;
-
-		pipe_mode->crtc_hdisplay = (pipe_mode->crtc_hdisplay - overlap) * n;
-		pipe_mode->crtc_hblank_start = (pipe_mode->crtc_hblank_start - overlap) * n;
-		pipe_mode->crtc_hblank_end = (pipe_mode->crtc_hblank_end - overlap) * n;
-		pipe_mode->crtc_hsync_start = (pipe_mode->crtc_hsync_start - overlap) * n;
-		pipe_mode->crtc_hsync_end = (pipe_mode->crtc_hsync_end - overlap) * n;
-		pipe_mode->crtc_htotal = (pipe_mode->crtc_htotal - overlap) * n;
-		pipe_mode->crtc_clock *= n;
-	}
+	intel_splitter_adjust_timings(crtc_state, pipe_mode);
 
 	intel_mode_from_crtc_timings(pipe_mode, pipe_mode);
 
-- 
2.34.1

