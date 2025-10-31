Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 399F7C247DB
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Oct 2025 11:36:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA34C10EB02;
	Fri, 31 Oct 2025 10:36:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c6Eya3zQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A399F10EB00;
 Fri, 31 Oct 2025 10:36:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761907015; x=1793443015;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+tP5mvOLDrwNsIfA9u57VpFEHmPkn9/dNFme8nSv1qY=;
 b=c6Eya3zQjPhqghxsXC9wkLeJ3kv3eNHJCXqVRlTdfhOycnCUP7hvBv/S
 465Lo57id/kk9Y+gjPZPYopiLDHKBYunVqaGyQYdcMW/2npodiKbV9mmm
 fiv0nk+q3ovKy2CGmZgEV6G/JYejR+v1Eacr/lLqeRBLhAut8oGOk7hr9
 xy7zAHdHq8fw20S+ra+srzFXeA5QeBrqx/bNkJ29IKJZUOctIox/2N/aj
 e7zMBh8IOPjbNVDa7w8mqaCn/G62YAwKaL+cqvFwnkUQVzOeNTSN1WEYl
 LgbVYDD4LYbbewlrxPIVT/B4fBFppIZXKYOjpbibGpQwMkj3tkXnQbah6 A==;
X-CSE-ConnectionGUID: qlhFXKpIToas+Xl1KmtBUg==
X-CSE-MsgGUID: txrTME63RTW5+kLsjo62/g==
X-IronPort-AV: E=McAfee;i="6800,10657,11598"; a="86690847"
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="86690847"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 03:36:55 -0700
X-CSE-ConnectionGUID: yHz6mhxjSgGCq3lGkRY2Pw==
X-CSE-MsgGUID: 8BRAB2QFQfaCNGPX4Vw6lw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="190554549"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa005.fm.intel.com with ESMTP; 31 Oct 2025 03:36:52 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, uma.shankar@intel.com,
 gustavo.sousa@intel.com, lucas.demarchi@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v3 02/25] drm/i915/cx0: Change register bit naming for
 powerdown values
Date: Fri, 31 Oct 2025 16:06:20 +0530
Message-Id: <20251031103643.4147868-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251031103643.4147868-1-suraj.kandpal@intel.com>
References: <20251031103643.4147868-1-suraj.kandpal@intel.com>
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
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c      | 14 +++++++-------
 drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h | 10 +++++-----
 2 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index a74c1be225ac..0b02163b545a 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2861,11 +2861,11 @@ static void intel_cx0_setup_powerdown(struct intel_encoder *encoder)
 
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
 
@@ -2938,7 +2938,7 @@ static void intel_cx0_phy_lane_reset(struct intel_encoder *encoder,
 			 phy_name(phy), XELPDP_REFCLK_ENABLE_TIMEOUT_US);
 
 	intel_cx0_powerdown_change_sequence(encoder, INTEL_CX0_BOTH_LANES,
-					    CX0_P2_STATE_RESET);
+					    XELPDP_P2_STATE_RESET);
 	intel_cx0_setup_powerdown(encoder);
 
 	intel_de_rmw(display, XELPDP_PORT_BUF_CTL2(display, port), lane_pipe_reset, 0);
@@ -3043,7 +3043,7 @@ static void __intel_cx0pll_enable(struct intel_encoder *encoder,
 	 * TODO: For DP alt mode use only one lane.
 	 */
 	intel_cx0_powerdown_change_sequence(encoder, INTEL_CX0_BOTH_LANES,
-					    CX0_P2_STATE_READY);
+					    XELPDP_P2_STATE_READY);
 
 	/*
 	 * 4. Program PORT_MSGBUS_TIMER register's Message Bus Timer field to 0xA000.
@@ -3284,13 +3284,13 @@ static u8 cx0_power_control_disable_val(struct intel_encoder *encoder)
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
index 86e2e1c7babf..cd941f16529c 100644
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

