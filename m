Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BEF55A8DEB
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Sep 2022 08:01:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8803810E5B5;
	Thu,  1 Sep 2022 06:01:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76AB510E5B0
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Sep 2022 06:01:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662012098; x=1693548098;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QPr0dajpE1VYhG8TWVYecO0GwYbQivTLxkgRqrbg5qo=;
 b=dN22h/VirvTUL1WStbvbcD3PSmrqUejR45ssMt4ne0AK2+oAP1/I/gh8
 32hQ+O3ChfjXPBdQyvSQlB8bbZ8VPrRMjHcHu1CPC6mmRHjdjSjv2nwYZ
 10NewC68u+hSvVlfV/ajIHwzCIHeGmZwiQQZjav7GcCsN0eWx0ykvGk2E
 GvwyaA0tQbwUsJaTYAB7T45YdQ0czSc5FvQ3tI/Z7VPBqAOJNaZES0asl
 Gy8qBD+qQitVBc5u3wIYBtR/yehTlQoDXnfYSlr3DLhG0GBx4VIUhBaX9
 qjFk+r9ycZfEiztJDAYtMGeiNSN5Rz+0pYA8lmh2svSpBbJZDOXsP1vxN g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10456"; a="381920271"
X-IronPort-AV: E=Sophos;i="5.93,280,1654585200"; d="scan'208";a="381920271"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2022 23:01:38 -0700
X-IronPort-AV: E=Sophos;i="5.93,280,1654585200"; d="scan'208";a="754685747"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2022 23:01:36 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  1 Sep 2022 11:31:01 +0530
Message-Id: <20220901060101.1000290-10-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220901060101.1000290-1-ankit.k.nautiyal@intel.com>
References: <20220901060101.1000290-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 9/9] drm/i915/dp: Fix FRL BW check for
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

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 52 ++++++++++++++++++-------
 1 file changed, 39 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 7c5843f6608d..5f5cf38d2c84 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -118,6 +118,7 @@ bool intel_dp_is_edp(struct intel_dp *intel_dp)
 static void intel_dp_unset_edid(struct intel_dp *intel_dp);
 static int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp, u8 dsc_max_bpc);
 static bool intel_dp_is_hdmi_2_1_sink(struct intel_dp *intel_dp);
+static int intel_dp_hdmi_sink_max_frl(struct intel_dp *intel_dp);
 
 /* Is link rate UHBR and thus 128b/132b? */
 bool intel_dp_is_uhbr(const struct intel_crtc_state *crtc_state)
@@ -913,6 +914,32 @@ intel_dp_tmds_clock_valid(struct intel_dp *intel_dp,
 	return MODE_OK;
 }
 
+static int
+intel_dp_frl_bw_valid(struct intel_dp *intel_dp, int target_clock,
+		      int bpc, bool ycbcr_420_only)
+{
+	int target_bw;
+	int max_frl_bw;
+	int bpp = bpc * 3;
+
+	if (ycbcr_420_only)
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
@@ -921,23 +948,24 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
 	const struct drm_display_info *info = &connector->base.display_info;
 	enum drm_mode_status status;
-	bool ycbcr_420_only;
+	bool ycbcr_420_only = drm_mode_is_420_only(info, mode);
 
 	/* If PCON supports FRL MODE, check FRL bandwidth constraints */
 	if (intel_dp->dfp.pcon_max_frl_bw) {
-		int target_bw;
-		int max_frl_bw;
-		int bpp = intel_dp_mode_min_output_bpp(connector, mode);
-
-		target_bw = bpp * target_clock;
 
-		max_frl_bw = intel_dp->dfp.pcon_max_frl_bw;
+		/* Assume 8bpc for the HDMI2.1 FRL BW check */
+		status = intel_dp_frl_bw_valid(intel_dp, target_clock, 8, ycbcr_420_only);
 
-		/* converting bw from Gbps to Kbps*/
-		max_frl_bw = max_frl_bw * 1000000;
+		if (status != MODE_OK) {
+			if (ycbcr_420_only ||
+			    !connector->base.ycbcr_420_allowed ||
+			    !drm_mode_is_420_also(info, mode))
+				return status;
 
-		if (target_bw > max_frl_bw)
-			return MODE_CLOCK_HIGH;
+			status = intel_dp_frl_bw_valid(intel_dp, target_clock, 8, true);
+			if (status != MODE_OK)
+				return status;
+		}
 
 		return MODE_OK;
 	}
@@ -946,8 +974,6 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
 	    target_clock > intel_dp->dfp.max_dotclock)
 		return MODE_CLOCK_HIGH;
 
-	ycbcr_420_only = drm_mode_is_420_only(info, mode);
-
 	/* Assume 8bpc for the DP++/HDMI/DVI TMDS clock check */
 	status = intel_dp_tmds_clock_valid(intel_dp, target_clock,
 					   8, ycbcr_420_only, true);
-- 
2.25.1

