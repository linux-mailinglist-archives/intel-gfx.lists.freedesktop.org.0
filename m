Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46C3CA7A2B3
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Apr 2025 14:21:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5614910E98F;
	Thu,  3 Apr 2025 12:21:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Cofsc1Q7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5524410E23E
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Apr 2025 12:21:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743682905; x=1775218905;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cxO+3xAF5+Y32qvQ41BIvGkDhnlyG3xaTsn8C7IkZ4w=;
 b=Cofsc1Q75ubwcpKH7AACW9IeAqYDAp2vRBKMwO/ZFM2Gvvv/arHOUE24
 VNY1SM2vdgrrtBLYBPrf9nyEYLZQUkjyiXCThY9mjPYkodtLO7PkcgBT1
 ZXqcuwNIYJPOfRrOQR/jj3sJgthV5dd2rGTPqe/vWbr0fM1xtj6xnrG4N
 3z//09h0amVS5LLs4OzKJ481mEEik/mpMFuGYPHEQHtmgSMPcLSMgljic
 RBEVVKxOzrrdZJCbK+fSVqCzG9g99Qst0NwocsbM7uk2DiONZv8Y9sC6q
 aqJBD2T1s+cnNAvs7k6io7xFpf+/xS+7xOmEBXLNzhaqSnMwFnRVBjzPF w==;
X-CSE-ConnectionGUID: xRb0UR49QqywfVlW2p7lCw==
X-CSE-MsgGUID: OvFuVWA7SdKJ8kdVBe5w2g==
X-IronPort-AV: E=McAfee;i="6700,10204,11393"; a="47804511"
X-IronPort-AV: E=Sophos;i="6.15,184,1739865600"; d="scan'208";a="47804511"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2025 05:21:44 -0700
X-CSE-ConnectionGUID: n9hHPGqBSfqsrWa6BVzu8Q==
X-CSE-MsgGUID: 8ohjSWvLSPOtp42dtsCqHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,184,1739865600"; d="scan'208";a="126764515"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2025 05:21:44 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/2] drm/i915/dsi: separate clock and data lane prepare timing
Date: Thu,  3 Apr 2025 15:21:33 +0300
Message-Id: <079a26d0aae79f299aee0397dad2d6519cd55071.1743682608.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1743682608.git.jani.nikula@intel.com>
References: <cover.1743682608.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

The history of why the max of VBT clock and data lane prepare timing
parameter is used for both instead of each individually is
unknown. Separate them to follow what the Windows driver does.

Cc; William Tseng <william.tseng@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index b69c713fb79a..bb09b0220c1a 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1842,15 +1842,12 @@ static void icl_dphy_param_init(struct intel_dsi *intel_dsi)
 	struct mipi_config *mipi_config = connector->panel.vbt.dsi.config;
 	u32 tlpx_ns;
 	u32 prepare_cnt, exit_zero_cnt, clk_zero_cnt;
-	u32 ths_prepare_ns;
+	u32 ths_prepare_esc_clk;
 	u32 hs_zero_cnt;
 	u32 tclk_pre_cnt;
 
 	tlpx_ns = intel_dsi_tlpx_ns(intel_dsi);
 
-	ths_prepare_ns = max(mipi_config->ths_prepare,
-			     mipi_config->tclk_prepare);
-
 	/*
 	 * prepare cnt in escape clocks
 	 * this field represents a hexadecimal value with a precision
@@ -1858,7 +1855,7 @@ static void icl_dphy_param_init(struct intel_dsi *intel_dsi)
 	 * and the least significant 2 bits are fraction bits.
 	 * so, the field can represent a range of 0.25 to 1.75
 	 */
-	prepare_cnt = DIV_ROUND_UP(ths_prepare_ns * 4, tlpx_ns);
+	prepare_cnt = DIV_ROUND_UP(mipi_config->tclk_prepare * 4, tlpx_ns);
 	if (prepare_cnt > ICL_PREPARE_CNT_MAX) {
 		drm_dbg_kms(display->drm, "prepare_cnt out of range (%d)\n",
 			    prepare_cnt);
@@ -1867,7 +1864,7 @@ static void icl_dphy_param_init(struct intel_dsi *intel_dsi)
 
 	/* clk zero count in escape clocks */
 	clk_zero_cnt = DIV_ROUND_UP(mipi_config->tclk_prepare_clkzero -
-				    ths_prepare_ns, tlpx_ns);
+				    mipi_config->tclk_prepare, tlpx_ns);
 	if (clk_zero_cnt > ICL_CLK_ZERO_CNT_MAX) {
 		drm_dbg_kms(display->drm,
 			    "clk_zero_cnt out of range (%d)\n", clk_zero_cnt);
@@ -1882,9 +1879,12 @@ static void icl_dphy_param_init(struct intel_dsi *intel_dsi)
 		tclk_pre_cnt = ICL_TCLK_PRE_CNT_MAX;
 	}
 
+	ths_prepare_esc_clk = DIV_ROUND_UP(mipi_config->ths_prepare * 4, tlpx_ns);
+	ths_prepare_esc_clk = min(ths_prepare_esc_clk, 7);
+
 	/* hs zero cnt in escape clocks */
 	hs_zero_cnt = DIV_ROUND_UP(mipi_config->ths_prepare_hszero -
-				   ths_prepare_ns, tlpx_ns);
+				   mipi_config->ths_prepare, tlpx_ns);
 	if (hs_zero_cnt > ICL_HS_ZERO_CNT_MAX) {
 		drm_dbg_kms(display->drm, "hs_zero_cnt out of range (%d)\n",
 			    hs_zero_cnt);
@@ -1910,7 +1910,7 @@ static void icl_dphy_param_init(struct intel_dsi *intel_dsi)
 
 	/* data lanes dphy timings */
 	intel_dsi->dphy_data_lane_reg = (HS_PREPARE_OVERRIDE |
-					 HS_PREPARE(prepare_cnt) |
+					 HS_PREPARE(ths_prepare_esc_clk) |
 					 HS_ZERO_OVERRIDE |
 					 HS_ZERO(hs_zero_cnt) |
 					 HS_EXIT_OVERRIDE |
-- 
2.39.5

