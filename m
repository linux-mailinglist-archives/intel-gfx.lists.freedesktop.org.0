Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 31C586B9114
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Mar 2023 12:07:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72F5A10E78A;
	Tue, 14 Mar 2023 11:07:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C34810E789
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Mar 2023 11:06:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678792017; x=1710328017;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yq3rRnon902+p+H7kIgWA91GWwxA9R5RPP4GJXKM8eA=;
 b=cZ2mfYeq7UN7l5kw/rqrPimRaN9LdI6d+C5M66VCmyryyhF39xq77v9o
 fB7abS3Zmd5YirgFh07TEkbt+N4zNB6h9rtC+VJlp07mQFHs+E/1xm7t+
 iudt1QI85LfCXpzY0awfCdgwD89qI/LmxrLOU79H5A71P2tsFWR7T6qMc
 v5Bkp09Yy0w8T2iLwaMSzq6FGR0ch2Hp4kttIOD1/7TGMQ9qb+DlO+/6z
 l/m6PsW9X3PYqPoSkPT0hP+IpoR3e6a4y2ym1KDVdKBb5i8BDKzU+qNpl
 b+i3Sc2VgHqDSMt8++uolnHYW+XKjAH/mAan4LzWwzatg3FczDRiQeUjD g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="423664546"
X-IronPort-AV: E=Sophos;i="5.98,259,1673942400"; d="scan'208";a="423664546"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2023 04:06:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="924872965"
X-IronPort-AV: E=Sophos;i="5.98,259,1673942400"; d="scan'208";a="924872965"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2023 04:06:55 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Mar 2023 16:34:15 +0530
Message-Id: <20230314110415.2882484-12-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230314110415.2882484-1-ankit.k.nautiyal@intel.com>
References: <20230314110415.2882484-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v11 11/11] drm/i915/dp: Add a wrapper to check
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
index 0333fbbc8e60..d83757f211be 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1018,6 +1018,18 @@ intel_dp_frl_bw_valid(struct intel_dp *intel_dp, int target_clock,
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
@@ -1027,48 +1039,31 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
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
+	is_frl = intel_dp->dfp.pcon_max_frl_bw ? true : false;
 
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
-
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

