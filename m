Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BEDFDA436F7
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 09:09:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6563510E5AD;
	Tue, 25 Feb 2025 08:09:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T7/f4KTi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F16E10E5AC;
 Tue, 25 Feb 2025 08:09:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740470979; x=1772006979;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AHYQY4Few1noJpEpW/qi7XTZYaE5ByjqxeA4vqlThwM=;
 b=T7/f4KTiQDjLtXW71ardtCvePTMUFRQ/J5AbTLNCJRtRSFGGCwQAG6t6
 UTl39ZmUch0vVEFplS14Z3XpN0fdUoywrosJ/QRmDGFpo5pk9sSVWScOi
 DsaAMtYSQ8ewxaUJhR6Z4csMyBUb7EG5aj0FvvLPsy9RJm6sRqkkfsPsi
 y73ZSS+WK4wLTxnqKZT5qQM54XTJNY4MFetElfcpSbl6g4gyDicd2+GuY
 REYrpaEokkA+Qk/h5ptst0Dlzux0WrMfQFX6ceEMsKWkkY6rybsrjMBS8
 vBTSX/vdrct/PeVqLKZ3lnSipZ1Q5v5tXciuFYmigSw9dGaRxmMonqRpm A==;
X-CSE-ConnectionGUID: uRT3YDGNQZuh8CHb095WKg==
X-CSE-MsgGUID: 6UnkiQMNQIap8hkeSXZiVg==
X-IronPort-AV: E=McAfee;i="6700,10204,11355"; a="66634524"
X-IronPort-AV: E=Sophos;i="6.13,313,1732608000"; d="scan'208";a="66634524"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 00:09:39 -0800
X-CSE-ConnectionGUID: tubHIRuDSZ2GpyGxEO0azQ==
X-CSE-MsgGUID: hIcBdz39Q1WIIC5ZgUnqMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,313,1732608000"; d="scan'208";a="116519296"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa008.fm.intel.com with ESMTP; 25 Feb 2025 00:09:37 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, uma.shankar@intel.com, mika.kahola@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 03/11] drm/i915/dpll: Rename intel_shared_dpll_funcs
Date: Tue, 25 Feb 2025 13:39:19 +0530
Message-Id: <20250225080927.157437-4-suraj.kandpal@intel.com>
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

Rename intel_shared_dpll_funcs to intel_global_dpll_funcs
since it needs to represent both shared and individual
dplls.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 24 +++++++++----------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  4 ++--
 2 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index d03789dfc9c5..1f336f26f08d 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -61,7 +61,7 @@
  */
 
 /* platform specific hooks for managing DPLLs */
-struct intel_shared_dpll_funcs {
+struct intel_global_dpll_funcs {
 	/*
 	 * Hook for enabling the pll, called from intel_enable_shared_dpll() if
 	 * the pll is not already enabled.
@@ -668,7 +668,7 @@ static bool ibx_compare_hw_state(const struct intel_dpll_hw_state *_a,
 		a->fp1 == b->fp1;
 }
 
-static const struct intel_shared_dpll_funcs ibx_pch_dpll_funcs = {
+static const struct intel_global_dpll_funcs ibx_pch_dpll_funcs = {
 	.enable = ibx_pch_dpll_enable,
 	.disable = ibx_pch_dpll_disable,
 	.get_hw_state = ibx_pch_dpll_get_hw_state,
@@ -1270,14 +1270,14 @@ static bool hsw_compare_hw_state(const struct intel_dpll_hw_state *_a,
 		a->spll == b->spll;
 }
 
-static const struct intel_shared_dpll_funcs hsw_ddi_wrpll_funcs = {
+static const struct intel_global_dpll_funcs hsw_ddi_wrpll_funcs = {
 	.enable = hsw_ddi_wrpll_enable,
 	.disable = hsw_ddi_wrpll_disable,
 	.get_hw_state = hsw_ddi_wrpll_get_hw_state,
 	.get_freq = hsw_ddi_wrpll_get_freq,
 };
 
-static const struct intel_shared_dpll_funcs hsw_ddi_spll_funcs = {
+static const struct intel_global_dpll_funcs hsw_ddi_spll_funcs = {
 	.enable = hsw_ddi_spll_enable,
 	.disable = hsw_ddi_spll_disable,
 	.get_hw_state = hsw_ddi_spll_get_hw_state,
@@ -1302,7 +1302,7 @@ static bool hsw_ddi_lcpll_get_hw_state(struct intel_display *display,
 	return true;
 }
 
-static const struct intel_shared_dpll_funcs hsw_ddi_lcpll_funcs = {
+static const struct intel_global_dpll_funcs hsw_ddi_lcpll_funcs = {
 	.enable = hsw_ddi_lcpll_enable,
 	.disable = hsw_ddi_lcpll_disable,
 	.get_hw_state = hsw_ddi_lcpll_get_hw_state,
@@ -2004,14 +2004,14 @@ static bool skl_compare_hw_state(const struct intel_dpll_hw_state *_a,
 		a->cfgcr2 == b->cfgcr2;
 }
 
-static const struct intel_shared_dpll_funcs skl_ddi_pll_funcs = {
+static const struct intel_global_dpll_funcs skl_ddi_pll_funcs = {
 	.enable = skl_ddi_pll_enable,
 	.disable = skl_ddi_pll_disable,
 	.get_hw_state = skl_ddi_pll_get_hw_state,
 	.get_freq = skl_ddi_pll_get_freq,
 };
 
-static const struct intel_shared_dpll_funcs skl_ddi_dpll0_funcs = {
+static const struct intel_global_dpll_funcs skl_ddi_dpll0_funcs = {
 	.enable = skl_ddi_dpll0_enable,
 	.disable = skl_ddi_dpll0_disable,
 	.get_hw_state = skl_ddi_dpll0_get_hw_state,
@@ -2486,7 +2486,7 @@ static bool bxt_compare_hw_state(const struct intel_dpll_hw_state *_a,
 		a->pcsdw12 == b->pcsdw12;
 }
 
-static const struct intel_shared_dpll_funcs bxt_ddi_pll_funcs = {
+static const struct intel_global_dpll_funcs bxt_ddi_pll_funcs = {
 	.enable = bxt_ddi_pll_enable,
 	.disable = bxt_ddi_pll_disable,
 	.get_hw_state = bxt_ddi_pll_get_hw_state,
@@ -4131,21 +4131,21 @@ static bool icl_compare_hw_state(const struct intel_dpll_hw_state *_a,
 		a->mg_pll_tdc_coldst_bias == b->mg_pll_tdc_coldst_bias;
 }
 
-static const struct intel_shared_dpll_funcs combo_pll_funcs = {
+static const struct intel_global_dpll_funcs combo_pll_funcs = {
 	.enable = combo_pll_enable,
 	.disable = combo_pll_disable,
 	.get_hw_state = combo_pll_get_hw_state,
 	.get_freq = icl_ddi_combo_pll_get_freq,
 };
 
-static const struct intel_shared_dpll_funcs tbt_pll_funcs = {
+static const struct intel_global_dpll_funcs tbt_pll_funcs = {
 	.enable = tbt_pll_enable,
 	.disable = tbt_pll_disable,
 	.get_hw_state = tbt_pll_get_hw_state,
 	.get_freq = icl_ddi_tbt_pll_get_freq,
 };
 
-static const struct intel_shared_dpll_funcs mg_pll_funcs = {
+static const struct intel_global_dpll_funcs mg_pll_funcs = {
 	.enable = mg_pll_enable,
 	.disable = mg_pll_disable,
 	.get_hw_state = mg_pll_get_hw_state,
@@ -4193,7 +4193,7 @@ static const struct intel_dpll_mgr ehl_pll_mgr = {
 	.compare_hw_state = icl_compare_hw_state,
 };
 
-static const struct intel_shared_dpll_funcs dkl_pll_funcs = {
+static const struct intel_global_dpll_funcs dkl_pll_funcs = {
 	.enable = mg_pll_enable,
 	.disable = mg_pll_disable,
 	.get_hw_state = dkl_pll_get_hw_state,
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index 3775d2b0fbe9..5bfe14dde3f0 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -41,7 +41,7 @@ struct intel_crtc;
 struct intel_crtc_state;
 struct intel_encoder;
 struct intel_shared_dpll;
-struct intel_shared_dpll_funcs;
+struct intel_global_dpll_funcs;
 
 /**
  * enum intel_dpll_id - possible DPLL ids
@@ -314,7 +314,7 @@ struct dpll_info {
 	/**
 	 * @funcs: platform specific hooks
 	 */
-	const struct intel_shared_dpll_funcs *funcs;
+	const struct intel_global_dpll_funcs *funcs;
 
 	/**
 	 * @id: unique identifier for this DPLL
-- 
2.34.1

