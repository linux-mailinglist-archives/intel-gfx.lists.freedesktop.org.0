Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C68C7C48540
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Nov 2025 18:28:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A0B910E499;
	Mon, 10 Nov 2025 17:28:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gvFeHS54";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5373510E490;
 Mon, 10 Nov 2025 17:28:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762795724; x=1794331724;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=krJPtyYawong9cQ0e/cRkNsGvGr2bKrnEsJ842DosJw=;
 b=gvFeHS54dTmMrflrjbXf6zN7NJGT68tr4jeVOwmP+8wY1/lrKFGx7Jqi
 pJBOO5vHbVGNxpEpMxSqN4YAePpPTXxkkHzTiJXVpLyFCtOALrEqns09G
 QuMj0YuirX3Y+gzIXPWvR3c0djubOUa2Zbd1sDNzhI6ijMsST0tRen64+
 +reTxMcIxv6kZ5vQvl2JO0mxz0CB8iBmgTi5Ohd/tJ6WRlGH/U6zxixQF
 e3TBSAGtW93Jqjfz4hWpAs40nrQtfRIg/U2BtH+QBNIo4BG+BWPzaQyFY
 1vHuqnRBP7Am7BwAeuSGn85hFh9gU4Vv3NcC52M9bpkYkMMLdZNvtee6A w==;
X-CSE-ConnectionGUID: ld2Oh/eRQwOZXdh8f2thJg==
X-CSE-MsgGUID: UHjVcxkSTr6nrkIRzVClAA==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="82248292"
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; d="scan'208";a="82248292"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 09:28:44 -0800
X-CSE-ConnectionGUID: cSVrSzQaR3KpWG2GVPxZGQ==
X-CSE-MsgGUID: 4A1i475iTxi2XXNSvWJhVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; d="scan'208";a="188368408"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.30])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 09:28:43 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 10/16] drm/i915/de: Use intel_de_wait_for_{set,clear}_ms()
Date: Mon, 10 Nov 2025 19:27:49 +0200
Message-ID: <20251110172756.2132-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251110172756.2132-1-ville.syrjala@linux.intel.com>
References: <20251110172756.2132-1-ville.syrjala@linux.intel.com>
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

Use intel_de_wait_for_{set,clear}_ms() instead of
intel_de_wait_ms() where appropriate.

Done with cocci (with manual formatting fixes):
@@
identifier func !~ "intel_de_wait_for";
expression display, reg, mask, timeout_ms;
@@
func(...)
{
<...
(
- intel_de_wait_ms(display, reg, mask, mask, timeout_ms, NULL)
+ intel_de_wait_for_set_ms(display, reg, mask, timeout_ms)
|
- intel_de_wait_ms(display, reg, mask, 0, timeout_ms, NULL)
+ intel_de_wait_for_clear_ms(display, reg, mask, timeout_ms)
)
...>
}

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c |  6 ++--
 drivers/gpu/drm/i915/display/intel_lt_phy.c  | 30 ++++++++++----------
 2 files changed, 18 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 68e9009d2556..d98b4cf6b60e 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2826,9 +2826,9 @@ void intel_cx0_powerdown_change_sequence(struct intel_encoder *encoder,
 		     intel_cx0_get_powerdown_update(lane_mask));
 
 	/* Update Timeout Value */
-	if (intel_de_wait_ms(display, buf_ctl2_reg,
-			     intel_cx0_get_powerdown_update(lane_mask), 0,
-			     XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_MS, NULL))
+	if (intel_de_wait_for_clear_ms(display, buf_ctl2_reg,
+				       intel_cx0_get_powerdown_update(lane_mask),
+				       XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_MS))
 		drm_warn(display->drm,
 			 "PHY %c failed to bring out of lane reset\n",
 			 phy_name(phy));
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index ac6ff183bc97..bebd7488aab9 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -1201,9 +1201,9 @@ intel_lt_phy_lane_reset(struct intel_encoder *encoder,
 		     XELPDP_LANE_PCLK_PLL_REQUEST(0),
 		     XELPDP_LANE_PCLK_PLL_REQUEST(0));
 
-	if (intel_de_wait_ms(display, XELPDP_PORT_CLOCK_CTL(display, port),
-			     XELPDP_LANE_PCLK_PLL_ACK(0), XELPDP_LANE_PCLK_PLL_ACK(0),
-			     XE3PLPD_MACCLK_TURNON_LATENCY_MS, NULL))
+	if (intel_de_wait_for_set_ms(display, XELPDP_PORT_CLOCK_CTL(display, port),
+				     XELPDP_LANE_PCLK_PLL_ACK(0),
+				     XE3PLPD_MACCLK_TURNON_LATENCY_MS))
 		drm_warn(display->drm, "PHY %c PLL MacCLK assertion ack not done\n",
 			 phy_name(phy));
 
@@ -1214,15 +1214,15 @@ intel_lt_phy_lane_reset(struct intel_encoder *encoder,
 	intel_de_rmw(display, XELPDP_PORT_BUF_CTL2(display, port),
 		     lane_pipe_reset | lane_phy_pulse_status, 0);
 
-	if (intel_de_wait_ms(display, XELPDP_PORT_BUF_CTL2(display, port),
-			     lane_phy_current_status, 0,
-			     XE3PLPD_RESET_END_LATENCY_MS, NULL))
+	if (intel_de_wait_for_clear_ms(display, XELPDP_PORT_BUF_CTL2(display, port),
+				       lane_phy_current_status,
+				       XE3PLPD_RESET_END_LATENCY_MS))
 		drm_warn(display->drm, "PHY %c failed to bring out of lane reset\n",
 			 phy_name(phy));
 
-	if (intel_de_wait_ms(display, XELPDP_PORT_BUF_CTL2(display, port),
-			     lane_phy_pulse_status, lane_phy_pulse_status,
-			     XE3PLPD_RATE_CALIB_DONE_LATENCY_MS, NULL))
+	if (intel_de_wait_for_set_ms(display, XELPDP_PORT_BUF_CTL2(display, port),
+				     lane_phy_pulse_status,
+				     XE3PLPD_RATE_CALIB_DONE_LATENCY_MS))
 		drm_warn(display->drm, "PHY %c PLL rate not changed\n",
 			 phy_name(phy));
 
@@ -2001,9 +2001,9 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
 			     XELPDP_LANE_PCLK_PLL_REQUEST(0));
 
 		/* 12. Poll for PORT_CLOCK_CTL[PCLK PLL Ack LN0]= 1. */
-		if (intel_de_wait_ms(display, XELPDP_PORT_CLOCK_CTL(display, port),
-				     XELPDP_LANE_PCLK_PLL_ACK(0), XELPDP_LANE_PCLK_PLL_ACK(0),
-				     XE3PLPD_MACCLK_TURNON_LATENCY_MS, NULL))
+		if (intel_de_wait_for_set_ms(display, XELPDP_PORT_CLOCK_CTL(display, port),
+					     XELPDP_LANE_PCLK_PLL_ACK(0),
+					     XE3PLPD_MACCLK_TURNON_LATENCY_MS))
 			drm_warn(display->drm, "PHY %c PLL MacCLK ack assertion timeout\n",
 				 phy_name(phy));
 
@@ -2029,9 +2029,9 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
 				   rate_update, MB_WRITE_COMMITTED);
 
 		/* 16. Poll for PORT_BUF_CTL2 register PHY Pulse Status = 1 for Owned PHY Lanes. */
-		if (intel_de_wait_ms(display, XELPDP_PORT_BUF_CTL2(display, port),
-				     lane_phy_pulse_status, lane_phy_pulse_status,
-				     XE3PLPD_RATE_CALIB_DONE_LATENCY_MS, NULL))
+		if (intel_de_wait_for_set_ms(display, XELPDP_PORT_BUF_CTL2(display, port),
+					     lane_phy_pulse_status,
+					     XE3PLPD_RATE_CALIB_DONE_LATENCY_MS))
 			drm_warn(display->drm, "PHY %c PLL rate not changed\n",
 				 phy_name(phy));
 
-- 
2.49.1

