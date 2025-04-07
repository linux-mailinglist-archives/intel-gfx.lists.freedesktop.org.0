Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 130EDA7D772
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Apr 2025 10:17:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90E2410E3B8;
	Mon,  7 Apr 2025 08:17:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k+Zsqrok";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0335F10E3A4;
 Mon,  7 Apr 2025 08:17:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744013836; x=1775549836;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+fVkrlS4eiTHsQIQ7x+24oFGLhdPT+gel6/tlqgXTP4=;
 b=k+ZsqrokfePZRyLxqMhzuhru4eSDVHIoyIg4v5JcwNM1rlIp9Ys3VSX2
 cP8lGdHJOsCMyTe8F1mmC3i0jbg6KlNi39ryLnqcvpIXHKNvLJ1WFXFbb
 6tu3FQAwD4bd1uqUvFOvqNJYyd1RUeiWOiG0i6DDUTO8XVg8waXZymzam
 nBJCCFXxFd5CtSo0T5oDV+shHAoIiSKPI+FmJZNJSzRzN4GobJAOjDwJL
 eTGVNUQfHiRRkfETZIUUjRGhPCVz1BWsYsh97gryYP2IQW+aYmRSD9iUT
 CwWDr2i1b60V1gTJreHqEElI5Mvuw75RzLcJvY06ZfDpaR+Ka5kPJedEE A==;
X-CSE-ConnectionGUID: x7NzkhVLRhOE9m7Qj3wCkw==
X-CSE-MsgGUID: 8o0MnBR7TrO6R9QqJdsMqw==
X-IronPort-AV: E=McAfee;i="6700,10204,11396"; a="56755788"
X-IronPort-AV: E=Sophos;i="6.15,193,1739865600"; d="scan'208";a="56755788"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 01:17:16 -0700
X-CSE-ConnectionGUID: yGYexvuEQpq1jWKzQfC5ww==
X-CSE-MsgGUID: LTnFLPXvQv+e2VRzH7kvCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,193,1739865600"; d="scan'208";a="127728075"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa006.fm.intel.com with ESMTP; 07 Apr 2025 01:17:13 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, uma.shankar@intel.com, jani.nikula@intel.com,
 mika.kahola@intel.com, ville.syrjala@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 10/18] drm/i915/drm: Rename disable hook in
 intel_dpll_global_func
Date: Mon,  7 Apr 2025 13:46:46 +0530
Message-Id: <20250407081654.2013680-11-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250407081654.2013680-1-suraj.kandpal@intel.com>
References: <20250407081654.2013680-1-suraj.kandpal@intel.com>
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
index 183faaa00d28..2106d3c54190 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -70,12 +70,12 @@ struct intel_dpll_funcs {
 		       struct intel_encoder *encoder);
 
 	/*
-	 * Hook for disabling the pll, called from intel_disable_dpll()
+	 * Hook for disabling the shared pll, called from _intel_disable_shared_dpll()
 	 * only when it is safe to disable the pll, i.e., there are no more
 	 * tracked users for it.
 	 */
-	void (*disable)(struct intel_display *display,
-			struct intel_dpll *pll);
+	void (*shared_dpll_disable)(struct intel_display *display,
+				    struct intel_dpll *pll);
 
 	/*
 	 * Hook for reading the values currently programmed to the DPLL
@@ -240,7 +240,7 @@ static void _intel_enable_shared_dpll(const struct intel_crtc_state *crtc_state)
 static void _intel_disable_shared_dpll(struct intel_display *display,
 				       struct intel_dpll *pll)
 {
-	pll->info->funcs->disable(display, pll);
+	pll->info->funcs->shared_dpll_disable(display, pll);
 	pll->on = false;
 
 	if (pll->info->power_domain)
@@ -672,7 +672,7 @@ static bool ibx_compare_hw_state(const struct intel_dpll_hw_state *_a,
 
 static const struct intel_dpll_funcs ibx_pch_dpll_funcs = {
 	.enable = ibx_pch_dpll_enable,
-	.disable = ibx_pch_dpll_disable,
+	.shared_dpll_disable = ibx_pch_dpll_disable,
 	.get_hw_state = ibx_pch_dpll_get_hw_state,
 };
 
@@ -1273,14 +1273,14 @@ static bool hsw_compare_hw_state(const struct intel_dpll_hw_state *_a,
 
 static const struct intel_dpll_funcs hsw_ddi_wrpll_funcs = {
 	.enable = hsw_ddi_wrpll_enable,
-	.disable = hsw_ddi_wrpll_disable,
+	.shared_dpll_disable = hsw_ddi_wrpll_disable,
 	.get_hw_state = hsw_ddi_wrpll_get_hw_state,
 	.get_freq = hsw_ddi_wrpll_get_freq,
 };
 
 static const struct intel_dpll_funcs hsw_ddi_spll_funcs = {
 	.enable = hsw_ddi_spll_enable,
-	.disable = hsw_ddi_spll_disable,
+	.shared_dpll_disable = hsw_ddi_spll_disable,
 	.get_hw_state = hsw_ddi_spll_get_hw_state,
 	.get_freq = hsw_ddi_spll_get_freq,
 };
@@ -1304,7 +1304,7 @@ static bool hsw_ddi_lcpll_get_hw_state(struct intel_display *display,
 
 static const struct intel_dpll_funcs hsw_ddi_lcpll_funcs = {
 	.enable = hsw_ddi_lcpll_enable,
-	.disable = hsw_ddi_lcpll_disable,
+	.shared_dpll_disable = hsw_ddi_lcpll_disable,
 	.get_hw_state = hsw_ddi_lcpll_get_hw_state,
 	.get_freq = hsw_ddi_lcpll_get_freq,
 };
@@ -2008,14 +2008,14 @@ static bool skl_compare_hw_state(const struct intel_dpll_hw_state *_a,
 
 static const struct intel_dpll_funcs skl_ddi_pll_funcs = {
 	.enable = skl_ddi_pll_enable,
-	.disable = skl_ddi_pll_disable,
+	.shared_dpll_disable = skl_ddi_pll_disable,
 	.get_hw_state = skl_ddi_pll_get_hw_state,
 	.get_freq = skl_ddi_pll_get_freq,
 };
 
 static const struct intel_dpll_funcs skl_ddi_dpll0_funcs = {
 	.enable = skl_ddi_dpll0_enable,
-	.disable = skl_ddi_dpll0_disable,
+	.shared_dpll_disable = skl_ddi_dpll0_disable,
 	.get_hw_state = skl_ddi_dpll0_get_hw_state,
 	.get_freq = skl_ddi_pll_get_freq,
 };
@@ -2491,7 +2491,7 @@ static bool bxt_compare_hw_state(const struct intel_dpll_hw_state *_a,
 
 static const struct intel_dpll_funcs bxt_ddi_pll_funcs = {
 	.enable = bxt_ddi_pll_enable,
-	.disable = bxt_ddi_pll_disable,
+	.shared_dpll_disable = bxt_ddi_pll_disable,
 	.get_hw_state = bxt_ddi_pll_get_hw_state,
 	.get_freq = bxt_ddi_pll_get_freq,
 };
@@ -4138,21 +4138,21 @@ static bool icl_compare_hw_state(const struct intel_dpll_hw_state *_a,
 
 static const struct intel_dpll_funcs combo_pll_funcs = {
 	.enable = combo_pll_enable,
-	.disable = combo_pll_disable,
+	.shared_dpll_disable = combo_pll_disable,
 	.get_hw_state = combo_pll_get_hw_state,
 	.get_freq = icl_ddi_combo_pll_get_freq,
 };
 
 static const struct intel_dpll_funcs tbt_pll_funcs = {
 	.enable = tbt_pll_enable,
-	.disable = tbt_pll_disable,
+	.shared_dpll_disable = tbt_pll_disable,
 	.get_hw_state = tbt_pll_get_hw_state,
 	.get_freq = icl_ddi_tbt_pll_get_freq,
 };
 
 static const struct intel_dpll_funcs mg_pll_funcs = {
 	.enable = mg_pll_enable,
-	.disable = mg_pll_disable,
+	.shared_dpll_disable = mg_pll_disable,
 	.get_hw_state = mg_pll_get_hw_state,
 	.get_freq = icl_ddi_mg_pll_get_freq,
 };
@@ -4200,7 +4200,7 @@ static const struct intel_dpll_mgr ehl_pll_mgr = {
 
 static const struct intel_dpll_funcs dkl_pll_funcs = {
 	.enable = mg_pll_enable,
-	.disable = mg_pll_disable,
+	.shared_dpll_disable = mg_pll_disable,
 	.get_hw_state = dkl_pll_get_hw_state,
 	.get_freq = icl_ddi_mg_pll_get_freq,
 };
-- 
2.34.1

