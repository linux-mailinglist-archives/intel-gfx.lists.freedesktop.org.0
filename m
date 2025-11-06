Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70379C3C027
	for <lists+intel-gfx@lfdr.de>; Thu, 06 Nov 2025 16:21:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5469610E92D;
	Thu,  6 Nov 2025 15:21:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ccro+ZPv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA7A510E92D;
 Thu,  6 Nov 2025 15:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762442486; x=1793978486;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CFkuqCxF4/W3p5iy4gMa7DfbUvYBMqGskmlwLmtPal4=;
 b=ccro+ZPvafZpkEBUSNONsyZ4QSoRFZnkuLCoQB84XshYJo9ehOO84vRq
 H4PIILPlx5MHPa0acbdT2/L5yyVf68N27ZQhVmWcj3fK55fsnarRu2mo9
 Lot/nnCKWkuRLzftDEodaGxfAoaYxTZyMNeGJkhjoIw5KDYJtMmzlwANW
 XvJOdYxdPM4Ao2pZCDTBrlnRepupLPCc2ZNoKWSku8rzwREh/HzRNqacZ
 7rVOthOTLSgH9w0mOlPk6s+u3QSh3+EoMRATy/vwntSVO4h6aOHWsb4f2
 dsve22z9eyCaP/scc4ADvf/HQXwHBGAdKXkuAuVrCetrA9AL+/zizuGBa Q==;
X-CSE-ConnectionGUID: qM5jNPFmTUSWLvzr/In4Hg==
X-CSE-MsgGUID: 0UMqSW/uRuiKGqDDBhXaEQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="75269356"
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="75269356"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 07:21:25 -0800
X-CSE-ConnectionGUID: gcNITBzeRyiCypGeSRciog==
X-CSE-MsgGUID: JgthZM0dT26aABAE6OkIfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="192058773"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.213])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 07:21:23 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v2 08/10] drm/i915/ltphy: Nuke bogus weird timeouts
Date: Thu,  6 Nov 2025 17:20:47 +0200
Message-ID: <20251106152049.21115-9-ville.syrjala@linux.intel.com>
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

The LT PHY code is abusing intel_de_wait_custom() in all kinds of weird
ways. Get rid of the weird fast timeouts, and just use the slow ones.
For consistency with intel_wait_for_register() we'll stick to the
default 2 usec fast timeout for all cases.

Someone really needs to properly document where all these magic numbers
came from...

This will let us eventually nuke intel_de_wait_custom() and convert
over to poll_timeout_us().

v2: Go for the longer (ms) timeout in case it actually matters

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_lt_phy.c      | 11 +++++------
 drivers/gpu/drm/i915/display/intel_lt_phy_regs.h |  7 +++----
 2 files changed, 8 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index ff5af9c25e6d..cd4ac9679fc9 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -1178,8 +1178,7 @@ intel_lt_phy_lane_reset(struct intel_encoder *encoder,
 	if (intel_de_wait_custom(display, XELPDP_PORT_CLOCK_CTL(display, port),
 				 XELPDP_LANE_PCLK_PLL_ACK(0),
 				 XELPDP_LANE_PCLK_PLL_ACK(0),
-				 XE3PLPD_MACCLK_TURNON_LATENCY_US,
-				 XE3PLPD_MACCLK_TURNON_LATENCY_MS, NULL))
+				 2, XE3PLPD_MACCLK_TURNON_LATENCY_MS, NULL))
 		drm_warn(display->drm, "PHY %c PLL MacCLK assertion ack not done\n",
 			 phy_name(phy));
 
@@ -1192,13 +1191,13 @@ intel_lt_phy_lane_reset(struct intel_encoder *encoder,
 
 	if (intel_de_wait_custom(display, XELPDP_PORT_BUF_CTL2(display, port),
 				 lane_phy_current_status, 0,
-				 XE3PLPD_RESET_END_LATENCY_US, 2, NULL))
+				 2, XE3PLPD_RESET_END_LATENCY_MS, NULL))
 		drm_warn(display->drm, "PHY %c failed to bring out of lane reset\n",
 			 phy_name(phy));
 
 	if (intel_de_wait_custom(display, XELPDP_PORT_BUF_CTL2(display, port),
 				 lane_phy_pulse_status, lane_phy_pulse_status,
-				 XE3PLPD_RATE_CALIB_DONE_LATENCY_US, 0, NULL))
+				 2, XE3PLPD_RATE_CALIB_DONE_LATENCY_MS, NULL))
 		drm_warn(display->drm, "PHY %c PLL rate not changed\n",
 			 phy_name(phy));
 
@@ -1673,7 +1672,7 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
 		if (intel_de_wait_custom(display, XELPDP_PORT_CLOCK_CTL(display, port),
 					 XELPDP_LANE_PCLK_PLL_ACK(0),
 					 XELPDP_LANE_PCLK_PLL_ACK(0),
-					 XE3PLPD_MACCLK_TURNON_LATENCY_US, 2, NULL))
+					 2, XE3PLPD_MACCLK_TURNON_LATENCY_MS, NULL))
 			drm_warn(display->drm, "PHY %c PLL MacCLK ack assertion timeout\n",
 				 phy_name(phy));
 
@@ -1701,7 +1700,7 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
 		/* 16. Poll for PORT_BUF_CTL2 register PHY Pulse Status = 1 for Owned PHY Lanes. */
 		if (intel_de_wait_custom(display, XELPDP_PORT_BUF_CTL2(display, port),
 					 lane_phy_pulse_status, lane_phy_pulse_status,
-					 XE3PLPD_RATE_CALIB_DONE_LATENCY_US, 2, NULL))
+					 2, XE3PLPD_RATE_CALIB_DONE_LATENCY_MS, NULL))
 			drm_warn(display->drm, "PHY %c PLL rate not changed\n",
 				 phy_name(phy));
 
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h b/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
index 9223487d764e..c00a7a8a68dc 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
@@ -7,13 +7,12 @@
 #define __INTEL_LT_PHY_REGS_H__
 
 #define XE3PLPD_MSGBUS_TIMEOUT_FAST_US	500
-#define XE3PLPD_MACCLK_TURNON_LATENCY_MS	1
-#define XE3PLPD_MACCLK_TURNON_LATENCY_US	21
+#define XE3PLPD_MACCLK_TURNON_LATENCY_MS	2
 #define XE3PLPD_MACCLK_TURNOFF_LATENCY_US	1
-#define XE3PLPD_RATE_CALIB_DONE_LATENCY_US	50
+#define XE3PLPD_RATE_CALIB_DONE_LATENCY_MS	1
 #define XE3PLPD_RESET_START_LATENCY_US	10
 #define XE3PLPD_PWRDN_TO_RDY_LATENCY_US	4
-#define XE3PLPD_RESET_END_LATENCY_US		200
+#define XE3PLPD_RESET_END_LATENCY_MS		2
 
 /* LT Phy MAC Register */
 #define LT_PHY_MAC_VDR			_MMIO(0xC00)
-- 
2.49.1

