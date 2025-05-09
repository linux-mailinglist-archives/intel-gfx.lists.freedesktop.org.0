Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66580AB0926
	for <lists+intel-gfx@lfdr.de>; Fri,  9 May 2025 06:28:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D74FD10E3B5;
	Fri,  9 May 2025 04:28:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mvT7gVPS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 100B5891BA;
 Fri,  9 May 2025 04:28:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746764892; x=1778300892;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Jd9RQQwP+GOZqabZBjrarJe/YzK+SEjKyzs77dk7Q5U=;
 b=mvT7gVPSmqTg9rHIe8x4fS6VMT4trQjY3ha4Jp2KrpiDR+SX/7fUtOs5
 xjBrMrCGT3qVmEXeodpn02HVUQbugqFxMr4kDElLrpQrwuc3622L+Blwr
 3QtlM2DSpiCB46L6MTrUlNPibWHM2LY8spLW3V9BpDp8QHHHWnbz04SIe
 I36t9mqW02cV9uM5ITvX8mP5E8RScWmSMaUjqs8tCL3wnIAtl+MDeqYRn
 XoO+gKGXPNiy+nuSBEiqQ2imuspGybo2Uoda3wDSCaci9SuyoAT+ZMulD
 7KRUB+Wu2AKbAyJ5/SOqouyVV3KsQw1oc/3qctQ3vWnLzdSaNpubwt6MJ w==;
X-CSE-ConnectionGUID: DnLwpdsSRwSmVgliZof70A==
X-CSE-MsgGUID: S/vqP0XoQ329D/b4OyFgGg==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="58794000"
X-IronPort-AV: E=Sophos;i="6.15,274,1739865600"; d="scan'208";a="58794000"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 21:28:12 -0700
X-CSE-ConnectionGUID: LKcHygYEQG22st4X6oD/Mg==
X-CSE-MsgGUID: adFYcQtFSVOOThS4ntQQRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,274,1739865600"; d="scan'208";a="137430506"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa008.jf.intel.com with ESMTP; 08 May 2025 21:28:11 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 05/18] drm/i915/dpll: Rename intel_shared_dpll_funcs
Date: Fri,  9 May 2025 09:57:16 +0530
Message-Id: <20250509042729.1152004-6-suraj.kandpal@intel.com>
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
index 9974fdb6eaeb..bdad4d72cc01 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -64,7 +64,7 @@
  */
 
 /* platform specific hooks for managing DPLLs */
-struct intel_shared_dpll_funcs {
+struct intel_dpll_funcs {
 	/*
 	 * Hook for enabling the pll, called from intel_enable_shared_dpll() if
 	 * the pll is not already enabled.
@@ -670,7 +670,7 @@ static bool ibx_compare_hw_state(const struct intel_dpll_hw_state *_a,
 		a->fp1 == b->fp1;
 }
 
-static const struct intel_shared_dpll_funcs ibx_pch_dpll_funcs = {
+static const struct intel_dpll_funcs ibx_pch_dpll_funcs = {
 	.enable = ibx_pch_dpll_enable,
 	.disable = ibx_pch_dpll_disable,
 	.get_hw_state = ibx_pch_dpll_get_hw_state,
@@ -1270,14 +1270,14 @@ static bool hsw_compare_hw_state(const struct intel_dpll_hw_state *_a,
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
@@ -1302,7 +1302,7 @@ static bool hsw_ddi_lcpll_get_hw_state(struct intel_display *display,
 	return true;
 }
 
-static const struct intel_shared_dpll_funcs hsw_ddi_lcpll_funcs = {
+static const struct intel_dpll_funcs hsw_ddi_lcpll_funcs = {
 	.enable = hsw_ddi_lcpll_enable,
 	.disable = hsw_ddi_lcpll_disable,
 	.get_hw_state = hsw_ddi_lcpll_get_hw_state,
@@ -2004,14 +2004,14 @@ static bool skl_compare_hw_state(const struct intel_dpll_hw_state *_a,
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
@@ -2486,7 +2486,7 @@ static bool bxt_compare_hw_state(const struct intel_dpll_hw_state *_a,
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

