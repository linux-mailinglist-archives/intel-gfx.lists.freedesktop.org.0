Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3010BCC1A1D
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Dec 2025 09:46:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CF3910E79A;
	Tue, 16 Dec 2025 08:46:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aI5Tp/eV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECC7810E796;
 Tue, 16 Dec 2025 08:46:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765874807; x=1797410807;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ESF4uxW78/a7aNK+FYnkj4IvFH58/5UP5wi3+gZNfwU=;
 b=aI5Tp/eVSjhtiFyjZ3GGOBSrGW5xgISTnlJYrM2cSH3ehKsFmlXoLOXF
 z5yB4gcjTXdT60P9RAxPhBd96DaNN7f8e56TdJDy6esLRpp3ZFC2kgobP
 n9O8M9NIcFPte9lcP54EvZAGdL6aLLoNYWrr/Rebnj89Dm57iFfsB5FBb
 c4Cmo0yncf5U2eqVda0LQKoJGA84OGaDD7Y0MOokBa+sC2T+jz/hgtB1P
 kRS+lA5OzxG8xvboUiZHif0J3iW25L1d4N84gBbqXo7pzktBnQfG8qqOP
 QUibw9e/+ysgW8PP4UH4RD+lmxEAW5oWe6b5CAssmxC/3eQFuAZrLUaIp Q==;
X-CSE-ConnectionGUID: UDMRAt5AQ7K6NjJvlncr7A==
X-CSE-MsgGUID: f7yVQMjSRYaeBfhPN9qc0w==
X-IronPort-AV: E=McAfee;i="6800,10657,11643"; a="71642305"
X-IronPort-AV: E=Sophos;i="6.21,152,1763452800"; d="scan'208";a="71642305"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 00:46:46 -0800
X-CSE-ConnectionGUID: LmW6iha2QRSdNLjoi5jFbQ==
X-CSE-MsgGUID: zUZSiWVDSr2vsn2+IRFoJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,152,1763452800"; d="scan'208";a="198448785"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa009.fm.intel.com with ESMTP; 16 Dec 2025 00:46:45 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
	Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH 05/13] drm/i915/cx0: Create macro around pll tables
Date: Tue, 16 Dec 2025 10:37:51 +0200
Message-Id: <20251216083759.383163-6-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251216083759.383163-1-mika.kahola@intel.com>
References: <20251216083759.383163-1-mika.kahola@intel.com>
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

Create macro for storing pll dividers with table name
and clock rate.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 293 ++++++++++---------
 1 file changed, 159 insertions(+), 134 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 363df72fd01d..a33150db2f16 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -780,25 +780,56 @@ static const struct intel_c10pll_state mtl_c10_dp_hbr3 = {
 	.pll[19] = 0x23,
 };
 
-static const struct intel_c10pll_state * const mtl_c10_dp_tables[] = {
-	&mtl_c10_dp_rbr,
-	&mtl_c10_dp_hbr1,
-	&mtl_c10_dp_hbr2,
-	&mtl_c10_dp_hbr3,
-	NULL,
-};
-
-static const struct intel_c10pll_state * const mtl_c10_edp_tables[] = {
-	&mtl_c10_dp_rbr,
-	&mtl_c10_edp_r216,
-	&mtl_c10_edp_r243,
-	&mtl_c10_dp_hbr1,
-	&mtl_c10_edp_r324,
-	&mtl_c10_edp_r432,
-	&mtl_c10_dp_hbr2,
-	&mtl_c10_edp_r675,
-	&mtl_c10_dp_hbr3,
-	NULL,
+struct intel_cx0pll_params {
+	const char *name;
+	bool is_c10;
+	bool is_hdmi;
+	int clock_rate;
+	union {
+		const struct intel_c10pll_state *c10;
+		const struct intel_c20pll_state *c20;
+	};
+};
+
+#define __C10PLL_PARAMS(__is_hdmi, __clock_rate, __state) { \
+        .name = __stringify(__state), \
+        .is_c10 = true, \
+        .is_hdmi = __is_hdmi, \
+        .clock_rate = __clock_rate, \
+        .c10 = &__state, \
+}
+
+#define __C20PLL_PARAMS(__is_hdmi, __clock_rate, __state)    { \
+        .name = __stringify(__state), \
+        .is_c10 = false, \
+        .is_hdmi = __is_hdmi, \
+        .clock_rate = __clock_rate, \
+        .c20 = &__state, \
+}
+
+#define C10PLL_HDMI_PARAMS(__clock_rate, __state)       __C10PLL_PARAMS(true, __clock_rate, __state)
+#define C10PLL_DP_PARAMS(__clock_rate, __state)         __C10PLL_PARAMS(false, __clock_rate, __state)
+
+#define C20PLL_HDMI_PARAMS(__clock_rate, __state)       __C20PLL_PARAMS(true, __clock_rate, __state)
+#define C20PLL_DP_PARAMS(__clock_rate, __state)         __C20PLL_PARAMS(false, __clock_rate, __state)
+
+static const struct intel_cx0pll_params mtl_c10_dp_tables[] = {
+	C10PLL_DP_PARAMS(162000, mtl_c10_dp_rbr),
+	C10PLL_DP_PARAMS(270000, mtl_c10_dp_hbr1),
+	C10PLL_DP_PARAMS(540000, mtl_c10_dp_hbr2),
+	C10PLL_DP_PARAMS(810000, mtl_c10_dp_hbr3),
+};
+
+static const struct intel_cx0pll_params mtl_c10_edp_tables[] = {
+	C10PLL_DP_PARAMS(162000, mtl_c10_dp_rbr),
+	C10PLL_DP_PARAMS(216000, mtl_c10_edp_r216),
+	C10PLL_DP_PARAMS(243000, mtl_c10_edp_r243),
+	C10PLL_DP_PARAMS(270000, mtl_c10_dp_hbr1),
+	C10PLL_DP_PARAMS(324000, mtl_c10_edp_r324),
+	C10PLL_DP_PARAMS(432000, mtl_c10_edp_r432),
+	C10PLL_DP_PARAMS(540000, mtl_c10_dp_hbr2),
+	C10PLL_DP_PARAMS(675000, mtl_c10_edp_r675),
+	C10PLL_DP_PARAMS(810000, mtl_c10_dp_hbr3),
 };
 
 /* C20 basic DP 1.4 tables */
@@ -976,15 +1007,14 @@ static const struct intel_c20pll_state mtl_c20_dp_uhbr20 = {
 		},
 };
 
-static const struct intel_c20pll_state * const mtl_c20_dp_tables[] = {
-	&mtl_c20_dp_rbr,
-	&mtl_c20_dp_hbr1,
-	&mtl_c20_dp_hbr2,
-	&mtl_c20_dp_hbr3,
-	&mtl_c20_dp_uhbr10,
-	&mtl_c20_dp_uhbr13_5,
-	&mtl_c20_dp_uhbr20,
-	NULL,
+static const struct intel_cx0pll_params mtl_c20_dp_tables[] = {
+	C20PLL_DP_PARAMS(162000, mtl_c20_dp_rbr),
+	C20PLL_DP_PARAMS(270000, mtl_c20_dp_hbr1),
+	C20PLL_DP_PARAMS(540000, mtl_c20_dp_hbr2),
+	C20PLL_DP_PARAMS(810000, mtl_c20_dp_hbr3),
+	C20PLL_DP_PARAMS(1000000, mtl_c20_dp_uhbr10),
+	C20PLL_DP_PARAMS(1350000, mtl_c20_dp_uhbr13_5),
+	C20PLL_DP_PARAMS(2000000, mtl_c20_dp_uhbr20),
 };
 
 /*
@@ -1116,17 +1146,16 @@ static const struct intel_c20pll_state xe2hpd_c20_edp_r675 = {
 		  },
 };
 
-static const struct intel_c20pll_state * const xe2hpd_c20_edp_tables[] = {
-	&mtl_c20_dp_rbr,
-	&xe2hpd_c20_edp_r216,
-	&xe2hpd_c20_edp_r243,
-	&mtl_c20_dp_hbr1,
-	&xe2hpd_c20_edp_r324,
-	&xe2hpd_c20_edp_r432,
-	&mtl_c20_dp_hbr2,
-	&xe2hpd_c20_edp_r675,
-	&mtl_c20_dp_hbr3,
-	NULL,
+static const struct intel_cx0pll_params xe2hpd_c20_edp_tables[] = {
+	C20PLL_DP_PARAMS(162000, mtl_c20_dp_rbr),
+	C20PLL_DP_PARAMS(216000, xe2hpd_c20_edp_r216),
+	C20PLL_DP_PARAMS(243000, xe2hpd_c20_edp_r243),
+	C20PLL_DP_PARAMS(270000, mtl_c20_dp_hbr1),
+	C20PLL_DP_PARAMS(324000, xe2hpd_c20_edp_r324),
+	C20PLL_DP_PARAMS(432000, xe2hpd_c20_edp_r432),
+	C20PLL_DP_PARAMS(540000, mtl_c20_dp_hbr2),
+	C20PLL_DP_PARAMS(675000, xe2hpd_c20_edp_r675),
+	C20PLL_DP_PARAMS(810000, mtl_c20_dp_hbr3),
 };
 
 static const struct intel_c20pll_state xe2hpd_c20_dp_uhbr13_5 = {
@@ -1154,30 +1183,28 @@ static const struct intel_c20pll_state xe2hpd_c20_dp_uhbr13_5 = {
 		},
 };
 
-static const struct intel_c20pll_state * const xe2hpd_c20_dp_tables[] = {
-	&mtl_c20_dp_rbr,
-	&mtl_c20_dp_hbr1,
-	&mtl_c20_dp_hbr2,
-	&mtl_c20_dp_hbr3,
-	&mtl_c20_dp_uhbr10,
-	&xe2hpd_c20_dp_uhbr13_5,
-	NULL,
+static const struct intel_cx0pll_params xe2hpd_c20_dp_tables[] = {
+	C20PLL_DP_PARAMS(162000, mtl_c20_dp_rbr),
+	C20PLL_DP_PARAMS(270000, mtl_c20_dp_hbr1),
+	C20PLL_DP_PARAMS(540000, mtl_c20_dp_hbr2),
+	C20PLL_DP_PARAMS(810000, mtl_c20_dp_hbr3),
+	C20PLL_DP_PARAMS(1000000, mtl_c20_dp_uhbr10),
+	C20PLL_DP_PARAMS(1350000, xe2hpd_c20_dp_uhbr13_5),
 };
 
-static const struct intel_c20pll_state * const xe3lpd_c20_dp_edp_tables[] = {
-	&mtl_c20_dp_rbr,
-	&xe2hpd_c20_edp_r216,
-	&xe2hpd_c20_edp_r243,
-	&mtl_c20_dp_hbr1,
-	&xe2hpd_c20_edp_r324,
-	&xe2hpd_c20_edp_r432,
-	&mtl_c20_dp_hbr2,
-	&xe2hpd_c20_edp_r675,
-	&mtl_c20_dp_hbr3,
-	&mtl_c20_dp_uhbr10,
-	&xe2hpd_c20_dp_uhbr13_5,
-	&mtl_c20_dp_uhbr20,
-	NULL,
+static const struct intel_cx0pll_params xe3lpd_c20_dp_edp_tables[] = {
+	C20PLL_DP_PARAMS(162000, mtl_c20_dp_rbr),
+	C20PLL_DP_PARAMS(216000, xe2hpd_c20_edp_r216),
+	C20PLL_DP_PARAMS(243000, xe2hpd_c20_edp_r243),
+	C20PLL_DP_PARAMS(270000, mtl_c20_dp_hbr1),
+	C20PLL_DP_PARAMS(324000, xe2hpd_c20_edp_r324),
+	C20PLL_DP_PARAMS(432000, xe2hpd_c20_edp_r432),
+	C20PLL_DP_PARAMS(540000, mtl_c20_dp_hbr2),
+	C20PLL_DP_PARAMS(675000, xe2hpd_c20_edp_r675),
+	C20PLL_DP_PARAMS(810000, mtl_c20_dp_hbr3),
+	C20PLL_DP_PARAMS(1000000, mtl_c20_dp_uhbr10),
+	C20PLL_DP_PARAMS(1350000, xe2hpd_c20_dp_uhbr13_5),
+	C20PLL_DP_PARAMS(2000000, mtl_c20_dp_uhbr20),
 };
 
 /*
@@ -1715,53 +1742,52 @@ static const struct intel_c10pll_state mtl_c10_hdmi_593407 = {
 	.pll[15] = 0x08, .pll[16] = 0x08, .pll[17] = 0x8F, .pll[18] = 0x84, .pll[19] = 0x23,
 };
 
-static const struct intel_c10pll_state * const mtl_c10_hdmi_tables[] = {
-	&mtl_c10_hdmi_25_2, /* Consolidated Table */
-	&mtl_c10_hdmi_27_0, /* Consolidated Table */
-	&mtl_c10_hdmi_27027,
-	&mtl_c10_hdmi_28320,
-	&mtl_c10_hdmi_30240,
-	&mtl_c10_hdmi_31500,
-	&mtl_c10_hdmi_36000,
-	&mtl_c10_hdmi_40000,
-	&mtl_c10_hdmi_49500,
-	&mtl_c10_hdmi_50000,
-	&mtl_c10_hdmi_57284,
-	&mtl_c10_hdmi_58000,
-	&mtl_c10_hdmi_65000,
-	&mtl_c10_hdmi_71000,
-	&mtl_c10_hdmi_74176,
-	&mtl_c10_hdmi_74_25, /* Consolidated Table */
-	&mtl_c10_hdmi_75000,
-	&mtl_c10_hdmi_78750,
-	&mtl_c10_hdmi_85500,
-	&mtl_c10_hdmi_88750,
-	&mtl_c10_hdmi_106500,
-	&mtl_c10_hdmi_108000,
-	&mtl_c10_hdmi_115500,
-	&mtl_c10_hdmi_119000,
-	&mtl_c10_hdmi_135000,
-	&mtl_c10_hdmi_138500,
-	&mtl_c10_hdmi_147160,
-	&mtl_c10_hdmi_148352,
-	&mtl_c10_hdmi_148_5, /* Consolidated Table */
-	&mtl_c10_hdmi_154000,
-	&mtl_c10_hdmi_162000,
-	&mtl_c10_hdmi_167000,
-	&mtl_c10_hdmi_197802,
-	&mtl_c10_hdmi_198000,
-	&mtl_c10_hdmi_209800,
-	&mtl_c10_hdmi_241500,
-	&mtl_c10_hdmi_262750,
-	&mtl_c10_hdmi_268500,
-	&mtl_c10_hdmi_296703,
-	&mtl_c10_hdmi_297000,
-	&mtl_c10_hdmi_319750,
-	&mtl_c10_hdmi_497750,
-	&mtl_c10_hdmi_592000,
-	&mtl_c10_hdmi_593407,
-	&mtl_c10_hdmi_594, /* Consolidated Table */
-	NULL,
+static const struct intel_cx0pll_params mtl_c10_hdmi_tables[] = {
+	C10PLL_HDMI_PARAMS(25200, mtl_c10_hdmi_25_2), /* Consolidated Table */
+	C10PLL_HDMI_PARAMS(27000, mtl_c10_hdmi_27_0), /* Consolidated Table */
+	C10PLL_HDMI_PARAMS(27027, mtl_c10_hdmi_27027),
+	C10PLL_HDMI_PARAMS(28320, mtl_c10_hdmi_28320),
+	C10PLL_HDMI_PARAMS(30240, mtl_c10_hdmi_30240),
+	C10PLL_HDMI_PARAMS(31500, mtl_c10_hdmi_31500),
+	C10PLL_HDMI_PARAMS(36000, mtl_c10_hdmi_36000),
+	C10PLL_HDMI_PARAMS(40000, mtl_c10_hdmi_40000),
+	C10PLL_HDMI_PARAMS(49500, mtl_c10_hdmi_49500),
+	C10PLL_HDMI_PARAMS(50000, mtl_c10_hdmi_50000),
+	C10PLL_HDMI_PARAMS(57284, mtl_c10_hdmi_57284),
+	C10PLL_HDMI_PARAMS(58000, mtl_c10_hdmi_58000),
+	C10PLL_HDMI_PARAMS(65000, mtl_c10_hdmi_65000),
+	C10PLL_HDMI_PARAMS(71000, mtl_c10_hdmi_71000),
+	C10PLL_HDMI_PARAMS(74176, mtl_c10_hdmi_74176),
+	C10PLL_HDMI_PARAMS(74250, mtl_c10_hdmi_74_25), /* Consolidated Table */
+	C10PLL_HDMI_PARAMS(75000, mtl_c10_hdmi_75000),
+	C10PLL_HDMI_PARAMS(78750, mtl_c10_hdmi_78750),
+	C10PLL_HDMI_PARAMS(85500, mtl_c10_hdmi_85500),
+	C10PLL_HDMI_PARAMS(88750, mtl_c10_hdmi_88750),
+	C10PLL_HDMI_PARAMS(106500, mtl_c10_hdmi_106500),
+	C10PLL_HDMI_PARAMS(108000, mtl_c10_hdmi_108000),
+	C10PLL_HDMI_PARAMS(115500, mtl_c10_hdmi_115500),
+	C10PLL_HDMI_PARAMS(119000, mtl_c10_hdmi_119000),
+	C10PLL_HDMI_PARAMS(135000, mtl_c10_hdmi_135000),
+	C10PLL_HDMI_PARAMS(138500, mtl_c10_hdmi_138500),
+	C10PLL_HDMI_PARAMS(147160, mtl_c10_hdmi_147160),
+	C10PLL_HDMI_PARAMS(148352, mtl_c10_hdmi_148352),
+	C10PLL_HDMI_PARAMS(148500, mtl_c10_hdmi_148_5), /* Consolidated Table */
+	C10PLL_HDMI_PARAMS(154000, mtl_c10_hdmi_154000),
+	C10PLL_HDMI_PARAMS(162000, mtl_c10_hdmi_162000),
+	C10PLL_HDMI_PARAMS(167000, mtl_c10_hdmi_167000),
+	C10PLL_HDMI_PARAMS(197802, mtl_c10_hdmi_197802),
+	C10PLL_HDMI_PARAMS(198000, mtl_c10_hdmi_198000),
+	C10PLL_HDMI_PARAMS(209800, mtl_c10_hdmi_209800),
+	C10PLL_HDMI_PARAMS(241500, mtl_c10_hdmi_241500),
+	C10PLL_HDMI_PARAMS(262750, mtl_c10_hdmi_262750),
+	C10PLL_HDMI_PARAMS(268500, mtl_c10_hdmi_268500),
+	C10PLL_HDMI_PARAMS(296703, mtl_c10_hdmi_296703),
+	C10PLL_HDMI_PARAMS(297000, mtl_c10_hdmi_297000),
+	C10PLL_HDMI_PARAMS(319750, mtl_c10_hdmi_319750),
+	C10PLL_HDMI_PARAMS(497750, mtl_c10_hdmi_497750),
+	C10PLL_HDMI_PARAMS(592000, mtl_c10_hdmi_592000),
+	C10PLL_HDMI_PARAMS(593407, mtl_c10_hdmi_593407),
+	C10PLL_HDMI_PARAMS(594000, mtl_c10_hdmi_594), /* Consolidated Table */
 };
 
 static const struct intel_c20pll_state mtl_c20_hdmi_25_175 = {
@@ -2014,21 +2040,20 @@ static const struct intel_c20pll_state mtl_c20_hdmi_1200 = {
 		},
 };
 
-static const struct intel_c20pll_state * const mtl_c20_hdmi_tables[] = {
-	&mtl_c20_hdmi_25_175,
-	&mtl_c20_hdmi_27_0,
-	&mtl_c20_hdmi_74_25,
-	&mtl_c20_hdmi_148_5,
-	&mtl_c20_hdmi_594,
-	&mtl_c20_hdmi_300,
-	&mtl_c20_hdmi_600,
-	&mtl_c20_hdmi_800,
-	&mtl_c20_hdmi_1000,
-	&mtl_c20_hdmi_1200,
-	NULL,
+static const struct intel_cx0pll_params mtl_c20_hdmi_tables[] = {
+	C20PLL_HDMI_PARAMS(25175, mtl_c20_hdmi_25_175),
+	C20PLL_HDMI_PARAMS(27000, mtl_c20_hdmi_27_0),
+	C20PLL_HDMI_PARAMS(74250, mtl_c20_hdmi_74_25),
+	C20PLL_HDMI_PARAMS(148500,mtl_c20_hdmi_148_5),
+	C20PLL_HDMI_PARAMS(594000, mtl_c20_hdmi_594),
+	C20PLL_HDMI_PARAMS(300000, mtl_c20_hdmi_300),
+	C20PLL_HDMI_PARAMS(600000, mtl_c20_hdmi_600),
+	C20PLL_HDMI_PARAMS(800000, mtl_c20_hdmi_800),
+	C20PLL_HDMI_PARAMS(1000000, mtl_c20_hdmi_1000),
+	C20PLL_HDMI_PARAMS(1200000, mtl_c20_hdmi_1200),
 };
 
-static const struct intel_c10pll_state * const *
+static const struct intel_cx0pll_params *
 intel_c10pll_tables_get(const struct intel_crtc_state *crtc_state,
 			struct intel_encoder *encoder)
 {
@@ -2185,16 +2210,16 @@ static int intel_c20pll_calc_port_clock(struct intel_encoder *encoder,
  * intel_c20pll_calc_state_from_table().
  */
 static int intel_c10pll_calc_state_from_table(struct intel_encoder *encoder,
-					      const struct intel_c10pll_state * const *tables,
+					      const struct intel_cx0pll_params *tables,
 					      bool is_dp, int port_clock, int lane_count,
 					      struct intel_cx0pll_state *pll_state)
 {
 	struct intel_display *display = to_intel_display(encoder);
 	int i;
 
-	for (i = 0; tables[i]; i++) {
-		if (port_clock == tables[i]->clock) {
-			pll_state->c10 = *tables[i];
+	for (i = 0; tables; i++) {
+		if (port_clock == tables[i].clock_rate) {
+			pll_state->c10 = *tables[i].c10;
 			intel_cx0pll_update_ssc(encoder, pll_state, is_dp);
 			intel_c10pll_update_pll(encoder, pll_state);
 
@@ -2216,7 +2241,7 @@ static int intel_c10pll_calc_state(const struct intel_crtc_state *crtc_state,
 {
 	struct intel_display *display = to_intel_display(encoder);
 	bool is_dp = intel_crtc_has_dp_encoder(crtc_state);
-	const struct intel_c10pll_state * const *tables;
+	const struct intel_cx0pll_params *tables;
 	int err;
 
 	tables = intel_c10pll_tables_get(crtc_state, encoder);
@@ -2506,7 +2531,7 @@ static int intel_c20_compute_hdmi_tmds_pll(struct intel_display *display,
 
 	return 0;
 }
-static const struct intel_c20pll_state * const *
+static const struct intel_cx0pll_params *
 intel_c20_pll_tables_get(struct intel_display *display,
 			 struct intel_encoder *encoder)
 {
@@ -2672,21 +2697,21 @@ static void intel_c20_program_vdr_params(struct intel_encoder *encoder,
 		      MB_WRITE_COMMITTED);
 }
 
-static const struct intel_c20pll_state *
+static const struct intel_cx0pll_params *
 intel_c20_pll_find_table(struct intel_display *display,
 			 struct intel_encoder *encoder,
 			 int port_clock)
 {
-	const struct intel_c20pll_state * const *tables;
+	const struct intel_cx0pll_params *tables;
 	int i;
 
 	tables = intel_c20_pll_tables_get(display, encoder);
 	if (!tables)
 		return NULL;
 
-	for (i = 0; tables[i]; i++)
-		if (port_clock == tables[i]->clock)
-			return tables[i];
+	for (i = 0; tables; i++)
+		if (port_clock == tables[i].clock_rate)
+			return &tables[i];
 
 	return NULL;
 }
@@ -2696,13 +2721,13 @@ static int intel_c20pll_calc_state_from_table(struct intel_display *display,
 					      int port_clock,
 					      struct intel_cx0pll_state *pll_state)
 {
-	const struct intel_c20pll_state *table;
+	const struct intel_cx0pll_params *table;
 
 	table = intel_c20_pll_find_table(display, encoder, port_clock);
 	if (!table)
 		return -EINVAL;
 
-	pll_state->c20 = *table;
+	pll_state->c20 = *table->c20;
 
 	intel_cx0pll_update_ssc(encoder, pll_state, intel_encoder_is_dp(encoder));
 
-- 
2.34.1

