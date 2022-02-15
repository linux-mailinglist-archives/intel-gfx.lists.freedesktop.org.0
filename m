Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F9D24B7458
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Feb 2022 19:32:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3542810E50C;
	Tue, 15 Feb 2022 18:32:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6152E10E513
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Feb 2022 18:32:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644949940; x=1676485940;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=MSDT2b6+rQj8VpGc3KBl/jxhYx/kv9qq9lCnqtmspvg=;
 b=M4zx6PEwV5EisCmjlUnvKtjEp+Colnc67jp4owOgQGlHg6/fr+yr6unY
 RZALlPBEuapUUdJlbzb98aU6nuwnB79jzT9p2Y/XnAzzO8tkpEXnQNHnB
 63IsKZDDfc+XZf6Dxp0xnMYuCMFndn9HcBfohUye+ZgyLmmoqb32mJpeV
 MQLQOU2YM6xIb+qSPkhdz5M4oqeMPMUbf1inDdEaOVjUjuQpE91V6hwxL
 8UsDtLO7wHMKjD6gTfS8No1QI8hSvnI6qBKxGz6hpQVeSUeqoG0r6wvWl
 LyMd+cGqKQiW1vSDmDbaNJpoefkXvfuF/5bZNvhjybEe75py+aNFFbl66 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10259"; a="250166468"
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="250166468"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 10:32:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="681153674"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga001.fm.intel.com with SMTP; 15 Feb 2022 10:32:17 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 15 Feb 2022 20:32:16 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Feb 2022 20:31:59 +0200
Message-Id: <20220215183208.6143-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220215183208.6143-1-ville.syrjala@linux.intel.com>
References: <20220215183208.6143-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/12] drm/i915: Rename variables in
 intel_crtc_compute_config()
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

Do the s/dev_priv/i915/ and s/pipe_config/crtc_state/ renames
to intel_crtc_compute_config(). I want to start splitting this
up a bit and doing the renames now avoids spreading these old
nameing conventions elsewhere.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 50 ++++++++++----------
 1 file changed, 25 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 49ca13abd108..5da8db3dda8f 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2787,16 +2787,16 @@ static void intel_encoder_get_config(struct intel_encoder *encoder,
 }
 
 static int intel_crtc_compute_config(struct intel_crtc *crtc,
-				     struct intel_crtc_state *pipe_config)
+				     struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	struct drm_display_mode *pipe_mode = &pipe_config->hw.pipe_mode;
-	int clock_limit = dev_priv->max_dotclk_freq;
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct drm_display_mode *pipe_mode = &crtc_state->hw.pipe_mode;
+	int clock_limit = i915->max_dotclk_freq;
 
-	drm_mode_copy(pipe_mode, &pipe_config->hw.adjusted_mode);
+	drm_mode_copy(pipe_mode, &crtc_state->hw.adjusted_mode);
 
 	/* Adjust pipe_mode for bigjoiner, with half the horizontal mode */
-	if (pipe_config->bigjoiner) {
+	if (crtc_state->bigjoiner) {
 		pipe_mode->crtc_clock /= 2;
 		pipe_mode->crtc_hdisplay /= 2;
 		pipe_mode->crtc_hblank_start /= 2;
@@ -2804,12 +2804,12 @@ static int intel_crtc_compute_config(struct intel_crtc *crtc,
 		pipe_mode->crtc_hsync_start /= 2;
 		pipe_mode->crtc_hsync_end /= 2;
 		pipe_mode->crtc_htotal /= 2;
-		pipe_config->pipe_src_w /= 2;
+		crtc_state->pipe_src_w /= 2;
 	}
 
-	if (pipe_config->splitter.enable) {
-		int n = pipe_config->splitter.link_count;
-		int overlap = pipe_config->splitter.pixel_overlap;
+	if (crtc_state->splitter.enable) {
+		int n = crtc_state->splitter.link_count;
+		int overlap = crtc_state->splitter.pixel_overlap;
 
 		pipe_mode->crtc_hdisplay = (pipe_mode->crtc_hdisplay - overlap) * n;
 		pipe_mode->crtc_hblank_start = (pipe_mode->crtc_hblank_start - overlap) * n;
@@ -2822,8 +2822,8 @@ static int intel_crtc_compute_config(struct intel_crtc *crtc,
 
 	intel_mode_from_crtc_timings(pipe_mode, pipe_mode);
 
-	if (DISPLAY_VER(dev_priv) < 4) {
-		clock_limit = dev_priv->max_cdclk_freq * 9 / 10;
+	if (DISPLAY_VER(i915) < 4) {
+		clock_limit = i915->max_cdclk_freq * 9 / 10;
 
 		/*
 		 * Enable double wide mode when the dot clock
@@ -2831,16 +2831,16 @@ static int intel_crtc_compute_config(struct intel_crtc *crtc,
 		 */
 		if (intel_crtc_supports_double_wide(crtc) &&
 		    pipe_mode->crtc_clock > clock_limit) {
-			clock_limit = dev_priv->max_dotclk_freq;
-			pipe_config->double_wide = true;
+			clock_limit = i915->max_dotclk_freq;
+			crtc_state->double_wide = true;
 		}
 	}
 
 	if (pipe_mode->crtc_clock > clock_limit) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(&i915->drm,
 			    "requested pixel clock (%d kHz) too high (max: %d kHz, double wide: %s)\n",
 			    pipe_mode->crtc_clock, clock_limit,
-			    yesno(pipe_config->double_wide));
+			    yesno(crtc_state->double_wide));
 		return -EINVAL;
 	}
 
@@ -2850,25 +2850,25 @@ static int intel_crtc_compute_config(struct intel_crtc *crtc,
 	 * - LVDS dual channel mode
 	 * - Double wide pipe
 	 */
-	if (pipe_config->pipe_src_w & 1) {
-		if (pipe_config->double_wide) {
-			drm_dbg_kms(&dev_priv->drm,
+	if (crtc_state->pipe_src_w & 1) {
+		if (crtc_state->double_wide) {
+			drm_dbg_kms(&i915->drm,
 				    "Odd pipe source width not supported with double wide pipe\n");
 			return -EINVAL;
 		}
 
-		if (intel_crtc_has_type(pipe_config, INTEL_OUTPUT_LVDS) &&
-		    intel_is_dual_link_lvds(dev_priv)) {
-			drm_dbg_kms(&dev_priv->drm,
+		if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_LVDS) &&
+		    intel_is_dual_link_lvds(i915)) {
+			drm_dbg_kms(&i915->drm,
 				    "Odd pipe source width not supported with dual link LVDS\n");
 			return -EINVAL;
 		}
 	}
 
-	intel_crtc_compute_pixel_rate(pipe_config);
+	intel_crtc_compute_pixel_rate(crtc_state);
 
-	if (pipe_config->has_pch_encoder)
-		return ilk_fdi_compute_config(crtc, pipe_config);
+	if (crtc_state->has_pch_encoder)
+		return ilk_fdi_compute_config(crtc, crtc_state);
 
 	return 0;
 }
-- 
2.34.1

