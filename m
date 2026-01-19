Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3C08D3A33A
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Jan 2026 10:38:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4245610E400;
	Mon, 19 Jan 2026 09:38:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ICARAWLO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A6CF10E3EC;
 Mon, 19 Jan 2026 09:38:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768815503; x=1800351503;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YKMp8XAVUuaw4AUS5dVMdmCHgpB9kjZ+n2qw49iSswc=;
 b=ICARAWLO82uvYM/3pANwT5CXqdCsAc7hHnjUq/pBvk6PMTVpDOCPeagB
 pvgXmHGa6RvazU+5/3DDs3+wDw7mJWNnM4e3r5797v2kf/vpII8Y5lL7C
 vkLLr1c+0lWphViIOuo+bMrlAHUzhBCmyl5MUh30gP1iB0eWhiG+K2ZSW
 CxGFh6tcyGJuvS0ZgKgc1tEPYDnXoZa8vy9bLaq/BsqVOGz/2FfHkGdmt
 QuBzxVYbmZavq/37kdcqd88OOMccviw/wNHn6XhESZCNdDQgo7UT2HW35
 NH2axxLnaBtuFaj00o0Pj0a/VHj+AyMyE0jpnGmf6E4HjYkTzV+KI+jq1 Q==;
X-CSE-ConnectionGUID: 39NI2S4yR12v7RGwt2Gcgw==
X-CSE-MsgGUID: o6oq4cw7QzuPWTmvSqnGKg==
X-IronPort-AV: E=McAfee;i="6800,10657,11675"; a="87602208"
X-IronPort-AV: E=Sophos;i="6.21,237,1763452800"; d="scan'208";a="87602208"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2026 01:38:23 -0800
X-CSE-ConnectionGUID: Oxp0MuEjQ2Og/0gkMnEByA==
X-CSE-MsgGUID: QQWwxnfRRlmF4O1mE87pcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,237,1763452800"; d="scan'208";a="210838506"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa005.jf.intel.com with ESMTP; 19 Jan 2026 01:38:21 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [CI 15/15] drm/i915/display: Remove .clock member from eDP/DP/HDMI
 pll tables
Date: Mon, 19 Jan 2026 09:37:56 +0000
Message-ID: <20260119093757.2850233-16-mika.kahola@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260119093757.2850233-1-mika.kahola@intel.com>
References: <20260119093757.2850233-1-mika.kahola@intel.com>
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

PLL state structure has a member .clock. This is not needed as
the port clock is possible to calculate from the pll dividers.
Remove the encoder from being passed to the port clock calculation
function.

v2: Keep the pll_state->clock assignment in
    intel_snps_hdmi_pll_compute_mpllb().

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 86 +------------------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  3 -
 drivers/gpu/drm/i915/display/intel_lt_phy.c   | 21 +----
 .../drm/i915/display/intel_snps_hdmi_pll.c    |  2 -
 4 files changed, 3 insertions(+), 109 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index a0af7d3e87b6..4f56a370102d 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -548,7 +548,6 @@ void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
  */
 
 static const struct intel_c10pll_state mtl_c10_dp_rbr = {
-	.clock = 162000,
 	.tx = 0x10,
 	.cmn = 0x21,
 	.pll[0] = 0xB4,
@@ -574,7 +573,6 @@ static const struct intel_c10pll_state mtl_c10_dp_rbr = {
 };
 
 static const struct intel_c10pll_state mtl_c10_edp_r216 = {
-	.clock = 216000,
 	.tx = 0x10,
 	.cmn = 0x21,
 	.pll[0] = 0x4,
@@ -600,7 +598,6 @@ static const struct intel_c10pll_state mtl_c10_edp_r216 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_edp_r243 = {
-	.clock = 243000,
 	.tx = 0x10,
 	.cmn = 0x21,
 	.pll[0] = 0x34,
@@ -626,7 +623,6 @@ static const struct intel_c10pll_state mtl_c10_edp_r243 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_dp_hbr1 = {
-	.clock = 270000,
 	.tx = 0x10,
 	.cmn = 0x21,
 	.pll[0] = 0xF4,
@@ -652,7 +648,6 @@ static const struct intel_c10pll_state mtl_c10_dp_hbr1 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_edp_r324 = {
-	.clock = 324000,
 	.tx = 0x10,
 	.cmn = 0x21,
 	.pll[0] = 0xB4,
@@ -678,7 +673,6 @@ static const struct intel_c10pll_state mtl_c10_edp_r324 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_edp_r432 = {
-	.clock = 432000,
 	.tx = 0x10,
 	.cmn = 0x21,
 	.pll[0] = 0x4,
@@ -704,7 +698,6 @@ static const struct intel_c10pll_state mtl_c10_edp_r432 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_dp_hbr2 = {
-	.clock = 540000,
 	.tx = 0x10,
 	.cmn = 0x21,
 	.pll[0] = 0xF4,
@@ -730,7 +723,6 @@ static const struct intel_c10pll_state mtl_c10_dp_hbr2 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_edp_r675 = {
-	.clock = 675000,
 	.tx = 0x10,
 	.cmn = 0x21,
 	.pll[0] = 0xB4,
@@ -756,7 +748,6 @@ static const struct intel_c10pll_state mtl_c10_edp_r675 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_dp_hbr3 = {
-	.clock = 810000,
 	.tx = 0x10,
 	.cmn = 0x21,
 	.pll[0] = 0x34,
@@ -837,7 +828,6 @@ static const struct intel_cx0pll_params mtl_c10_edp_tables[] = {
 
 /* C20 basic DP 1.4 tables */
 static const struct intel_c20pll_state mtl_c20_dp_rbr = {
-	.clock = 162000,
 	.tx = {	0xbe88, /* tx cfg0 */
 		0x5800, /* tx cfg1 */
 		0x0000, /* tx cfg2 */
@@ -862,7 +852,6 @@ static const struct intel_c20pll_state mtl_c20_dp_rbr = {
 };
 
 static const struct intel_c20pll_state mtl_c20_dp_hbr1 = {
-	.clock = 270000,
 	.tx = {	0xbe88, /* tx cfg0 */
 		0x4800, /* tx cfg1 */
 		0x0000, /* tx cfg2 */
@@ -887,7 +876,6 @@ static const struct intel_c20pll_state mtl_c20_dp_hbr1 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_dp_hbr2 = {
-	.clock = 540000,
 	.tx = {	0xbe88, /* tx cfg0 */
 		0x4800, /* tx cfg1 */
 		0x0000, /* tx cfg2 */
@@ -912,7 +900,6 @@ static const struct intel_c20pll_state mtl_c20_dp_hbr2 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_dp_hbr3 = {
-	.clock = 810000,
 	.tx = {	0xbe88, /* tx cfg0 */
 		0x4800, /* tx cfg1 */
 		0x0000, /* tx cfg2 */
@@ -938,7 +925,6 @@ static const struct intel_c20pll_state mtl_c20_dp_hbr3 = {
 
 /* C20 basic DP 2.0 tables */
 static const struct intel_c20pll_state mtl_c20_dp_uhbr10 = {
-	.clock = 1000000, /* 10 Gbps */
 	.tx = {	0xbe21, /* tx cfg0 */
 		0xe800, /* tx cfg1 */
 		0x0000, /* tx cfg2 */
@@ -962,7 +948,6 @@ static const struct intel_c20pll_state mtl_c20_dp_uhbr10 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_dp_uhbr13_5 = {
-	.clock = 1350000, /* 13.5 Gbps */
 	.tx = {	0xbea0, /* tx cfg0 */
 		0x4800, /* tx cfg1 */
 		0x0000, /* tx cfg2 */
@@ -987,7 +972,6 @@ static const struct intel_c20pll_state mtl_c20_dp_uhbr13_5 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_dp_uhbr20 = {
-	.clock = 2000000, /* 20 Gbps */
 	.tx = {	0xbe20, /* tx cfg0 */
 		0x4800, /* tx cfg1 */
 		0x0000, /* tx cfg2 */
@@ -1026,7 +1010,6 @@ static const struct intel_cx0pll_params mtl_c20_dp_tables[] = {
  */
 
 static const struct intel_c20pll_state xe2hpd_c20_edp_r216 = {
-	.clock = 216000,
 	.tx = { 0xbe88,
 		0x4800,
 		0x0000,
@@ -1051,7 +1034,6 @@ static const struct intel_c20pll_state xe2hpd_c20_edp_r216 = {
 };
 
 static const struct intel_c20pll_state xe2hpd_c20_edp_r243 = {
-	.clock = 243000,
 	.tx = { 0xbe88,
 		0x4800,
 		0x0000,
@@ -1076,7 +1058,6 @@ static const struct intel_c20pll_state xe2hpd_c20_edp_r243 = {
 };
 
 static const struct intel_c20pll_state xe2hpd_c20_edp_r324 = {
-	.clock = 324000,
 	.tx = { 0xbe88,
 		0x4800,
 		0x0000,
@@ -1101,7 +1082,6 @@ static const struct intel_c20pll_state xe2hpd_c20_edp_r324 = {
 };
 
 static const struct intel_c20pll_state xe2hpd_c20_edp_r432 = {
-	.clock = 432000,
 	.tx = { 0xbe88,
 		0x4800,
 		0x0000,
@@ -1126,7 +1106,6 @@ static const struct intel_c20pll_state xe2hpd_c20_edp_r432 = {
 };
 
 static const struct intel_c20pll_state xe2hpd_c20_edp_r675 = {
-	.clock = 675000,
 	.tx = { 0xbe88,
 		0x4800,
 		0x0000,
@@ -1164,7 +1143,6 @@ static const struct intel_cx0pll_params xe2hpd_c20_edp_tables[] = {
 };
 
 static const struct intel_c20pll_state xe2hpd_c20_dp_uhbr13_5 = {
-	.clock = 1350000, /* 13.5 Gbps */
 	.tx = {	0xbea0, /* tx cfg0 */
 		0x4800, /* tx cfg1 */
 		0x0000, /* tx cfg2 */
@@ -1219,7 +1197,6 @@ static const struct intel_cx0pll_params xe3lpd_c20_dp_edp_tables[] = {
  */
 
 static const struct intel_c10pll_state mtl_c10_hdmi_25_2 = {
-	.clock = 25200,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x4,
@@ -1245,7 +1222,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_25_2 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_27_0 = {
-	.clock = 27000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x34,
@@ -1271,7 +1247,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_27_0 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_74_25 = {
-	.clock = 74250,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4,
@@ -1297,7 +1272,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_74_25 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_148_5 = {
-	.clock = 148500,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4,
@@ -1323,7 +1297,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_148_5 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_594 = {
-	.clock = 594000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4,
@@ -1350,7 +1323,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_594 = {
 
 /* Precomputed C10 HDMI PLL tables */
 static const struct intel_c10pll_state mtl_c10_hdmi_27027 = {
-	.clock = 27027,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x34, .pll[1] = 0x00, .pll[2] = 0xC0, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1360,7 +1332,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_27027 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_28320 = {
-	.clock = 28320,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x04, .pll[1] = 0x00, .pll[2] = 0xCC, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1370,7 +1341,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_28320 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_30240 = {
-	.clock = 30240,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x04, .pll[1] = 0x00, .pll[2] = 0xDC, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1380,7 +1350,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_30240 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_31500 = {
-	.clock = 31500,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x62, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1390,7 +1359,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_31500 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_36000 = {
-	.clock = 36000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xC4, .pll[1] = 0x00, .pll[2] = 0x76, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1400,7 +1368,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_36000 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_40000 = {
-	.clock = 40000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xB4, .pll[1] = 0x00, .pll[2] = 0x86, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1410,7 +1377,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_40000 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_49500 = {
-	.clock = 49500,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x74, .pll[1] = 0x00, .pll[2] = 0xAE, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1420,7 +1386,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_49500 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_50000 = {
-	.clock = 50000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x74, .pll[1] = 0x00, .pll[2] = 0xB0, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1430,7 +1395,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_50000 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_57284 = {
-	.clock = 57284,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x34, .pll[1] = 0x00, .pll[2] = 0xCE, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1440,7 +1404,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_57284 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_58000 = {
-	.clock = 58000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x34, .pll[1] = 0x00, .pll[2] = 0xD0, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1450,7 +1413,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_58000 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_65000 = {
-	.clock = 65000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x66, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1460,7 +1422,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_65000 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_71000 = {
-	.clock = 71000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x72, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1470,7 +1431,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_71000 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_74176 = {
-	.clock = 74176,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x7A, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1480,7 +1440,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_74176 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_75000 = {
-	.clock = 75000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x7C, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1490,7 +1449,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_75000 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_78750 = {
-	.clock = 78750,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xB4, .pll[1] = 0x00, .pll[2] = 0x84, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1500,7 +1458,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_78750 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_85500 = {
-	.clock = 85500,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xB4, .pll[1] = 0x00, .pll[2] = 0x92, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1510,7 +1467,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_85500 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_88750 = {
-	.clock = 88750,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x74, .pll[1] = 0x00, .pll[2] = 0x98, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1520,7 +1476,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_88750 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_106500 = {
-	.clock = 106500,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x34, .pll[1] = 0x00, .pll[2] = 0xBC, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1530,7 +1485,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_106500 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_108000 = {
-	.clock = 108000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x34, .pll[1] = 0x00, .pll[2] = 0xC0, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1540,7 +1494,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_108000 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_115500 = {
-	.clock = 115500,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x34, .pll[1] = 0x00, .pll[2] = 0xD0, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1550,7 +1503,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_115500 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_119000 = {
-	.clock = 119000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x34, .pll[1] = 0x00, .pll[2] = 0xD6, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1560,7 +1512,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_119000 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_135000 = {
-	.clock = 135000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x6C, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1570,7 +1521,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_135000 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_138500 = {
-	.clock = 138500,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x70, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1580,7 +1530,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_138500 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_147160 = {
-	.clock = 147160,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x78, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1590,7 +1539,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_147160 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_148352 = {
-	.clock = 148352,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x7A, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1600,7 +1548,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_148352 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_154000 = {
-	.clock = 154000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xB4, .pll[1] = 0x00, .pll[2] = 0x80, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1610,7 +1557,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_154000 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_162000 = {
-	.clock = 162000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xB4, .pll[1] = 0x00, .pll[2] = 0x88, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1620,7 +1566,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_162000 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_167000 = {
-	.clock = 167000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xB4, .pll[1] = 0x00, .pll[2] = 0x8C, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1630,7 +1575,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_167000 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_197802 = {
-	.clock = 197802,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x74, .pll[1] = 0x00, .pll[2] = 0xAE, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1640,7 +1584,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_197802 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_198000 = {
-	.clock = 198000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x74, .pll[1] = 0x00, .pll[2] = 0xAE, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1650,7 +1593,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_198000 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_209800 = {
-	.clock = 209800,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x34, .pll[1] = 0x00, .pll[2] = 0xBA, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1660,7 +1602,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_209800 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_241500 = {
-	.clock = 241500,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x34, .pll[1] = 0x00, .pll[2] = 0xDA, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1670,7 +1611,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_241500 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_262750 = {
-	.clock = 262750,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x68, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1680,7 +1620,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_262750 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_268500 = {
-	.clock = 268500,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x6A, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1690,7 +1629,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_268500 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_296703 = {
-	.clock = 296703,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x7A, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1700,7 +1638,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_296703 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_297000 = {
-	.clock = 297000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x7A, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1710,7 +1647,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_297000 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_319750 = {
-	.clock = 319750,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xB4, .pll[1] = 0x00, .pll[2] = 0x86, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1720,7 +1656,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_319750 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_497750 = {
-	.clock = 497750,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x34, .pll[1] = 0x00, .pll[2] = 0xE2, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1730,7 +1665,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_497750 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_592000 = {
-	.clock = 592000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x7A, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1740,7 +1674,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_592000 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_593407 = {
-	.clock = 593407,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x7A, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1799,7 +1732,6 @@ static const struct intel_cx0pll_params mtl_c10_hdmi_tables[] = {
 };
 
 static const struct intel_c20pll_state mtl_c20_hdmi_27_0 = {
-	.clock = 27000,
 	.tx = {  0xbe88, /* tx cfg0 */
 		  0x9800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -1824,7 +1756,6 @@ static const struct intel_c20pll_state mtl_c20_hdmi_27_0 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_hdmi_74_25 = {
-	.clock = 74250,
 	.tx = {  0xbe88, /* tx cfg0 */
 		  0x9800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -1849,7 +1780,6 @@ static const struct intel_c20pll_state mtl_c20_hdmi_74_25 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_hdmi_148_5 = {
-	.clock = 148500,
 	.tx = {  0xbe88, /* tx cfg0 */
 		  0x9800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -1874,7 +1804,6 @@ static const struct intel_c20pll_state mtl_c20_hdmi_148_5 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_hdmi_594 = {
-	.clock = 594000,
 	.tx = {  0xbe88, /* tx cfg0 */
 		  0x9800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -1899,7 +1828,6 @@ static const struct intel_c20pll_state mtl_c20_hdmi_594 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_hdmi_300 = {
-	.clock = 300000,
 	.tx = {  0xbe98, /* tx cfg0 */
 		  0x8800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -1924,7 +1852,6 @@ static const struct intel_c20pll_state mtl_c20_hdmi_300 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_hdmi_600 = {
-	.clock = 600000,
 	.tx = {  0xbe98, /* tx cfg0 */
 		  0x8800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -1949,7 +1876,6 @@ static const struct intel_c20pll_state mtl_c20_hdmi_600 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_hdmi_800 = {
-	.clock = 800000,
 	.tx = {  0xbe98, /* tx cfg0 */
 		  0x8800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -1974,7 +1900,6 @@ static const struct intel_c20pll_state mtl_c20_hdmi_800 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_hdmi_1000 = {
-	.clock = 1000000,
 	.tx = {  0xbe98, /* tx cfg0 */
 		  0x8800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -1999,7 +1924,6 @@ static const struct intel_c20pll_state mtl_c20_hdmi_1000 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_hdmi_1200 = {
-	.clock = 1200000,
 	.tx = {  0xbe98, /* tx cfg0 */
 		  0x8800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -2334,8 +2258,6 @@ static void intel_c10pll_readout_hw_state(struct intel_encoder *encoder,
 
 	intel_cx0_phy_transaction_end(encoder, wakeref);
 
-	pll_state->clock = intel_c10pll_calc_port_clock(pll_state);
-
 	cx0pll_state->ssc_enabled = readout_ssc_state(encoder, true);
 
 	if (cx0pll_state->ssc_enabled != intel_c10pll_ssc_enabled(pll_state))
@@ -2380,8 +2302,7 @@ static void intel_c10pll_dump_hw_state(struct drm_printer *p,
 	unsigned int multiplier, tx_clk_div;
 
 	fracen = hw_state->pll[0] & C10_PLL0_FRACEN;
-	drm_printf(p, "c10pll_hw_state: clock: %d, fracen: %s, ",
-		   hw_state->clock, str_yes_no(fracen));
+	drm_printf(p, "c10pll_hw_state: fracen: %s, ", str_yes_no(fracen));
 
 	if (fracen) {
 		frac_quot = hw_state->pll[12] << 8 | hw_state->pll[11];
@@ -2486,7 +2407,6 @@ static int intel_c20_compute_hdmi_tmds_pll(struct intel_display *display,
 	else
 		mpllb_ana_freq_vco = MPLLB_ANA_FREQ_VCO_0;
 
-	pll_state->clock	= port_clock;
 	pll_state->tx[0]	= 0xbe88;
 	pll_state->tx[1]	= intel_c20_hdmi_tmds_tx_cgf_1(display);
 	pll_state->tx[2]	= 0x0000;
@@ -2838,8 +2758,6 @@ static void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
 		}
 	}
 
-	pll_state->clock = intel_c20pll_calc_port_clock(pll_state);
-
 	intel_cx0_phy_transaction_end(encoder, wakeref);
 
 	cx0pll_state->ssc_enabled = readout_ssc_state(encoder, intel_c20phy_use_mpllb(pll_state));
@@ -2850,7 +2768,7 @@ static void intel_c20pll_dump_hw_state(struct drm_printer *p,
 {
 	int i;
 
-	drm_printf(p, "c20pll_hw_state: clock: %d\n", hw_state->clock);
+	drm_printf(p, "c20pll_hw_state:\n");
 	drm_printf(p,
 		   "tx[0] = 0x%.4x, tx[1] = 0x%.4x, tx[2] = 0x%.4x\n",
 		   hw_state->tx[0], hw_state->tx[1], hw_state->tx[2]);
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index 5b71c860515f..4cc14ce5eebe 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -241,14 +241,12 @@ struct intel_mpllb_state {
 };
 
 struct intel_c10pll_state {
-	u32 clock; /* in KHz */
 	u8 tx;
 	u8 cmn;
 	u8 pll[20];
 };
 
 struct intel_c20pll_state {
-	u32 clock; /* in kHz */
 	u16 tx[3];
 	u16 cmn[4];
 	union {
@@ -274,7 +272,6 @@ struct intel_cx0pll_state {
 };
 
 struct intel_lt_phy_pll_state {
-	u32 clock; /* in kHz */
 	u8 addr_msb[13];
 	u8 addr_lsb[13];
 	u8 data[13][4];
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index a3326057449a..b4b281ef258b 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -61,7 +61,6 @@ struct lt_phy_params {
 };
 
 static const struct intel_lt_phy_pll_state xe3plpd_lt_dp_rbr = {
-	.clock = 162000,
 	.config = {
 		0x83,
 		0x2d,
@@ -115,7 +114,6 @@ static const struct intel_lt_phy_pll_state xe3plpd_lt_dp_rbr = {
 };
 
 static const struct intel_lt_phy_pll_state xe3plpd_lt_dp_hbr1 = {
-	.clock = 270000,
 	.config = {
 		0x8b,
 		0x2d,
@@ -169,7 +167,6 @@ static const struct intel_lt_phy_pll_state xe3plpd_lt_dp_hbr1 = {
 };
 
 static const struct intel_lt_phy_pll_state xe3plpd_lt_dp_hbr2 = {
-	.clock = 540000,
 	.config = {
 		0x93,
 		0x2d,
@@ -223,7 +220,6 @@ static const struct intel_lt_phy_pll_state xe3plpd_lt_dp_hbr2 = {
 };
 
 static const struct intel_lt_phy_pll_state xe3plpd_lt_dp_hbr3 = {
-	.clock = 810000,
 	.config = {
 		0x9b,
 		0x2d,
@@ -277,7 +273,6 @@ static const struct intel_lt_phy_pll_state xe3plpd_lt_dp_hbr3 = {
 };
 
 static const struct intel_lt_phy_pll_state xe3plpd_lt_dp_uhbr10 = {
-	.clock = 1000000,
 	.config = {
 		0x43,
 		0x2d,
@@ -331,7 +326,6 @@ static const struct intel_lt_phy_pll_state xe3plpd_lt_dp_uhbr10 = {
 };
 
 static const struct intel_lt_phy_pll_state xe3plpd_lt_dp_uhbr13_5 = {
-	.clock = 1350000,
 	.config = {
 		0xcb,
 		0x2d,
@@ -385,7 +379,6 @@ static const struct intel_lt_phy_pll_state xe3plpd_lt_dp_uhbr13_5 = {
 };
 
 static const struct intel_lt_phy_pll_state xe3plpd_lt_dp_uhbr20 = {
-	.clock = 2000000,
 	.config = {
 		0x53,
 		0x2d,
@@ -467,7 +460,6 @@ static const struct intel_lt_phy_pll_params xe3plpd_lt_dp_tables[] = {
 };
 
 static const struct intel_lt_phy_pll_state xe3plpd_lt_edp_2_16 = {
-	.clock = 216000,
 	.config = {
 		0xa3,
 		0x2d,
@@ -521,7 +513,6 @@ static const struct intel_lt_phy_pll_state xe3plpd_lt_edp_2_16 = {
 };
 
 static const struct intel_lt_phy_pll_state xe3plpd_lt_edp_2_43 = {
-	.clock = 243000,
 	.config = {
 		0xab,
 		0x2d,
@@ -575,7 +566,6 @@ static const struct intel_lt_phy_pll_state xe3plpd_lt_edp_2_43 = {
 };
 
 static const struct intel_lt_phy_pll_state xe3plpd_lt_edp_3_24 = {
-	.clock = 324000,
 	.config = {
 		0xb3,
 		0x2d,
@@ -629,7 +619,6 @@ static const struct intel_lt_phy_pll_state xe3plpd_lt_edp_3_24 = {
 };
 
 static const struct intel_lt_phy_pll_state xe3plpd_lt_edp_4_32 = {
-	.clock = 432000,
 	.config = {
 		0xbb,
 		0x2d,
@@ -683,7 +672,6 @@ static const struct intel_lt_phy_pll_state xe3plpd_lt_edp_4_32 = {
 };
 
 static const struct intel_lt_phy_pll_state xe3plpd_lt_edp_6_75 = {
-	.clock = 675000,
 	.config = {
 		0xdb,
 		0x2d,
@@ -750,7 +738,6 @@ static const struct intel_lt_phy_pll_params xe3plpd_lt_edp_tables[] = {
 };
 
 static const struct intel_lt_phy_pll_state xe3plpd_lt_hdmi_252 = {
-	.clock = 25200,
 	.config = {
 		0x84,
 		0x2d,
@@ -804,7 +791,6 @@ static const struct intel_lt_phy_pll_state xe3plpd_lt_hdmi_252 = {
 };
 
 static const struct intel_lt_phy_pll_state xe3plpd_lt_hdmi_742p5 = {
-	.clock = 74250,
 	.config = {
 		0x84,
 		0x2d,
@@ -858,7 +844,6 @@ static const struct intel_lt_phy_pll_state xe3plpd_lt_hdmi_742p5 = {
 };
 
 static const struct intel_lt_phy_pll_state xe3plpd_lt_hdmi_1p485 = {
-	.clock = 148500,
 	.config = {
 		0x84,
 		0x2d,
@@ -912,7 +897,6 @@ static const struct intel_lt_phy_pll_state xe3plpd_lt_hdmi_1p485 = {
 };
 
 static const struct intel_lt_phy_pll_state xe3plpd_lt_hdmi_5p94 = {
-	.clock = 594000,
 	.config = {
 		0x84,
 		0x2d,
@@ -1732,7 +1716,7 @@ intel_lt_phy_calc_port_clock(struct intel_display *display,
 		clk = intel_lt_phy_calc_hdmi_port_clock(display, lt_state);
 	} else {
 		drm_WARN_ON(display->drm, "Unsupported LT PHY Mode!\n");
-		clk = xe3plpd_lt_hdmi_252.clock;
+		clk = 25200;
 	}
 
 	return clk;
@@ -2192,7 +2176,6 @@ void intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
 				       const struct intel_crtc_state *crtc_state,
 				       struct intel_lt_phy_pll_state *pll_state)
 {
-	struct intel_display *display = to_intel_display(encoder);
 	u8 owned_lane_mask;
 	u8 lane;
 	struct ref_tracker *wakeref;
@@ -2217,8 +2200,6 @@ void intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
 						  LT_PHY_VDR_X_DATAY(i, j));
 	}
 
-	pll_state->clock =
-		intel_lt_phy_calc_port_clock(display, &crtc_state->dpll_hw_state.ltpll);
 	intel_lt_phy_transaction_end(encoder, wakeref);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c b/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
index a201edceee10..7fe6b4a18213 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
+++ b/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
@@ -332,8 +332,6 @@ void intel_snps_hdmi_pll_compute_c10pll(struct intel_c10pll_state *pll_state, u6
 			      c10_curve_1, c10_curve_2, prescaler_divider,
 			      &pll_params);
 
-	pll_state->clock = pixel_clock;
-
 	pll_state->tx = 0x10;
 	pll_state->cmn = 0x1;
 	pll_state->pll[0] = REG_FIELD_PREP(C10_PLL0_DIV5CLK_EN, pll_params.mpll_div5_en) |
-- 
2.43.0

