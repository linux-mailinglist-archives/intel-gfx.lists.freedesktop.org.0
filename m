Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A3D1743C52
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jun 2023 15:02:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9E9F10E471;
	Fri, 30 Jun 2023 13:02:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D8EF10E166
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Jun 2023 13:02:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688130136; x=1719666136;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jqH6RNsaDO9Dz6sVzZ9Neb+KzV4vQRBlN/sMF2WNlCo=;
 b=joJQAMFhbf1KWro9wWGVkGK9O8VitHM6VJdu6O+PxeBrqJgeOflZfH8T
 O4Y5olQz8KcPP665KNYSXDUQX4rhiLQZ0sTUB7wYI0eYSYvNGiO1b1q2N
 JWFKnww57l/FSEOY1ZiESg39ueOSU2s8QCIZKSWMOlDcbAIe6gkPhvKMj
 uUI3vbR7TT3RXcpN/zleuPCECqwqJb/wavqrTBpJOQAXCGRzu2SmJLzR6
 TKrwlaodBH18Gzqa8FBC5Sb57ibg/kTrDU55jPWE4wEBH2v/3Izn/xlbp
 pJOxZHBcZnIU0JP5DmwvOfEaDfPWQdd4nPDXfmuNV4m4YWimI/SFpd9u9 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10756"; a="341970869"
X-IronPort-AV: E=Sophos;i="6.01,170,1684825200"; d="scan'208";a="341970869"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2023 06:01:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10756"; a="752988007"
X-IronPort-AV: E=Sophos;i="6.01,170,1684825200"; d="scan'208";a="752988007"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2023 06:01:44 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Jun 2023 18:27:48 +0530
Message-Id: <20230630125748.4141993-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230630125748.4141993-1-ankit.k.nautiyal@intel.com>
References: <20230630125748.4141993-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/dp: Add a wrapper to check
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

v2: Use new wrapper while getting max bpc also.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 54 ++++++++++++-------------
 1 file changed, 27 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 0d938f430856..a96425a6ea31 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1065,6 +1065,25 @@ intel_dp_frl_bw_valid(struct intel_dp *intel_dp, int target_clock,
 	return MODE_OK;
 }
 
+static bool
+pcon_sink_pair_support_frl(struct intel_dp *intel_dp)
+{
+	return intel_dp->dfp.pcon_max_frl_bw && intel_dp_hdmi_sink_max_frl(intel_dp);
+}
+
+static enum drm_mode_status
+intel_dp_hdmi_bw_check(struct intel_dp *intel_dp,
+		       int target_clock, int bpc,
+		       enum intel_output_format sink_format,
+		       bool respect_downstream_limits)
+{
+	if (pcon_sink_pair_support_frl(intel_dp))
+		return intel_dp_frl_bw_valid(intel_dp, target_clock, bpc, sink_format);
+
+	return intel_dp_tmds_clock_valid(intel_dp, target_clock, bpc, sink_format,
+					 respect_downstream_limits);
+}
+
 static enum drm_mode_status
 intel_dp_mode_valid_downstream(struct intel_connector *connector,
 			       const struct drm_display_mode *mode,
@@ -1074,42 +1093,23 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
 	const struct drm_display_info *info = &connector->base.display_info;
 	enum drm_mode_status status;
 	enum intel_output_format sink_format = intel_dp_sink_format(connector, mode);
+	int bpc = 8; /* Assume 8bpc for the DP++/HDMI/DVI TMDS/FRL bw check */
 
-	/* If PCON supports FRL MODE, check FRL bandwidth constraints */
-	if (intel_dp->dfp.pcon_max_frl_bw && intel_dp_hdmi_sink_max_frl(intel_dp)) {
-		/* Assume 8bpc for the HDMI2.1 FRL BW check */
-		status = intel_dp_frl_bw_valid(intel_dp, target_clock, 8, sink_format);
-		if (status != MODE_OK) {
-			if (sink_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
-			    !connector->base.ycbcr_420_allowed ||
-			    !drm_mode_is_420_also(info, mode))
-				return status;
-
-			sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
-			status = intel_dp_frl_bw_valid(intel_dp, target_clock, 8, sink_format);
-			if (status != MODE_OK)
-				return status;
-		}
-
-		return MODE_OK;
-	}
-
-	if (intel_dp->dfp.max_dotclock &&
+	if (!intel_dp_hdmi_sink_max_frl(intel_dp) &&
+	    intel_dp->dfp.max_dotclock &&
 	    target_clock > intel_dp->dfp.max_dotclock)
 		return MODE_CLOCK_HIGH;
 
-	/* Assume 8bpc for the DP++/HDMI/DVI TMDS clock check */
-	status = intel_dp_tmds_clock_valid(intel_dp, target_clock,
-					   8, sink_format, true);
+	status = intel_dp_hdmi_bw_check(intel_dp, target_clock, bpc, sink_format, true);
 
 	if (status != MODE_OK) {
 		if (sink_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
 		    !connector->base.ycbcr_420_allowed ||
 		    !drm_mode_is_420_also(info, mode))
 			return status;
+
 		sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
-		status = intel_dp_tmds_clock_valid(intel_dp, target_clock,
-						   8, sink_format, true);
+		status = intel_dp_hdmi_bw_check(intel_dp, target_clock, bpc, sink_format, true);
 		if (status != MODE_OK)
 			return status;
 	}
@@ -1376,8 +1376,8 @@ static int intel_dp_hdmi_compute_bpc(struct intel_dp *intel_dp,
 	for (; bpc >= 8; bpc -= 2) {
 		if (intel_hdmi_bpc_possible(crtc_state, bpc,
 					    intel_dp_has_hdmi_sink(intel_dp)) &&
-		    intel_dp_tmds_clock_valid(intel_dp, clock, bpc, crtc_state->sink_format,
-					      respect_downstream_limits) == MODE_OK)
+		    intel_dp_hdmi_bw_check(intel_dp, clock, bpc, crtc_state->sink_format,
+					   respect_downstream_limits) == MODE_OK)
 			return bpc;
 	}
 
-- 
2.40.1

