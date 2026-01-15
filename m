Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F8A0D22F09
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jan 2026 08:51:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE12A10E6E1;
	Thu, 15 Jan 2026 07:51:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X92yec57";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BABA810E6DD;
 Thu, 15 Jan 2026 07:51:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768463475; x=1799999475;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WLVS8RjbpkZ+rASa4rOHbeQsVhdArAawTbPQTQT1Jzo=;
 b=X92yec57+YFIGX+KfDm+cTexefGfWdvf3/53IoDAnzOppDpRDU5VDbww
 IM/KuvQmnokn7qfuheO1TcYjDbTN0thQrxMJ7gJ3IXhfyv2rrWqTPijXq
 XOACy60ZlNzUCgvndVMqylypUaR9v9ayr2lE799WsiCCXKoe5Gw4IWBem
 EyQzK1CcB+jJ37wgpLdYQQVTJcNOqe5y1Yb3txX0WCIkWS249BBlUS4Rl
 e4h2sm0c0OPZp9e2kceRh6IU+Iz81qXbPpRJjwnrFsx4dnCeHXujGarE8
 tje3UATwh6Rt3Mzeb5tfHFT9ikkzzD09woe7kjnvEQzO1hoX/vd03hNxA g==;
X-CSE-ConnectionGUID: mYPKAVPjQs67R9IixpZyIg==
X-CSE-MsgGUID: F0cfvl7UTj+OBCvBlLYFkA==
X-IronPort-AV: E=McAfee;i="6800,10657,11671"; a="92436216"
X-IronPort-AV: E=Sophos;i="6.21,226,1763452800"; d="scan'208";a="92436216"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 23:51:15 -0800
X-CSE-ConnectionGUID: A8eD2CokQFmleEHkmGRfpA==
X-CSE-MsgGUID: dMzSOauST5ymVXFBvuPkJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,226,1763452800"; d="scan'208";a="204101757"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa010.jf.intel.com with ESMTP; 14 Jan 2026 23:51:14 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v3 06/15] drm/i915/cx0: Create macro around PLL tables
Date: Thu, 15 Jan 2026 07:50:52 +0000
Message-ID: <20260115075101.2214842-7-mika.kahola@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260115075101.2214842-1-mika.kahola@intel.com>
References: <20260115075101.2214842-1-mika.kahola@intel.com>
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

Create macro for storing PLL dividers with table name
and clock rate.

v2: Preserve the terminating {} in each PLL table.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 301 ++++++++++---------
 1 file changed, 167 insertions(+), 134 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 77378e057908..8e780480f6c0 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -780,25 +780,58 @@ static const struct intel_c10pll_state mtl_c10_dp_hbr3 = {
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
+	.name = __stringify(__state), \
+	.is_c10 = true, \
+	.is_hdmi = __is_hdmi, \
+	.clock_rate = __clock_rate, \
+	.c10 = &__state, \
+}
+
+#define __C20PLL_PARAMS(__is_hdmi, __clock_rate, __state)    { \
+	.name = __stringify(__state), \
+	.is_c10 = false, \
+	.is_hdmi = __is_hdmi, \
+	.clock_rate = __clock_rate, \
+	.c20 = &__state, \
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
+	{}
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
+	{}
 };
 
 /* C20 basic DP 1.4 tables */
@@ -976,15 +1009,15 @@ static const struct intel_c20pll_state mtl_c20_dp_uhbr20 = {
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
+	{}
 };
 
 /*
@@ -1116,17 +1149,17 @@ static const struct intel_c20pll_state xe2hpd_c20_edp_r675 = {
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
+	{}
 };
 
 static const struct intel_c20pll_state xe2hpd_c20_dp_uhbr13_5 = {
@@ -1154,30 +1187,30 @@ static const struct intel_c20pll_state xe2hpd_c20_dp_uhbr13_5 = {
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
+	{}
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
+	{}
 };
 
 /*
@@ -1715,53 +1748,53 @@ static const struct intel_c10pll_state mtl_c10_hdmi_593407 = {
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
+	{}
 };
 
 static const struct intel_c20pll_state mtl_c20_hdmi_25_175 = {
@@ -2014,21 +2047,21 @@ static const struct intel_c20pll_state mtl_c20_hdmi_1200 = {
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
+	C20PLL_HDMI_PARAMS(148500, mtl_c20_hdmi_148_5),
+	C20PLL_HDMI_PARAMS(594000, mtl_c20_hdmi_594),
+	C20PLL_HDMI_PARAMS(300000, mtl_c20_hdmi_300),
+	C20PLL_HDMI_PARAMS(600000, mtl_c20_hdmi_600),
+	C20PLL_HDMI_PARAMS(800000, mtl_c20_hdmi_800),
+	C20PLL_HDMI_PARAMS(1000000, mtl_c20_hdmi_1000),
+	C20PLL_HDMI_PARAMS(1200000, mtl_c20_hdmi_1200),
+	{}
 };
 
-static const struct intel_c10pll_state * const *
+static const struct intel_cx0pll_params *
 intel_c10pll_tables_get(const struct intel_crtc_state *crtc_state,
 			struct intel_encoder *encoder)
 {
@@ -2183,16 +2216,16 @@ static int intel_c20pll_calc_port_clock(const struct intel_c20pll_state *pll_sta
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
+	for (i = 0; tables[i].name; i++) {
+		if (port_clock == tables[i].clock_rate) {
+			pll_state->c10 = *tables[i].c10;
 			intel_cx0pll_update_ssc(encoder, pll_state, is_dp);
 			intel_c10pll_update_pll(encoder, pll_state);
 
@@ -2214,7 +2247,7 @@ static int intel_c10pll_calc_state(const struct intel_crtc_state *crtc_state,
 {
 	struct intel_display *display = to_intel_display(encoder);
 	bool is_dp = intel_crtc_has_dp_encoder(crtc_state);
-	const struct intel_c10pll_state * const *tables;
+	const struct intel_cx0pll_params *tables;
 	int err;
 
 	tables = intel_c10pll_tables_get(crtc_state, encoder);
@@ -2505,7 +2538,7 @@ static int intel_c20_compute_hdmi_tmds_pll(struct intel_display *display,
 	return 0;
 }
 
-static const struct intel_c20pll_state * const *
+static const struct intel_cx0pll_params *
 intel_c20_pll_tables_get(const struct intel_crtc_state *crtc_state,
 			 struct intel_encoder *encoder)
 {
@@ -2673,20 +2706,20 @@ static void intel_c20_program_vdr_params(struct intel_encoder *encoder,
 		      MB_WRITE_COMMITTED);
 }
 
-static const struct intel_c20pll_state *
+static const struct intel_cx0pll_params *
 intel_c20_pll_find_table(const struct intel_crtc_state *crtc_state,
 			 struct intel_encoder *encoder)
 {
-	const struct intel_c20pll_state * const *tables;
+	const struct intel_cx0pll_params *tables;
 	int i;
 
 	tables = intel_c20_pll_tables_get(crtc_state, encoder);
 	if (!tables)
 		return NULL;
 
-	for (i = 0; tables[i]; i++)
-		if (crtc_state->port_clock == tables[i]->clock)
-			return tables[i];
+	for (i = 0; tables[i].name; i++)
+		if (crtc_state->port_clock == tables[i].clock_rate)
+			return &tables[i];
 
 	return NULL;
 }
@@ -2695,13 +2728,13 @@ static int intel_c20pll_calc_state_from_table(const struct intel_crtc_state *crt
 					      struct intel_encoder *encoder,
 					      struct intel_cx0pll_state *pll_state)
 {
-	const struct intel_c20pll_state *table;
+	const struct intel_cx0pll_params *table;
 
 	table = intel_c20_pll_find_table(crtc_state, encoder);
 	if (!table)
 		return -EINVAL;
 
-	pll_state->c20 = *table;
+	pll_state->c20 = *table->c20;
 
 	intel_cx0pll_update_ssc(encoder, pll_state, intel_crtc_has_dp_encoder(crtc_state));
 
-- 
2.43.0

