Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE2F3719948
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jun 2023 12:19:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA2AF10E246;
	Thu,  1 Jun 2023 10:19:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F1EC10E22F
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Jun 2023 10:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685614745; x=1717150745;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/tqIIItXbrMwPBwhZNQcfKPnr1dSO9z9aoIoEgR+HhM=;
 b=Smbjz1EGVm7B1cWrYjrrIPPTU4kVJch4Rb8QCCReCaZaLBO16KvLivke
 Lb57HG6RVGHzlhmjNkhbcl0tlcktYn71okhH2yAdmlyYXsQxOv2mbafCS
 aXaYxVDN3CNaR59Np7V5/YkMy5IslxLt9DYVgV5+q8NiOVegHIbL7sjb6
 WxIX3ZOcEUhEuctlWxzA8TKGrgIj8mFB4p3ZI8gK3sEsv4/+Cm8Ejhu2+
 4uy/xi73TO4RqdSyORQw29mhjs+3JS5WCbyrE22K9wWQ6xKSjln94aTxD
 o+tEOV7EvJgwBYOgZ3MPir0n1zr/0ilhoVTG48CjO1bnAYoB9YexCwRbc w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="383788646"
X-IronPort-AV: E=Sophos;i="6.00,209,1681196400"; d="scan'208";a="383788646"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2023 03:18:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="701491290"
X-IronPort-AV: E=Sophos;i="6.00,209,1681196400"; d="scan'208";a="701491290"
Received: from unknown (HELO sorvi2.fi.intel.com) ([10.237.72.194])
 by orsmga007.jf.intel.com with ESMTP; 01 Jun 2023 03:18:41 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  1 Jun 2023 13:13:14 +0300
Message-Id: <20230601101314.332392-1-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/mtl: Reset only one lane in case of
 MFD
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

In case when only two or less transmit lanes are owned such as MFD
(DP-alt with x2 lanes) we need to reset only one data lane (lane0).
With only x2 lanes we don't need to poll for the phy current
status on both data lanes since only the owned data lane will respond.

v2: Find better naming for lanes and revise the commit message (Luca)

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com> (v1)
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 39 ++++++++++++--------
 1 file changed, 23 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index ee6902118860..0600fdcd06ef 100644
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
+	bool both_lanes =  intel_tc_port_fia_max_lane_count(enc_to_dig_port(encoder)) > 2;
 	u8 lane_mask = lane_reversal ? INTEL_CX0_LANE1 :
 				  INTEL_CX0_LANE0;
+	u32 lane_pipe_reset = both_lanes ?
+			      XELPDP_LANE_PIPE_RESET(0) |
+			      XELPDP_LANE_PIPE_RESET(1) :
+			      XELPDP_LANE_PIPE_RESET(0);
+	u32 lane_phy_current_status = both_lanes ?
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
+		     intel_cx0_get_pclk_refclk_request(both_lanes ?
+						       INTEL_CX0_BOTH_LANES :
+						       INTEL_CX0_LANE0),
 		     intel_cx0_get_pclk_refclk_request(lane_mask));
 
 	if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(port),
-					 intel_cx0_get_pclk_refclk_ack(INTEL_CX0_BOTH_LANES),
+					 intel_cx0_get_pclk_refclk_ack(both_lanes ?
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

