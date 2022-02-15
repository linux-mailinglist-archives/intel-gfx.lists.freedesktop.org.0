Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 409A34B745B
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Feb 2022 19:32:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4067A10E51E;
	Tue, 15 Feb 2022 18:32:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AF3A10E51F
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Feb 2022 18:32:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644949946; x=1676485946;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=EWj/1kP6Gsu3FfPtMN51+CVWy9BU2+on3Y7JW+1CwvM=;
 b=ml4s1uAkaO/71fs3OeiCT3xmoPAs3iyZZWZeQ9AJZjoCx6DXfS9dVxPY
 Pfib41ycO+h2WwcolzTkdbnNF8uX/oK42DWqryitkP8t0vvxO64RqWB3y
 R1Dc4pptd5kQ7mk28iHUAwSrF37K13VdkeoSOUmxc9JEv4snPdm4cHQ3p
 IljeXPVkx5s3V7UqW5KQ2kkCQTR8VceQs0YzlO4lpRkjgQbMaS7Qu5kx/
 UNFb0q/+mGjZ/fn6do+N73co+yPjmgEEpTq/IS6Le4FW1aqeQf2xjFvzR
 chQAK805T/uGZrssLrQglkK6s02bkSwa/T8MHk84McCmGTyLWbpKVkTax Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10259"; a="250627958"
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="250627958"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 10:32:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="529010573"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga007.jf.intel.com with SMTP; 15 Feb 2022 10:32:23 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 15 Feb 2022 20:32:22 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Feb 2022 20:32:01 +0200
Message-Id: <20220215183208.6143-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220215183208.6143-1-ville.syrjala@linux.intel.com>
References: <20220215183208.6143-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/12] drm/i915: Extract
 intel_bigjoiner_adjust_timings()
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

Deduplicate the code to convert the full timings to
per-pipe timings for bigjoiner usage.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 41 +++++++++-----------
 1 file changed, 18 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 70017526fa81..19417ff975c6 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2724,6 +2724,21 @@ static void intel_crtc_compute_pixel_rate(struct intel_crtc_state *crtc_state)
 			ilk_pipe_pixel_rate(crtc_state);
 }
 
+static void intel_bigjoiner_adjust_timings(const struct intel_crtc_state *crtc_state,
+					   struct drm_display_mode *mode)
+{
+	if (!crtc_state->bigjoiner)
+		return;
+
+	mode->crtc_clock /= 2;
+	mode->crtc_hdisplay /= 2;
+	mode->crtc_hblank_start /= 2;
+	mode->crtc_hblank_end /= 2;
+	mode->crtc_hsync_start /= 2;
+	mode->crtc_hsync_end /= 2;
+	mode->crtc_htotal /= 2;
+}
+
 static void intel_splitter_adjust_timings(const struct intel_crtc_state *crtc_state,
 					  struct drm_display_mode *mode)
 {
@@ -2756,19 +2771,7 @@ static void intel_crtc_readout_derived_state(struct intel_crtc_state *crtc_state
 
 	drm_mode_copy(pipe_mode, adjusted_mode);
 
-	if (crtc_state->bigjoiner) {
-		/*
-		 * transcoder is programmed to the full mode,
-		 * but pipe timings are half of the transcoder mode
-		 */
-		pipe_mode->crtc_hdisplay /= 2;
-		pipe_mode->crtc_hblank_start /= 2;
-		pipe_mode->crtc_hblank_end /= 2;
-		pipe_mode->crtc_hsync_start /= 2;
-		pipe_mode->crtc_hsync_end /= 2;
-		pipe_mode->crtc_htotal /= 2;
-		pipe_mode->crtc_clock /= 2;
-	}
+	intel_bigjoiner_adjust_timings(crtc_state, pipe_mode);
 
 	if (crtc_state->splitter.enable) {
 		intel_splitter_adjust_timings(crtc_state, pipe_mode);
@@ -2804,17 +2807,9 @@ static int intel_crtc_compute_config(struct intel_crtc *crtc,
 
 	drm_mode_copy(pipe_mode, &crtc_state->hw.adjusted_mode);
 
-	/* Adjust pipe_mode for bigjoiner, with half the horizontal mode */
-	if (crtc_state->bigjoiner) {
-		pipe_mode->crtc_clock /= 2;
-		pipe_mode->crtc_hdisplay /= 2;
-		pipe_mode->crtc_hblank_start /= 2;
-		pipe_mode->crtc_hblank_end /= 2;
-		pipe_mode->crtc_hsync_start /= 2;
-		pipe_mode->crtc_hsync_end /= 2;
-		pipe_mode->crtc_htotal /= 2;
+	intel_bigjoiner_adjust_timings(crtc_state, pipe_mode);
+	if (crtc_state->bigjoiner)
 		crtc_state->pipe_src_w /= 2;
-	}
 
 	intel_splitter_adjust_timings(crtc_state, pipe_mode);
 
-- 
2.34.1

