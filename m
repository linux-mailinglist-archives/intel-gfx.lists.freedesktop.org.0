Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E13377B97C
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Aug 2023 15:13:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FA3910E1F3;
	Mon, 14 Aug 2023 13:13:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B843710E1F3
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Aug 2023 13:13:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692018829; x=1723554829;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3Yp2hlq2ZXuC+IUKK9ilRLw4VF5vxAFnAmwgLzpSa1k=;
 b=F6mFzNVe3OlFFzhjQRvjgapdO1wap5BNQPkrg6+rH/dNQuuwA1d7QLV+
 usjXnlDYe6d44TCbyCG7D3Cyk4QJkuaUYy8IHBGP7My3mkBlnIOXYIz+u
 1Jp5ibFi+HNAH0+MmelVweW0olR89SLfGF/phi7lIcXvlGL9wutpA2PSI
 8QlqXmMFShIUWgIy31zB0nIBf2XK97TOOOwm25juRJDmPvBc4iRWhNcdx
 qf40FUjtgEhM5mGJzD+YVNgNNx7A7GENkVmWfI1s2Ns5000cXR+shY0Gy
 T98frSb54ZNBuyW3PX08Eh89DTiHtEyGqQYqKyhL7H6iVLcjQS2qFLDzz A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10802"; a="374805419"
X-IronPort-AV: E=Sophos;i="6.01,172,1684825200"; d="scan'208";a="374805419"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2023 06:13:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10802"; a="907234137"
X-IronPort-AV: E=Sophos;i="6.01,172,1684825200"; d="scan'208";a="907234137"
Received: from svikra2x-mobl.gar.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.209.145.4])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2023 06:13:48 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Aug 2023 10:13:28 -0300
Message-ID: <20230814131331.69516-2-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230814131331.69516-1-gustavo.sousa@intel.com>
References: <20230814131331.69516-1-gustavo.sousa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/4] drm/i915/cx0: Add
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

There are more parts of C10/C20 programming that need to take owned
lanes into account. Define the function intel_cx0_get_owned_lane_mask()
and use it. There will be new users of that function in upcoming
changes.

BSpec: 64539
Reviewed-by: Mika Kahola <mika.kahola@intel.com>
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

