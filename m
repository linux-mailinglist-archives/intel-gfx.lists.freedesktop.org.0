Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71801A436FF
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 09:10:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13CF310E5B1;
	Tue, 25 Feb 2025 08:09:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="egvDYgd2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8629E10E5AF;
 Tue, 25 Feb 2025 08:09:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740470993; x=1772006993;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2rlcIKmonXMetHc5Uv+lnUPjFdqvNTnnm4/9cEzhcBY=;
 b=egvDYgd2Q6TOo/Ik/vyOZ6TJX4tTxuT4Kjy0bNvNMnPO6kBMVGN+JF5e
 Hg8v0NYb6YAx+iRLBZVl9FGCA1KQaW9BP4Ab+SVILzrOPosJ0ucF+tsZX
 RMQEljBt1MXfOaMd3bXY0vAuhPK1WZwvyiUeQ9sJG8n2BlkSnhMdGp+N0
 YZuD268rVFPYrClbU25sSo2Wdlw2X+IctXBlAjHwIlSEpzm97JOVLmgyJ
 oWPzXLz/vTf/EH0jZFG8dFhimprX9TgZuXP6KNq3kPQ9LwIeIFnL2FktG
 uTlgAVAx873VmYCPH1KjbSc06y3KJwqhLfX8yTFoOrFhpcVxH7ig5B92U A==;
X-CSE-ConnectionGUID: LDiGG9shSkyfXrhWtotp6A==
X-CSE-MsgGUID: UQ3dDAXvSXulDLqaFNw4GA==
X-IronPort-AV: E=McAfee;i="6700,10204,11355"; a="66634565"
X-IronPort-AV: E=Sophos;i="6.13,313,1732608000"; d="scan'208";a="66634565"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 00:09:52 -0800
X-CSE-ConnectionGUID: pzSC2VO7SDOMtRnLDhUU7w==
X-CSE-MsgGUID: d1Y/+s0LQZOdXVMdSAtQOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,313,1732608000"; d="scan'208";a="116519394"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa008.fm.intel.com with ESMTP; 25 Feb 2025 00:09:50 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, uma.shankar@intel.com, mika.kahola@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 08/11] drm/i915/drm: Rename disable hook in
 intel_dpll_global_func
Date: Tue, 25 Feb 2025 13:39:24 +0530
Message-Id: <20250225080927.157437-9-suraj.kandpal@intel.com>
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

Rename the disable hook to disable_shared_dpll since it will be used
only to disable shared dpll and not individual PLL going forward.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 30 +++++++++----------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index c39f7d73a89f..35fb0f6f5475 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -70,12 +70,12 @@ struct intel_global_dpll_funcs {
 		       struct intel_encoder *encoder);
 
 	/*
-	 * Hook for disabling the pll, called from intel_disable_global_dpll()
+	 * Hook for disabling the shared pll, called from intel_disable_global_dpll()
 	 * only when it is safe to disable the pll, i.e., there are no more
 	 * tracked users for it.
 	 */
-	void (*disable)(struct intel_display *display,
-			struct intel_global_dpll *pll);
+	void (*shared_dpll_disable)(struct intel_display *display,
+				    struct intel_global_dpll *pll);
 
 	/*
 	 * Hook for reading the values currently programmed to the DPLL
@@ -240,7 +240,7 @@ static void _intel_enable_shared_dpll(const struct intel_crtc_state *crtc_state)
 static void _intel_disable_shared_dpll(struct intel_display *display,
 				       struct intel_global_dpll *pll)
 {
-	pll->info->funcs->disable(display, pll);
+	pll->info->funcs->shared_dpll_disable(display, pll);
 	pll->on = false;
 
 	if (pll->info->power_domain)
@@ -672,7 +672,7 @@ static bool ibx_compare_hw_state(const struct intel_dpll_hw_state *_a,
 
 static const struct intel_global_dpll_funcs ibx_pch_dpll_funcs = {
 	.enable = ibx_pch_dpll_enable,
-	.disable = ibx_pch_dpll_disable,
+	.shared_dpll_disable = ibx_pch_dpll_disable,
 	.get_hw_state = ibx_pch_dpll_get_hw_state,
 };
 
@@ -1275,14 +1275,14 @@ static bool hsw_compare_hw_state(const struct intel_dpll_hw_state *_a,
 
 static const struct intel_global_dpll_funcs hsw_ddi_wrpll_funcs = {
 	.enable = hsw_ddi_wrpll_enable,
-	.disable = hsw_ddi_wrpll_disable,
+	.shared_dpll_disable = hsw_ddi_wrpll_disable,
 	.get_hw_state = hsw_ddi_wrpll_get_hw_state,
 	.get_freq = hsw_ddi_wrpll_get_freq,
 };
 
 static const struct intel_global_dpll_funcs hsw_ddi_spll_funcs = {
 	.enable = hsw_ddi_spll_enable,
-	.disable = hsw_ddi_spll_disable,
+	.shared_dpll_disable = hsw_ddi_spll_disable,
 	.get_hw_state = hsw_ddi_spll_get_hw_state,
 	.get_freq = hsw_ddi_spll_get_freq,
 };
@@ -1306,7 +1306,7 @@ static bool hsw_ddi_lcpll_get_hw_state(struct intel_display *display,
 
 static const struct intel_global_dpll_funcs hsw_ddi_lcpll_funcs = {
 	.enable = hsw_ddi_lcpll_enable,
-	.disable = hsw_ddi_lcpll_disable,
+	.shared_dpll_disable = hsw_ddi_lcpll_disable,
 	.get_hw_state = hsw_ddi_lcpll_get_hw_state,
 	.get_freq = hsw_ddi_lcpll_get_freq,
 };
@@ -2010,14 +2010,14 @@ static bool skl_compare_hw_state(const struct intel_dpll_hw_state *_a,
 
 static const struct intel_global_dpll_funcs skl_ddi_pll_funcs = {
 	.enable = skl_ddi_pll_enable,
-	.disable = skl_ddi_pll_disable,
+	.shared_dpll_disable = skl_ddi_pll_disable,
 	.get_hw_state = skl_ddi_pll_get_hw_state,
 	.get_freq = skl_ddi_pll_get_freq,
 };
 
 static const struct intel_global_dpll_funcs skl_ddi_dpll0_funcs = {
 	.enable = skl_ddi_dpll0_enable,
-	.disable = skl_ddi_dpll0_disable,
+	.shared_dpll_disable = skl_ddi_dpll0_disable,
 	.get_hw_state = skl_ddi_dpll0_get_hw_state,
 	.get_freq = skl_ddi_pll_get_freq,
 };
@@ -2493,7 +2493,7 @@ static bool bxt_compare_hw_state(const struct intel_dpll_hw_state *_a,
 
 static const struct intel_global_dpll_funcs bxt_ddi_pll_funcs = {
 	.enable = bxt_ddi_pll_enable,
-	.disable = bxt_ddi_pll_disable,
+	.shared_dpll_disable = bxt_ddi_pll_disable,
 	.get_hw_state = bxt_ddi_pll_get_hw_state,
 	.get_freq = bxt_ddi_pll_get_freq,
 };
@@ -4141,21 +4141,21 @@ static bool icl_compare_hw_state(const struct intel_dpll_hw_state *_a,
 
 static const struct intel_global_dpll_funcs combo_pll_funcs = {
 	.enable = combo_pll_enable,
-	.disable = combo_pll_disable,
+	.shared_dpll_disable = combo_pll_disable,
 	.get_hw_state = combo_pll_get_hw_state,
 	.get_freq = icl_ddi_combo_pll_get_freq,
 };
 
 static const struct intel_global_dpll_funcs tbt_pll_funcs = {
 	.enable = tbt_pll_enable,
-	.disable = tbt_pll_disable,
+	.shared_dpll_disable = tbt_pll_disable,
 	.get_hw_state = tbt_pll_get_hw_state,
 	.get_freq = icl_ddi_tbt_pll_get_freq,
 };
 
 static const struct intel_global_dpll_funcs mg_pll_funcs = {
 	.enable = mg_pll_enable,
-	.disable = mg_pll_disable,
+	.shared_dpll_disable = mg_pll_disable,
 	.get_hw_state = mg_pll_get_hw_state,
 	.get_freq = icl_ddi_mg_pll_get_freq,
 };
@@ -4203,7 +4203,7 @@ static const struct intel_dpll_mgr ehl_pll_mgr = {
 
 static const struct intel_global_dpll_funcs dkl_pll_funcs = {
 	.enable = mg_pll_enable,
-	.disable = mg_pll_disable,
+	.shared_dpll_disable = mg_pll_disable,
 	.get_hw_state = dkl_pll_get_hw_state,
 	.get_freq = icl_ddi_mg_pll_get_freq,
 };
-- 
2.34.1

