Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 934F26B910E
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Mar 2023 12:06:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9B7D10E789;
	Tue, 14 Mar 2023 11:06:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81DE410E78A
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Mar 2023 11:06:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678792015; x=1710328015;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LQVUynTrMINdhTlI+wdPKFTU6ehIc2lybfOa990LSUs=;
 b=MWk61xfhXuqnRiN5oX3PWoBrfX4hIsUomtL5moOHcaIBCiF0w+ZSqTdp
 LgCz9W4BCNgN4f7JHzvof1RGt5bGHvzodK3RF/fJO0eOL9DQfU8LXt5QP
 uOrRBrhVYK+w7p1NnYyMFbTxYYA+dl9BKRrlHiuEspgDX0nbNZ+FvVk7t
 Y2aDz7ezEWUQN8yGwJuHYo9XnuZlDPyGFsXjmS2A7610SmvCDomre5nEw
 yjd/+ruCpAKsC+7BxXPSJtomc8wZSAW9P+j970slHIreT3er3OtrZc6yj
 8p3AX7CqN4VOJS7iiT5U5JwXFQZgrQE7nRgaS++RAnkNshKQ/xpqtrBw7 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="423664538"
X-IronPort-AV: E=Sophos;i="5.98,259,1673942400"; d="scan'208";a="423664538"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2023 04:06:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="924872961"
X-IronPort-AV: E=Sophos;i="5.98,259,1673942400"; d="scan'208";a="924872961"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2023 04:06:53 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Mar 2023 16:34:14 +0530
Message-Id: <20230314110415.2882484-11-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230314110415.2882484-1-ankit.k.nautiyal@intel.com>
References: <20230314110415.2882484-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v11 10/11] drm/i915/dp: Fix FRL BW check for
 HDMI2.1 DFP
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
 drivers/gpu/drm/i915/display/intel_dp.c | 64 +++++++++++++++++--------
 1 file changed, 45 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 6975d493481b..0333fbbc8e60 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -118,6 +118,7 @@ bool intel_dp_is_edp(struct intel_dp *intel_dp)
 
 static bool intel_dp_is_hdmi_2_1_sink(struct intel_dp *intel_dp);
 static void intel_dp_unset_edid(struct intel_dp *intel_dp);
+static int intel_dp_hdmi_sink_max_frl(struct intel_dp *intel_dp);
 
 /* Is link rate UHBR and thus 128b/132b? */
 bool intel_dp_is_uhbr(const struct intel_crtc_state *crtc_state)
@@ -991,6 +992,32 @@ intel_dp_tmds_clock_valid(struct intel_dp *intel_dp,
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
@@ -999,24 +1026,30 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
 	const struct drm_display_info *info = &connector->base.display_info;
 	enum drm_mode_status status;
-	bool ycbcr_420_only;
+	bool ycbcr_420_only = drm_mode_is_420_only(info, mode);
 	enum intel_output_format sink_format;
 
+	ycbcr_420_only = drm_mode_is_420_only(info, mode);
+
 	/* If PCON supports FRL MODE, check FRL bandwidth constraints */
 	if (intel_dp->dfp.pcon_max_frl_bw) {
-		int target_bw;
-		int max_frl_bw;
-		int bpp = intel_dp_mode_min_output_bpp(connector, mode);
-
-		target_bw = bpp * target_clock;
 
-		max_frl_bw = intel_dp->dfp.pcon_max_frl_bw;
-
-		/* converting bw from Gbps to Kbps*/
-		max_frl_bw = max_frl_bw * 1000000;
+		if (ycbcr_420_only && connector->base.ycbcr_420_allowed)
+			sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
+		else
+			sink_format = INTEL_OUTPUT_FORMAT_RGB;
 
-		if (target_bw > max_frl_bw)
-			return MODE_CLOCK_HIGH;
+		/* Assume 8bpc for the HDMI2.1 FRL BW check */
+		status = intel_dp_frl_bw_valid(intel_dp, target_clock, 8, sink_format);
+		if (status != MODE_OK) {
+			if (sink_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
+			    !drm_mode_is_420_also(info, mode))
+				return status;
+			sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
+			status = intel_dp_frl_bw_valid(intel_dp, target_clock, 8, sink_format);
+			if (status != MODE_OK)
+				return status;
+		}
 
 		return MODE_OK;
 	}
@@ -1025,13 +1058,6 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
 	    target_clock > intel_dp->dfp.max_dotclock)
 		return MODE_CLOCK_HIGH;
 
-	ycbcr_420_only = drm_mode_is_420_only(info, mode);
-
-	if (ycbcr_420_only && connector->base.ycbcr_420_allowed)
-		sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
-	else
-		sink_format = INTEL_OUTPUT_FORMAT_RGB;
-
 	/* Assume 8bpc for the DP++/HDMI/DVI TMDS clock check */
 	status = intel_dp_tmds_clock_valid(intel_dp, target_clock,
 					   8, sink_format, true);
-- 
2.25.1

