Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA9BE2DE15A
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Dec 2020 11:44:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 740E86E14F;
	Fri, 18 Dec 2020 10:44:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8BAA6E115;
 Fri, 18 Dec 2020 10:44:09 +0000 (UTC)
IronPort-SDR: xGnfjBhFpWVJHttrgbDLEfnfsS8KvQoRqk42asd4Ym/ZAypkjmm+mw0AkHjiUfJkOtmTuBvbVO
 u7aBDhPEdfFA==
X-IronPort-AV: E=McAfee;i="6000,8403,9838"; a="155219450"
X-IronPort-AV: E=Sophos;i="5.78,430,1599548400"; d="scan'208";a="155219450"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2020 02:44:09 -0800
IronPort-SDR: piNQXEJPFzuBwNtlHBT3Vl8T47iJb0gtmcFFcfOBmRJSOHOaIWXCciLNp57citV9XhdSFgMOdk
 Sr8ZVshmv+wg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,430,1599548400"; d="scan'208";a="561141778"
Received: from linux-akn.iind.intel.com ([10.223.34.148])
 by fmsmga005.fm.intel.com with ESMTP; 18 Dec 2020 02:44:06 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Dec 2020 16:07:20 +0530
Message-Id: <20201218103723.30844-13-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201218103723.30844-1-ankit.k.nautiyal@intel.com>
References: <20201218103723.30844-1-ankit.k.nautiyal@intel.com>
Subject: [Intel-gfx] [PATCH v7 12/15] drm/i915: Read DSC capabilities of the
 HDMI2.1 PCON encoder
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
Cc: airlied@linux.ie, dri-devel@lists.freedesktop.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This patch adds support to read and store the DSC capabilities of the
HDMI2.1 PCon encoder. It also adds a new field to store these caps,
The caps are read during dfp update and can later be used to get the
PPS parameters for PCON-HDMI2.1 sink pair. Which inturn will be used
to take a call to override the existing PPS-metadata, by either
writing the entire new PPS metadata, or by writing only the
PPS override parameters.

v2: Restructured the code to read all capability DPCDs at once and store
in an array in intel_dp structure.

v3: rebase

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 20 +++++++++++++++++++
 2 files changed, 21 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index daecff9783ea..4c01c7c23dfd 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1362,6 +1362,7 @@ struct intel_dp {
 	u8 lttpr_common_caps[DP_LTTPR_COMMON_CAP_SIZE];
 	u8 lttpr_phy_caps[DP_MAX_LTTPR_COUNT][DP_LTTPR_PHY_CAP_SIZE];
 	u8 fec_capable;
+	u8 pcon_dsc_dpcd[DP_PCON_DSC_ENCODER_CAP_SIZE];
 	/* source rates */
 	int num_source_rates;
 	const int *source_rates;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 66f35e7c9903..7e2c334b3a17 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3988,6 +3988,24 @@ cpt_set_link_train(struct intel_dp *intel_dp,
 	intel_de_posting_read(dev_priv, intel_dp->output_reg);
 }
 
+static void intel_dp_get_pcon_dsc_cap(struct intel_dp *intel_dp)
+{
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+
+	/* Clear the cached register set to avoid using stale values */
+
+	memset(intel_dp->pcon_dsc_dpcd, 0, sizeof(intel_dp->pcon_dsc_dpcd));
+
+	if (drm_dp_dpcd_read(&intel_dp->aux, DP_PCON_DSC_ENCODER,
+				     intel_dp->pcon_dsc_dpcd,
+				     sizeof(intel_dp->pcon_dsc_dpcd)) < 0)
+		drm_err(&i915->drm, "Failed to read DPCD register 0x%x\n",
+			DP_PCON_DSC_ENCODER);
+
+	drm_dbg_kms(&i915->drm, "PCON ENCODER DSC DPCD: %*ph\n",
+		   (int)sizeof(intel_dp->pcon_dsc_dpcd), intel_dp->pcon_dsc_dpcd);
+}
+
 static int intel_dp_pcon_get_frl_mask(u8 frl_bw_mask)
 {
 	int bw_gbps[] = {9, 18, 24, 32, 40, 48};
@@ -6720,6 +6738,8 @@ intel_dp_update_dfp(struct intel_dp *intel_dp,
 		    intel_dp->dfp.min_tmds_clock,
 		    intel_dp->dfp.max_tmds_clock,
 		    intel_dp->dfp.pcon_max_frl_bw);
+
+	intel_dp_get_pcon_dsc_cap(intel_dp);
 }
 
 static void
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
