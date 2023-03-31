Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CDE06D1DC7
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Mar 2023 12:18:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 682F310F1B9;
	Fri, 31 Mar 2023 10:18:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4767910F1B7
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Mar 2023 10:18:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680257911; x=1711793911;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AsLYXe1/DmBi0aGY20Tc1UwRzZi7Alhg3QBg4yUt1bs=;
 b=Oc7oRik9c6mho0BXoGUz3Y+oWm/QqvmcRzaoqdTN1X1t0cF8fp4g13XF
 msSIixQDzjSiU1inDRjoSTA/YXfK2XLQC/MaUFzpPbXphLXTjgkG1QqnM
 n9PEkGNFKYSYTDSZOJM82eyKjZ8z/9pxLHOjqJI653bpLTIfBW8pdNr+v
 VIYoo1waON+JouJtbDtnjDthl1vKBpEYOxObYlBb4zyBSoyR8wqFqY2Fu
 IaHEUuVRpXuh1h+LEeCRGHefqoHVdVEemsDKyF3eaFSP4OsYvF7KEsFT6
 dpl2pUypYcnoTq/fHNn9imyM/Dl7o9uBKvsYx9K4TdAF86EWoey36BprZ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="340141765"
X-IronPort-AV: E=Sophos;i="5.98,307,1673942400"; d="scan'208";a="340141765"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2023 03:18:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="796068341"
X-IronPort-AV: E=Sophos;i="5.98,307,1673942400"; d="scan'208";a="796068341"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2023 03:18:29 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 31 Mar 2023 15:46:06 +0530
Message-Id: <20230331101613.936776-7-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230331101613.936776-1-ankit.k.nautiyal@intel.com>
References: <20230331101613.936776-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/13] drm/i915/dp: Add helper to get sink_format
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

Common function to get the sink format for a given mode for DP.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 30 ++++++++++++-------------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index ce9384a0d153..352b5fbd805a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -936,17 +936,25 @@ static int intel_dp_output_bpp(enum intel_output_format output_format, int bpp)
 	return bpp;
 }
 
+static enum intel_output_format
+intel_dp_sink_format(struct intel_connector *connector,
+		     const struct drm_display_mode *mode)
+{
+	const struct drm_display_info *info = &connector->base.display_info;
+
+	if (drm_mode_is_420_only(info, mode))
+		return INTEL_OUTPUT_FORMAT_YCBCR420;
+
+	return INTEL_OUTPUT_FORMAT_RGB;
+}
+
 static int
 intel_dp_mode_min_output_bpp(struct intel_connector *connector,
 			     const struct drm_display_mode *mode)
 {
-	const struct drm_display_info *info = &connector->base.display_info;
 	enum intel_output_format output_format, sink_format;
 
-	if (drm_mode_is_420_only(info, mode))
-		sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
-	else
-		sink_format = INTEL_OUTPUT_FORMAT_RGB;
+	sink_format = intel_dp_sink_format(connector, mode);
 
 	output_format = intel_dp_output_format(connector, sink_format);
 
@@ -1018,7 +1026,6 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
 	const struct drm_display_info *info = &connector->base.display_info;
 	enum drm_mode_status status;
-	bool ycbcr_420_only;
 	enum intel_output_format sink_format;
 
 	/* If PCON supports FRL MODE, check FRL bandwidth constraints */
@@ -1044,12 +1051,7 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
 	    target_clock > intel_dp->dfp.max_dotclock)
 		return MODE_CLOCK_HIGH;
 
-	ycbcr_420_only = drm_mode_is_420_only(info, mode);
-
-	if (ycbcr_420_only)
-		sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
-	else
-		sink_format = INTEL_OUTPUT_FORMAT_RGB;
+	sink_format = intel_dp_sink_format(connector, mode);
 
 	/* Assume 8bpc for the DP++/HDMI/DVI TMDS clock check */
 	status = intel_dp_tmds_clock_valid(intel_dp, target_clock,
@@ -2127,10 +2129,8 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
 		drm_dbg_kms(&i915->drm,
 			    "YCbCr 4:2:0 mode but YCbCr 4:2:0 output not possible. Falling back to RGB.\n");
 		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_RGB;
-	} else if (ycbcr_420_only) {
-		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
 	} else {
-		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_RGB;
+		crtc_state->sink_format = intel_dp_sink_format(connector, adjusted_mode);
 	}
 
 	crtc_state->output_format = intel_dp_output_format(connector, crtc_state->sink_format);
-- 
2.25.1

