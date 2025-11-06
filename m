Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E164DC3C00C
	for <lists+intel-gfx@lfdr.de>; Thu, 06 Nov 2025 16:21:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7303E10E920;
	Thu,  6 Nov 2025 15:21:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ffVEjUMr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F01110E921;
 Thu,  6 Nov 2025 15:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762442465; x=1793978465;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RHxo94txnT1CsIGtv4E76vf59n0qaIJ3jEK6MQpYhI4=;
 b=ffVEjUMrTJxtg9d7In5YipWS/ZCXlsjzwdMYZn/6u17jnCBDUE5CTLQh
 0k2JUClt7H/Pm/OuVMR4kaesvca76Y/fSSv8o4W8l/GbsBX5sTSh2blOc
 U9JcCQTyDZ5/HtB+tthLM5nHOFNwGT7zZS8vHXKN9nyRFp3E5GjfaOpCQ
 pTG12xX78VlzcKEESEB0GdNsLsAFd3gcpeACyhQxksCJ+1ctizRCv3bmj
 7Xq62MgBD1L59qcUluODnsJrYaYaesaeY1Nbbf4op2dfkhKWDmWJTYg09
 /uSIt68JPiL4/HsXd1XG+qTrAt0JsTo8jvPe/JwPakvXj4Pd+OK7eZBXG A==;
X-CSE-ConnectionGUID: npxVpDEYRcWGxKIuU67b1Q==
X-CSE-MsgGUID: FN3mqdfDSim4F7FUqQuZfw==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="52149125"
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="52149125"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 07:21:05 -0800
X-CSE-ConnectionGUID: cX8MRKbUSVWn8Nx0m1TYpw==
X-CSE-MsgGUID: pCLmYUXwQeqMLLDopO4oHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="187073032"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.213])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 07:21:04 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v2 03/10] drm/i915/ltphy: Nuke extraneous timeout debugs
Date: Thu,  6 Nov 2025 17:20:42 +0200
Message-ID: <20251106152049.21115-4-ville.syrjala@linux.intel.com>
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
 drivers/gpu/drm/i915/display/intel_lt_phy.c | 34 ++++++++++-----------
 1 file changed, 16 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index af48d6cde226..8ab632965033 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -1180,8 +1180,8 @@ intel_lt_phy_lane_reset(struct intel_encoder *encoder,
 				 XELPDP_LANE_PCLK_PLL_ACK(0),
 				 XE3PLPD_MACCLK_TURNON_LATENCY_US,
 				 XE3PLPD_MACCLK_TURNON_LATENCY_MS, NULL))
-		drm_warn(display->drm, "PHY %c PLL MacCLK assertion Ack not done after %dus.\n",
-			 phy_name(phy), XE3PLPD_MACCLK_TURNON_LATENCY_MS * 1000);
+		drm_warn(display->drm, "PHY %c PLL MacCLK assertion ack not done\n",
+			 phy_name(phy));
 
 	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, port),
 		     XELPDP_FORWARD_CLOCK_UNGATE,
@@ -1193,15 +1193,14 @@ intel_lt_phy_lane_reset(struct intel_encoder *encoder,
 	if (intel_de_wait_custom(display, XELPDP_PORT_BUF_CTL2(display, port),
 				 lane_phy_current_status, 0,
 				 XE3PLPD_RESET_END_LATENCY_US, 2, NULL))
-		drm_warn(display->drm,
-			 "PHY %c failed to bring out of Lane reset after %dus.\n",
-			 phy_name(phy), XE3PLPD_RESET_END_LATENCY_US);
+		drm_warn(display->drm, "PHY %c failed to bring out of lane reset\n",
+			 phy_name(phy));
 
 	if (intel_de_wait_custom(display, XELPDP_PORT_BUF_CTL2(display, port),
 				 lane_phy_pulse_status, lane_phy_pulse_status,
 				 XE3PLPD_RATE_CALIB_DONE_LATENCY_US, 0, NULL))
-		drm_warn(display->drm, "PHY %c PLL rate not changed after %dus.\n",
-			 phy_name(phy), XE3PLPD_RATE_CALIB_DONE_LATENCY_US);
+		drm_warn(display->drm, "PHY %c PLL rate not changed\n",
+			 phy_name(phy));
 
 	intel_de_rmw(display, XELPDP_PORT_BUF_CTL2(display, port), lane_phy_pulse_status, 0);
 }
@@ -1654,8 +1653,8 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
 		if (intel_de_wait_custom(display, XELPDP_PORT_CLOCK_CTL(display, port),
 					 XELPDP_LANE_PCLK_PLL_ACK(0), 0,
 					 XE3PLPD_MACCLK_TURNOFF_LATENCY_US, 0, NULL))
-			drm_warn(display->drm, "PHY %c PLL MacCLK Ack deassertion Timeout after %dus.\n",
-				 phy_name(phy), XE3PLPD_MACCLK_TURNOFF_LATENCY_US);
+			drm_warn(display->drm, "PHY %c PLL MacCLK ack deassertion timeout\n",
+				 phy_name(phy));
 
 		/*
 		 * 9. Follow the Display Voltage Frequency Switching - Sequence Before Frequency
@@ -1675,8 +1674,8 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
 					 XELPDP_LANE_PCLK_PLL_ACK(0),
 					 XELPDP_LANE_PCLK_PLL_ACK(0),
 					 XE3PLPD_MACCLK_TURNON_LATENCY_US, 2, NULL))
-			drm_warn(display->drm, "PHY %c PLL MacCLK Ack assertion Timeout after %dus.\n",
-				 phy_name(phy), XE3PLPD_MACCLK_TURNON_LATENCY_US);
+			drm_warn(display->drm, "PHY %c PLL MacCLK ack assertion timeout\n",
+				 phy_name(phy));
 
 		/*
 		 * 13. Ungate the forward clock by setting
@@ -1703,8 +1702,8 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
 		if (intel_de_wait_custom(display, XELPDP_PORT_BUF_CTL2(display, port),
 					 lane_phy_pulse_status, lane_phy_pulse_status,
 					 XE3PLPD_RATE_CALIB_DONE_LATENCY_US, 2, NULL))
-			drm_warn(display->drm, "PHY %c PLL rate not changed after %dus.\n",
-				 phy_name(phy), XE3PLPD_RATE_CALIB_DONE_LATENCY_US);
+			drm_warn(display->drm, "PHY %c PLL rate not changed\n",
+				 phy_name(phy));
 
 		/* 17. SW clears PORT_BUF_CTL2 [PHY Pulse Status]. */
 		intel_de_rmw(display, XELPDP_PORT_BUF_CTL2(display, port),
@@ -1762,9 +1761,8 @@ void intel_lt_phy_pll_disable(struct intel_encoder *encoder)
 				 lane_phy_current_status,
 				 lane_phy_current_status,
 				 XE3PLPD_RESET_START_LATENCY_US, 0, NULL))
-		drm_warn(display->drm,
-			 "PHY %c failed to reset Lane after %dms.\n",
-			 phy_name(phy), XE3PLPD_RESET_START_LATENCY_US);
+		drm_warn(display->drm, "PHY %c failed to reset lane\n",
+			 phy_name(phy));
 
 	/* 4. Clear for PHY pulse status on owned PHY lanes. */
 	intel_de_rmw(display, XELPDP_PORT_BUF_CTL2(display, port),
@@ -1786,8 +1784,8 @@ void intel_lt_phy_pll_disable(struct intel_encoder *encoder)
 	if (intel_de_wait_custom(display, XELPDP_PORT_CLOCK_CTL(display, port),
 				 XELPDP_LANE_PCLK_PLL_ACK(0), 0,
 				 XE3PLPD_MACCLK_TURNOFF_LATENCY_US, 0, NULL))
-		drm_warn(display->drm, "PHY %c PLL MacCLK Ack deassertion Timeout after %dus.\n",
-			 phy_name(phy), XE3PLPD_MACCLK_TURNOFF_LATENCY_US);
+		drm_warn(display->drm, "PHY %c PLL MacCLK ack deassertion timeout\n",
+			 phy_name(phy));
 
 	/*
 	 *  9. Follow the Display Voltage Frequency Switching -
-- 
2.49.1

