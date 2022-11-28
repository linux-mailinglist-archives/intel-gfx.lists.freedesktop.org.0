Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 393D263A1DB
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Nov 2022 08:16:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44A1510E1C9;
	Mon, 28 Nov 2022 07:15:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0657D10E1C4
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Nov 2022 07:15:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669619714; x=1701155714;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=V1vIfGv9DrQJFpqm1vRuwGDzVo8O74HMMgqwVJd27wU=;
 b=J+AXqPwhVgYU3B8RhEN+iAoX5bgeqjHhJQVTvnozYfI0QHXqWh5fEZKz
 nUu1c4CIGnrHn1dzuKDYy7mi/9/T5eSTMiRBnKl+lIjdvdqQIw0CkpJHW
 xuKLFZSwjDB+gQ/USYhe7cccC1mB5wkyfJO/LqxsWIs3VQ1IPDyT0DYy3
 6mQwUQUa9Hy/h54XbKCr1fFhgt6i3o13q193IDkgb7XtJ10/qCAcn5lyG
 HvRlcddEeGYZ39WE2Dzj30/WbMcCb4A41YmBkxmBtsmZiLjywYXYr4kVl
 ipSIvWQizPBg65k/gxMO2fAvdJb1NmxSRxLB4GqUxW4aRcNKD4CYfSO4O g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10544"; a="315919529"
X-IronPort-AV: E=Sophos;i="5.96,199,1665471600"; d="scan'208";a="315919529"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2022 23:15:13 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10544"; a="785518653"
X-IronPort-AV: E=Sophos;i="5.96,199,1665471600"; d="scan'208";a="785518653"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2022 23:15:11 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Nov 2022 12:45:44 +0530
Message-Id: <20221128071544.4115881-12-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221128071544.4115881-1-ankit.k.nautiyal@intel.com>
References: <20221128071544.4115881-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 11/11] drm/i915/dp: Add a wrapper to check
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
index 3e258e487d9e..ce4684141fb1 100644
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

