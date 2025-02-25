Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC969A43702
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 09:10:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41C1610E5BA;
	Tue, 25 Feb 2025 08:10:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U3Vvi8Oy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A69110E5B7;
 Tue, 25 Feb 2025 08:09:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740470997; x=1772006997;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=a5d6JJybnGUso/DBvuV18nHFCgxtobE3KEKkwL2cuQk=;
 b=U3Vvi8Oy2rJyVauJ7dYKaf2S+3EljVIgLrkvTcCMPnMW/ujKeRu2WJ96
 oThedkaMQ39fuGuS2nq+Tpm59xolT49arYN6cnNHUKi+rvtJes/p/dxxo
 RSQIqPxvTp5XnlSf08cyK8tSib0OniPHjnP5SdoGLebUiaH2H26WqaIxv
 vxMQcWvgEEXSOq3ZV5Franpg3d8jj15Ic/ZdP+ost5akWXCr/BmzjeJ3U
 Mp4epp8Bj/EZuVQcThFUfCfPVsP+m98Rt73uon1jY+FkVhds/Von4jS/C
 Zf1eqi5gdxGjz/EVd9RWXKmx5ppWW9Q5ULYgV6XGY4lL02nOjQh0Rl0L+ Q==;
X-CSE-ConnectionGUID: k9h6/EjVQUKVMIXuvH3x5Q==
X-CSE-MsgGUID: NS/0Ry6ASQuB1yxpuTQoPQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11355"; a="66634582"
X-IronPort-AV: E=Sophos;i="6.13,313,1732608000"; d="scan'208";a="66634582"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 00:09:57 -0800
X-CSE-ConnectionGUID: ZCxaSioZTIizFcZ4sLVD1Q==
X-CSE-MsgGUID: 2VJil1FCRd2WcKEDiBD3GA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,313,1732608000"; d="scan'208";a="116519413"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa008.fm.intel.com with ESMTP; 25 Feb 2025 00:09:54 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, uma.shankar@intel.com, mika.kahola@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 10/11] drm/i915/dpll: Add intel_encoder argument to
 get_hw_state hook
Date: Tue, 25 Feb 2025 13:39:26 +0530
Message-Id: <20250225080927.157437-11-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250225080927.157437-1-suraj.kandpal@intel.com>
References: <20250225080927.157437-1-suraj.kandpal@intel.com>
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
index 1014ce4941e7..efb5472b69c5 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -90,7 +90,8 @@ struct intel_global_dpll_funcs {
 	 */
 	bool (*get_hw_state)(struct intel_display *display,
 			     struct intel_global_dpll *pll,
-			     struct intel_dpll_hw_state *dpll_hw_state);
+			     struct intel_dpll_hw_state *dpll_hw_state,
+			     struct intel_encoder *encoder);
 
 	/*
 	 * Hook for calculating the pll's output frequency based on its passed
@@ -531,7 +532,8 @@ void intel_dpll_swap_state(struct intel_atomic_state *state)
 
 static bool ibx_pch_dpll_get_hw_state(struct intel_display *display,
 				      struct intel_global_dpll *pll,
-				      struct intel_dpll_hw_state *dpll_hw_state)
+				      struct intel_dpll_hw_state *dpll_hw_state,
+				      struct intel_encoder *encoder)
 {
 	struct i9xx_dpll_hw_state *hw_state = &dpll_hw_state->i9xx;
 	const enum intel_dpll_id id = pll->info->id;
@@ -757,7 +759,8 @@ static void hsw_ddi_spll_disable(struct intel_display *display,
 
 static bool hsw_ddi_wrpll_get_hw_state(struct intel_display *display,
 				       struct intel_global_dpll *pll,
-				       struct intel_dpll_hw_state *dpll_hw_state)
+				       struct intel_dpll_hw_state *dpll_hw_state,
+				       struct intel_encoder *encoder)
 {
 	struct hsw_dpll_hw_state *hw_state = &dpll_hw_state->hsw;
 	const enum intel_dpll_id id = pll->info->id;
@@ -779,7 +782,8 @@ static bool hsw_ddi_wrpll_get_hw_state(struct intel_display *display,
 
 static bool hsw_ddi_spll_get_hw_state(struct intel_display *display,
 				      struct intel_global_dpll *pll,
-				      struct intel_dpll_hw_state *dpll_hw_state)
+				      struct intel_dpll_hw_state *dpll_hw_state,
+				      struct intel_encoder *encoder)
 {
 	struct hsw_dpll_hw_state *hw_state = &dpll_hw_state->hsw;
 	intel_wakeref_t wakeref;
@@ -1305,7 +1309,8 @@ static void hsw_ddi_lcpll_disable(struct intel_display *display,
 
 static bool hsw_ddi_lcpll_get_hw_state(struct intel_display *display,
 				       struct intel_global_dpll *pll,
-				       struct intel_dpll_hw_state *dpll_hw_state)
+				       struct intel_dpll_hw_state *dpll_hw_state,
+				       struct intel_encoder *encoder)
 {
 	return true;
 }
@@ -1436,7 +1441,8 @@ static void skl_ddi_dpll0_disable(struct intel_display *display,
 
 static bool skl_ddi_pll_get_hw_state(struct intel_display *display,
 				     struct intel_global_dpll *pll,
-				     struct intel_dpll_hw_state *dpll_hw_state)
+				     struct intel_dpll_hw_state *dpll_hw_state,
+				     struct intel_encoder *encoder)
 {
 	struct skl_dpll_hw_state *hw_state = &dpll_hw_state->skl;
 	const struct skl_dpll_regs *regs = skl_dpll_regs;
@@ -1474,7 +1480,8 @@ static bool skl_ddi_pll_get_hw_state(struct intel_display *display,
 
 static bool skl_ddi_dpll0_get_hw_state(struct intel_display *display,
 				       struct intel_global_dpll *pll,
-				       struct intel_dpll_hw_state *dpll_hw_state)
+				       struct intel_dpll_hw_state *dpll_hw_state,
+				       struct intel_encoder *encoder)
 {
 	struct skl_dpll_hw_state *hw_state = &dpll_hw_state->skl;
 	const struct skl_dpll_regs *regs = skl_dpll_regs;
@@ -2172,7 +2179,8 @@ static void bxt_ddi_pll_disable(struct intel_display *display,
 
 static bool bxt_ddi_pll_get_hw_state(struct intel_display *display,
 				     struct intel_global_dpll *pll,
-				     struct intel_dpll_hw_state *dpll_hw_state)
+				     struct intel_dpll_hw_state *dpll_hw_state,
+				     struct intel_encoder *encoder)
 {
 	struct bxt_dpll_hw_state *hw_state = &dpll_hw_state->bxt;
 	enum port port = (enum port)pll->info->id; /* 1:1 port->PLL mapping */
@@ -3553,7 +3561,8 @@ static void icl_put_dplls(struct intel_atomic_state *state,
 
 static bool mg_pll_get_hw_state(struct intel_display *display,
 				struct intel_global_dpll *pll,
-				struct intel_dpll_hw_state *dpll_hw_state)
+				struct intel_dpll_hw_state *dpll_hw_state,
+				struct intel_encoder *encoder)
 {
 	struct icl_dpll_hw_state *hw_state = &dpll_hw_state->icl;
 	const enum intel_dpll_id id = pll->info->id;
@@ -3620,7 +3629,8 @@ static bool mg_pll_get_hw_state(struct intel_display *display,
 
 static bool dkl_pll_get_hw_state(struct intel_display *display,
 				 struct intel_global_dpll *pll,
-				 struct intel_dpll_hw_state *dpll_hw_state)
+				 struct intel_dpll_hw_state *dpll_hw_state,
+				 struct intel_encoder *encoder)
 {
 	struct icl_dpll_hw_state *hw_state = &dpll_hw_state->icl;
 	const enum intel_dpll_id id = pll->info->id;
@@ -3753,7 +3763,8 @@ static bool icl_pll_get_hw_state(struct intel_display *display,
 
 static bool combo_pll_get_hw_state(struct intel_display *display,
 				   struct intel_global_dpll *pll,
-				   struct intel_dpll_hw_state *dpll_hw_state)
+				   struct intel_dpll_hw_state *dpll_hw_state,
+				   struct intel_encoder *encoder)
 {
 	i915_reg_t enable_reg = intel_combo_pll_enable_reg(display, pll);
 
@@ -3762,7 +3773,8 @@ static bool combo_pll_get_hw_state(struct intel_display *display,
 
 static bool tbt_pll_get_hw_state(struct intel_display *display,
 				 struct intel_global_dpll *pll,
-				 struct intel_dpll_hw_state *dpll_hw_state)
+				 struct intel_dpll_hw_state *dpll_hw_state,
+				 struct intel_encoder *encoder)
 {
 	return icl_pll_get_hw_state(display, pll, dpll_hw_state, TBT_PLL_ENABLE);
 }
@@ -4520,7 +4532,7 @@ bool intel_dpll_get_hw_state(struct intel_display *display,
 			     struct intel_global_dpll *pll,
 			     struct intel_dpll_hw_state *dpll_hw_state)
 {
-	return pll->info->funcs->get_hw_state(display, pll, dpll_hw_state);
+	return pll->info->funcs->get_hw_state(display, pll, dpll_hw_state, NULL);
 }
 
 static void readout_dpll_hw_state(struct intel_display *display,
-- 
2.34.1

