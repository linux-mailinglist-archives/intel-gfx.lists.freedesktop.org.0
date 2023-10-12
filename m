Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 673E27C6E30
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Oct 2023 14:35:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 948AC10E189;
	Thu, 12 Oct 2023 12:35:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC41710E11C
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Oct 2023 12:35:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697114129; x=1728650129;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=/CkdoKvI44RZR6QH74B9sBWkKBRGF4yJxsCW5o6aKVg=;
 b=WdrPyaseVNPrmURHa/njEOoMOz0Eaxhza58eSLS+M2wUYFcQwkpCxq6j
 lbFzt0Ugu2CNL76y44lWC0xrZUiZX3uBbtSouM5wZUQ6zH/sIcKQA1i/U
 eROoexLj5hgTRz9plMrKz2J01ir4SOt/vfsTnQQGUThtOKVsIPhn6i5p3
 trR8jPmv0phS7w1JzRZz4AipzgnpwuzdHh6lwk4gTPmtckm7FAvuYDMwM
 L1WZzdmySyNY/SYHZbhw6WtQAOJQN73ORjmZVhnTrTwGZphwmn40ZS77K
 OcQ3mKxr55zMlsmNHd0go/YvHYU3Q/GYi8NzrRT4JA2UpvP/UDK3x+oiu w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="382142555"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; d="scan'208";a="382142555"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 05:35:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="844982136"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; d="scan'208";a="844982136"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by FMSMGA003.fm.intel.com with SMTP; 12 Oct 2023 05:35:26 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 12 Oct 2023 15:35:25 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Oct 2023 15:35:19 +0300
Message-ID: <20231012123522.26045-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231012123522.26045-1-ville.syrjala@linux.intel.com>
References: <20231012123522.26045-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/4] drm/i915: Use named initializers for DPLL
 info
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Use named initializers when populating the DPLL info. This
is just more convenient and less error prone as we no longer
have to keep the initializers in a specific order.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 130 +++++++++---------
 1 file changed, 67 insertions(+), 63 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 399653a20f98..b7997b096796 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -631,9 +631,9 @@ static const struct intel_shared_dpll_funcs ibx_pch_dpll_funcs = {
 };
 
 static const struct dpll_info pch_plls[] = {
-	{ "PCH DPLL A", &ibx_pch_dpll_funcs, DPLL_ID_PCH_PLL_A, 0 },
-	{ "PCH DPLL B", &ibx_pch_dpll_funcs, DPLL_ID_PCH_PLL_B, 0 },
-	{ },
+	{ .name = "PCH DPLL A", .funcs = &ibx_pch_dpll_funcs, .id = DPLL_ID_PCH_PLL_A, },
+	{ .name = "PCH DPLL B", .funcs = &ibx_pch_dpll_funcs, .id = DPLL_ID_PCH_PLL_B, },
+	{}
 };
 
 static const struct intel_dpll_mgr pch_pll_mgr = {
@@ -1239,13 +1239,16 @@ static const struct intel_shared_dpll_funcs hsw_ddi_lcpll_funcs = {
 };
 
 static const struct dpll_info hsw_plls[] = {
-	{ "WRPLL 1",    &hsw_ddi_wrpll_funcs, DPLL_ID_WRPLL1,     0 },
-	{ "WRPLL 2",    &hsw_ddi_wrpll_funcs, DPLL_ID_WRPLL2,     0 },
-	{ "SPLL",       &hsw_ddi_spll_funcs,  DPLL_ID_SPLL,       0 },
-	{ "LCPLL 810",  &hsw_ddi_lcpll_funcs, DPLL_ID_LCPLL_810,  INTEL_DPLL_ALWAYS_ON },
-	{ "LCPLL 1350", &hsw_ddi_lcpll_funcs, DPLL_ID_LCPLL_1350, INTEL_DPLL_ALWAYS_ON },
-	{ "LCPLL 2700", &hsw_ddi_lcpll_funcs, DPLL_ID_LCPLL_2700, INTEL_DPLL_ALWAYS_ON },
-	{ },
+	{ .name = "WRPLL 1", .funcs = &hsw_ddi_wrpll_funcs, .id = DPLL_ID_WRPLL1, },
+	{ .name = "WRPLL 2", .funcs = &hsw_ddi_wrpll_funcs, .id = DPLL_ID_WRPLL2, },
+	{ .name = "SPLL", .funcs = &hsw_ddi_spll_funcs, .id = DPLL_ID_SPLL, },
+	{ .name = "LCPLL 810", .funcs = &hsw_ddi_lcpll_funcs, .id = DPLL_ID_LCPLL_810,
+	  .flags = INTEL_DPLL_ALWAYS_ON, },
+	{ .name = "LCPLL 1350", .funcs = &hsw_ddi_lcpll_funcs, .id = DPLL_ID_LCPLL_1350,
+	  .flags = INTEL_DPLL_ALWAYS_ON, },
+	{ .name = "LCPLL 2700", .funcs = &hsw_ddi_lcpll_funcs, .id = DPLL_ID_LCPLL_2700,
+	  .flags = INTEL_DPLL_ALWAYS_ON, },
+	{}
 };
 
 static const struct intel_dpll_mgr hsw_pll_mgr = {
@@ -1921,11 +1924,12 @@ static const struct intel_shared_dpll_funcs skl_ddi_dpll0_funcs = {
 };
 
 static const struct dpll_info skl_plls[] = {
-	{ "DPLL 0", &skl_ddi_dpll0_funcs, DPLL_ID_SKL_DPLL0, INTEL_DPLL_ALWAYS_ON },
-	{ "DPLL 1", &skl_ddi_pll_funcs,   DPLL_ID_SKL_DPLL1, 0 },
-	{ "DPLL 2", &skl_ddi_pll_funcs,   DPLL_ID_SKL_DPLL2, 0 },
-	{ "DPLL 3", &skl_ddi_pll_funcs,   DPLL_ID_SKL_DPLL3, 0 },
-	{ },
+	{ .name = "DPLL 0", .funcs = &skl_ddi_dpll0_funcs, .id = DPLL_ID_SKL_DPLL0,
+	  .flags = INTEL_DPLL_ALWAYS_ON, },
+	{ .name = "DPLL 1", .funcs = &skl_ddi_pll_funcs, .id = DPLL_ID_SKL_DPLL1, },
+	{ .name = "DPLL 2", .funcs = &skl_ddi_pll_funcs, .id = DPLL_ID_SKL_DPLL2, },
+	{ .name = "DPLL 3", .funcs = &skl_ddi_pll_funcs, .id = DPLL_ID_SKL_DPLL3, },
+	{}
 };
 
 static const struct intel_dpll_mgr skl_pll_mgr = {
@@ -2376,10 +2380,10 @@ static const struct intel_shared_dpll_funcs bxt_ddi_pll_funcs = {
 };
 
 static const struct dpll_info bxt_plls[] = {
-	{ "PORT PLL A", &bxt_ddi_pll_funcs, DPLL_ID_SKL_DPLL0, 0 },
-	{ "PORT PLL B", &bxt_ddi_pll_funcs, DPLL_ID_SKL_DPLL1, 0 },
-	{ "PORT PLL C", &bxt_ddi_pll_funcs, DPLL_ID_SKL_DPLL2, 0 },
-	{ },
+	{ .name = "PORT PLL A", .funcs = &bxt_ddi_pll_funcs, .id = DPLL_ID_SKL_DPLL0, },
+	{ .name = "PORT PLL B", .funcs = &bxt_ddi_pll_funcs, .id = DPLL_ID_SKL_DPLL1, },
+	{ .name = "PORT PLL C", .funcs = &bxt_ddi_pll_funcs, .id = DPLL_ID_SKL_DPLL2, },
+	{}
 };
 
 static const struct intel_dpll_mgr bxt_pll_mgr = {
@@ -4014,14 +4018,14 @@ static const struct intel_shared_dpll_funcs mg_pll_funcs = {
 };
 
 static const struct dpll_info icl_plls[] = {
-	{ "DPLL 0",   &combo_pll_funcs, DPLL_ID_ICL_DPLL0,  0 },
-	{ "DPLL 1",   &combo_pll_funcs, DPLL_ID_ICL_DPLL1,  0 },
-	{ "TBT PLL",  &tbt_pll_funcs, DPLL_ID_ICL_TBTPLL, 0 },
-	{ "MG PLL 1", &mg_pll_funcs, DPLL_ID_ICL_MGPLL1, 0 },
-	{ "MG PLL 2", &mg_pll_funcs, DPLL_ID_ICL_MGPLL2, 0 },
-	{ "MG PLL 3", &mg_pll_funcs, DPLL_ID_ICL_MGPLL3, 0 },
-	{ "MG PLL 4", &mg_pll_funcs, DPLL_ID_ICL_MGPLL4, 0 },
-	{ },
+	{ .name = "DPLL 0", .funcs = &combo_pll_funcs, .id = DPLL_ID_ICL_DPLL0, },
+	{ .name = "DPLL 1", .funcs = &combo_pll_funcs, .id = DPLL_ID_ICL_DPLL1, },
+	{ .name = "TBT PLL", .funcs = &tbt_pll_funcs, .id = DPLL_ID_ICL_TBTPLL, },
+	{ .name = "MG PLL 1", .funcs = &mg_pll_funcs, .id = DPLL_ID_ICL_MGPLL1, },
+	{ .name = "MG PLL 2", .funcs = &mg_pll_funcs, .id = DPLL_ID_ICL_MGPLL2, },
+	{ .name = "MG PLL 3", .funcs = &mg_pll_funcs, .id = DPLL_ID_ICL_MGPLL3, },
+	{ .name = "MG PLL 4", .funcs = &mg_pll_funcs, .id = DPLL_ID_ICL_MGPLL4, },
+	{}
 };
 
 static const struct intel_dpll_mgr icl_pll_mgr = {
@@ -4035,10 +4039,10 @@ static const struct intel_dpll_mgr icl_pll_mgr = {
 };
 
 static const struct dpll_info ehl_plls[] = {
-	{ "DPLL 0", &combo_pll_funcs, DPLL_ID_ICL_DPLL0, 0 },
-	{ "DPLL 1", &combo_pll_funcs, DPLL_ID_ICL_DPLL1, 0 },
-	{ "DPLL 4", &combo_pll_funcs, DPLL_ID_EHL_DPLL4, 0 },
-	{ },
+	{ .name = "DPLL 0", .funcs = &combo_pll_funcs, .id = DPLL_ID_ICL_DPLL0, },
+	{ .name = "DPLL 1", .funcs = &combo_pll_funcs, .id = DPLL_ID_ICL_DPLL1, },
+	{ .name = "DPLL 4", .funcs = &combo_pll_funcs, .id = DPLL_ID_EHL_DPLL4, },
+	{}
 };
 
 static const struct intel_dpll_mgr ehl_pll_mgr = {
@@ -4058,16 +4062,16 @@ static const struct intel_shared_dpll_funcs dkl_pll_funcs = {
 };
 
 static const struct dpll_info tgl_plls[] = {
-	{ "DPLL 0", &combo_pll_funcs, DPLL_ID_ICL_DPLL0,  0 },
-	{ "DPLL 1", &combo_pll_funcs, DPLL_ID_ICL_DPLL1,  0 },
-	{ "TBT PLL",  &tbt_pll_funcs, DPLL_ID_ICL_TBTPLL, 0 },
-	{ "TC PLL 1", &dkl_pll_funcs, DPLL_ID_ICL_MGPLL1, 0 },
-	{ "TC PLL 2", &dkl_pll_funcs, DPLL_ID_ICL_MGPLL2, 0 },
-	{ "TC PLL 3", &dkl_pll_funcs, DPLL_ID_ICL_MGPLL3, 0 },
-	{ "TC PLL 4", &dkl_pll_funcs, DPLL_ID_ICL_MGPLL4, 0 },
-	{ "TC PLL 5", &dkl_pll_funcs, DPLL_ID_TGL_MGPLL5, 0 },
-	{ "TC PLL 6", &dkl_pll_funcs, DPLL_ID_TGL_MGPLL6, 0 },
-	{ },
+	{ .name = "DPLL 0", .funcs = &combo_pll_funcs, .id = DPLL_ID_ICL_DPLL0, },
+	{ .name = "DPLL 1", .funcs = &combo_pll_funcs, .id = DPLL_ID_ICL_DPLL1, },
+	{ .name = "TBT PLL", .funcs = &tbt_pll_funcs, .id = DPLL_ID_ICL_TBTPLL, },
+	{ .name = "TC PLL 1", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL1, },
+	{ .name = "TC PLL 2", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL2, },
+	{ .name = "TC PLL 3", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL3, },
+	{ .name = "TC PLL 4", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL4, },
+	{ .name = "TC PLL 5", .funcs = &dkl_pll_funcs, .id = DPLL_ID_TGL_MGPLL5, },
+	{ .name = "TC PLL 6", .funcs = &dkl_pll_funcs, .id = DPLL_ID_TGL_MGPLL6, },
+	{}
 };
 
 static const struct intel_dpll_mgr tgl_pll_mgr = {
@@ -4081,10 +4085,10 @@ static const struct intel_dpll_mgr tgl_pll_mgr = {
 };
 
 static const struct dpll_info rkl_plls[] = {
-	{ "DPLL 0", &combo_pll_funcs, DPLL_ID_ICL_DPLL0, 0 },
-	{ "DPLL 1", &combo_pll_funcs, DPLL_ID_ICL_DPLL1, 0 },
-	{ "DPLL 4", &combo_pll_funcs, DPLL_ID_EHL_DPLL4, 0 },
-	{ },
+	{ .name = "DPLL 0", .funcs = &combo_pll_funcs, .id = DPLL_ID_ICL_DPLL0, },
+	{ .name = "DPLL 1", .funcs = &combo_pll_funcs, .id = DPLL_ID_ICL_DPLL1, },
+	{ .name = "DPLL 4", .funcs = &combo_pll_funcs, .id = DPLL_ID_EHL_DPLL4, },
+	{}
 };
 
 static const struct intel_dpll_mgr rkl_pll_mgr = {
@@ -4097,11 +4101,11 @@ static const struct intel_dpll_mgr rkl_pll_mgr = {
 };
 
 static const struct dpll_info dg1_plls[] = {
-	{ "DPLL 0", &combo_pll_funcs, DPLL_ID_DG1_DPLL0, 0 },
-	{ "DPLL 1", &combo_pll_funcs, DPLL_ID_DG1_DPLL1, 0 },
-	{ "DPLL 2", &combo_pll_funcs, DPLL_ID_DG1_DPLL2, 0 },
-	{ "DPLL 3", &combo_pll_funcs, DPLL_ID_DG1_DPLL3, 0 },
-	{ },
+	{ .name = "DPLL 0", .funcs = &combo_pll_funcs, .id = DPLL_ID_DG1_DPLL0, },
+	{ .name = "DPLL 1", .funcs = &combo_pll_funcs, .id = DPLL_ID_DG1_DPLL1, },
+	{ .name = "DPLL 2", .funcs = &combo_pll_funcs, .id = DPLL_ID_DG1_DPLL2, },
+	{ .name = "DPLL 3", .funcs = &combo_pll_funcs, .id = DPLL_ID_DG1_DPLL3, },
+	{}
 };
 
 static const struct intel_dpll_mgr dg1_pll_mgr = {
@@ -4114,11 +4118,11 @@ static const struct intel_dpll_mgr dg1_pll_mgr = {
 };
 
 static const struct dpll_info adls_plls[] = {
-	{ "DPLL 0", &combo_pll_funcs, DPLL_ID_ICL_DPLL0, 0 },
-	{ "DPLL 1", &combo_pll_funcs, DPLL_ID_ICL_DPLL1, 0 },
-	{ "DPLL 2", &combo_pll_funcs, DPLL_ID_DG1_DPLL2, 0 },
-	{ "DPLL 3", &combo_pll_funcs, DPLL_ID_DG1_DPLL3, 0 },
-	{ },
+	{ .name = "DPLL 0", .funcs = &combo_pll_funcs, .id = DPLL_ID_ICL_DPLL0, },
+	{ .name = "DPLL 1", .funcs = &combo_pll_funcs, .id = DPLL_ID_ICL_DPLL1, },
+	{ .name = "DPLL 2", .funcs = &combo_pll_funcs, .id = DPLL_ID_DG1_DPLL2, },
+	{ .name = "DPLL 3", .funcs = &combo_pll_funcs, .id = DPLL_ID_DG1_DPLL3, },
+	{}
 };
 
 static const struct intel_dpll_mgr adls_pll_mgr = {
@@ -4131,14 +4135,14 @@ static const struct intel_dpll_mgr adls_pll_mgr = {
 };
 
 static const struct dpll_info adlp_plls[] = {
-	{ "DPLL 0", &combo_pll_funcs, DPLL_ID_ICL_DPLL0,  0 },
-	{ "DPLL 1", &combo_pll_funcs, DPLL_ID_ICL_DPLL1,  0 },
-	{ "TBT PLL",  &tbt_pll_funcs, DPLL_ID_ICL_TBTPLL, 0 },
-	{ "TC PLL 1", &dkl_pll_funcs, DPLL_ID_ICL_MGPLL1, 0 },
-	{ "TC PLL 2", &dkl_pll_funcs, DPLL_ID_ICL_MGPLL2, 0 },
-	{ "TC PLL 3", &dkl_pll_funcs, DPLL_ID_ICL_MGPLL3, 0 },
-	{ "TC PLL 4", &dkl_pll_funcs, DPLL_ID_ICL_MGPLL4, 0 },
-	{ },
+	{ .name = "DPLL 0", .funcs = &combo_pll_funcs, .id = DPLL_ID_ICL_DPLL0, },
+	{ .name = "DPLL 1", .funcs = &combo_pll_funcs, .id = DPLL_ID_ICL_DPLL1, },
+	{ .name = "TBT PLL", .funcs = &tbt_pll_funcs, .id = DPLL_ID_ICL_TBTPLL, },
+	{ .name = "TC PLL 1", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL1, },
+	{ .name = "TC PLL 2", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL2, },
+	{ .name = "TC PLL 3", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL3, },
+	{ .name = "TC PLL 4", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL4, },
+	{}
 };
 
 static const struct intel_dpll_mgr adlp_pll_mgr = {
-- 
2.41.0

