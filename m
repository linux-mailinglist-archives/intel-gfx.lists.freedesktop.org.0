Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07F7EC3C009
	for <lists+intel-gfx@lfdr.de>; Thu, 06 Nov 2025 16:21:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F4F910E913;
	Thu,  6 Nov 2025 15:21:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ds6OXOqZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FD3A10E913;
 Thu,  6 Nov 2025 15:21:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762442461; x=1793978461;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pXFSce9O7ji9FoJ1QMLfR8gap7x1s1hFBpRBKDkw53Y=;
 b=ds6OXOqZneLdQtzKPV+8rmzEo7VQOu5ktERuc6tkscVkW8qhici5jQ9f
 N2ohTXNreeTL9sCRJpFGmrXVBGWZB5XhdRoUDsbNqgID0JCsEw/BzHgSq
 zDRgkWJUgqF6di2xqKAHwvFTjZFF+IHwZITsxyKUkSS8wgmxGaoYV8AFy
 Hydg3V8r66+QaIq1m+K9LXIJ6TlYsIacFq205hrhfWAU3BIPlqmr0W7lp
 n4fUGK1vtHWjlM8IRXWtGZy9QlAP2g+z/oiaHlSQhoyLJO8RgGjFHoKK1
 /mPRJdBqlfUwjsAjnXupU99bLI+81fdKpRh5Q3b6dTGxC9ZfV1rQcPmoW Q==;
X-CSE-ConnectionGUID: UmUBv5e7Rw+5SSy2UvBfGQ==
X-CSE-MsgGUID: A4JthOocTOSeTPIprgKp3g==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="64733384"
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="64733384"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 07:21:01 -0800
X-CSE-ConnectionGUID: ER1KXI9jTvm+hbnrF2NbeA==
X-CSE-MsgGUID: VICnRI+2SKGQWIDTpSE8WQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="187499099"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.213])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 07:20:59 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v2 02/10] drm/i915/cx0: Nuke extraneous timeout debugs
Date: Thu,  6 Nov 2025 17:20:41 +0200
Message-ID: <20251106152049.21115-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251106152049.21115-1-ville.syrjala@linux.intel.com>
References: <20251106152049.21115-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The actual timeout used isn't particularly interesting, so
don't print it. Makes the code simpler.

The debugs are also using some random capitalizaton rule.
Clean that up a bit while at it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 35 +++++++++-----------
 1 file changed, 16 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 21f046576ee3..ddc26e383714 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2832,8 +2832,8 @@ void intel_cx0_powerdown_change_sequence(struct intel_encoder *encoder,
 				 intel_cx0_get_powerdown_update(lane_mask), 0,
 				 XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_US, 2, NULL))
 		drm_warn(display->drm,
-			 "PHY %c failed to bring out of Lane reset after %dus.\n",
-			 phy_name(phy), XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_US);
+			 "PHY %c failed to bring out of lane reset\n",
+			 phy_name(phy));
 }
 
 void intel_cx0_setup_powerdown(struct intel_encoder *encoder)
@@ -2894,8 +2894,8 @@ static void intel_cx0_phy_lane_reset(struct intel_encoder *encoder,
 				 XELPDP_PORT_BUF_SOC_PHY_READY,
 				 XELPDP_PORT_BUF_SOC_READY_TIMEOUT_US, 0, NULL))
 		drm_warn(display->drm,
-			 "PHY %c failed to bring out of SOC reset after %dus.\n",
-			 phy_name(phy), XELPDP_PORT_BUF_SOC_READY_TIMEOUT_US);
+			 "PHY %c failed to bring out of SOC reset\n",
+			 phy_name(phy));
 
 	intel_de_rmw(display, XELPDP_PORT_BUF_CTL2(display, port), lane_pipe_reset,
 		     lane_pipe_reset);
@@ -2904,8 +2904,8 @@ static void intel_cx0_phy_lane_reset(struct intel_encoder *encoder,
 				 lane_phy_current_status, lane_phy_current_status,
 				 XELPDP_PORT_RESET_START_TIMEOUT_US, 0, NULL))
 		drm_warn(display->drm,
-			 "PHY %c failed to bring out of Lane reset after %dus.\n",
-			 phy_name(phy), XELPDP_PORT_RESET_START_TIMEOUT_US);
+			 "PHY %c failed to bring out of lane reset\n",
+			 phy_name(phy));
 
 	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, port),
 		     intel_cx0_get_pclk_refclk_request(owned_lane_mask),
@@ -2916,8 +2916,8 @@ static void intel_cx0_phy_lane_reset(struct intel_encoder *encoder,
 				 intel_cx0_get_pclk_refclk_ack(lane_mask),
 				 XELPDP_REFCLK_ENABLE_TIMEOUT_US, 0, NULL))
 		drm_warn(display->drm,
-			 "PHY %c failed to request refclk after %dus.\n",
-			 phy_name(phy), XELPDP_REFCLK_ENABLE_TIMEOUT_US);
+			 "PHY %c failed to request refclk\n",
+			 phy_name(phy));
 
 	intel_cx0_powerdown_change_sequence(encoder, INTEL_CX0_BOTH_LANES,
 					    XELPDP_P2_STATE_RESET);
@@ -2929,8 +2929,8 @@ static void intel_cx0_phy_lane_reset(struct intel_encoder *encoder,
 				    lane_phy_current_status,
 				    XELPDP_PORT_RESET_END_TIMEOUT))
 		drm_warn(display->drm,
-			 "PHY %c failed to bring out of Lane reset after %dms.\n",
-			 phy_name(phy), XELPDP_PORT_RESET_END_TIMEOUT);
+			 "PHY %c failed to bring out of lane reset\n",
+			 phy_name(phy));
 }
 
 static void intel_cx0_program_phy_lane(struct intel_encoder *encoder, int lane_count,
@@ -3069,8 +3069,8 @@ static void __intel_cx0pll_enable(struct intel_encoder *encoder,
 				 intel_cx0_get_pclk_pll_ack(INTEL_CX0_BOTH_LANES),
 				 intel_cx0_get_pclk_pll_ack(maxpclk_lane),
 				 XELPDP_PCLK_PLL_ENABLE_TIMEOUT_US, 0, NULL))
-		drm_warn(display->drm, "Port %c PLL not locked after %dus.\n",
-			 phy_name(phy), XELPDP_PCLK_PLL_ENABLE_TIMEOUT_US);
+		drm_warn(display->drm, "Port %c PLL not locked\n",
+			 phy_name(phy));
 
 	/*
 	 * 11. Follow the Display Voltage Frequency Switching Sequence After
@@ -3193,8 +3193,7 @@ void intel_mtl_tbt_pll_enable(struct intel_encoder *encoder,
 				 XELPDP_TBT_CLOCK_ACK,
 				 XELPDP_TBT_CLOCK_ACK,
 				 100, 0, NULL))
-		drm_warn(display->drm,
-			 "[ENCODER:%d:%s][%c] PHY PLL not locked after 100us.\n",
+		drm_warn(display->drm, "[ENCODER:%d:%s][%c] PHY PLL not locked\n",
 			 encoder->base.base.id, encoder->base.name, phy_name(phy));
 
 	/*
@@ -3308,9 +3307,8 @@ static void intel_cx0pll_disable(struct intel_encoder *encoder)
 				 intel_cx0_get_pclk_pll_ack(INTEL_CX0_BOTH_LANES) |
 				 intel_cx0_get_pclk_refclk_ack(INTEL_CX0_BOTH_LANES), 0,
 				 XELPDP_PCLK_PLL_DISABLE_TIMEOUT_US, 0, NULL))
-		drm_warn(display->drm,
-			 "Port %c PLL not unlocked after %dus.\n",
-			 phy_name(phy), XELPDP_PCLK_PLL_DISABLE_TIMEOUT_US);
+		drm_warn(display->drm, "Port %c PLL not unlocked\n",
+			 phy_name(phy));
 
 	/*
 	 * 6. Follow the Display Voltage Frequency Switching Sequence After
@@ -3355,8 +3353,7 @@ void intel_mtl_tbt_pll_disable(struct intel_encoder *encoder)
 	/* 3. Poll on PORT_CLOCK_CTL TBT CLOCK Ack == "0". */
 	if (intel_de_wait_custom(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
 				 XELPDP_TBT_CLOCK_ACK, 0, 10, 0, NULL))
-		drm_warn(display->drm,
-			 "[ENCODER:%d:%s][%c] PHY PLL not unlocked after 10us.\n",
+		drm_warn(display->drm, "[ENCODER:%d:%s][%c] PHY PLL not unlocked\n",
 			 encoder->base.base.id, encoder->base.name, phy_name(phy));
 
 	/*
-- 
2.49.1

