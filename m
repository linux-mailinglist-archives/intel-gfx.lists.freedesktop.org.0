Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 769FD785E21
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Aug 2023 19:09:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94E5A10E482;
	Wed, 23 Aug 2023 17:09:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C397710E424;
 Wed, 23 Aug 2023 17:09:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692810555; x=1724346555;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iUSWh+seM/4oaRMtXUisIkzPlxk1qFN24VTB5CR2U5g=;
 b=I3CuE+S91qNz+db7klWPIJaL/JBjLeXWWXyxWrjV8VsnK30/+USh/KHy
 pwbgHMZ/c72RG9Zj7wOfGkCtZdBaD6LN6oJS9+i/iBDDtG6NwJU9cqOa3
 HKxvs110aXo17NNzF1CVdA2xy7mG36VYmKQSTyaTL7ulAa4z8Ckc5wzle
 W/WZGOguy/0Jbl8JcjksW8xyFbukw8rO0ILvxz62/A7M+DyfVOl6Ju9WC
 wbY8rxyY/8tit2BguoBewq60dhKG9IUbhrDHLGM34pnHkGn8VUm0k2eXA
 78cP9PAcwNP2Ay8x/LhbYHMfo9sLoIHPTtkVHdXVIUfOdFuGGMJMt/B0R Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="438147462"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="438147462"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 10:09:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="802204765"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="802204765"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 10:09:14 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed, 23 Aug 2023 10:07:01 -0700
Message-Id: <20230823170740.1180212-4-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230823170740.1180212-1-lucas.demarchi@intel.com>
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/42] drm/i915/cx0: Add
 intel_cx0_get_owned_lane_mask()
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
Cc: Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Gustavo Sousa <gustavo.sousa@intel.com>

There are more parts of C10/C20 programming that need to take owned
lanes into account. Define the function intel_cx0_get_owned_lane_mask()
and use it. There will be new users of that function in upcoming
changes.

BSpec: 64539
Reviewed-by: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Link: https://patchwork.freedesktop.org/patch/msgid/20230814131331.69516-2-gustavo.sousa@intel.com
(cherry picked from commit 3a8ecd4c3ede7283619536917e61c1aa3b9db6b7)
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 44 ++++++++++++--------
 1 file changed, 27 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 1b00ef2c6185..b903ceb0b56a 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -46,6 +46,22 @@ static int lane_mask_to_lane(u8 lane_mask)
 	return ilog2(lane_mask);
 }
 
+static u8 intel_cx0_get_owned_lane_mask(struct drm_i915_private *i915,
+					struct intel_encoder *encoder)
+{
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+
+	if (!intel_tc_port_in_dp_alt_mode(dig_port))
+		return INTEL_CX0_BOTH_LANES;
+
+	/*
+	 * In DP-alt with pin assignment D, only PHY lane 0 is owned
+	 * by display and lane 1 is owned by USB.
+	 */
+	return intel_tc_port_fia_max_lane_count(dig_port) > 2
+		? INTEL_CX0_BOTH_LANES : INTEL_CX0_LANE0;
+}
+
 static void
 assert_dc_off(struct drm_i915_private *i915)
 {
@@ -2534,17 +2550,15 @@ static void intel_cx0_phy_lane_reset(struct drm_i915_private *i915,
 {
 	enum port port = encoder->port;
 	enum phy phy = intel_port_to_phy(i915, port);
-	bool both_lanes =  intel_tc_port_fia_max_lane_count(enc_to_dig_port(encoder)) > 2;
-	u8 lane_mask = lane_reversal ? INTEL_CX0_LANE1 :
-				  INTEL_CX0_LANE0;
-	u32 lane_pipe_reset = both_lanes ?
-			      XELPDP_LANE_PIPE_RESET(0) |
-			      XELPDP_LANE_PIPE_RESET(1) :
-			      XELPDP_LANE_PIPE_RESET(0);
-	u32 lane_phy_current_status = both_lanes ?
-				      XELPDP_LANE_PHY_CURRENT_STATUS(0) |
-				      XELPDP_LANE_PHY_CURRENT_STATUS(1) :
-				      XELPDP_LANE_PHY_CURRENT_STATUS(0);
+	u8 owned_lane_mask = intel_cx0_get_owned_lane_mask(i915, encoder);
+	u8 lane_mask = lane_reversal ? INTEL_CX0_LANE1 : INTEL_CX0_LANE0;
+	u32 lane_pipe_reset = owned_lane_mask == INTEL_CX0_BOTH_LANES
+				? XELPDP_LANE_PIPE_RESET(0) | XELPDP_LANE_PIPE_RESET(1)
+				: XELPDP_LANE_PIPE_RESET(0);
+	u32 lane_phy_current_status = owned_lane_mask == INTEL_CX0_BOTH_LANES
+					? (XELPDP_LANE_PHY_CURRENT_STATUS(0) |
+					   XELPDP_LANE_PHY_CURRENT_STATUS(1))
+					: XELPDP_LANE_PHY_CURRENT_STATUS(0);
 
 	if (__intel_de_wait_for_register(i915, XELPDP_PORT_BUF_CTL1(port),
 					 XELPDP_PORT_BUF_SOC_PHY_READY,
@@ -2564,15 +2578,11 @@ static void intel_cx0_phy_lane_reset(struct drm_i915_private *i915,
 			 phy_name(phy), XELPDP_PORT_RESET_START_TIMEOUT_US);
 
 	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(port),
-		     intel_cx0_get_pclk_refclk_request(both_lanes ?
-						       INTEL_CX0_BOTH_LANES :
-						       INTEL_CX0_LANE0),
+		     intel_cx0_get_pclk_refclk_request(owned_lane_mask),
 		     intel_cx0_get_pclk_refclk_request(lane_mask));
 
 	if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(port),
-					 intel_cx0_get_pclk_refclk_ack(both_lanes ?
-								       INTEL_CX0_BOTH_LANES :
-								       INTEL_CX0_LANE0),
+					 intel_cx0_get_pclk_refclk_ack(owned_lane_mask),
 					 intel_cx0_get_pclk_refclk_ack(lane_mask),
 					 XELPDP_REFCLK_ENABLE_TIMEOUT_US, 0, NULL))
 		drm_warn(&i915->drm, "PHY %c failed to request refclk after %dus.\n",
-- 
2.40.1

