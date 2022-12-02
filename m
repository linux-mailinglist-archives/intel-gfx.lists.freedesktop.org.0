Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A54AE640429
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Dec 2022 11:09:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 296C010E6C7;
	Fri,  2 Dec 2022 10:09:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2552510E6C2
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Dec 2022 10:09:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669975788; x=1701511788;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZY3whnk66+HK4tkK5uqS3SKB+N5P+/oLRFOcpHgCXKw=;
 b=fJ9EmM6zNaI1/fdoCLq5AIc+Qij6IKBFQ3w5mFJQ1p0rvEy9tvUaxzPj
 5Ex65G759w8R1nMuNBp4E5hUIk859ZjDhBpIeWJBAajwWbMXcWIUaW/J1
 Q+3X8C3/1gxoqMns/jKX5g+uKpTDPOSXblqSdGFYAC/3PFWCdZIg/m4D4
 y/DLBxWjZphinORLdICAHtqbpjW6/mtya+Bemjkk1ualo6jF5nkBcEtrL
 0FTLFvDS8cqb8TL8RR2SJFsPlf3fzbDhmO0Oir4SQt7g4KW1JmLaxhwrQ
 v1/9L5nw3SEoeFizGbzdbgnDSOSgwfVmNJ7VsMEOWCFLAlPAgpphWf7jE g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="313564589"
X-IronPort-AV: E=Sophos;i="5.96,212,1665471600"; d="scan'208";a="313564589"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2022 02:09:48 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="647115780"
X-IronPort-AV: E=Sophos;i="5.96,212,1665471600"; d="scan'208";a="647115780"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2022 02:09:46 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Dec 2022 15:40:22 +0530
Message-Id: <20221202101028.803630-9-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221202101028.803630-1-ankit.k.nautiyal@intel.com>
References: <20221202101028.803630-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v1 08/14] drm/i915/dp: Consider output_format
 while computing dsc bpp for mode_valid
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

During modevalid step, the pipe bpp is computed assuming RGB output
format. When checking with DSC, consider the output_format and compute
the input bpp for DSC appropriately.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 32 +++++++++++++++++++------
 1 file changed, 25 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 2d7135cfb225..d333583e3894 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -117,7 +117,9 @@ bool intel_dp_is_edp(struct intel_dp *intel_dp)
 }
 
 static void intel_dp_unset_edid(struct intel_dp *intel_dp);
-static int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp, u8 dsc_max_bpc);
+static int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp,
+				    enum intel_output_format output_format,
+				    u8 dsc_max_bpc);
 
 /* Is link rate UHBR and thus 128b/132b? */
 bool intel_dp_is_uhbr(const struct intel_crtc_state *crtc_state)
@@ -1124,11 +1126,21 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 
 	if (HAS_DSC(dev_priv) &&
 	    drm_dp_sink_supports_dsc(intel_dp->dsc_dpcd)) {
+		int pipe_bpp;
+		enum intel_output_format output_format, sink_format;
+		const struct drm_display_info *info = &connector->base.display_info;
+
+		if (drm_mode_is_420_only(info, mode))
+			sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
+		else
+			sink_format = INTEL_OUTPUT_FORMAT_RGB;
+
+		output_format = intel_dp_output_format(connector, mode, sink_format, true);
 		/*
 		 * TBD pass the connector BPC,
 		 * for now U8_MAX so that max BPC on that platform would be picked
 		 */
-		int pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, U8_MAX);
+		pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, output_format, U8_MAX);
 
 		/*
 		 * Output bpp is stored in 6.4 format so right shift by 4 to get the
@@ -1468,12 +1480,15 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
 	return -EINVAL;
 }
 
-static int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp, u8 max_req_bpc)
+static int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp,
+				    enum intel_output_format output_format,
+				    u8 max_req_bpc)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	int i, num_bpc;
 	u8 dsc_bpc[3] = {0};
 	u8 dsc_max_bpc;
+	int pipe_bpp = 0;
 
 	/* Max DSC Input BPC for ICL is 10 and for TGL+ is 12 */
 	if (DISPLAY_VER(i915) >= 12)
@@ -1484,11 +1499,13 @@ static int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp, u8 max_req_bpc)
 	num_bpc = drm_dp_dsc_sink_supported_input_bpcs(intel_dp->dsc_dpcd,
 						       dsc_bpc);
 	for (i = 0; i < num_bpc; i++) {
-		if (dsc_max_bpc >= dsc_bpc[i])
-			return dsc_bpc[i] * 3;
+		if (dsc_max_bpc >= dsc_bpc[i]) {
+			pipe_bpp = dsc_bpc[i] * 3;
+			break;
+		}
 	}
 
-	return 0;
+	return intel_dp_output_bpp(output_format, pipe_bpp);
 }
 
 static int intel_dp_source_dsc_version_minor(struct intel_dp *intel_dp)
@@ -1587,7 +1604,8 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	if (!intel_dp_supports_dsc(intel_dp, pipe_config))
 		return -EINVAL;
 
-	pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, conn_state->max_requested_bpc);
+	pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, pipe_config->output_format,
+					    conn_state->max_requested_bpc);
 
 	if (intel_dp->force_dsc_bpc) {
 		pipe_bpp = intel_dp->force_dsc_bpc * 3;
-- 
2.25.1

