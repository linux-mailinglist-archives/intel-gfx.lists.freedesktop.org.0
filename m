Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71A61AB092D
	for <lists+intel-gfx@lfdr.de>; Fri,  9 May 2025 06:28:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12D3310E973;
	Fri,  9 May 2025 04:28:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fgv7j5Qz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD49310E974;
 Fri,  9 May 2025 04:28:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746764908; x=1778300908;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QlG4R6WhVphLGX3pPux1D2unUDjhMb9cSRb+MbZoeRY=;
 b=fgv7j5QzYUJanlQOHILcp8IczU+i/h5+Xvo7+tbX3zEK7z/7O2k1ojhO
 E1APaNy/37GgzwnF5AqXdUWDus/vnwsLxhAE/cUcCM2cPF1dfMdQ/j9Li
 2YB5dm1xSnC/5g1pqW1QGRtf6jq7eaZyP5eV8YJYia57Z9VcMi+rcZM8r
 L+MYAPJYhGmDnUnt9Xc7A6lyef/LvnLZZ7+qtHXHzjFnIXI4xoz/ivHLi
 f+xiBDX1VtAEeAAtL6j1ISQZI/4NAOEWtvWyo/jSbaoiTccoZT1LTvsaL
 nyBYR0JTam6dLd/UNCIGj+b7v3MuDiFlfzoLSX1UMQamoN0xwYMGBYeRM A==;
X-CSE-ConnectionGUID: LNODWhtpQv6Y8gMLINkQyA==
X-CSE-MsgGUID: 0lQiZlCMQmu3QGL/JvG3BQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="58794020"
X-IronPort-AV: E=Sophos;i="6.15,274,1739865600"; d="scan'208";a="58794020"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 21:28:28 -0700
X-CSE-ConnectionGUID: j3+3cGGoQdebOFUUTSJeug==
X-CSE-MsgGUID: 0XvTfAUXSaex5bGjvuFq/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,274,1739865600"; d="scan'208";a="137430566"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa008.jf.intel.com with ESMTP; 08 May 2025 21:28:26 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 12/18] drm/i915/dpll: Add intel_encoder argument to
 get_hw_state hook
Date: Fri,  9 May 2025 09:57:23 +0530
Message-Id: <20250509042729.1152004-13-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250509042729.1152004-1-suraj.kandpal@intel.com>
References: <20250509042729.1152004-1-suraj.kandpal@intel.com>
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
index 85f726b1c5c8..4a184d1e83a3 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -93,7 +93,8 @@ struct intel_dpll_funcs {
 	 */
 	bool (*get_hw_state)(struct intel_display *display,
 			     struct intel_dpll *pll,
-			     struct intel_dpll_hw_state *dpll_hw_state);
+			     struct intel_dpll_hw_state *dpll_hw_state,
+			     struct intel_encoder *encoder);
 
 	/*
 	 * Hook for calculating the pll's output frequency based on its passed
@@ -534,7 +535,8 @@ void intel_dpll_swap_state(struct intel_atomic_state *state)
 
 static bool ibx_pch_dpll_get_hw_state(struct intel_display *display,
 				      struct intel_dpll *pll,
-				      struct intel_dpll_hw_state *dpll_hw_state)
+				      struct intel_dpll_hw_state *dpll_hw_state,
+				      struct intel_encoder *encoder)
 {
 	struct i9xx_dpll_hw_state *hw_state = &dpll_hw_state->i9xx;
 	const enum intel_dpll_id id = pll->info->id;
@@ -757,7 +759,8 @@ static void hsw_ddi_spll_disable(struct intel_display *display,
 
 static bool hsw_ddi_wrpll_get_hw_state(struct intel_display *display,
 				       struct intel_dpll *pll,
-				       struct intel_dpll_hw_state *dpll_hw_state)
+				       struct intel_dpll_hw_state *dpll_hw_state,
+				       struct intel_encoder *encoder)
 {
 	struct hsw_dpll_hw_state *hw_state = &dpll_hw_state->hsw;
 	const enum intel_dpll_id id = pll->info->id;
@@ -779,7 +782,8 @@ static bool hsw_ddi_wrpll_get_hw_state(struct intel_display *display,
 
 static bool hsw_ddi_spll_get_hw_state(struct intel_display *display,
 				      struct intel_dpll *pll,
-				      struct intel_dpll_hw_state *dpll_hw_state)
+				      struct intel_dpll_hw_state *dpll_hw_state,
+				      struct intel_encoder *encoder)
 {
 	struct hsw_dpll_hw_state *hw_state = &dpll_hw_state->hsw;
 	intel_wakeref_t wakeref;
@@ -1305,7 +1309,8 @@ static void hsw_ddi_lcpll_disable(struct intel_display *display,
 
 static bool hsw_ddi_lcpll_get_hw_state(struct intel_display *display,
 				       struct intel_dpll *pll,
-				       struct intel_dpll_hw_state *dpll_hw_state)
+				       struct intel_dpll_hw_state *dpll_hw_state,
+				       struct intel_encoder *encoder)
 {
 	return true;
 }
@@ -1436,7 +1441,8 @@ static void skl_ddi_dpll0_disable(struct intel_display *display,
 
 static bool skl_ddi_pll_get_hw_state(struct intel_display *display,
 				     struct intel_dpll *pll,
-				     struct intel_dpll_hw_state *dpll_hw_state)
+				     struct intel_dpll_hw_state *dpll_hw_state,
+				     struct intel_encoder *encoder)
 {
 	struct skl_dpll_hw_state *hw_state = &dpll_hw_state->skl;
 	const struct skl_dpll_regs *regs = skl_dpll_regs;
@@ -1474,7 +1480,8 @@ static bool skl_ddi_pll_get_hw_state(struct intel_display *display,
 
 static bool skl_ddi_dpll0_get_hw_state(struct intel_display *display,
 				       struct intel_dpll *pll,
-				       struct intel_dpll_hw_state *dpll_hw_state)
+				       struct intel_dpll_hw_state *dpll_hw_state,
+				       struct intel_encoder *encoder)
 {
 	struct skl_dpll_hw_state *hw_state = &dpll_hw_state->skl;
 	const struct skl_dpll_regs *regs = skl_dpll_regs;
@@ -2172,7 +2179,8 @@ static void bxt_ddi_pll_disable(struct intel_display *display,
 
 static bool bxt_ddi_pll_get_hw_state(struct intel_display *display,
 				     struct intel_dpll *pll,
-				     struct intel_dpll_hw_state *dpll_hw_state)
+				     struct intel_dpll_hw_state *dpll_hw_state,
+				     struct intel_encoder *encoder)
 {
 	struct bxt_dpll_hw_state *hw_state = &dpll_hw_state->bxt;
 	enum port port = (enum port)pll->info->id; /* 1:1 port->PLL mapping */
@@ -3550,7 +3558,8 @@ static void icl_put_dplls(struct intel_atomic_state *state,
 
 static bool mg_pll_get_hw_state(struct intel_display *display,
 				struct intel_dpll *pll,
-				struct intel_dpll_hw_state *dpll_hw_state)
+				struct intel_dpll_hw_state *dpll_hw_state,
+				struct intel_encoder *encoder)
 {
 	struct icl_dpll_hw_state *hw_state = &dpll_hw_state->icl;
 	const enum intel_dpll_id id = pll->info->id;
@@ -3617,7 +3626,8 @@ static bool mg_pll_get_hw_state(struct intel_display *display,
 
 static bool dkl_pll_get_hw_state(struct intel_display *display,
 				 struct intel_dpll *pll,
-				 struct intel_dpll_hw_state *dpll_hw_state)
+				 struct intel_dpll_hw_state *dpll_hw_state,
+				 struct intel_encoder *encoder)
 {
 	struct icl_dpll_hw_state *hw_state = &dpll_hw_state->icl;
 	const enum intel_dpll_id id = pll->info->id;
@@ -3750,7 +3760,8 @@ static bool icl_pll_get_hw_state(struct intel_display *display,
 
 static bool combo_pll_get_hw_state(struct intel_display *display,
 				   struct intel_dpll *pll,
-				   struct intel_dpll_hw_state *dpll_hw_state)
+				   struct intel_dpll_hw_state *dpll_hw_state,
+				   struct intel_encoder *encoder)
 {
 	i915_reg_t enable_reg = intel_combo_pll_enable_reg(display, pll);
 
@@ -3759,7 +3770,8 @@ static bool combo_pll_get_hw_state(struct intel_display *display,
 
 static bool tbt_pll_get_hw_state(struct intel_display *display,
 				 struct intel_dpll *pll,
-				 struct intel_dpll_hw_state *dpll_hw_state)
+				 struct intel_dpll_hw_state *dpll_hw_state,
+				 struct intel_encoder *encoder)
 {
 	return icl_pll_get_hw_state(display, pll, dpll_hw_state, TBT_PLL_ENABLE);
 }
@@ -4516,7 +4528,7 @@ bool intel_dpll_get_hw_state(struct intel_display *display,
 			     struct intel_dpll *pll,
 			     struct intel_dpll_hw_state *dpll_hw_state)
 {
-	return pll->info->funcs->get_hw_state(display, pll, dpll_hw_state);
+	return pll->info->funcs->get_hw_state(display, pll, dpll_hw_state, NULL);
 }
 
 static void readout_dpll_hw_state(struct intel_display *display,
-- 
2.34.1

