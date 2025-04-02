Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D595A789FC
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Apr 2025 10:32:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F15710E6FD;
	Wed,  2 Apr 2025 08:32:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fKqTW9d9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 905B810E6FD;
 Wed,  2 Apr 2025 08:32:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743582747; x=1775118747;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8B/p0gatGuYvBcvatm5l06Txqr5wbvK3OEQ0MiDSlSM=;
 b=fKqTW9d9QcP75OQ/Mo8MIfqD8V9ieXIWcZE8VGRZH7UyX72eyN9KFfTn
 ag1W11tI50KXGd1lVYSMH5MC3CaaKSj8p2t13ivre1CvFMjfpVGKl8fYd
 Rc8V9WJZnRbgPYC8lWeln5xTJmqPH2Ce+wyw8+jdAGl3VJntIIErPnDUo
 dapPq+O2BeAHeIKcSzofRdX1t/lknDr7uxaI6An31cAQEug4BHBstk6il
 FxRmabIeWLXhusN8Ts0LnDMlUztjJ/6WSiAmrGsf17ADZW3TKsIi/zIpM
 tjjUOwtmnnuZRXqdozXddhZMdrdzPUJjGcIWVAEy3Z5b6aoVTb4EPqgjd g==;
X-CSE-ConnectionGUID: 8gHd3L5bQVCEbARX3rpNOg==
X-CSE-MsgGUID: SA75kqqbQpi+v3dtar+vpA==
X-IronPort-AV: E=McAfee;i="6700,10204,11391"; a="44828717"
X-IronPort-AV: E=Sophos;i="6.14,295,1736841600"; d="scan'208";a="44828717"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2025 01:32:27 -0700
X-CSE-ConnectionGUID: s91JPY4OSzCTktIAFaVvDg==
X-CSE-MsgGUID: 41n5IyiUTiqsPcSthQgjQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,295,1736841600"; d="scan'208";a="126612438"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa007.fm.intel.com with ESMTP; 02 Apr 2025 01:32:24 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, uma.shankar@intel.com, jani.nikula@intel.com,
 mika.kahola@intel.com, ville.syrjala@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 10/16] drm/i915/dpll: Add intel_encoder argument to
 get_hw_state hook
Date: Wed,  2 Apr 2025 14:01:58 +0530
Message-Id: <20250402083204.1523470-11-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250402083204.1523470-1-suraj.kandpal@intel.com>
References: <20250402083204.1523470-1-suraj.kandpal@intel.com>
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

Add intel_encoder argument in the get_hw_state hook as encoders
and the data stored within them are essential to read the hw state
starting DISPLAY_VER() >= 14.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 38 ++++++++++++-------
 1 file changed, 25 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 27181ddc4e0f..287ad58dc95c 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -90,7 +90,8 @@ struct intel_dpll_global_funcs {
 	 */
 	bool (*get_hw_state)(struct intel_display *display,
 			     struct intel_dpll_global *pll,
-			     struct intel_dpll_hw_state *dpll_hw_state);
+			     struct intel_dpll_hw_state *dpll_hw_state,
+			     struct intel_encoder *encoder);
 
 	/*
 	 * Hook for calculating the pll's output frequency based on its passed
@@ -531,7 +532,8 @@ void intel_dpll_swap_state(struct intel_atomic_state *state)
 
 static bool ibx_pch_dpll_get_hw_state(struct intel_display *display,
 				      struct intel_dpll_global *pll,
-				      struct intel_dpll_hw_state *dpll_hw_state)
+				      struct intel_dpll_hw_state *dpll_hw_state,
+				      struct intel_encoder *encoder)
 {
 	struct i9xx_dpll_hw_state *hw_state = &dpll_hw_state->i9xx;
 	const enum intel_dpll_id id = pll->info->id;
@@ -755,7 +757,8 @@ static void hsw_ddi_spll_disable(struct intel_display *display,
 
 static bool hsw_ddi_wrpll_get_hw_state(struct intel_display *display,
 				       struct intel_dpll_global *pll,
-				       struct intel_dpll_hw_state *dpll_hw_state)
+				       struct intel_dpll_hw_state *dpll_hw_state,
+				       struct intel_encoder *encoder)
 {
 	struct hsw_dpll_hw_state *hw_state = &dpll_hw_state->hsw;
 	const enum intel_dpll_id id = pll->info->id;
@@ -777,7 +780,8 @@ static bool hsw_ddi_wrpll_get_hw_state(struct intel_display *display,
 
 static bool hsw_ddi_spll_get_hw_state(struct intel_display *display,
 				      struct intel_dpll_global *pll,
-				      struct intel_dpll_hw_state *dpll_hw_state)
+				      struct intel_dpll_hw_state *dpll_hw_state,
+				      struct intel_encoder *encoder)
 {
 	struct hsw_dpll_hw_state *hw_state = &dpll_hw_state->hsw;
 	intel_wakeref_t wakeref;
@@ -1303,7 +1307,8 @@ static void hsw_ddi_lcpll_disable(struct intel_display *display,
 
 static bool hsw_ddi_lcpll_get_hw_state(struct intel_display *display,
 				       struct intel_dpll_global *pll,
-				       struct intel_dpll_hw_state *dpll_hw_state)
+				       struct intel_dpll_hw_state *dpll_hw_state,
+				       struct intel_encoder *encoder)
 {
 	return true;
 }
@@ -1434,7 +1439,8 @@ static void skl_ddi_dpll0_disable(struct intel_display *display,
 
 static bool skl_ddi_pll_get_hw_state(struct intel_display *display,
 				     struct intel_dpll_global *pll,
-				     struct intel_dpll_hw_state *dpll_hw_state)
+				     struct intel_dpll_hw_state *dpll_hw_state,
+				     struct intel_encoder *encoder)
 {
 	struct skl_dpll_hw_state *hw_state = &dpll_hw_state->skl;
 	const struct skl_dpll_regs *regs = skl_dpll_regs;
@@ -1472,7 +1478,8 @@ static bool skl_ddi_pll_get_hw_state(struct intel_display *display,
 
 static bool skl_ddi_dpll0_get_hw_state(struct intel_display *display,
 				       struct intel_dpll_global *pll,
-				       struct intel_dpll_hw_state *dpll_hw_state)
+				       struct intel_dpll_hw_state *dpll_hw_state,
+				       struct intel_encoder *encoder)
 {
 	struct skl_dpll_hw_state *hw_state = &dpll_hw_state->skl;
 	const struct skl_dpll_regs *regs = skl_dpll_regs;
@@ -2170,7 +2177,8 @@ static void bxt_ddi_pll_disable(struct intel_display *display,
 
 static bool bxt_ddi_pll_get_hw_state(struct intel_display *display,
 				     struct intel_dpll_global *pll,
-				     struct intel_dpll_hw_state *dpll_hw_state)
+				     struct intel_dpll_hw_state *dpll_hw_state,
+				     struct intel_encoder *encoder)
 {
 	struct bxt_dpll_hw_state *hw_state = &dpll_hw_state->bxt;
 	enum port port = (enum port)pll->info->id; /* 1:1 port->PLL mapping */
@@ -3551,7 +3559,8 @@ static void icl_put_dplls(struct intel_atomic_state *state,
 
 static bool mg_pll_get_hw_state(struct intel_display *display,
 				struct intel_dpll_global *pll,
-				struct intel_dpll_hw_state *dpll_hw_state)
+				struct intel_dpll_hw_state *dpll_hw_state,
+				struct intel_encoder *encoder)
 {
 	struct icl_dpll_hw_state *hw_state = &dpll_hw_state->icl;
 	const enum intel_dpll_id id = pll->info->id;
@@ -3618,7 +3627,8 @@ static bool mg_pll_get_hw_state(struct intel_display *display,
 
 static bool dkl_pll_get_hw_state(struct intel_display *display,
 				 struct intel_dpll_global *pll,
-				 struct intel_dpll_hw_state *dpll_hw_state)
+				 struct intel_dpll_hw_state *dpll_hw_state,
+				 struct intel_encoder *encoder)
 {
 	struct icl_dpll_hw_state *hw_state = &dpll_hw_state->icl;
 	const enum intel_dpll_id id = pll->info->id;
@@ -3751,7 +3761,8 @@ static bool icl_pll_get_hw_state(struct intel_display *display,
 
 static bool combo_pll_get_hw_state(struct intel_display *display,
 				   struct intel_dpll_global *pll,
-				   struct intel_dpll_hw_state *dpll_hw_state)
+				   struct intel_dpll_hw_state *dpll_hw_state,
+				   struct intel_encoder *encoder)
 {
 	i915_reg_t enable_reg = intel_combo_pll_enable_reg(display, pll);
 
@@ -3760,7 +3771,8 @@ static bool combo_pll_get_hw_state(struct intel_display *display,
 
 static bool tbt_pll_get_hw_state(struct intel_display *display,
 				 struct intel_dpll_global *pll,
-				 struct intel_dpll_hw_state *dpll_hw_state)
+				 struct intel_dpll_hw_state *dpll_hw_state,
+				 struct intel_encoder *encoder)
 {
 	return icl_pll_get_hw_state(display, pll, dpll_hw_state, TBT_PLL_ENABLE);
 }
@@ -4518,7 +4530,7 @@ bool intel_dpll_get_hw_state(struct intel_display *display,
 			     struct intel_dpll_global *pll,
 			     struct intel_dpll_hw_state *dpll_hw_state)
 {
-	return pll->info->funcs->get_hw_state(display, pll, dpll_hw_state);
+	return pll->info->funcs->get_hw_state(display, pll, dpll_hw_state, NULL);
 }
 
 static void readout_dpll_hw_state(struct intel_display *display,
-- 
2.34.1

