Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 56701773990
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Aug 2023 12:11:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E57110E0C8;
	Tue,  8 Aug 2023 10:11:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A715710E032;
 Tue,  8 Aug 2023 10:11:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691489505; x=1723025505;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/JHxGTMOkfoWs/3sDluPscy7r1Tfl4zDaRsbT3Fsm3c=;
 b=ckhMm5opvghNDE5JVCFg9d55urDknRnm1Zje6MjND0DU61se7xMY4nyl
 RIFm3otBcuZL9oDett1gyByqTCImQ/mO48Qo2H97U05EYIaarubM77gRN
 qyRSfZ+RtNjZJ8qQwmbpXGv8Et4CautSleB1qftwGpzSYB2YORl3fYCdu
 SLrJ8j15NUmKb3zi0kZx/JX1hbvp0uXLUVHg1yx732Nj1CZSeckN507qn
 okHK3LkNBXVARL/5XNOpP/2wYdXFi4UJpfD44i4s+p6xbO4cpQySSOh9U
 rx9zFWW2SsW6KCHerol+clXdfxOim7B71sXHY/FwG9rkRXiBkPAFj/JBF g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="351082702"
X-IronPort-AV: E=Sophos;i="6.01,263,1684825200"; d="scan'208";a="351082702"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2023 03:11:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="977796330"
X-IronPort-AV: E=Sophos;i="6.01,263,1684825200"; d="scan'208";a="977796330"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2023 03:11:43 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Tue,  8 Aug 2023 15:38:23 +0530
Message-Id: <20230808100823.3355042-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230728041150.2524032-11-ankit.k.nautiyal@intel.com>
References: <20230728041150.2524032-11-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/20] drm/i915/dp: Add functions to get min/max
 src input bpc with DSC
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

Separate out functions for getting maximum and minimum input BPC based
on platforms, when DSC is used.

v2: Use HAS_DSC macro instead of platform check while getting min input
bpc. (Stan)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 35 +++++++++++++++++++------
 1 file changed, 27 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index c13efd0b7c98..b414d09b5e80 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1535,6 +1535,18 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
 	return -EINVAL;
 }
 
+static
+u8 intel_dp_dsc_max_src_input_bpc(struct drm_i915_private *i915)
+{
+	/* Max DSC Input BPC for ICL is 10 and for TGL+ is 12 */
+	if (DISPLAY_VER(i915) >= 12)
+		return 12;
+	if (DISPLAY_VER(i915) == 11)
+		return 10;
+
+	return 0;
+}
+
 int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp, u8 max_req_bpc)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
@@ -1542,11 +1554,12 @@ int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp, u8 max_req_bpc)
 	u8 dsc_bpc[3] = {0};
 	u8 dsc_max_bpc;
 
-	/* Max DSC Input BPC for ICL is 10 and for TGL+ is 12 */
-	if (DISPLAY_VER(i915) >= 12)
-		dsc_max_bpc = min_t(u8, 12, max_req_bpc);
-	else
-		dsc_max_bpc = min_t(u8, 10, max_req_bpc);
+	dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(i915);
+
+	if (!dsc_max_bpc)
+		return dsc_max_bpc;
+
+	dsc_max_bpc = min_t(u8, dsc_max_bpc, max_req_bpc);
 
 	num_bpc = drm_dp_dsc_sink_supported_input_bpcs(intel_dp->dsc_dpcd,
 						       dsc_bpc);
@@ -1674,6 +1687,13 @@ static bool intel_dp_dsc_supports_format(struct intel_dp *intel_dp,
 	return drm_dp_dsc_sink_supports_format(intel_dp->dsc_dpcd, sink_dsc_format);
 }
 
+static
+u8 intel_dp_dsc_min_src_input_bpc(struct drm_i915_private *i915)
+{
+	/* Min DSC Input BPC for ICL+ is 8 */
+	return HAS_DSC(i915) ? 8 : 0;
+}
+
 int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 				struct intel_crtc_state *pipe_config,
 				struct drm_connector_state *conn_state,
@@ -1707,10 +1727,9 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 		pipe_bpp = pipe_config->pipe_bpp;
 	}
 
-	/* Min Input BPC for ICL+ is 8 */
-	if (pipe_bpp < 8 * 3) {
+	if (pipe_bpp < intel_dp_dsc_min_src_input_bpc(dev_priv) * 3) {
 		drm_dbg_kms(&dev_priv->drm,
-			    "No DSC support for less than 8bpc\n");
+			    "Computed BPC less than min supported by source for DSC\n");
 		return -EINVAL;
 	}
 
-- 
2.40.1

