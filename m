Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDD37BAFAC3
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 10:38:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B5C410E6B8;
	Wed,  1 Oct 2025 08:38:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Gb8dSDR1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60BCD10E6B6;
 Wed,  1 Oct 2025 08:38:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759307926; x=1790843926;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4FoewnlYGerOajMZnAx/NTgrmzCHISXHMT56xUXexDE=;
 b=Gb8dSDR1ENuSO5KHUbDFRcDk/v/fciHndnjqB+tHu6Nt6+6NW1ZwbhIq
 C9KGVSrTdxglMkzIyd4QQLszlK7ZAYZXJMs/BGxThaozp9HPVoZzwMMEZ
 zMg2NxbzVsPs0Oh8pvrHw1CeQwBmDQxC+4WBwRBAj0Ar2AzKiFX6t6qPN
 DW42J3IAVnYH570bByH33dTORvCnciFFG4cFa5xV4lPc0T/5xRhYEXu1z
 D5RkRVgxRpFn4hm3Z34U7Y7eIQ4+gZzFPr8+zKOPMuhauQ4IwR2efbtVr
 TEWf+ppvGs5lXvfIRbU819i2EwwroGuFThfyTwsmi3KoTfe6Zqfv/mjTL A==;
X-CSE-ConnectionGUID: Pdsn+KGuRDGkrAPswMDQ0A==
X-CSE-MsgGUID: cJdPina8Q7yxW44GR8+6GQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="61742708"
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="61742708"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 01:38:46 -0700
X-CSE-ConnectionGUID: kUsOaIDQT8iJgXUqwJoPfQ==
X-CSE-MsgGUID: x10xVkaTSWKb8dMI9MGJVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="179142527"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa008.fm.intel.com with ESMTP; 01 Oct 2025 01:38:43 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [RFC PATCH 08/39] drm/i915/display: Rename TBT functions to be ICL
 specific
Date: Wed,  1 Oct 2025 11:28:08 +0300
Message-Id: <20251001082839.2585559-9-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251001082839.2585559-1-mika.kahola@intel.com>
References: <20251001082839.2585559-1-mika.kahola@intel.com>
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

Rename pll functions to include ICL platform as these are
used from ICL onwards.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 30 +++++++++----------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 8ea96cc524a1..303f03b420ae 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -3754,9 +3754,9 @@ static bool combo_pll_get_hw_state(struct intel_display *display,
 	return icl_pll_get_hw_state(display, pll, dpll_hw_state, enable_reg);
 }
 
-static bool tbt_pll_get_hw_state(struct intel_display *display,
-				 struct intel_dpll *pll,
-				 struct intel_dpll_hw_state *dpll_hw_state)
+static bool icl_tbt_pll_get_hw_state(struct intel_display *display,
+				     struct intel_dpll *pll,
+				     struct intel_dpll_hw_state *dpll_hw_state)
 {
 	return icl_pll_get_hw_state(display, pll, dpll_hw_state, TBT_PLL_ENABLE);
 }
@@ -3985,9 +3985,9 @@ static void combo_pll_enable(struct intel_display *display,
 	/* DVFS post sequence would be here. See the comment above. */
 }
 
-static void tbt_pll_enable(struct intel_display *display,
-			   struct intel_dpll *pll,
-			   const struct intel_dpll_hw_state *dpll_hw_state)
+static void icl_tbt_pll_enable(struct intel_display *display,
+			       struct intel_dpll *pll,
+			       const struct intel_dpll_hw_state *dpll_hw_state)
 {
 	const struct icl_dpll_hw_state *hw_state = &dpll_hw_state->icl;
 
@@ -4070,8 +4070,8 @@ static void combo_pll_disable(struct intel_display *display,
 	icl_pll_disable(display, pll, enable_reg);
 }
 
-static void tbt_pll_disable(struct intel_display *display,
-			    struct intel_dpll *pll)
+static void icl_tbt_pll_disable(struct intel_display *display,
+				struct intel_dpll *pll)
 {
 	icl_pll_disable(display, pll, TBT_PLL_ENABLE);
 }
@@ -4143,10 +4143,10 @@ static const struct intel_dpll_funcs combo_pll_funcs = {
 	.get_freq = icl_ddi_combo_pll_get_freq,
 };
 
-static const struct intel_dpll_funcs tbt_pll_funcs = {
-	.enable = tbt_pll_enable,
-	.disable = tbt_pll_disable,
-	.get_hw_state = tbt_pll_get_hw_state,
+static const struct intel_dpll_funcs icl_tbt_pll_funcs = {
+	.enable = icl_tbt_pll_enable,
+	.disable = icl_tbt_pll_disable,
+	.get_hw_state = icl_tbt_pll_get_hw_state,
 	.get_freq = icl_ddi_tbt_pll_get_freq,
 };
 
@@ -4160,7 +4160,7 @@ static const struct intel_dpll_funcs mg_pll_funcs = {
 static const struct dpll_info icl_plls[] = {
 	{ .name = "DPLL 0", .funcs = &combo_pll_funcs, .id = DPLL_ID_ICL_DPLL0, },
 	{ .name = "DPLL 1", .funcs = &combo_pll_funcs, .id = DPLL_ID_ICL_DPLL1, },
-	{ .name = "TBT PLL", .funcs = &tbt_pll_funcs, .id = DPLL_ID_ICL_TBTPLL,
+	{ .name = "TBT PLL", .funcs = &icl_tbt_pll_funcs, .id = DPLL_ID_ICL_TBTPLL,
 	  .is_alt_port_dpll = true, },
 	{ .name = "MG PLL 1", .funcs = &mg_pll_funcs, .id = DPLL_ID_ICL_MGPLL1, },
 	{ .name = "MG PLL 2", .funcs = &mg_pll_funcs, .id = DPLL_ID_ICL_MGPLL2, },
@@ -4208,7 +4208,7 @@ static const struct intel_dpll_funcs dkl_pll_funcs = {
 static const struct dpll_info tgl_plls[] = {
 	{ .name = "DPLL 0", .funcs = &combo_pll_funcs, .id = DPLL_ID_ICL_DPLL0, },
 	{ .name = "DPLL 1", .funcs = &combo_pll_funcs, .id = DPLL_ID_ICL_DPLL1, },
-	{ .name = "TBT PLL", .funcs = &tbt_pll_funcs, .id = DPLL_ID_ICL_TBTPLL,
+	{ .name = "TBT PLL", .funcs = &icl_tbt_pll_funcs, .id = DPLL_ID_ICL_TBTPLL,
 	  .is_alt_port_dpll = true, },
 	{ .name = "TC PLL 1", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL1, },
 	{ .name = "TC PLL 2", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL2, },
@@ -4286,7 +4286,7 @@ static const struct intel_dpll_mgr adls_pll_mgr = {
 static const struct dpll_info adlp_plls[] = {
 	{ .name = "DPLL 0", .funcs = &combo_pll_funcs, .id = DPLL_ID_ICL_DPLL0, },
 	{ .name = "DPLL 1", .funcs = &combo_pll_funcs, .id = DPLL_ID_ICL_DPLL1, },
-	{ .name = "TBT PLL", .funcs = &tbt_pll_funcs, .id = DPLL_ID_ICL_TBTPLL,
+	{ .name = "TBT PLL", .funcs = &icl_tbt_pll_funcs, .id = DPLL_ID_ICL_TBTPLL,
 	  .is_alt_port_dpll = true, },
 	{ .name = "TC PLL 1", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL1, },
 	{ .name = "TC PLL 2", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL2, },
-- 
2.34.1

