Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 87346633627
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Nov 2022 08:46:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC08010E397;
	Tue, 22 Nov 2022 07:46:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16B1610E38E
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Nov 2022 07:46:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669103176; x=1700639176;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=co6cBFjeQPHtq3e4uv/u3hVvW/1f4skpoa7BdZFZsyQ=;
 b=JwPfFs021mGWC68tqz8qOjAZdcmzvHLnbn/Z6M+OSVu4i2Anloaq3DsN
 Hl+aod69tXH6OVBxY7Vef/Yo1YFqKrFqIrTMnFl/bVDb3OLYIedB2Q/PD
 c5uxVZhyL8FVSAPiSrlTwMFeTrOodsVHyvqa+VURZvKRVB4N7qQboCuz9
 4xKcZItydR2SmPeks339nkg5FdZXTOWx8kwRxI0p5vdR3APB4YUWLwH+C
 WXQyTSGu3drfm6FF8HD4LIkSCZ/JEksiI9nuhm3dQPxcPh8aTg3m1xE8K
 LolHr7jdvjLQri6tVsMlkeGIocfmP6xm99e2eKnN6saHcUBpdUWmNBmj/ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="378015413"
X-IronPort-AV: E=Sophos;i="5.96,183,1665471600"; d="scan'208";a="378015413"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2022 23:46:15 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="783756362"
X-IronPort-AV: E=Sophos;i="5.96,183,1665471600"; d="scan'208";a="783756362"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2022 23:46:13 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Nov 2022 13:16:44 +0530
Message-Id: <20221122074644.2969553-11-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221122074644.2969553-1-ankit.k.nautiyal@intel.com>
References: <20221122074644.2969553-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 10/10] drm/i915/dp: Add a wrapper to check
 frl/tmds downstream constraints
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

Add a wrapper function to check dp_downstream clock/bandwidth
constraints. Based on whether the sink supports FRL/TMDS the wrapper
calls the appropriate FRL/TMDS functions.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 51 +++++++++++--------------
 1 file changed, 23 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index e967a14c1061..175c7342269a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1012,6 +1012,18 @@ intel_dp_frl_bw_valid(struct intel_dp *intel_dp, int target_clock,
 	return MODE_OK;
 }
 
+static enum drm_mode_status
+intel_dp_hdmi_bw_check(struct intel_dp *intel_dp,
+		       int target_clock, int bpc,
+		       enum intel_output_format sink_format,
+		       bool is_frl)
+{
+	if (is_frl)
+		return intel_dp_frl_bw_valid(intel_dp, target_clock, 8, sink_format);
+
+	return intel_dp_tmds_clock_valid(intel_dp, target_clock, 8, sink_format, true);
+}
+
 static enum drm_mode_status
 intel_dp_mode_valid_downstream(struct intel_connector *connector,
 			       const struct drm_display_mode *mode,
@@ -1021,48 +1033,31 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
 	const struct drm_display_info *info = &connector->base.display_info;
 	enum drm_mode_status status;
 	bool ycbcr_420_only = drm_mode_is_420_only(info, mode);
+	bool is_frl;
 	enum intel_output_format sink_format;
+	int bpc = 8; /* Assume 8bpc for the DP++/HDMI/DVI TMDS/FRL bw heck */
 
-	ycbcr_420_only = drm_mode_is_420_only(info, mode);
+	if (ycbcr_420_only && connector->base.ycbcr_420_allowed)
+		sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
+	else
+		sink_format = INTEL_OUTPUT_FORMAT_RGB;
 
 	/* If PCON supports FRL MODE, check FRL bandwidth constraints */
-	if (intel_dp->dfp.pcon_max_frl_bw) {
-
-		if (ycbcr_420_only && connector->base.ycbcr_420_allowed)
-			sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
-		else
-			sink_format = INTEL_OUTPUT_FORMAT_RGB;
-
-		/* Assume 8bpc for the HDMI2.1 FRL BW check */
-		status = intel_dp_frl_bw_valid(intel_dp, target_clock, 8, sink_format);
-		if (status != MODE_OK) {
-			if (sink_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
-			    !drm_mode_is_420_also(info, mode))
-				return status;
-			sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
-			status = intel_dp_frl_bw_valid(intel_dp, target_clock, 8, sink_format);
-			if (status != MODE_OK)
-				return status;
-		}
+	is_frl = intel_dp->dfp.pcon_max_frl_bw ? true : false;
 
-		return MODE_OK;
-	}
-
-	if (intel_dp->dfp.max_dotclock &&
+	if (!is_frl && intel_dp->dfp.max_dotclock &&
 	    target_clock > intel_dp->dfp.max_dotclock)
 		return MODE_CLOCK_HIGH;
 
-	/* Assume 8bpc for the DP++/HDMI/DVI TMDS clock check */
-	status = intel_dp_tmds_clock_valid(intel_dp, target_clock,
-					   8, sink_format, true);
+	status = intel_dp_hdmi_bw_check(intel_dp, target_clock, bpc, sink_format, is_frl);
 
 	if (status != MODE_OK) {
 		if (sink_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
 		    !drm_mode_is_420_also(info, mode))
 			return status;
 		sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
-		status = intel_dp_tmds_clock_valid(intel_dp, target_clock,
-						   8, sink_format, true);
+		status = intel_dp_hdmi_bw_check(intel_dp, target_clock, bpc, sink_format, is_frl);
+	} else {
 		if (status != MODE_OK)
 			return status;
 	}
-- 
2.25.1

