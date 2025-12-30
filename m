Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B41B5CE9084
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Dec 2025 09:31:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C8BB10E86D;
	Tue, 30 Dec 2025 08:31:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CWhsLB/L";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C7BC10E86E;
 Tue, 30 Dec 2025 08:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767083513; x=1798619513;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xMxPJbnGflHDISBeS0Jmi8r5kgOwe9W37AREQSYsUls=;
 b=CWhsLB/LzcbojGCP9VCAhuoh4k+rsloahBa/E2zXcYSTS/oUcKEFzzIE
 LZGW049jxTEBatUIJiW69jRvzO26cwOe09pphF0OeCA/inV6eXWqGU0Er
 F/n8+sCVQpyx64LS8kLDMxmcWf7A7oTj4WAH9wu3Mfh1Uytwlo/qoXwrx
 x5x1OT9GIXG7DLVjokTnLXsFt+VeU/4Gtjck8rIOYOIK8uJ/iLgnV7anM
 1stuLviV5VUj7K5MXZOaWVC7x7TZwBSpTDKO5a55OZJz5mswlrrIzqndn
 TJXUxjkF+xMD/2/pLuvahXurAmY6im04AhUgkLb39ma06mj8dnEmMRuVA w==;
X-CSE-ConnectionGUID: K+MWg27HSn+DCdNSj+tviQ==
X-CSE-MsgGUID: PW916EnKRE6yoj9A4gu47Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11656"; a="72298396"
X-IronPort-AV: E=Sophos;i="6.21,188,1763452800"; d="scan'208";a="72298396"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2025 00:31:53 -0800
X-CSE-ConnectionGUID: XVvvK2vhSS2A+D3r6RIo2w==
X-CSE-MsgGUID: xvNTq9u4SgOD9+qCDqQNAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,188,1763452800"; d="scan'208";a="238604444"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa001.jf.intel.com with ESMTP; 30 Dec 2025 00:31:52 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, mika.kahola@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 2/3] drm/i915/cx0: Move step 12 to enable clock hook
Date: Tue, 30 Dec 2025 14:01:41 +0530
Message-Id: <20251230083142.70064-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251230083142.70064-1-suraj.kandpal@intel.com>
References: <20251230083142.70064-1-suraj.kandpal@intel.com>
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

Move the step to toggle powerdown sequence change for HDMI to enable
clock hook where it belongs according to its sequence.
Do the required changes to make that work.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 37 ++++++++++----------
 1 file changed, 19 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index f3baba264e88..5edd293b533b 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -3281,21 +3281,6 @@ static void intel_cx0pll_enable(struct intel_encoder *encoder,
 	 */
 	intel_de_write(display, DDI_CLK_VALFREQ(encoder->port), port_clock);
 
-	/*
-	 * 12. Toggle powerdown if HDMI is enabled on C10 PHY.
-	 *
-	 * Wa_13013502646:
-	 * Fixes: HDMI lane to lane skew violations on C10 display PHYs.
-	 * Workaround: Toggle powerdown value by setting first to P0 and then to P2, for both
-	 * PHY lanes.
-	 */
-	if (!cx0pll_state_is_dp(pll_state) && pll_state->use_c10) {
-		intel_cx0_powerdown_change_sequence(encoder, INTEL_CX0_BOTH_LANES,
-						    XELPDP_P0_STATE_ACTIVE);
-		intel_cx0_powerdown_change_sequence(encoder, INTEL_CX0_BOTH_LANES,
-						    XELPDP_P2_STATE_READY);
-	}
-
 	intel_cx0_phy_transaction_end(encoder, wakeref);
 }
 
@@ -3379,7 +3364,8 @@ static int intel_mtl_tbt_clock_select(struct intel_display *display,
 	}
 }
 
-static void intel_cx0pll_enable_clock(struct intel_encoder *encoder)
+static void intel_cx0pll_enable_clock(struct intel_encoder *encoder,
+				      const struct intel_cx0pll_state *pll_state)
 {
 	struct intel_display *display = to_intel_display(encoder);
 	enum phy phy = intel_encoder_to_phy(encoder);
@@ -3412,6 +3398,21 @@ static void intel_cx0pll_enable_clock(struct intel_encoder *encoder)
 	 * Frequency Change. We handle this step in bxt_set_cdclk().
 	 */
 
+	/*
+	 * 12. Toggle powerdown if HDMI is enabled on C10 PHY.
+	 *
+	 * Wa_13013502646:
+	 * Fixes: HDMI lane to lane skew violations on C10 display PHYs.
+	 * Workaround: Toggle powerdown value by setting first to P0 and then to P2, for both
+	 * PHY lanes.
+	 */
+	if (!cx0pll_state_is_dp(pll_state) && pll_state->use_c10) {
+		intel_cx0_powerdown_change_sequence(encoder, INTEL_CX0_BOTH_LANES,
+						    XELPDP_P0_STATE_ACTIVE);
+		intel_cx0_powerdown_change_sequence(encoder, INTEL_CX0_BOTH_LANES,
+						    XELPDP_P2_STATE_READY);
+	}
+
 	intel_cx0_phy_transaction_end(encoder, wakeref);
 }
 
@@ -3485,7 +3486,7 @@ void intel_mtl_pll_enable_clock(struct intel_encoder *encoder,
 	if (intel_tc_port_in_tbt_alt_mode(dig_port))
 		intel_mtl_tbt_pll_enable_clock(encoder, crtc_state->port_clock);
 	else
-		intel_cx0pll_enable_clock(encoder);
+		intel_cx0pll_enable_clock(encoder, &crtc_state->dpll_hw_state.cx0pll);
 }
 
 /*
@@ -3808,7 +3809,7 @@ void intel_cx0_pll_power_save_wa(struct intel_display *display)
 			    encoder->base.base.id, encoder->base.name);
 
 		intel_cx0pll_enable(encoder, &pll_state);
-		intel_cx0pll_enable_clock(encoder);
+		intel_cx0pll_enable_clock(encoder, &pll_state);
 		intel_cx0pll_disable(encoder);
 		intel_cx0pll_disable_clock(encoder);
 	}
-- 
2.34.1

