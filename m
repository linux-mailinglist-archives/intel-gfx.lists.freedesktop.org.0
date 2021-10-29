Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BFFC43F70E
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Oct 2021 08:16:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28A2E6E0D9;
	Fri, 29 Oct 2021 06:15:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E1396E072
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Oct 2021 06:15:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10151"; a="230458919"
X-IronPort-AV: E=Sophos;i="5.87,191,1631602800"; d="scan'208";a="230458919"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2021 23:15:52 -0700
X-IronPort-AV: E=Sophos;i="5.87,191,1631602800"; d="scan'208";a="448264865"
Received: from linux-z370-aorus-gaming-5.iind.intel.com ([10.223.34.160])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2021 23:15:50 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: swati2.sharma@intel.com,
	uma.shankar@intel.com
Date: Fri, 29 Oct 2021 11:31:53 +0530
Message-Id: <20211029060154.110038-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211029060154.110038-1-ankit.k.nautiyal@intel.com>
References: <20211029060154.110038-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/dp: Optimize the FRL configuration
 for HDMI2.1 PCON
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

Currently the HDMI2.1 PCON's frl link config DPCD registers are
reset and configured even if they are already configured.
Also the HDMI Link Mode does not settle to FRL MODE immediately after
HDMI Link Status is active.

This patch:
-Checks if the PCON is already configured for FRL.
-Include HDMI Link Mode in wait for loop along with HDMI Link status DPCD.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 37 +++++++++++++++----------
 1 file changed, 23 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 6d5988f0f067..f5fd106e555c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2198,6 +2198,18 @@ static int intel_dp_hdmi_sink_max_frl(struct intel_dp *intel_dp)
 	return max_frl_rate;
 }
 
+static bool
+intel_dp_pcon_is_frl_trained(struct intel_dp *intel_dp,
+			     u8 max_frl_bw_mask, u8 *frl_trained_mask)
+{
+	if (drm_dp_pcon_hdmi_link_active(&intel_dp->aux) &&
+	    drm_dp_pcon_hdmi_link_mode(&intel_dp->aux, frl_trained_mask) == DP_PCON_HDMI_MODE_FRL &&
+	    *frl_trained_mask >= max_frl_bw_mask)
+		return true;
+
+	return false;
+}
+
 static int intel_dp_pcon_start_frl_training(struct intel_dp *intel_dp)
 {
 #define TIMEOUT_FRL_READY_MS 500
@@ -2208,10 +2220,6 @@ static int intel_dp_pcon_start_frl_training(struct intel_dp *intel_dp)
 	u8 max_frl_bw_mask = 0, frl_trained_mask;
 	bool is_active;
 
-	ret = drm_dp_pcon_reset_frl_config(&intel_dp->aux);
-	if (ret < 0)
-		return ret;
-
 	max_pcon_frl_bw = intel_dp->dfp.pcon_max_frl_bw;
 	drm_dbg(&i915->drm, "PCON max rate = %d Gbps\n", max_pcon_frl_bw);
 
@@ -2223,6 +2231,12 @@ static int intel_dp_pcon_start_frl_training(struct intel_dp *intel_dp)
 	if (max_frl_bw <= 0)
 		return -EINVAL;
 
+	max_frl_bw_mask = intel_dp_pcon_set_frl_mask(max_frl_bw);
+	drm_dbg(&i915->drm, "MAX_FRL_BW_MASK = %u\n", max_frl_bw_mask);
+
+	if (intel_dp_pcon_is_frl_trained(intel_dp, max_frl_bw_mask, &frl_trained_mask))
+		goto frl_trained;
+
 	ret = drm_dp_pcon_frl_prepare(&intel_dp->aux, false);
 	if (ret < 0)
 		return ret;
@@ -2232,7 +2246,6 @@ static int intel_dp_pcon_start_frl_training(struct intel_dp *intel_dp)
 	if (!is_active)
 		return -ETIMEDOUT;
 
-	max_frl_bw_mask = intel_dp_pcon_set_frl_mask(max_frl_bw);
 	ret = drm_dp_pcon_frl_configure_1(&intel_dp->aux, max_frl_bw,
 					  DP_PCON_ENABLE_SEQUENTIAL_LINK);
 	if (ret < 0)
@@ -2248,19 +2261,15 @@ static int intel_dp_pcon_start_frl_training(struct intel_dp *intel_dp)
 	 * Wait for FRL to be completed
 	 * Check if the HDMI Link is up and active.
 	 */
-	wait_for(is_active = drm_dp_pcon_hdmi_link_active(&intel_dp->aux) == true, TIMEOUT_HDMI_LINK_ACTIVE_MS);
+	wait_for(is_active =
+		 intel_dp_pcon_is_frl_trained(intel_dp, max_frl_bw_mask, &frl_trained_mask),
+		 TIMEOUT_HDMI_LINK_ACTIVE_MS);
 
 	if (!is_active)
 		return -ETIMEDOUT;
 
-	/* Verify HDMI Link configuration shows FRL Mode */
-	if (drm_dp_pcon_hdmi_link_mode(&intel_dp->aux, &frl_trained_mask) !=
-	    DP_PCON_HDMI_MODE_FRL) {
-		drm_dbg(&i915->drm, "HDMI couldn't be trained in FRL Mode\n");
-		return -EINVAL;
-	}
-	drm_dbg(&i915->drm, "MAX_FRL_MASK = %u, FRL_TRAINED_MASK = %u\n", max_frl_bw_mask, frl_trained_mask);
-
+frl_trained:
+	drm_dbg(&i915->drm, "FRL_TRAINED_MASK = %u\n", frl_trained_mask);
 	intel_dp->frl.trained_rate_gbps = intel_dp_pcon_get_frl_mask(frl_trained_mask);
 	intel_dp->frl.is_trained = true;
 	drm_dbg(&i915->drm, "FRL trained with : %d Gbps\n", intel_dp->frl.trained_rate_gbps);
-- 
2.25.1

