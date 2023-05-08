Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D6B426FB0A3
	for <lists+intel-gfx@lfdr.de>; Mon,  8 May 2023 14:52:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7DFA10E28B;
	Mon,  8 May 2023 12:52:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B9B110E287
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 May 2023 12:52:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683550324; x=1715086324;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zR+ouCzlvxi8xmEaLmFMoPPTVZhy+ZZw1na0GFmbL7o=;
 b=PEAVrEfDFPiJ4fOuA9Vai5mbftsGVTPE4nPE5tCDnk7R1fUzxdaz6t4y
 CfDg/O7tVs5ZXICzQMJtQM7Ef1WdUaLsDG4UdgrcWXrsssRFLmHWBDFAE
 lgxaSI03sIXXTzWzDy4pQ80/Ntt6vzt3YCWcElG+yglkdAYsv4Ve6P1MN
 r4E5HuezjHLzmLqPlS//TKAUHFc6prMQCbU23PL01rX5O6gMeBlTndaLm
 dv6uzGnkxiJFyK1hwr7nxotHHcW3OGE0pCx5ujg9UqHwmnT/q0tz7XEPT
 5n7yPaLg+XgEeWG/FRQr/aziYgJmxfmXSZy1BaD5Wj605pj93VIy+R4DD A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10703"; a="329994826"
X-IronPort-AV: E=Sophos;i="5.99,259,1677571200"; d="scan'208";a="329994826"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2023 05:52:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10703"; a="842675357"
X-IronPort-AV: E=Sophos;i="5.99,259,1677571200"; d="scan'208";a="842675357"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2023 05:52:02 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 May 2023 18:17:14 +0530
Message-Id: <20230508124715.2242478-6-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230508124715.2242478-1-ankit.k.nautiyal@intel.com>
References: <20230508124715.2242478-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/6] drm/i915/dp: Fix FRL BW check for HDMI2.1
 DFP
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

During FRL bandwidth  check for downstream HDMI2.1 sink,
the min BPC supported is incorrectly taken for DP, and the check does
not consider ybcr420 only modes.
This patch fixes the bandwidth calculation similar to the TMDS case, by
taking min 8Bpc and considering Ycbcr420 only modes.

v2: Rebase

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 57 ++++++++++++++++++-------
 1 file changed, 41 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index cc126a1a08b5..af7d6cdbab11 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -120,6 +120,7 @@ bool intel_dp_is_edp(struct intel_dp *intel_dp)
 
 static bool intel_dp_is_hdmi_2_1_sink(struct intel_dp *intel_dp);
 static void intel_dp_unset_edid(struct intel_dp *intel_dp);
+static int intel_dp_hdmi_sink_max_frl(struct intel_dp *intel_dp);
 
 /* Is link rate UHBR and thus 128b/132b? */
 bool intel_dp_is_uhbr(const struct intel_crtc_state *crtc_state)
@@ -1042,6 +1043,32 @@ intel_dp_tmds_clock_valid(struct intel_dp *intel_dp,
 	return MODE_OK;
 }
 
+static enum drm_mode_status
+intel_dp_frl_bw_valid(struct intel_dp *intel_dp, int target_clock,
+		      int bpc, enum intel_output_format sink_format)
+{
+	int target_bw;
+	int max_frl_bw;
+	int bpp = bpc * 3;
+
+	if (sink_format == INTEL_OUTPUT_FORMAT_YCBCR420)
+		target_clock /= 2;
+
+	target_bw = bpp * target_clock;
+
+	/* check for MAX FRL BW for both PCON and HDMI2.1 sink */
+	max_frl_bw = min(intel_dp->dfp.pcon_max_frl_bw,
+			 intel_dp_hdmi_sink_max_frl(intel_dp));
+
+	/* converting bw from Gbps to Kbps*/
+	max_frl_bw = max_frl_bw * 1000000;
+
+	if (target_bw > max_frl_bw)
+		return MODE_CLOCK_HIGH;
+
+	return MODE_OK;
+}
+
 static enum drm_mode_status
 intel_dp_mode_valid_downstream(struct intel_connector *connector,
 			       const struct drm_display_mode *mode,
@@ -1050,23 +1077,23 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
 	const struct drm_display_info *info = &connector->base.display_info;
 	enum drm_mode_status status;
-	enum intel_output_format sink_format;
+	enum intel_output_format sink_format = intel_dp_sink_format(connector, mode);
 
 	/* If PCON supports FRL MODE, check FRL bandwidth constraints */
 	if (intel_dp->dfp.pcon_max_frl_bw) {
-		int target_bw;
-		int max_frl_bw;
-		int bpp = intel_dp_mode_min_output_bpp(connector, mode);
-
-		target_bw = bpp * target_clock;
-
-		max_frl_bw = intel_dp->dfp.pcon_max_frl_bw;
-
-		/* converting bw from Gbps to Kbps*/
-		max_frl_bw = max_frl_bw * 1000000;
-
-		if (target_bw > max_frl_bw)
-			return MODE_CLOCK_HIGH;
+		/* Assume 8bpc for the HDMI2.1 FRL BW check */
+		status = intel_dp_frl_bw_valid(intel_dp, target_clock, 8, sink_format);
+		if (status != MODE_OK) {
+			if (sink_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
+			    !connector->base.ycbcr_420_allowed ||
+			    !drm_mode_is_420_also(info, mode))
+				return status;
+
+			sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
+			status = intel_dp_frl_bw_valid(intel_dp, target_clock, 8, sink_format);
+			if (status != MODE_OK)
+				return status;
+		}
 
 		return MODE_OK;
 	}
@@ -1075,8 +1102,6 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
 	    target_clock > intel_dp->dfp.max_dotclock)
 		return MODE_CLOCK_HIGH;
 
-	sink_format = intel_dp_sink_format(connector, mode);
-
 	/* Assume 8bpc for the DP++/HDMI/DVI TMDS clock check */
 	status = intel_dp_tmds_clock_valid(intel_dp, target_clock,
 					   8, sink_format, true);
-- 
2.25.1

