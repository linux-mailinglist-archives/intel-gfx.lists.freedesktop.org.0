Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AB976F064E
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Apr 2023 15:03:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A46E310EB4D;
	Thu, 27 Apr 2023 13:03:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86C7610EB64
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Apr 2023 13:02:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682600578; x=1714136578;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DxwE6g04Gb4sUEBEy71z/2r5jB6gAA1IO79Pg9MrTyY=;
 b=M1k4sVNu0EK1b4g4eMoRG40ZNywihXOQR/pxLCIFUwQ+vA376Nm7g1Tt
 +6Clocm4506e3cyRnLnt3QkOdHwIvQA1dZFlpnbY/EMhgHCCgc1Q9qk68
 2Gp5zTvDii0oDRUW8aejATT4j2Bh0HPlUjxSmFQSCWhIRmb815Xv74LAz
 iuF466tGAvYihdcOUkX6+yqfed6ECa64jlIdV1L+Br02jdU4YFDchwosD
 l6liC97xq0Im7ENUUikfXq8LJCEll9qBwCP/xz3r0wey7ylyd/fHkDBbb
 Oj1OfJk8N7Ncw7l/ZPrBXfUJX4uRBxO9aoSG5rqznWXYQql1PVGNI4Qiv A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="412762072"
X-IronPort-AV: E=Sophos;i="5.99,230,1677571200"; d="scan'208";a="412762072"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2023 06:01:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="805950152"
X-IronPort-AV: E=Sophos;i="5.99,230,1677571200"; d="scan'208";a="805950152"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2023 06:01:00 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Apr 2023 18:26:04 +0530
Message-Id: <20230427125605.487769-6-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230427125605.487769-1-ankit.k.nautiyal@intel.com>
References: <20230427125605.487769-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/6] drm/i915/dp: Add helper to get sink_format
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
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 30 ++++++++++++-------------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index e04989b67cdf..e07c5f3438b3 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -946,17 +946,25 @@ static int intel_dp_output_bpp(enum intel_output_format output_format, int bpp)
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
 
@@ -1028,7 +1036,6 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
 	const struct drm_display_info *info = &connector->base.display_info;
 	enum drm_mode_status status;
-	bool ycbcr_420_only;
 	enum intel_output_format sink_format;
 
 	/* If PCON supports FRL MODE, check FRL bandwidth constraints */
@@ -1054,12 +1061,7 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
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
@@ -2175,10 +2177,8 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
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

