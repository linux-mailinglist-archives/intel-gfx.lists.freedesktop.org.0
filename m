Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CD9CA789F2
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Apr 2025 10:32:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9096610E6F3;
	Wed,  2 Apr 2025 08:32:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gtZbBCoX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE14E10E6F2;
 Wed,  2 Apr 2025 08:32:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743582727; x=1775118727;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KdaVGfplc8dN23Qw4mI/ikcfLGke/X1QjTHgBuzzg8k=;
 b=gtZbBCoXrXTYHPQl6djclDVCOxOVGE4pTMs5TvyWjiwpA3zPwCCQDxsR
 6aX8Ym4eMIiIW+jztH7PoXrocpQZft2jneGnexoUgDFpJIOzrB4smUjJw
 dAwZj36OCHCIb7ax5YN1kvoVNEDXdVty2Ci2WyvO4EEQXp3GpUZFJg9wN
 a7fny1k22dcpNIe3osnyr3CkzdvaGRO7Uy/1Vvov2YXYlx/Dk1DJ9F68I
 wVvdsM3Kaxr8AHr+gHavoLeFtD50vpHp0aB3rGeXNUlMfiraEouKE9XSK
 hn+imPD+m8eJiBjVK/FTZ7wKyyBMQegBeKkra1Fyz+TPrezpJZI3jB0Es g==;
X-CSE-ConnectionGUID: NKdo6BUPQjqhQgwUyqkPdQ==
X-CSE-MsgGUID: eMI1F8oiS1yaeUzqfWJNeA==
X-IronPort-AV: E=McAfee;i="6700,10204,11391"; a="44828660"
X-IronPort-AV: E=Sophos;i="6.14,295,1736841600"; d="scan'208";a="44828660"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2025 01:32:07 -0700
X-CSE-ConnectionGUID: ndggQlVXSL6bT6RvOTno0g==
X-CSE-MsgGUID: 3zf4CLbgSHGlJSUXVIPxCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,295,1736841600"; d="scan'208";a="126612322"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa007.fm.intel.com with ESMTP; 02 Apr 2025 01:32:04 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, uma.shankar@intel.com, jani.nikula@intel.com,
 mika.kahola@intel.com, ville.syrjala@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 03/16] drm/i915/dpll: Rename intel_shared_dpll_funcs
Date: Wed,  2 Apr 2025 14:01:51 +0530
Message-Id: <20250402083204.1523470-4-suraj.kandpal@intel.com>
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

Rename intel_shared_dpll_funcs to intel_global_dpll_funcs
since it needs to represent both shared and individual
dplls.

--v2
-Change intel_global_dpll to intel_dpll_global to be more
in line with the naming standard where the name should
start with the file name [Jani]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 24 +++++++++----------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  4 ++--
 2 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index bbb51119ef5b..92ca2a544e2f 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -61,7 +61,7 @@
  */
 
 /* platform specific hooks for managing DPLLs */
-struct intel_shared_dpll_funcs {
+struct intel_dpll_global_funcs {
 	/*
 	 * Hook for enabling the pll, called from intel_enable_shared_dpll() if
 	 * the pll is not already enabled.
@@ -668,7 +668,7 @@ static bool ibx_compare_hw_state(const struct intel_dpll_hw_state *_a,
 		a->fp1 == b->fp1;
 }
 
-static const struct intel_shared_dpll_funcs ibx_pch_dpll_funcs = {
+static const struct intel_dpll_global_funcs ibx_pch_dpll_funcs = {
 	.enable = ibx_pch_dpll_enable,
 	.disable = ibx_pch_dpll_disable,
 	.get_hw_state = ibx_pch_dpll_get_hw_state,
@@ -1268,14 +1268,14 @@ static bool hsw_compare_hw_state(const struct intel_dpll_hw_state *_a,
 		a->spll == b->spll;
 }
 
-static const struct intel_shared_dpll_funcs hsw_ddi_wrpll_funcs = {
+static const struct intel_dpll_global_funcs hsw_ddi_wrpll_funcs = {
 	.enable = hsw_ddi_wrpll_enable,
 	.disable = hsw_ddi_wrpll_disable,
 	.get_hw_state = hsw_ddi_wrpll_get_hw_state,
 	.get_freq = hsw_ddi_wrpll_get_freq,
 };
 
-static const struct intel_shared_dpll_funcs hsw_ddi_spll_funcs = {
+static const struct intel_dpll_global_funcs hsw_ddi_spll_funcs = {
 	.enable = hsw_ddi_spll_enable,
 	.disable = hsw_ddi_spll_disable,
 	.get_hw_state = hsw_ddi_spll_get_hw_state,
@@ -1300,7 +1300,7 @@ static bool hsw_ddi_lcpll_get_hw_state(struct intel_display *display,
 	return true;
 }
 
-static const struct intel_shared_dpll_funcs hsw_ddi_lcpll_funcs = {
+static const struct intel_dpll_global_funcs hsw_ddi_lcpll_funcs = {
 	.enable = hsw_ddi_lcpll_enable,
 	.disable = hsw_ddi_lcpll_disable,
 	.get_hw_state = hsw_ddi_lcpll_get_hw_state,
@@ -2002,14 +2002,14 @@ static bool skl_compare_hw_state(const struct intel_dpll_hw_state *_a,
 		a->cfgcr2 == b->cfgcr2;
 }
 
-static const struct intel_shared_dpll_funcs skl_ddi_pll_funcs = {
+static const struct intel_dpll_global_funcs skl_ddi_pll_funcs = {
 	.enable = skl_ddi_pll_enable,
 	.disable = skl_ddi_pll_disable,
 	.get_hw_state = skl_ddi_pll_get_hw_state,
 	.get_freq = skl_ddi_pll_get_freq,
 };
 
-static const struct intel_shared_dpll_funcs skl_ddi_dpll0_funcs = {
+static const struct intel_dpll_global_funcs skl_ddi_dpll0_funcs = {
 	.enable = skl_ddi_dpll0_enable,
 	.disable = skl_ddi_dpll0_disable,
 	.get_hw_state = skl_ddi_dpll0_get_hw_state,
@@ -2484,7 +2484,7 @@ static bool bxt_compare_hw_state(const struct intel_dpll_hw_state *_a,
 		a->pcsdw12 == b->pcsdw12;
 }
 
-static const struct intel_shared_dpll_funcs bxt_ddi_pll_funcs = {
+static const struct intel_dpll_global_funcs bxt_ddi_pll_funcs = {
 	.enable = bxt_ddi_pll_enable,
 	.disable = bxt_ddi_pll_disable,
 	.get_hw_state = bxt_ddi_pll_get_hw_state,
@@ -4129,21 +4129,21 @@ static bool icl_compare_hw_state(const struct intel_dpll_hw_state *_a,
 		a->mg_pll_tdc_coldst_bias == b->mg_pll_tdc_coldst_bias;
 }
 
-static const struct intel_shared_dpll_funcs combo_pll_funcs = {
+static const struct intel_dpll_global_funcs combo_pll_funcs = {
 	.enable = combo_pll_enable,
 	.disable = combo_pll_disable,
 	.get_hw_state = combo_pll_get_hw_state,
 	.get_freq = icl_ddi_combo_pll_get_freq,
 };
 
-static const struct intel_shared_dpll_funcs tbt_pll_funcs = {
+static const struct intel_dpll_global_funcs tbt_pll_funcs = {
 	.enable = tbt_pll_enable,
 	.disable = tbt_pll_disable,
 	.get_hw_state = tbt_pll_get_hw_state,
 	.get_freq = icl_ddi_tbt_pll_get_freq,
 };
 
-static const struct intel_shared_dpll_funcs mg_pll_funcs = {
+static const struct intel_dpll_global_funcs mg_pll_funcs = {
 	.enable = mg_pll_enable,
 	.disable = mg_pll_disable,
 	.get_hw_state = mg_pll_get_hw_state,
@@ -4191,7 +4191,7 @@ static const struct intel_dpll_mgr ehl_pll_mgr = {
 	.compare_hw_state = icl_compare_hw_state,
 };
 
-static const struct intel_shared_dpll_funcs dkl_pll_funcs = {
+static const struct intel_dpll_global_funcs dkl_pll_funcs = {
 	.enable = mg_pll_enable,
 	.disable = mg_pll_disable,
 	.get_hw_state = dkl_pll_get_hw_state,
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index d93072486831..2080118be523 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -41,7 +41,7 @@ struct intel_crtc;
 struct intel_crtc_state;
 struct intel_encoder;
 struct intel_shared_dpll;
-struct intel_shared_dpll_funcs;
+struct intel_dpll_global_funcs;
 
 /**
  * enum intel_dpll_id - possible DPLL ids
@@ -314,7 +314,7 @@ struct dpll_info {
 	/**
 	 * @funcs: platform specific hooks
 	 */
-	const struct intel_shared_dpll_funcs *funcs;
+	const struct intel_dpll_global_funcs *funcs;
 
 	/**
 	 * @id: unique identifier for this DPLL
-- 
2.34.1

