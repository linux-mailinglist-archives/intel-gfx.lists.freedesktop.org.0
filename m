Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BD134C13B9
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Feb 2022 14:13:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48D8F10F39D;
	Wed, 23 Feb 2022 13:13:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D8E910F395
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Feb 2022 13:13:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645622016; x=1677158016;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=o8TkLdWYAiJ+lfljpByMu8NexFDMmw3NcGRp/iNjShc=;
 b=jWHJBMYNPs+PU3XGKnFVIu+vVdAtffy8uihVJ67uGPtWMBa7lsVmuFxn
 +/HxAK2O8Oqmm+FEzBbOm+CSEFUHy9q1WCNeXCyHEoU0KyPalB1Njeg7S
 lGyCRtD0PCguFfCsoj4A/osO7Qavs1o3vsL6qzPYgKjphxL5vA15rWcL6
 KUzUAhSEeKuPQXutqbT3xI0eZx1mgJbWJmvmTDfCFqJY74MsuFWj5MYve
 srIWFaqyXfUqMFcdiLTcKSg9Ezp6Z4f9ga7iH7dJN/zWM4ZSXn8MsGep+
 GZJTrZVayAVwoJ16jCbfRh3sXX/4L/jgmXHT/zETc3Qnap2221NZDUdb8 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="231931759"
X-IronPort-AV: E=Sophos;i="5.88,391,1635231600"; d="scan'208";a="231931759"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 05:13:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,391,1635231600"; d="scan'208";a="505906597"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga002.jf.intel.com with SMTP; 23 Feb 2022 05:13:31 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 23 Feb 2022 15:13:30 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Feb 2022 15:13:07 +0200
Message-Id: <20220223131315.18016-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220223131315.18016-1-ville.syrjala@linux.intel.com>
References: <20220223131315.18016-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 05/13] drm/i915: Extract
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Let's not replicate the same piece of code to expand
the MSO segment timings to full width in many places.
Pull it into a helper

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 54 ++++++++++----------
 1 file changed, 26 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index c7339764f3d2..43ef14e8d9d3 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2728,6 +2728,30 @@ static void intel_crtc_compute_pixel_rate(struct intel_crtc_state *crtc_state)
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
@@ -2751,22 +2775,7 @@ static void intel_crtc_readout_derived_state(struct intel_crtc_state *crtc_state
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
@@ -2811,18 +2820,7 @@ static int intel_crtc_compute_config(struct intel_crtc *crtc,
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

