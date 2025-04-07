Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B2F5A7D76C
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Apr 2025 10:17:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1161210E3C1;
	Mon,  7 Apr 2025 08:17:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mi1AhhM5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5195810E3BF;
 Mon,  7 Apr 2025 08:17:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744013822; x=1775549822;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OwD9V6N7gQMSvqSiJ63C72FFu4B7xkSRxzPx3+QRHTg=;
 b=mi1AhhM5yJRqF5XJjnRZ6ZBp7jwL1C1c3liGxLpN5lJMUakjr21mGFuS
 9QTuCLIuwoImSED9pGuLnGBap4V9RmDWTnpJpqe2bm06fUyVYZv3Qllzt
 58W7MaybI7zU2tj7Eyq21xHibSkOfbpybiVKTP6JvsZYYnNGDbKwGwCAf
 ORf3hHqRaONCXs/v+P8LKRH2fxa0C5B118C2p30kitsJWcHUJ7JR53TDX
 42958KdY6dxwQeVu6USzvFJBIrsjxtTXGhkcgCD6hiTFOADMv2+AGCcqr
 pVJNP8wkuqB7u2bYdfpTmXE3EVEgEwjNWFa0Q3+/BLEOI18xwrmxAHxxM A==;
X-CSE-ConnectionGUID: zvxUUNmhRYK7McrC9gejRA==
X-CSE-MsgGUID: gSCB1RQFQPSpJ/SpLXKpqQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11396"; a="56755765"
X-IronPort-AV: E=Sophos;i="6.15,193,1739865600"; d="scan'208";a="56755765"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 01:17:01 -0700
X-CSE-ConnectionGUID: V6JfyBjrQbGlTrTYBtjTuw==
X-CSE-MsgGUID: kPNeop38QIehxulrR3YhFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,193,1739865600"; d="scan'208";a="127727964"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa006.fm.intel.com with ESMTP; 07 Apr 2025 01:16:59 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, uma.shankar@intel.com, jani.nikula@intel.com,
 mika.kahola@intel.com, ville.syrjala@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 05/18] drm/i915/dpll: Rename intel_shared_dpll_funcs
Date: Mon,  7 Apr 2025 13:46:41 +0530
Message-Id: <20250407081654.2013680-6-suraj.kandpal@intel.com>
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

Rename intel_shared_dpll_funcs to intel_dpll_funcs
since it needs to represent both shared and individual
dplls.

--v2
-Change intel_global_dpll to intel_dpll_global to be more
in line with the naming standard where the name should
start with the file name [Jani]

--v3
-Drop shared and global altogether [Jani]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 24 +++++++++----------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  4 ++--
 2 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index bbb51119ef5b..60cacc93f849 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -61,7 +61,7 @@
  */
 
 /* platform specific hooks for managing DPLLs */
-struct intel_shared_dpll_funcs {
+struct intel_dpll_funcs {
 	/*
 	 * Hook for enabling the pll, called from intel_enable_shared_dpll() if
 	 * the pll is not already enabled.
@@ -668,7 +668,7 @@ static bool ibx_compare_hw_state(const struct intel_dpll_hw_state *_a,
 		a->fp1 == b->fp1;
 }
 
-static const struct intel_shared_dpll_funcs ibx_pch_dpll_funcs = {
+static const struct intel_dpll_funcs ibx_pch_dpll_funcs = {
 	.enable = ibx_pch_dpll_enable,
 	.disable = ibx_pch_dpll_disable,
 	.get_hw_state = ibx_pch_dpll_get_hw_state,
@@ -1268,14 +1268,14 @@ static bool hsw_compare_hw_state(const struct intel_dpll_hw_state *_a,
 		a->spll == b->spll;
 }
 
-static const struct intel_shared_dpll_funcs hsw_ddi_wrpll_funcs = {
+static const struct intel_dpll_funcs hsw_ddi_wrpll_funcs = {
 	.enable = hsw_ddi_wrpll_enable,
 	.disable = hsw_ddi_wrpll_disable,
 	.get_hw_state = hsw_ddi_wrpll_get_hw_state,
 	.get_freq = hsw_ddi_wrpll_get_freq,
 };
 
-static const struct intel_shared_dpll_funcs hsw_ddi_spll_funcs = {
+static const struct intel_dpll_funcs hsw_ddi_spll_funcs = {
 	.enable = hsw_ddi_spll_enable,
 	.disable = hsw_ddi_spll_disable,
 	.get_hw_state = hsw_ddi_spll_get_hw_state,
@@ -1300,7 +1300,7 @@ static bool hsw_ddi_lcpll_get_hw_state(struct intel_display *display,
 	return true;
 }
 
-static const struct intel_shared_dpll_funcs hsw_ddi_lcpll_funcs = {
+static const struct intel_dpll_funcs hsw_ddi_lcpll_funcs = {
 	.enable = hsw_ddi_lcpll_enable,
 	.disable = hsw_ddi_lcpll_disable,
 	.get_hw_state = hsw_ddi_lcpll_get_hw_state,
@@ -2002,14 +2002,14 @@ static bool skl_compare_hw_state(const struct intel_dpll_hw_state *_a,
 		a->cfgcr2 == b->cfgcr2;
 }
 
-static const struct intel_shared_dpll_funcs skl_ddi_pll_funcs = {
+static const struct intel_dpll_funcs skl_ddi_pll_funcs = {
 	.enable = skl_ddi_pll_enable,
 	.disable = skl_ddi_pll_disable,
 	.get_hw_state = skl_ddi_pll_get_hw_state,
 	.get_freq = skl_ddi_pll_get_freq,
 };
 
-static const struct intel_shared_dpll_funcs skl_ddi_dpll0_funcs = {
+static const struct intel_dpll_funcs skl_ddi_dpll0_funcs = {
 	.enable = skl_ddi_dpll0_enable,
 	.disable = skl_ddi_dpll0_disable,
 	.get_hw_state = skl_ddi_dpll0_get_hw_state,
@@ -2484,7 +2484,7 @@ static bool bxt_compare_hw_state(const struct intel_dpll_hw_state *_a,
 		a->pcsdw12 == b->pcsdw12;
 }
 
-static const struct intel_shared_dpll_funcs bxt_ddi_pll_funcs = {
+static const struct intel_dpll_funcs bxt_ddi_pll_funcs = {
 	.enable = bxt_ddi_pll_enable,
 	.disable = bxt_ddi_pll_disable,
 	.get_hw_state = bxt_ddi_pll_get_hw_state,
@@ -4129,21 +4129,21 @@ static bool icl_compare_hw_state(const struct intel_dpll_hw_state *_a,
 		a->mg_pll_tdc_coldst_bias == b->mg_pll_tdc_coldst_bias;
 }
 
-static const struct intel_shared_dpll_funcs combo_pll_funcs = {
+static const struct intel_dpll_funcs combo_pll_funcs = {
 	.enable = combo_pll_enable,
 	.disable = combo_pll_disable,
 	.get_hw_state = combo_pll_get_hw_state,
 	.get_freq = icl_ddi_combo_pll_get_freq,
 };
 
-static const struct intel_shared_dpll_funcs tbt_pll_funcs = {
+static const struct intel_dpll_funcs tbt_pll_funcs = {
 	.enable = tbt_pll_enable,
 	.disable = tbt_pll_disable,
 	.get_hw_state = tbt_pll_get_hw_state,
 	.get_freq = icl_ddi_tbt_pll_get_freq,
 };
 
-static const struct intel_shared_dpll_funcs mg_pll_funcs = {
+static const struct intel_dpll_funcs mg_pll_funcs = {
 	.enable = mg_pll_enable,
 	.disable = mg_pll_disable,
 	.get_hw_state = mg_pll_get_hw_state,
@@ -4191,7 +4191,7 @@ static const struct intel_dpll_mgr ehl_pll_mgr = {
 	.compare_hw_state = icl_compare_hw_state,
 };
 
-static const struct intel_shared_dpll_funcs dkl_pll_funcs = {
+static const struct intel_dpll_funcs dkl_pll_funcs = {
 	.enable = mg_pll_enable,
 	.disable = mg_pll_disable,
 	.get_hw_state = dkl_pll_get_hw_state,
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index d93072486831..658174b99db3 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -41,7 +41,7 @@ struct intel_crtc;
 struct intel_crtc_state;
 struct intel_encoder;
 struct intel_shared_dpll;
-struct intel_shared_dpll_funcs;
+struct intel_dpll_funcs;
 
 /**
  * enum intel_dpll_id - possible DPLL ids
@@ -314,7 +314,7 @@ struct dpll_info {
 	/**
 	 * @funcs: platform specific hooks
 	 */
-	const struct intel_shared_dpll_funcs *funcs;
+	const struct intel_dpll_funcs *funcs;
 
 	/**
 	 * @id: unique identifier for this DPLL
-- 
2.34.1

