Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 562B5A7A2B5
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Apr 2025 14:21:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D359310E23E;
	Thu,  3 Apr 2025 12:21:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hc3tOQFk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7750410E231
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Apr 2025 12:21:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743682910; x=1775218910;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AO7NPWG6qXQXL5GaVSPcS13hCA0W1tVUSLYRID2Zfxg=;
 b=hc3tOQFkH4bVyRH3VYFTEpwXfYDbQWWJEtgIKUeVw+L+iMW1WCfhC/BO
 wBSesBZ/87UTc8nKy8+Wy24HxU9he+OHdEVj8NTvKFSLjD3jWzMCwBR6K
 YnF1lC5+NIsXCCxHVeMJlmUOaLpybOp6tq7AkSVPEECnx96Yo+ttMunZ1
 FYZlkMf/+zKbZIZGTXlXSor6fF4Bqjxx3HIJDjEeDiod9Ys28jnq4MSa0
 3PgemA27htJOB17BqEGM8by8FR+nfnyQuPhM+XyjjduMgTWYMC+sSww6m
 KCVZckPtqnt8cJMHCJZ3SNlY1F+o4gSqfqORRC6LPb9ozD8Dkpfs2LP8n Q==;
X-CSE-ConnectionGUID: p1EhntaNQPWUvA0iSULOzw==
X-CSE-MsgGUID: 3ZT2Il6GRCK3tTF4tE5cHQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11393"; a="55758220"
X-IronPort-AV: E=Sophos;i="6.15,184,1739865600"; d="scan'208";a="55758220"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2025 05:21:49 -0700
X-CSE-ConnectionGUID: TXd2cmlgQqqKlIVwpLAL3Q==
X-CSE-MsgGUID: VyuNOqcOSyKFsuluV7mHRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,184,1739865600"; d="scan'208";a="127926002"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2025 05:21:48 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	William Tseng <william.tseng@intel.com>
Subject: [PATCH 2/2] drm/i915/dsi: unify naming and simplify checks for dphy
 params
Date: Thu,  3 Apr 2025 15:21:34 +0300
Message-Id: <d1a75ae7b9d93a0b50976b5de45ba2ca798991ad.1743682608.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1743682608.git.jani.nikula@intel.com>
References: <cover.1743682608.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
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

Unify the naming of the data and clock lane timing parameters, and
simplify their bounds checks. Drop the debug messages on out of bounds
parameters as excessive.

Clarify the comment while at it.

Cc: William Tseng <william.tseng@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 82 +++++++-------------------
 1 file changed, 22 insertions(+), 60 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index bb09b0220c1a..ca7033251e91 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1827,94 +1827,56 @@ static const struct mipi_dsi_host_ops gen11_dsi_host_ops = {
 	.transfer = gen11_dsi_host_transfer,
 };
 
-#define ICL_PREPARE_CNT_MAX	0x7
-#define ICL_CLK_ZERO_CNT_MAX	0xf
-#define ICL_TRAIL_CNT_MAX	0x7
-#define ICL_TCLK_PRE_CNT_MAX	0x3
-#define ICL_TCLK_POST_CNT_MAX	0x7
-#define ICL_HS_ZERO_CNT_MAX	0xf
-#define ICL_EXIT_ZERO_CNT_MAX	0x7
-
 static void icl_dphy_param_init(struct intel_dsi *intel_dsi)
 {
-	struct intel_display *display = to_intel_display(&intel_dsi->base);
 	struct intel_connector *connector = intel_dsi->attached_connector;
 	struct mipi_config *mipi_config = connector->panel.vbt.dsi.config;
 	u32 tlpx_ns;
-	u32 prepare_cnt, exit_zero_cnt, clk_zero_cnt;
-	u32 ths_prepare_esc_clk;
-	u32 hs_zero_cnt;
-	u32 tclk_pre_cnt;
+	u32 tclk_prepare_esc_clk, tclk_zero_esc_clk, tclk_pre_esc_clk;
+	u32 ths_prepare_esc_clk, ths_zero_esc_clk, ths_exit_esc_clk;
 
 	tlpx_ns = intel_dsi_tlpx_ns(intel_dsi);
 
 	/*
-	 * prepare cnt in escape clocks
-	 * this field represents a hexadecimal value with a precision
-	 * of 1.2 – i.e. the most significant bit is the integer
-	 * and the least significant 2 bits are fraction bits.
-	 * so, the field can represent a range of 0.25 to 1.75
+	 * The clock and data lane prepare timing parameters are in expressed in
+	 * units of 1/4 escape clocks, and all the other timings parameters in
+	 * escape clocks.
 	 */
-	prepare_cnt = DIV_ROUND_UP(mipi_config->tclk_prepare * 4, tlpx_ns);
-	if (prepare_cnt > ICL_PREPARE_CNT_MAX) {
-		drm_dbg_kms(display->drm, "prepare_cnt out of range (%d)\n",
-			    prepare_cnt);
-		prepare_cnt = ICL_PREPARE_CNT_MAX;
-	}
+	tclk_prepare_esc_clk = DIV_ROUND_UP(mipi_config->tclk_prepare * 4, tlpx_ns);
+	tclk_prepare_esc_clk = min(tclk_prepare_esc_clk, 7);
 
-	/* clk zero count in escape clocks */
-	clk_zero_cnt = DIV_ROUND_UP(mipi_config->tclk_prepare_clkzero -
-				    mipi_config->tclk_prepare, tlpx_ns);
-	if (clk_zero_cnt > ICL_CLK_ZERO_CNT_MAX) {
-		drm_dbg_kms(display->drm,
-			    "clk_zero_cnt out of range (%d)\n", clk_zero_cnt);
-		clk_zero_cnt = ICL_CLK_ZERO_CNT_MAX;
-	}
+	tclk_zero_esc_clk = DIV_ROUND_UP(mipi_config->tclk_prepare_clkzero -
+					 mipi_config->tclk_prepare, tlpx_ns);
+	tclk_zero_esc_clk = min(tclk_zero_esc_clk, 15);
 
-	/* tclk pre count in escape clocks */
-	tclk_pre_cnt = DIV_ROUND_UP(mipi_config->tclk_pre, tlpx_ns);
-	if (tclk_pre_cnt > ICL_TCLK_PRE_CNT_MAX) {
-		drm_dbg_kms(display->drm,
-			    "tclk_pre_cnt out of range (%d)\n", tclk_pre_cnt);
-		tclk_pre_cnt = ICL_TCLK_PRE_CNT_MAX;
-	}
+	tclk_pre_esc_clk = DIV_ROUND_UP(mipi_config->tclk_pre, tlpx_ns);
+	tclk_pre_esc_clk = min(tclk_pre_esc_clk, 3);
 
 	ths_prepare_esc_clk = DIV_ROUND_UP(mipi_config->ths_prepare * 4, tlpx_ns);
 	ths_prepare_esc_clk = min(ths_prepare_esc_clk, 7);
 
-	/* hs zero cnt in escape clocks */
-	hs_zero_cnt = DIV_ROUND_UP(mipi_config->ths_prepare_hszero -
-				   mipi_config->ths_prepare, tlpx_ns);
-	if (hs_zero_cnt > ICL_HS_ZERO_CNT_MAX) {
-		drm_dbg_kms(display->drm, "hs_zero_cnt out of range (%d)\n",
-			    hs_zero_cnt);
-		hs_zero_cnt = ICL_HS_ZERO_CNT_MAX;
-	}
+	ths_zero_esc_clk = DIV_ROUND_UP(mipi_config->ths_prepare_hszero -
+					mipi_config->ths_prepare, tlpx_ns);
+	ths_zero_esc_clk = min(ths_zero_esc_clk, 15);
 
-	/* hs exit zero cnt in escape clocks */
-	exit_zero_cnt = DIV_ROUND_UP(mipi_config->ths_exit, tlpx_ns);
-	if (exit_zero_cnt > ICL_EXIT_ZERO_CNT_MAX) {
-		drm_dbg_kms(display->drm,
-			    "exit_zero_cnt out of range (%d)\n",
-			    exit_zero_cnt);
-		exit_zero_cnt = ICL_EXIT_ZERO_CNT_MAX;
-	}
+	ths_exit_esc_clk = DIV_ROUND_UP(mipi_config->ths_exit, tlpx_ns);
+	ths_exit_esc_clk = min(ths_exit_esc_clk, 7);
 
 	/* clock lane dphy timings */
 	intel_dsi->dphy_reg = (CLK_PREPARE_OVERRIDE |
-			       CLK_PREPARE(prepare_cnt) |
+			       CLK_PREPARE(tclk_prepare_esc_clk) |
 			       CLK_ZERO_OVERRIDE |
-			       CLK_ZERO(clk_zero_cnt) |
+			       CLK_ZERO(tclk_zero_esc_clk) |
 			       CLK_PRE_OVERRIDE |
-			       CLK_PRE(tclk_pre_cnt));
+			       CLK_PRE(tclk_pre_esc_clk));
 
 	/* data lanes dphy timings */
 	intel_dsi->dphy_data_lane_reg = (HS_PREPARE_OVERRIDE |
 					 HS_PREPARE(ths_prepare_esc_clk) |
 					 HS_ZERO_OVERRIDE |
-					 HS_ZERO(hs_zero_cnt) |
+					 HS_ZERO(ths_zero_esc_clk) |
 					 HS_EXIT_OVERRIDE |
-					 HS_EXIT(exit_zero_cnt));
+					 HS_EXIT(ths_exit_esc_clk));
 
 	intel_dsi_log_params(intel_dsi);
 }
-- 
2.39.5

