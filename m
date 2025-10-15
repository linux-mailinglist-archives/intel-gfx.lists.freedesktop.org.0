Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9709EBDC680
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 06:08:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D54A110E6EE;
	Wed, 15 Oct 2025 04:08:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UCMYWb40";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 266A310E6EE;
 Wed, 15 Oct 2025 04:08:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760501311; x=1792037311;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=b/DZeDJ50KgjBFm7oPpfhLKS042zAuDkglJzsOFSqu8=;
 b=UCMYWb40xox9KLIctkhnh7smwGw2toewkoMyDuIKdeFsYmnKI1EUDv0x
 MfdshFD/foaVvjyIKmYnLrcinx4HEFZ0hbTF7win25WGSNBE5w8tDR2XD
 MzSih7rKEztLNQEgQHUZg0ZsCcB7OonFCcLSnOjL0BbHgSJwGXX6wkA6H
 SD80kCrK9XQPePXzDiNvDxm1vAZfeDGTdjc1EEo49L10lsqWZ0TScC5MV
 HJiRNeG0RFcIy29keS+FDGxPITODymsjPhjn4GcbFg9yfwJcQaiqYekuU
 aMQWtu95I+sICOvX9NOwFU1bThEi3XEn5mE/wLTs0oz8L16Uk7gkqypRe A==;
X-CSE-ConnectionGUID: P+31X14YQN264teHItrOqw==
X-CSE-MsgGUID: FY47Th/DT0mPC3jRr4N2Fw==
X-IronPort-AV: E=McAfee;i="6800,10657,11582"; a="66318943"
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="66318943"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 21:08:31 -0700
X-CSE-ConnectionGUID: efcWYOBERYKVsRBSHdgRFQ==
X-CSE-MsgGUID: k6Sfv3tuQmqFInqqtW96zQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="219196087"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa001.jf.intel.com with ESMTP; 14 Oct 2025 21:08:29 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, uma.shankar@intel.com,
 gustavo.sousa@intel.com, lucas.demarchi@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 02/25] drm/i915/cx0: Change register bit naming for powerdown
 values
Date: Wed, 15 Oct 2025 09:37:54 +0530
Message-Id: <20251015040817.3431297-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251015040817.3431297-1-suraj.kandpal@intel.com>
References: <20251015040817.3431297-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
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

Change the register bit naming for powerdown values from CX0 to
XELPDP so that it can be used with LT Phy too.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c      | 14 +++++++-------
 drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h | 10 +++++-----
 2 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index a2d2cecf7121..6d9ebc8717ba 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2850,11 +2850,11 @@ static void intel_cx0_setup_powerdown(struct intel_encoder *encoder)
 
 	intel_de_rmw(display, XELPDP_PORT_BUF_CTL2(display, port),
 		     XELPDP_POWER_STATE_READY_MASK,
-		     XELPDP_POWER_STATE_READY(CX0_P2_STATE_READY));
+		     XELPDP_POWER_STATE_READY(XELPDP_P2_STATE_READY));
 	intel_de_rmw(display, XELPDP_PORT_BUF_CTL3(display, port),
 		     XELPDP_POWER_STATE_ACTIVE_MASK |
 		     XELPDP_PLL_LANE_STAGGERING_DELAY_MASK,
-		     XELPDP_POWER_STATE_ACTIVE(CX0_P0_STATE_ACTIVE) |
+		     XELPDP_POWER_STATE_ACTIVE(XELPDP_P0_STATE_ACTIVE) |
 		     XELPDP_PLL_LANE_STAGGERING_DELAY(0));
 }
 
@@ -2927,7 +2927,7 @@ static void intel_cx0_phy_lane_reset(struct intel_encoder *encoder,
 			 phy_name(phy), XELPDP_REFCLK_ENABLE_TIMEOUT_US);
 
 	intel_cx0_powerdown_change_sequence(encoder, INTEL_CX0_BOTH_LANES,
-					    CX0_P2_STATE_RESET);
+					    XELPDP_P2_STATE_RESET);
 	intel_cx0_setup_powerdown(encoder);
 
 	intel_de_rmw(display, XELPDP_PORT_BUF_CTL2(display, port), lane_pipe_reset, 0);
@@ -3032,7 +3032,7 @@ static void __intel_cx0pll_enable(struct intel_encoder *encoder,
 	 * TODO: For DP alt mode use only one lane.
 	 */
 	intel_cx0_powerdown_change_sequence(encoder, INTEL_CX0_BOTH_LANES,
-					    CX0_P2_STATE_READY);
+					    XELPDP_P2_STATE_READY);
 
 	/*
 	 * 4. Program PORT_MSGBUS_TIMER register's Message Bus Timer field to 0xA000.
@@ -3273,13 +3273,13 @@ static u8 cx0_power_control_disable_val(struct intel_encoder *encoder)
 	struct intel_display *display = to_intel_display(encoder);
 
 	if (intel_encoder_is_c10phy(encoder))
-		return CX0_P2PG_STATE_DISABLE;
+		return XELPDP_P2PG_STATE_DISABLE;
 
 	if ((display->platform.battlemage && encoder->port == PORT_A) ||
 	    (DISPLAY_VER(display) >= 30 && encoder->type == INTEL_OUTPUT_EDP))
-		return CX0_P2PG_STATE_DISABLE;
+		return XELPDP_P2PG_STATE_DISABLE;
 
-	return CX0_P4PG_STATE_DISABLE;
+	return XELPDP_P4PG_STATE_DISABLE;
 }
 
 static void intel_cx0pll_disable(struct intel_encoder *encoder)
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
index 77eae1d845f7..18b91c23d547 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
@@ -149,11 +149,11 @@
 #define   XELPDP_PLL_LANE_STAGGERING_DELAY(val)		REG_FIELD_PREP(XELPDP_PLL_LANE_STAGGERING_DELAY_MASK, val)
 #define   XELPDP_POWER_STATE_ACTIVE_MASK		REG_GENMASK(3, 0)
 #define   XELPDP_POWER_STATE_ACTIVE(val)		REG_FIELD_PREP(XELPDP_POWER_STATE_ACTIVE_MASK, val)
-#define   CX0_P0_STATE_ACTIVE				0x0
-#define   CX0_P2_STATE_READY				0x2
-#define   CX0_P2PG_STATE_DISABLE			0x9
-#define   CX0_P4PG_STATE_DISABLE			0xC
-#define   CX0_P2_STATE_RESET				0x2
+#define   XELPDP_P0_STATE_ACTIVE			0x0
+#define   XELPDP_P2_STATE_READY				0x2
+#define   XELPDP_P2PG_STATE_DISABLE			0x9
+#define   XELPDP_P4PG_STATE_DISABLE			0xC
+#define   XELPDP_P2_STATE_RESET				0x2
 
 #define _XELPDP_PORT_MSGBUS_TIMER_LN0_A			0x640d8
 #define _XELPDP_PORT_MSGBUS_TIMER_LN0_B			0x641d8
-- 
2.34.1

