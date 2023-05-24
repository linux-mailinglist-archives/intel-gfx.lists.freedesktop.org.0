Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 56B6370F9C7
	for <lists+intel-gfx@lfdr.de>; Wed, 24 May 2023 17:07:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 854BC10E275;
	Wed, 24 May 2023 15:07:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04BEC10E2B8
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 May 2023 15:07:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684940869; x=1716476869;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9JsckpSp/Q80LauUtKVHsDUiMTXk9qSMve37hbTxELs=;
 b=nDLkWO5MUCY9xpX+yIa9mMg0Z6G1BRg7oeFz/HoToA2LAgQf2dqPDH1d
 zOV6BvcP+eKmcw+UH7qrzSjKwslhU7HgY8WmZoKqAeHY/iMNxF98BLkKa
 7LTY5ih4Y7ahNclkoFfRuLbV53z5CgNWNp+xS28dyhfiK378fFoEozzTM
 JTRjiz/weHhC3N41jARArc38DGA80VKA9Gb753ARr0/kA9a+9DExyTGeP
 GEDemdsMRuVbDInsQGo5pbrSAgNkhLmxLwsrqUotX2ZCtc56plAHlFubH
 RGASAfREZ4oBuBeElnFa5fZ1fNqsEIvmWj1LqhNFdeTpXqJSkieHoKYSD Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10720"; a="352439312"
X-IronPort-AV: E=Sophos;i="6.00,189,1681196400"; d="scan'208";a="352439312"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2023 08:07:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10720"; a="794228813"
X-IronPort-AV: E=Sophos;i="6.00,189,1681196400"; d="scan'208";a="794228813"
Received: from unknown (HELO sorvi2.fi.intel.com) ([10.237.72.194])
 by FMSMGA003.fm.intel.com with ESMTP; 24 May 2023 08:07:21 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 May 2023 18:01:52 +0300
Message-Id: <20230524150152.136371-1-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/mtl: Reset only one lane in case of MFD
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

In case when only two or less lanes are owned such as MFD (DP-alt with x2 lanes)
we need to reset only one lane (lane0). With only x2 lanes we don't need
to poll for the phy current status on both lanes since only the owned lane
will respond.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 39 ++++++++++++--------
 1 file changed, 23 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index ee6902118860..b8c812c5b33f 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2528,13 +2528,23 @@ static u32 intel_cx0_get_pclk_refclk_ack(u8 lane_mask)
 	return val;
 }
 
-/* FIXME: Some Type-C cases need not reset both the lanes. Handle those cases. */
-static void intel_cx0_phy_lane_reset(struct drm_i915_private *i915, enum port port,
+static void intel_cx0_phy_lane_reset(struct drm_i915_private *i915,
+				     struct intel_encoder *encoder,
 				     bool lane_reversal)
 {
+	enum port port = encoder->port;
 	enum phy phy = intel_port_to_phy(i915, port);
+	u8 fia_max =  intel_tc_port_fia_max_lane_count(enc_to_dig_port(encoder));
 	u8 lane_mask = lane_reversal ? INTEL_CX0_LANE1 :
 				  INTEL_CX0_LANE0;
+	u32 lane_pipe_reset = fia_max > 2 ?
+			      XELPDP_LANE_PIPE_RESET(0) |
+			      XELPDP_LANE_PIPE_RESET(1) :
+			      XELPDP_LANE_PIPE_RESET(0);
+	u32 lane_phy_current_status = fia_max > 2 ?
+				      XELPDP_LANE_PHY_CURRENT_STATUS(0) |
+				      XELPDP_LANE_PHY_CURRENT_STATUS(1) :
+				      XELPDP_LANE_PHY_CURRENT_STATUS(0);
 
 	if (__intel_de_wait_for_register(i915, XELPDP_PORT_BUF_CTL1(port),
 					 XELPDP_PORT_BUF_SOC_PHY_READY,
@@ -2545,23 +2555,24 @@ static void intel_cx0_phy_lane_reset(struct drm_i915_private *i915, enum port po
 
 	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port),
 		     XELPDP_LANE_PIPE_RESET(0) | XELPDP_LANE_PIPE_RESET(1),
-		     XELPDP_LANE_PIPE_RESET(0) | XELPDP_LANE_PIPE_RESET(1));
+		     lane_pipe_reset);
 
 	if (__intel_de_wait_for_register(i915, XELPDP_PORT_BUF_CTL2(port),
-					 XELPDP_LANE_PHY_CURRENT_STATUS(0) |
-					 XELPDP_LANE_PHY_CURRENT_STATUS(1),
-					 XELPDP_LANE_PHY_CURRENT_STATUS(0) |
-					 XELPDP_LANE_PHY_CURRENT_STATUS(1),
+					 lane_phy_current_status, lane_phy_current_status,
 					 XELPDP_PORT_RESET_START_TIMEOUT_US, 0, NULL))
 		drm_warn(&i915->drm, "PHY %c failed to bring out of Lane reset after %dus.\n",
 			 phy_name(phy), XELPDP_PORT_RESET_START_TIMEOUT_US);
 
 	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(port),
-		     intel_cx0_get_pclk_refclk_request(INTEL_CX0_BOTH_LANES),
+		     intel_cx0_get_pclk_refclk_request(fia_max > 2 ?
+						       INTEL_CX0_BOTH_LANES :
+						       INTEL_CX0_LANE0),
 		     intel_cx0_get_pclk_refclk_request(lane_mask));
 
 	if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(port),
-					 intel_cx0_get_pclk_refclk_ack(INTEL_CX0_BOTH_LANES),
+					 intel_cx0_get_pclk_refclk_ack(fia_max > 2 ?
+								       INTEL_CX0_BOTH_LANES :
+								       INTEL_CX0_LANE0),
 					 intel_cx0_get_pclk_refclk_ack(lane_mask),
 					 XELPDP_REFCLK_ENABLE_TIMEOUT_US, 0, NULL))
 		drm_warn(&i915->drm, "PHY %c failed to request refclk after %dus.\n",
@@ -2571,13 +2582,9 @@ static void intel_cx0_phy_lane_reset(struct drm_i915_private *i915, enum port po
 					    CX0_P2_STATE_RESET);
 	intel_cx0_setup_powerdown(i915, port);
 
-	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port),
-		     XELPDP_LANE_PIPE_RESET(0) | XELPDP_LANE_PIPE_RESET(1),
-		     0);
+	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port), lane_pipe_reset, 0);
 
-	if (intel_de_wait_for_clear(i915, XELPDP_PORT_BUF_CTL2(port),
-				    XELPDP_LANE_PHY_CURRENT_STATUS(0) |
-				    XELPDP_LANE_PHY_CURRENT_STATUS(1),
+	if (intel_de_wait_for_clear(i915, XELPDP_PORT_BUF_CTL2(port), lane_phy_current_status,
 				    XELPDP_PORT_RESET_END_TIMEOUT))
 		drm_warn(&i915->drm, "PHY %c failed to bring out of Lane reset after %dms.\n",
 			 phy_name(phy), XELPDP_PORT_RESET_END_TIMEOUT);
@@ -2705,7 +2712,7 @@ static void intel_cx0pll_enable(struct intel_encoder *encoder,
 	intel_program_port_clock_ctl(encoder, crtc_state, lane_reversal);
 
 	/* 2. Bring PHY out of reset. */
-	intel_cx0_phy_lane_reset(i915, encoder->port, lane_reversal);
+	intel_cx0_phy_lane_reset(i915, encoder, lane_reversal);
 
 	/*
 	 * 3. Change Phy power state to Ready.
-- 
2.34.1

