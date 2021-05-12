Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 83AB537D469
	for <lists+intel-gfx@lfdr.de>; Wed, 12 May 2021 23:28:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29B196E55C;
	Wed, 12 May 2021 21:28:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 043C96E55C
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 May 2021 21:28:13 +0000 (UTC)
IronPort-SDR: zg+TnfNyPCrKwtD07rL6tMLcSk82L1BEeVVEKeL23tlUq0wtrsdGwapN1rRiPn58K+s2QXIGvG
 FAa5QgJexy+w==
X-IronPort-AV: E=McAfee;i="6200,9189,9982"; a="199491436"
X-IronPort-AV: E=Sophos;i="5.82,295,1613462400"; d="scan'208";a="199491436"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2021 14:28:12 -0700
IronPort-SDR: 8WInMZUAH1C6inPULXn5vAHCAWuPAMQwutq4eZVrAB8peB9Rbr0kBmuZhhbPh8zcFz/SPY1UE2
 2ZL30eqWDdyw==
X-IronPort-AV: E=Sophos;i="5.82,295,1613462400"; d="scan'208";a="625622065"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2021 14:28:11 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 13 May 2021 00:28:09 +0300
Message-Id: <20210512212809.1234701-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Reenable LTTPR non-transparent LT
 mode for DPCD_REV<1.4
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
Cc: stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The driver currently disables the LTTPR non-transparent link training
mode for sinks with a DPCD_REV<1.4, based on the following description
of the LTTPR DPCD register range in DP standard 2.0 (at the 0xF0000
register description):

""
LTTPR-related registers at DPCD Addresses F0000h through F02FFh are valid
only for DPCD r1.4 (or higher).
"""

The transparent link training mode should still work fine, however the
implementation for this in some retimer FWs seems to be broken, see the
References: link below.

After discussions with DP standard authors the above "DPCD r1.4" does
not refer to the DPCD revision (stored in the DPCD_REV reg at 0x00000),
rather to the "LTTPR field data structure revision" stored in the
0xF0000 reg. An update request has been filed at vesa.org (see
wg/Link/documentComment/3746) for the upcoming v2.1 specification to
clarify the above description along the following lines:

"""
LTTPR-related registers at DPCD Addresses F0000h through F02FFh are
valid only for LT_TUNABLE_PHY_REPEATER_FIELD_DATA_STRUCTURE_REV 1.4 (or
higher)
"""

Based on my tests Windows uses the non-transparent link training mode
for DPCD_REV==1.2 sinks as well (so presumably for all DPCD_REVs), and
forcing it to use transparent mode on ICL/TGL platforms leads to the
same LT failure as reported at the References: link.

Based on the above let's assume that the transparent link training mode
is not well tested/supported and align the code to the correct
interpretation of what the r1.4 version refers to.

References: https://gitlab.freedesktop.org/drm/intel/-/issues/3415
Fixes: 264613b406eb ("drm/i915: Disable LTTPR support when the DPCD rev < 1.4")
Cc: <stable@vger.kernel.org> # v5.11+
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_dp_link_training.c | 71 +++++++++----------
 1 file changed, 33 insertions(+), 38 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 6bf6f1ec13ed8..08bceae40aa8d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -128,50 +128,14 @@ intel_dp_set_lttpr_transparent_mode(struct intel_dp *intel_dp, bool enable)
 	return drm_dp_dpcd_write(&intel_dp->aux, DP_PHY_REPEATER_MODE, &val, 1) == 1;
 }
 
-/**
- * intel_dp_init_lttpr_and_dprx_caps - detect LTTPR and DPRX caps, init the LTTPR link training mode
- * @intel_dp: Intel DP struct
- *
- * Read the LTTPR common and DPRX capabilities and switch to non-transparent
- * link training mode if any is detected and read the PHY capabilities for all
- * detected LTTPRs. In case of an LTTPR detection error or if the number of
- * LTTPRs is more than is supported (8), fall back to the no-LTTPR,
- * transparent mode link training mode.
- *
- * Returns:
- *   >0  if LTTPRs were detected and the non-transparent LT mode was set. The
- *       DPRX capabilities are read out.
- *    0  if no LTTPRs or more than 8 LTTPRs were detected or in case of a
- *       detection failure and the transparent LT mode was set. The DPRX
- *       capabilities are read out.
- *   <0  Reading out the DPRX capabilities failed.
- */
-int intel_dp_init_lttpr_and_dprx_caps(struct intel_dp *intel_dp)
+static int intel_dp_init_lttpr(struct intel_dp *intel_dp)
 {
 	int lttpr_count;
-	bool ret;
 	int i;
 
-	ret = intel_dp_read_lttpr_common_caps(intel_dp);
-
-	/* The DPTX shall read the DPRX caps after LTTPR detection. */
-	if (drm_dp_read_dpcd_caps(&intel_dp->aux, intel_dp->dpcd)) {
-		intel_dp_reset_lttpr_common_caps(intel_dp);
-		return -EIO;
-	}
-
-	if (!ret)
+	if (!intel_dp_read_lttpr_common_caps(intel_dp))
 		return 0;
 
-	/*
-	 * The 0xF0000-0xF02FF range is only valid if the DPCD revision is
-	 * at least 1.4.
-	 */
-	if (intel_dp->dpcd[DP_DPCD_REV] < 0x14) {
-		intel_dp_reset_lttpr_common_caps(intel_dp);
-		return 0;
-	}
-
 	lttpr_count = drm_dp_lttpr_count(intel_dp->lttpr_common_caps);
 	/*
 	 * Prevent setting LTTPR transparent mode explicitly if no LTTPRs are
@@ -211,6 +175,37 @@ int intel_dp_init_lttpr_and_dprx_caps(struct intel_dp *intel_dp)
 
 	return lttpr_count;
 }
+
+/**
+ * intel_dp_init_lttpr_and_dprx_caps - detect LTTPR and DPRX caps, init the LTTPR link training mode
+ * @intel_dp: Intel DP struct
+ *
+ * Read the LTTPR common and DPRX capabilities and switch to non-transparent
+ * link training mode if any is detected and read the PHY capabilities for all
+ * detected LTTPRs. In case of an LTTPR detection error or if the number of
+ * LTTPRs is more than is supported (8), fall back to the no-LTTPR,
+ * transparent mode link training mode.
+ *
+ * Returns:
+ *   >0  if LTTPRs were detected and the non-transparent LT mode was set. The
+ *       DPRX capabilities are read out.
+ *    0  if no LTTPRs or more than 8 LTTPRs were detected or in case of a
+ *       detection failure and the transparent LT mode was set. The DPRX
+ *       capabilities are read out.
+ *   <0  Reading out the DPRX capabilities failed.
+ */
+int intel_dp_init_lttpr_and_dprx_caps(struct intel_dp *intel_dp)
+{
+	int lttpr_count = intel_dp_init_lttpr(intel_dp);
+
+	/* The DPTX shall read the DPRX caps after LTTPR detection. */
+	if (drm_dp_read_dpcd_caps(&intel_dp->aux, intel_dp->dpcd)) {
+		intel_dp_reset_lttpr_common_caps(intel_dp);
+		return -EIO;
+	}
+
+	return lttpr_count;
+}
 EXPORT_SYMBOL(intel_dp_init_lttpr_and_dprx_caps);
 
 static u8 dp_voltage_max(u8 preemph)
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
