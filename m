Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 46DBA762462
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jul 2023 23:27:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73AF610E18F;
	Tue, 25 Jul 2023 21:27:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6DD310E182
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jul 2023 21:27:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690320455; x=1721856455;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7B+BXJ6ZslBETyorooOh35vF58jHEy/ecvwgntFCfGA=;
 b=nqPkONARd+OhavmrWk8NF11DOvrsAKLsLZRu7tukHUO5G2ImL4i4SssR
 FuMQsEQJ5rGvXQf00sWdRs+xGs7ZbWQ5zsxoj5bi3VZQ5c3nSrhwlM72O
 uWB0NwYBFWR33RkyRakwHu7FIL2ephw2fLLPXDQ2uhCo2L96+lEc/dk6b
 TeO1Ui0eBO6NdKVHR0XnqZ1gqS2AvF9pnk8O1iPWVh8pie0evEHXDEloH
 sjQF9Qxmv3/GQb3SW432G/NJuof5DgJZqwJHkHPC8zp5ydCluUnX8lVDW
 JUGNIVI1OY1GUKHjYLzH9MwNx4e0/Pr67ceRc3TLdKoy+2VVgJhZVUMLP A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="434104391"
X-IronPort-AV: E=Sophos;i="6.01,231,1684825200"; d="scan'208";a="434104391"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2023 14:27:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="900117432"
X-IronPort-AV: E=Sophos;i="6.01,231,1684825200"; d="scan'208";a="900117432"
Received: from joshigx-mobl1.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.212.247.217])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2023 14:27:34 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Jul 2023 18:27:13 -0300
Message-ID: <20230725212716.3060259-2-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230725212716.3060259-1-gustavo.sousa@intel.com>
References: <20230725212716.3060259-1-gustavo.sousa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/4] drm/i915/cx0: Add
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

There are more parts of C10/C20 programming that need to take owned
lanes into account. Define the function intel_cx0_get_owned_lane_mask()
and use it. There will be new users of that function in upcoming
changes.

BSpec: 64539
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
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
2.41.0

