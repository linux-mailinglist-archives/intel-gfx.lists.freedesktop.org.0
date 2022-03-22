Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D04A4E3DF2
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Mar 2022 13:00:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5521810E54F;
	Tue, 22 Mar 2022 12:00:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1985E10E54F
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Mar 2022 12:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647950422; x=1679486422;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=mIC9jgXE25RKvksMQry9LwUQui7UK1oyEyRVy0Z71fo=;
 b=elT+xCBsLDDHL3uoOGOX2WbRxBp8E68WYYYEpEXnKnqnmsnNTsjVsdzj
 g+2fCuq25AOX6Ril+jrnYjxV1xMJvW9akZLgi/psNTMb6E+Rn0CsmCvbH
 N/nr8SqEzU2VkdGIKJXR8Tg4ma5uctBPn9wF04ohGzoq2zLVQokNkRynf
 05Jg9LATaDeDksFn2T7mFqOFYmq4Hlavd0i2070bqUoYCNWoh/rHq2Njx
 z4DK4R/fvKvu+8yRuVOVs7JdXrgq3sHicmwpORnO7WWRXz78KHHLDrxbt
 xPaf8X/XbqIWIOLHyx6WGRWgcIdhFwBev9i3YhUBWCi7XDo3Mr+nqhVap w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10293"; a="255363038"
X-IronPort-AV: E=Sophos;i="5.90,201,1643702400"; d="scan'208";a="255363038"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 05:00:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,201,1643702400"; d="scan'208";a="560355210"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by orsmga008.jf.intel.com with SMTP; 22 Mar 2022 05:00:19 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 22 Mar 2022 14:00:18 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Mar 2022 14:00:04 +0200
Message-Id: <20220322120015.28074-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220322120015.28074-1-ville.syrjala@linux.intel.com>
References: <20220322120015.28074-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 01/12] drm/i915/dp: Extract
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
index 9e19165fd175..e874d2f78088 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -856,6 +856,25 @@ static bool intel_dp_hdisplay_bad(struct drm_i915_private *dev_priv,
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
@@ -863,7 +882,6 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
 {
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
 	const struct drm_display_info *info = &connector->base.display_info;
-	int tmds_clock;
 
 	/* If PCON supports FRL MODE, check FRL bandwidth constraints */
 	if (intel_dp->dfp.pcon_max_frl_bw) {
@@ -889,17 +907,8 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
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
@@ -1142,32 +1151,16 @@ static bool intel_dp_hdmi_ycbcr420(struct intel_dp *intel_dp,
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
2.34.1

