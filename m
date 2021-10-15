Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AA8F242F3ED
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Oct 2021 15:40:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66E136EDAB;
	Fri, 15 Oct 2021 13:39:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3183E6EDAA
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Oct 2021 13:39:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10137"; a="225376561"
X-IronPort-AV: E=Sophos;i="5.85,375,1624345200"; d="scan'208";a="225376561"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2021 06:39:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,375,1624345200"; d="scan'208";a="528036352"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 15 Oct 2021 06:39:49 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 15 Oct 2021 16:39:48 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Oct 2021 16:39:10 +0300
Message-Id: <20211015133921.4609-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211015133921.4609-1-ville.syrjala@linux.intel.com>
References: <20211015133921.4609-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 09/20] drm/i915/dp: Extract
 intel_dp_tmds_clock_valid()
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

We're currently duplicating the DFP min/max TMDS clock checks
in .mode_valid() and .compute_config(). Extract a helper suitable
for both use cases.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 59 +++++++++++--------------
 1 file changed, 26 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 45e4bf54e1de..b3b8e74fac9c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -781,6 +781,25 @@ static bool intel_dp_hdisplay_bad(struct drm_i915_private *dev_priv,
 	return hdisplay == 4096 && !HAS_DDI(dev_priv);
 }
 
+static enum drm_mode_status
+intel_dp_tmds_clock_valid(struct intel_dp *intel_dp,
+			  int clock, int bpc, bool ycbcr420_output)
+{
+	int tmds_clock;
+
+	tmds_clock = intel_hdmi_tmds_clock(clock, bpc, ycbcr420_output);
+
+	if (intel_dp->dfp.min_tmds_clock &&
+	    tmds_clock < intel_dp->dfp.min_tmds_clock)
+		return MODE_CLOCK_LOW;
+
+	if (intel_dp->dfp.max_tmds_clock &&
+	    tmds_clock > intel_dp->dfp.max_tmds_clock)
+		return MODE_CLOCK_HIGH;
+
+	return MODE_OK;
+}
+
 static enum drm_mode_status
 intel_dp_mode_valid_downstream(struct intel_connector *connector,
 			       const struct drm_display_mode *mode,
@@ -788,7 +807,6 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
 {
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
 	const struct drm_display_info *info = &connector->base.display_info;
-	int tmds_clock;
 
 	/* If PCON supports FRL MODE, check FRL bandwidth constraints */
 	if (intel_dp->dfp.pcon_max_frl_bw) {
@@ -814,17 +832,8 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
 		return MODE_CLOCK_HIGH;
 
 	/* Assume 8bpc for the DP++/HDMI/DVI TMDS clock check */
-	tmds_clock = intel_hdmi_tmds_clock(target_clock, 8,
-					   drm_mode_is_420_only(info, mode));
-
-	if (intel_dp->dfp.min_tmds_clock &&
-	    tmds_clock < intel_dp->dfp.min_tmds_clock)
-		return MODE_CLOCK_LOW;
-	if (intel_dp->dfp.max_tmds_clock &&
-	    tmds_clock > intel_dp->dfp.max_tmds_clock)
-		return MODE_CLOCK_HIGH;
-
-	return MODE_OK;
+	return intel_dp_tmds_clock_valid(intel_dp, target_clock, 8,
+					 drm_mode_is_420_only(info, mode));
 }
 
 static bool intel_dp_need_bigjoiner(struct intel_dp *intel_dp,
@@ -1069,32 +1078,16 @@ static bool intel_dp_hdmi_ycbcr420(struct intel_dp *intel_dp,
 		 intel_dp->dfp.ycbcr_444_to_420);
 }
 
-static bool intel_dp_hdmi_tmds_clock_valid(struct intel_dp *intel_dp,
-					   const struct intel_crtc_state *crtc_state, int bpc)
-{
-	int clock = crtc_state->hw.adjusted_mode.crtc_clock;
-	int tmds_clock = intel_hdmi_tmds_clock(clock, bpc,
-					       intel_dp_hdmi_ycbcr420(intel_dp, crtc_state));
-
-	if (intel_dp->dfp.min_tmds_clock &&
-	    tmds_clock < intel_dp->dfp.min_tmds_clock)
-		return false;
-
-	if (intel_dp->dfp.max_tmds_clock &&
-	    tmds_clock > intel_dp->dfp.max_tmds_clock)
-		return false;
-
-	return true;
-}
-
 static bool intel_dp_hdmi_bpc_possible(struct intel_dp *intel_dp,
 				       const struct intel_crtc_state *crtc_state,
 				       int bpc)
 {
+	bool ycbcr420_output = intel_dp_hdmi_ycbcr420(intel_dp, crtc_state);
+	int clock = crtc_state->hw.adjusted_mode.crtc_clock;
 
-	return intel_hdmi_bpc_possible(crtc_state, bpc, intel_dp->has_hdmi_sink,
-				       intel_dp_hdmi_ycbcr420(intel_dp, crtc_state)) &&
-		intel_dp_hdmi_tmds_clock_valid(intel_dp, crtc_state, bpc);
+	return intel_hdmi_bpc_possible(crtc_state, bpc,
+				       intel_dp->has_hdmi_sink, ycbcr420_output) &&
+		intel_dp_tmds_clock_valid(intel_dp, clock, bpc, ycbcr420_output) == MODE_OK;
 }
 
 static int intel_dp_max_bpp(struct intel_dp *intel_dp,
-- 
2.32.0

