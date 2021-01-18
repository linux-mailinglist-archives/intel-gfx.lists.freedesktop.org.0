Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 222902FA8DE
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Jan 2021 19:31:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20ADE6E524;
	Mon, 18 Jan 2021 18:31:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFF736E524
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Jan 2021 18:31:48 +0000 (UTC)
IronPort-SDR: efxB/HPrZf5QqHZG/ribvyhCeH/plnssapjl01fZycJl8tdfKRgkB7+T3vrrPMHAzbmlo5bxvg
 hbyjvtCyN/wQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9868"; a="178985855"
X-IronPort-AV: E=Sophos;i="5.79,357,1602572400"; d="scan'208";a="178985855"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 10:31:46 -0800
IronPort-SDR: EF5Vcff5V3PBeZeUOOHbLGAMWdS7Y5Ug5IOkQO/zEyJA8dlaSPYjDi9xT+to30Ci8U798gswrr
 xMcZZcJI4qNw==
X-IronPort-AV: E=Sophos;i="5.79,357,1602572400"; d="scan'208";a="383650858"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 10:31:45 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 18 Jan 2021 20:31:43 +0200
Message-Id: <20210118183143.1145707-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/dp: Prevent setting the LTTPR LT mode
 if no LTTPRs are detected
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Atm, the driver programs explicitly the default transparent link
training mode (0x55) to DP_PHY_REPEATER_MODE even if no LTTPRs are
detected.

This conforms to the spec (3.6.6.1):
"DP upstream devices that do not enable the Non-transparent mode of
 LTTPRs shall program the PHY_REPEATER_MODE register (DPCD Address
 F0003h) to 55h (default) prior to link training"

however writing the default value to this DPCD register seems to cause
occasional link training errors at least for a DELL WD19TB TBT dock, when
no LTTPRs are detected.

Writing to DP_PHY_REPEATER_MODE will also cause an unnecessary timeout
on systems without any LTTPR.

To fix the above two issues let's assume that setting the default mode
is redundant when no LTTPRs are detected. Keep the existing behavior and
program the default mode if more than 8 LTTPRs are detected or in case
the read from DP_PHY_REPEATER_CNT returns an invalid value.

References: https://gitlab.freedesktop.org/drm/intel/-/issues/2801
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_dp_link_training.c | 36 ++++++++-----------
 1 file changed, 15 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index d8c6d7054d11..fad9e9874c7b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -34,18 +34,6 @@ intel_dp_dump_link_status(const u8 link_status[DP_LINK_STATUS_SIZE])
 		      link_status[3], link_status[4], link_status[5]);
 }
 
-static int intel_dp_lttpr_count(struct intel_dp *intel_dp)
-{
-	int count = drm_dp_lttpr_count(intel_dp->lttpr_common_caps);
-
-	/*
-	 * Pretend no LTTPRs in case of LTTPR detection error, or
-	 * if too many (>8) LTTPRs are detected. This translates to link
-	 * training in transparent mode.
-	 */
-	return count <= 0 ? 0 : count;
-}
-
 static void intel_dp_reset_lttpr_count(struct intel_dp *intel_dp)
 {
 	intel_dp->lttpr_common_caps[DP_PHY_REPEATER_CNT -
@@ -142,6 +130,17 @@ int intel_dp_lttpr_init(struct intel_dp *intel_dp)
 		return 0;
 
 	ret = intel_dp_read_lttpr_common_caps(intel_dp);
+	if (!ret)
+		return 0;
+
+	lttpr_count = drm_dp_lttpr_count(intel_dp->lttpr_common_caps);
+	/*
+	 * Prevent setting LTTPR transparent mode explicitly if no LTTPRs are
+	 * detected as this breaks link training at least on the Dell WD19TB
+	 * dock.
+	 */
+	if (lttpr_count == 0)
+		return 0;
 
 	/*
 	 * See DP Standard v2.0 3.6.6.1. about the explicit disabling of
@@ -150,17 +149,12 @@ int intel_dp_lttpr_init(struct intel_dp *intel_dp)
 	 */
 	intel_dp_set_lttpr_transparent_mode(intel_dp, true);
 
-	if (!ret)
-		return 0;
-
-	lttpr_count = intel_dp_lttpr_count(intel_dp);
-
 	/*
 	 * In case of unsupported number of LTTPRs or failing to switch to
 	 * non-transparent mode fall-back to transparent link training mode,
 	 * still taking into account any LTTPR common lane- rate/count limits.
 	 */
-	if (lttpr_count == 0)
+	if (lttpr_count < 0)
 		return 0;
 
 	if (!intel_dp_set_lttpr_transparent_mode(intel_dp, false)) {
@@ -222,11 +216,11 @@ intel_dp_phy_is_downstream_of_source(struct intel_dp *intel_dp,
 				     enum drm_dp_phy dp_phy)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
-	int lttpr_count = intel_dp_lttpr_count(intel_dp);
+	int lttpr_count = drm_dp_lttpr_count(intel_dp->lttpr_common_caps);
 
-	drm_WARN_ON_ONCE(&i915->drm, lttpr_count == 0 && dp_phy != DP_PHY_DPRX);
+	drm_WARN_ON_ONCE(&i915->drm, lttpr_count <= 0 && dp_phy != DP_PHY_DPRX);
 
-	return lttpr_count == 0 || dp_phy == DP_PHY_LTTPR(lttpr_count - 1);
+	return lttpr_count <= 0 || dp_phy == DP_PHY_LTTPR(lttpr_count - 1);
 }
 
 static u8 intel_dp_phy_voltage_max(struct intel_dp *intel_dp,
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
