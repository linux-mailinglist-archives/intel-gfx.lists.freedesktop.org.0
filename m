Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66BF1CC8708
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Dec 2025 16:29:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD8C710ED04;
	Wed, 17 Dec 2025 15:29:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jJvSIOTG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C18F10E8CA;
 Wed, 17 Dec 2025 15:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765985340; x=1797521340;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IqgP7Die/n+nsRP/pnFQSpjXqw9I74I/zd3pQzo5Ezs=;
 b=jJvSIOTG4onhsACu1oc5S+ozTJ/cQrHzHVF9DjWaq5poyuxgjM49za9b
 4HIcZ5pH7UW8JPLnryUrEc+d0Dir7HrLIGWrRH90f8IhsGGl+YSQ7M+M3
 RucknvY2WPaHcszpnMNuG0/jpOW9MXM2EAyRiecbnt6T2qyHP/VYIA4mi
 E4TWI1gAXArt1IpaD/QUaPYT0rbBztt66hqX7zC+ilrOD4DQwjl24Lgy8
 XfFWFuSC0bLbk2hmFxib4qF4ciMb8fectfTt/cNc+7EKQ3Of6kY43Vsoi
 keJ1UTqUHvhr2yLWsTXqnguw2bTnxmR5KX/g7C0MZgEfhUShmSlnb4ndZ w==;
X-CSE-ConnectionGUID: Oh06nm0DQGara2Tiot1OOA==
X-CSE-MsgGUID: qPkxVJ09SxecLOy1WrFZIA==
X-IronPort-AV: E=McAfee;i="6800,10657,11645"; a="71781476"
X-IronPort-AV: E=Sophos;i="6.21,156,1763452800"; d="scan'208";a="71781476"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2025 07:29:00 -0800
X-CSE-ConnectionGUID: J4ayifCvS7unb+7riMrgng==
X-CSE-MsgGUID: Enx4IlO3QYSrblEHQ0tqRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,156,1763452800"; d="scan'208";a="198097340"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa009.jf.intel.com with ESMTP; 17 Dec 2025 07:28:57 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH v2 15/15] drm/i915/display: Remove .clock member from
 eDP/DP/HDMI pll tables
Date: Wed, 17 Dec 2025 17:19:55 +0200
Message-Id: <20251217151955.1690202-16-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251217151955.1690202-1-mika.kahola@intel.com>
References: <20251217151955.1690202-1-mika.kahola@intel.com>
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
Remove the .clock from the pll state structure.

v2: Keep the pll_state->clock assignment in
    intel_snps_hdmi_pll_compute_mpllb().

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 86 +------------------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  3 -
 drivers/gpu/drm/i915/display/intel_lt_phy.c   | 26 ------
 .../drm/i915/display/intel_snps_hdmi_pll.c    |  2 -
 4 files changed, 2 insertions(+), 115 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 5d0bca0f75b0..2a353dfad87d 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -547,7 +547,6 @@ void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
  */
 
 static const struct intel_c10pll_state mtl_c10_dp_rbr = {
-	.clock = 162000,
 	.tx = 0x10,
 	.cmn = 0x21,
 	.pll[0] = 0xB4,
@@ -573,7 +572,6 @@ static const struct intel_c10pll_state mtl_c10_dp_rbr = {
 };
 
 static const struct intel_c10pll_state mtl_c10_edp_r216 = {
-	.clock = 216000,
 	.tx = 0x10,
 	.cmn = 0x21,
 	.pll[0] = 0x4,
@@ -599,7 +597,6 @@ static const struct intel_c10pll_state mtl_c10_edp_r216 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_edp_r243 = {
-	.clock = 243000,
 	.tx = 0x10,
 	.cmn = 0x21,
 	.pll[0] = 0x34,
@@ -625,7 +622,6 @@ static const struct intel_c10pll_state mtl_c10_edp_r243 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_dp_hbr1 = {
-	.clock = 270000,
 	.tx = 0x10,
 	.cmn = 0x21,
 	.pll[0] = 0xF4,
@@ -651,7 +647,6 @@ static const struct intel_c10pll_state mtl_c10_dp_hbr1 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_edp_r324 = {
-	.clock = 324000,
 	.tx = 0x10,
 	.cmn = 0x21,
 	.pll[0] = 0xB4,
@@ -677,7 +672,6 @@ static const struct intel_c10pll_state mtl_c10_edp_r324 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_edp_r432 = {
-	.clock = 432000,
 	.tx = 0x10,
 	.cmn = 0x21,
 	.pll[0] = 0x4,
@@ -703,7 +697,6 @@ static const struct intel_c10pll_state mtl_c10_edp_r432 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_dp_hbr2 = {
-	.clock = 540000,
 	.tx = 0x10,
 	.cmn = 0x21,
 	.pll[0] = 0xF4,
@@ -729,7 +722,6 @@ static const struct intel_c10pll_state mtl_c10_dp_hbr2 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_edp_r675 = {
-	.clock = 675000,
 	.tx = 0x10,
 	.cmn = 0x21,
 	.pll[0] = 0xB4,
@@ -755,7 +747,6 @@ static const struct intel_c10pll_state mtl_c10_edp_r675 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_dp_hbr3 = {
-	.clock = 810000,
 	.tx = 0x10,
 	.cmn = 0x21,
 	.pll[0] = 0x34,
@@ -836,7 +827,6 @@ static const struct intel_cx0pll_params mtl_c10_edp_tables[] = {
 
 /* C20 basic DP 1.4 tables */
 static const struct intel_c20pll_state mtl_c20_dp_rbr = {
-	.clock = 162000,
 	.tx = {	0xbe88, /* tx cfg0 */
 		0x5800, /* tx cfg1 */
 		0x0000, /* tx cfg2 */
@@ -861,7 +851,6 @@ static const struct intel_c20pll_state mtl_c20_dp_rbr = {
 };
 
 static const struct intel_c20pll_state mtl_c20_dp_hbr1 = {
-	.clock = 270000,
 	.tx = {	0xbe88, /* tx cfg0 */
 		0x4800, /* tx cfg1 */
 		0x0000, /* tx cfg2 */
@@ -886,7 +875,6 @@ static const struct intel_c20pll_state mtl_c20_dp_hbr1 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_dp_hbr2 = {
-	.clock = 540000,
 	.tx = {	0xbe88, /* tx cfg0 */
 		0x4800, /* tx cfg1 */
 		0x0000, /* tx cfg2 */
@@ -911,7 +899,6 @@ static const struct intel_c20pll_state mtl_c20_dp_hbr2 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_dp_hbr3 = {
-	.clock = 810000,
 	.tx = {	0xbe88, /* tx cfg0 */
 		0x4800, /* tx cfg1 */
 		0x0000, /* tx cfg2 */
@@ -937,7 +924,6 @@ static const struct intel_c20pll_state mtl_c20_dp_hbr3 = {
 
 /* C20 basic DP 2.0 tables */
 static const struct intel_c20pll_state mtl_c20_dp_uhbr10 = {
-	.clock = 1000000, /* 10 Gbps */
 	.tx = {	0xbe21, /* tx cfg0 */
 		0xe800, /* tx cfg1 */
 		0x0000, /* tx cfg2 */
@@ -961,7 +947,6 @@ static const struct intel_c20pll_state mtl_c20_dp_uhbr10 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_dp_uhbr13_5 = {
-	.clock = 1350000, /* 13.5 Gbps */
 	.tx = {	0xbea0, /* tx cfg0 */
 		0x4800, /* tx cfg1 */
 		0x0000, /* tx cfg2 */
@@ -986,7 +971,6 @@ static const struct intel_c20pll_state mtl_c20_dp_uhbr13_5 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_dp_uhbr20 = {
-	.clock = 2000000, /* 20 Gbps */
 	.tx = {	0xbe20, /* tx cfg0 */
 		0x4800, /* tx cfg1 */
 		0x0000, /* tx cfg2 */
@@ -1025,7 +1009,6 @@ static const struct intel_cx0pll_params mtl_c20_dp_tables[] = {
  */
 
 static const struct intel_c20pll_state xe2hpd_c20_edp_r216 = {
-	.clock = 216000,
 	.tx = { 0xbe88,
 		0x4800,
 		0x0000,
@@ -1050,7 +1033,6 @@ static const struct intel_c20pll_state xe2hpd_c20_edp_r216 = {
 };
 
 static const struct intel_c20pll_state xe2hpd_c20_edp_r243 = {
-	.clock = 243000,
 	.tx = { 0xbe88,
 		0x4800,
 		0x0000,
@@ -1075,7 +1057,6 @@ static const struct intel_c20pll_state xe2hpd_c20_edp_r243 = {
 };
 
 static const struct intel_c20pll_state xe2hpd_c20_edp_r324 = {
-	.clock = 324000,
 	.tx = { 0xbe88,
 		0x4800,
 		0x0000,
@@ -1100,7 +1081,6 @@ static const struct intel_c20pll_state xe2hpd_c20_edp_r324 = {
 };
 
 static const struct intel_c20pll_state xe2hpd_c20_edp_r432 = {
-	.clock = 432000,
 	.tx = { 0xbe88,
 		0x4800,
 		0x0000,
@@ -1125,7 +1105,6 @@ static const struct intel_c20pll_state xe2hpd_c20_edp_r432 = {
 };
 
 static const struct intel_c20pll_state xe2hpd_c20_edp_r675 = {
-	.clock = 675000,
 	.tx = { 0xbe88,
 		0x4800,
 		0x0000,
@@ -1163,7 +1142,6 @@ static const struct intel_cx0pll_params xe2hpd_c20_edp_tables[] = {
 };
 
 static const struct intel_c20pll_state xe2hpd_c20_dp_uhbr13_5 = {
-	.clock = 1350000, /* 13.5 Gbps */
 	.tx = {	0xbea0, /* tx cfg0 */
 		0x4800, /* tx cfg1 */
 		0x0000, /* tx cfg2 */
@@ -1218,7 +1196,6 @@ static const struct intel_cx0pll_params xe3lpd_c20_dp_edp_tables[] = {
  */
 
 static const struct intel_c10pll_state mtl_c10_hdmi_25_2 = {
-	.clock = 25200,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x4,
@@ -1244,7 +1221,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_25_2 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_27_0 = {
-	.clock = 27000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x34,
@@ -1270,7 +1246,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_27_0 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_74_25 = {
-	.clock = 74250,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4,
@@ -1296,7 +1271,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_74_25 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_148_5 = {
-	.clock = 148500,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4,
@@ -1322,7 +1296,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_148_5 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_594 = {
-	.clock = 594000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4,
@@ -1349,7 +1322,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_594 = {
 
 /* Precomputed C10 HDMI PLL tables */
 static const struct intel_c10pll_state mtl_c10_hdmi_27027 = {
-	.clock = 27027,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x34, .pll[1] = 0x00, .pll[2] = 0xC0, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1359,7 +1331,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_27027 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_28320 = {
-	.clock = 28320,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x04, .pll[1] = 0x00, .pll[2] = 0xCC, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1369,7 +1340,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_28320 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_30240 = {
-	.clock = 30240,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x04, .pll[1] = 0x00, .pll[2] = 0xDC, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1379,7 +1349,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_30240 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_31500 = {
-	.clock = 31500,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x62, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1389,7 +1358,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_31500 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_36000 = {
-	.clock = 36000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xC4, .pll[1] = 0x00, .pll[2] = 0x76, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1399,7 +1367,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_36000 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_40000 = {
-	.clock = 40000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xB4, .pll[1] = 0x00, .pll[2] = 0x86, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1409,7 +1376,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_40000 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_49500 = {
-	.clock = 49500,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x74, .pll[1] = 0x00, .pll[2] = 0xAE, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1419,7 +1385,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_49500 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_50000 = {
-	.clock = 50000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x74, .pll[1] = 0x00, .pll[2] = 0xB0, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1429,7 +1394,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_50000 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_57284 = {
-	.clock = 57284,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x34, .pll[1] = 0x00, .pll[2] = 0xCE, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1439,7 +1403,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_57284 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_58000 = {
-	.clock = 58000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x34, .pll[1] = 0x00, .pll[2] = 0xD0, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1449,7 +1412,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_58000 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_65000 = {
-	.clock = 65000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x66, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1459,7 +1421,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_65000 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_71000 = {
-	.clock = 71000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x72, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1469,7 +1430,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_71000 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_74176 = {
-	.clock = 74176,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x7A, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1479,7 +1439,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_74176 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_75000 = {
-	.clock = 75000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x7C, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1489,7 +1448,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_75000 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_78750 = {
-	.clock = 78750,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xB4, .pll[1] = 0x00, .pll[2] = 0x84, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1499,7 +1457,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_78750 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_85500 = {
-	.clock = 85500,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xB4, .pll[1] = 0x00, .pll[2] = 0x92, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1509,7 +1466,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_85500 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_88750 = {
-	.clock = 88750,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x74, .pll[1] = 0x00, .pll[2] = 0x98, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1519,7 +1475,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_88750 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_106500 = {
-	.clock = 106500,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x34, .pll[1] = 0x00, .pll[2] = 0xBC, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1529,7 +1484,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_106500 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_108000 = {
-	.clock = 108000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x34, .pll[1] = 0x00, .pll[2] = 0xC0, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1539,7 +1493,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_108000 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_115500 = {
-	.clock = 115500,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x34, .pll[1] = 0x00, .pll[2] = 0xD0, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1549,7 +1502,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_115500 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_119000 = {
-	.clock = 119000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x34, .pll[1] = 0x00, .pll[2] = 0xD6, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1559,7 +1511,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_119000 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_135000 = {
-	.clock = 135000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x6C, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1569,7 +1520,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_135000 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_138500 = {
-	.clock = 138500,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x70, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1579,7 +1529,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_138500 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_147160 = {
-	.clock = 147160,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x78, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1589,7 +1538,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_147160 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_148352 = {
-	.clock = 148352,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x7A, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1599,7 +1547,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_148352 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_154000 = {
-	.clock = 154000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xB4, .pll[1] = 0x00, .pll[2] = 0x80, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1609,7 +1556,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_154000 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_162000 = {
-	.clock = 162000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xB4, .pll[1] = 0x00, .pll[2] = 0x88, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1619,7 +1565,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_162000 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_167000 = {
-	.clock = 167000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xB4, .pll[1] = 0x00, .pll[2] = 0x8C, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1629,7 +1574,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_167000 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_197802 = {
-	.clock = 197802,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x74, .pll[1] = 0x00, .pll[2] = 0xAE, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1639,7 +1583,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_197802 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_198000 = {
-	.clock = 198000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x74, .pll[1] = 0x00, .pll[2] = 0xAE, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1649,7 +1592,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_198000 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_209800 = {
-	.clock = 209800,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x34, .pll[1] = 0x00, .pll[2] = 0xBA, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1659,7 +1601,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_209800 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_241500 = {
-	.clock = 241500,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x34, .pll[1] = 0x00, .pll[2] = 0xDA, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1669,7 +1610,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_241500 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_262750 = {
-	.clock = 262750,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x68, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1679,7 +1619,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_262750 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_268500 = {
-	.clock = 268500,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x6A, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1689,7 +1628,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_268500 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_296703 = {
-	.clock = 296703,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x7A, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1699,7 +1637,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_296703 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_297000 = {
-	.clock = 297000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x7A, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1709,7 +1646,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_297000 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_319750 = {
-	.clock = 319750,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xB4, .pll[1] = 0x00, .pll[2] = 0x86, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1719,7 +1655,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_319750 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_497750 = {
-	.clock = 497750,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x34, .pll[1] = 0x00, .pll[2] = 0xE2, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1729,7 +1664,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_497750 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_592000 = {
-	.clock = 592000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x7A, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1739,7 +1673,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_592000 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_593407 = {
-	.clock = 593407,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x7A, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1798,7 +1731,6 @@ static const struct intel_cx0pll_params mtl_c10_hdmi_tables[] = {
 };
 
 static const struct intel_c20pll_state mtl_c20_hdmi_27_0 = {
-	.clock = 27000,
 	.tx = {  0xbe88, /* tx cfg0 */
 		  0x9800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -1823,7 +1755,6 @@ static const struct intel_c20pll_state mtl_c20_hdmi_27_0 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_hdmi_74_25 = {
-	.clock = 74250,
 	.tx = {  0xbe88, /* tx cfg0 */
 		  0x9800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -1848,7 +1779,6 @@ static const struct intel_c20pll_state mtl_c20_hdmi_74_25 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_hdmi_148_5 = {
-	.clock = 148500,
 	.tx = {  0xbe88, /* tx cfg0 */
 		  0x9800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -1873,7 +1803,6 @@ static const struct intel_c20pll_state mtl_c20_hdmi_148_5 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_hdmi_594 = {
-	.clock = 594000,
 	.tx = {  0xbe88, /* tx cfg0 */
 		  0x9800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -1898,7 +1827,6 @@ static const struct intel_c20pll_state mtl_c20_hdmi_594 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_hdmi_300 = {
-	.clock = 300000,
 	.tx = {  0xbe98, /* tx cfg0 */
 		  0x8800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -1923,7 +1851,6 @@ static const struct intel_c20pll_state mtl_c20_hdmi_300 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_hdmi_600 = {
-	.clock = 600000,
 	.tx = {  0xbe98, /* tx cfg0 */
 		  0x8800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -1948,7 +1875,6 @@ static const struct intel_c20pll_state mtl_c20_hdmi_600 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_hdmi_800 = {
-	.clock = 800000,
 	.tx = {  0xbe98, /* tx cfg0 */
 		  0x8800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -1973,7 +1899,6 @@ static const struct intel_c20pll_state mtl_c20_hdmi_800 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_hdmi_1000 = {
-	.clock = 1000000,
 	.tx = {  0xbe98, /* tx cfg0 */
 		  0x8800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -1998,7 +1923,6 @@ static const struct intel_c20pll_state mtl_c20_hdmi_1000 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_hdmi_1200 = {
-	.clock = 1200000,
 	.tx = {  0xbe98, /* tx cfg0 */
 		  0x8800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -2338,8 +2262,6 @@ static void intel_c10pll_readout_hw_state(struct intel_encoder *encoder,
 
 	intel_cx0_phy_transaction_end(encoder, wakeref);
 
-	pll_state->clock = intel_c10pll_calc_port_clock(pll_state);
-
 	cx0pll_state->ssc_enabled = readout_ssc_state(encoder, true);
 
 	if (cx0pll_state->ssc_enabled != intel_c10pll_ssc_enabled(pll_state))
@@ -2384,8 +2306,7 @@ static void intel_c10pll_dump_hw_state(struct drm_printer *p,
 	unsigned int multiplier, tx_clk_div;
 
 	fracen = hw_state->pll[0] & C10_PLL0_FRACEN;
-	drm_printf(p, "c10pll_hw_state: clock: %d, fracen: %s, ",
-		   hw_state->clock, str_yes_no(fracen));
+	drm_printf(p, "c10pll_hw_state: fracen: %s, ", str_yes_no(fracen));
 
 	if (fracen) {
 		frac_quot = hw_state->pll[12] << 8 | hw_state->pll[11];
@@ -2490,7 +2411,6 @@ static int intel_c20_compute_hdmi_tmds_pll(struct intel_display *display,
 	else
 		mpllb_ana_freq_vco = MPLLB_ANA_FREQ_VCO_0;
 
-	pll_state->clock	= port_clock;
 	pll_state->tx[0]	= 0xbe88;
 	pll_state->tx[1]	= intel_c20_hdmi_tmds_tx_cgf_1(display);
 	pll_state->tx[2]	= 0x0000;
@@ -2839,8 +2759,6 @@ static void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
 		}
 	}
 
-	pll_state->clock = intel_c20pll_calc_port_clock(pll_state);
-
 	intel_cx0_phy_transaction_end(encoder, wakeref);
 
 	cx0pll_state->ssc_enabled = readout_ssc_state(encoder, intel_c20phy_use_mpllb(pll_state));
@@ -2851,7 +2769,7 @@ static void intel_c20pll_dump_hw_state(struct drm_printer *p,
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
index bc73b1466bc4..9a8ea09f6c00 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -59,7 +59,6 @@ struct lt_phy_params {
 };
 
 static const struct intel_lt_phy_pll_state xe3plpd_lt_dp_rbr = {
-	.clock = 162000,
 	.config = {
 		0x83,
 		0x2d,
@@ -113,7 +112,6 @@ static const struct intel_lt_phy_pll_state xe3plpd_lt_dp_rbr = {
 };
 
 static const struct intel_lt_phy_pll_state xe3plpd_lt_dp_hbr1 = {
-	.clock = 270000,
 	.config = {
 		0x8b,
 		0x2d,
@@ -167,7 +165,6 @@ static const struct intel_lt_phy_pll_state xe3plpd_lt_dp_hbr1 = {
 };
 
 static const struct intel_lt_phy_pll_state xe3plpd_lt_dp_hbr2 = {
-	.clock = 540000,
 	.config = {
 		0x93,
 		0x2d,
@@ -221,7 +218,6 @@ static const struct intel_lt_phy_pll_state xe3plpd_lt_dp_hbr2 = {
 };
 
 static const struct intel_lt_phy_pll_state xe3plpd_lt_dp_hbr3 = {
-	.clock = 810000,
 	.config = {
 		0x9b,
 		0x2d,
@@ -275,7 +271,6 @@ static const struct intel_lt_phy_pll_state xe3plpd_lt_dp_hbr3 = {
 };
 
 static const struct intel_lt_phy_pll_state xe3plpd_lt_dp_uhbr10 = {
-	.clock = 1000000,
 	.config = {
 		0x43,
 		0x2d,
@@ -329,7 +324,6 @@ static const struct intel_lt_phy_pll_state xe3plpd_lt_dp_uhbr10 = {
 };
 
 static const struct intel_lt_phy_pll_state xe3plpd_lt_dp_uhbr13_5 = {
-	.clock = 1350000,
 	.config = {
 		0xcb,
 		0x2d,
@@ -383,7 +377,6 @@ static const struct intel_lt_phy_pll_state xe3plpd_lt_dp_uhbr13_5 = {
 };
 
 static const struct intel_lt_phy_pll_state xe3plpd_lt_dp_uhbr20 = {
-	.clock = 2000000,
 	.config = {
 		0x53,
 		0x2d,
@@ -465,7 +458,6 @@ static const struct intel_lt_phy_pll_params xe3plpd_lt_dp_tables[] = {
 };
 
 static const struct intel_lt_phy_pll_state xe3plpd_lt_edp_2_16 = {
-	.clock = 216000,
 	.config = {
 		0xa3,
 		0x2d,
@@ -519,7 +511,6 @@ static const struct intel_lt_phy_pll_state xe3plpd_lt_edp_2_16 = {
 };
 
 static const struct intel_lt_phy_pll_state xe3plpd_lt_edp_2_43 = {
-	.clock = 243000,
 	.config = {
 		0xab,
 		0x2d,
@@ -573,7 +564,6 @@ static const struct intel_lt_phy_pll_state xe3plpd_lt_edp_2_43 = {
 };
 
 static const struct intel_lt_phy_pll_state xe3plpd_lt_edp_3_24 = {
-	.clock = 324000,
 	.config = {
 		0xb3,
 		0x2d,
@@ -627,7 +617,6 @@ static const struct intel_lt_phy_pll_state xe3plpd_lt_edp_3_24 = {
 };
 
 static const struct intel_lt_phy_pll_state xe3plpd_lt_edp_4_32 = {
-	.clock = 432000,
 	.config = {
 		0xbb,
 		0x2d,
@@ -681,7 +670,6 @@ static const struct intel_lt_phy_pll_state xe3plpd_lt_edp_4_32 = {
 };
 
 static const struct intel_lt_phy_pll_state xe3plpd_lt_edp_6_75 = {
-	.clock = 675000,
 	.config = {
 		0xdb,
 		0x2d,
@@ -748,7 +736,6 @@ static const struct intel_lt_phy_pll_params xe3plpd_lt_edp_tables[] = {
 };
 
 static const struct intel_lt_phy_pll_state xe3plpd_lt_hdmi_252 = {
-	.clock = 25200,
 	.config = {
 		0x84,
 		0x2d,
@@ -802,7 +789,6 @@ static const struct intel_lt_phy_pll_state xe3plpd_lt_hdmi_252 = {
 };
 
 static const struct intel_lt_phy_pll_state xe3plpd_lt_hdmi_742p5 = {
-	.clock = 74250,
 	.config = {
 		0x84,
 		0x2d,
@@ -856,7 +842,6 @@ static const struct intel_lt_phy_pll_state xe3plpd_lt_hdmi_742p5 = {
 };
 
 static const struct intel_lt_phy_pll_state xe3plpd_lt_hdmi_1p485 = {
-	.clock = 148500,
 	.config = {
 		0x84,
 		0x2d,
@@ -910,7 +895,6 @@ static const struct intel_lt_phy_pll_state xe3plpd_lt_hdmi_1p485 = {
 };
 
 static const struct intel_lt_phy_pll_state xe3plpd_lt_hdmi_5p94 = {
-	.clock = 594000,
 	.config = {
 		0x84,
 		0x2d,
@@ -2182,7 +2166,6 @@ void intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
 				       const struct intel_crtc_state *crtc_state,
 				       struct intel_lt_phy_pll_state *pll_state)
 {
-	struct intel_display *display = to_intel_display(encoder);
 	u8 owned_lane_mask;
 	u8 lane;
 	struct ref_tracker *wakeref;
@@ -2207,8 +2190,6 @@ void intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
 						  LT_PHY_VDR_X_DATAY(i, j));
 	}
 
-	pll_state->clock =
-		intel_lt_phy_calc_port_clock(display, &crtc_state->dpll_hw_state.ltpll);
 	intel_lt_phy_transaction_end(encoder, wakeref);
 }
 
@@ -2222,7 +2203,6 @@ void intel_lt_phy_pll_state_verify(struct intel_atomic_state *state,
 	struct intel_encoder *encoder;
 	struct intel_lt_phy_pll_state pll_hw_state = {};
 	const struct intel_lt_phy_pll_state *pll_sw_state = &new_crtc_state->dpll_hw_state.ltpll;
-	int clock;
 	int i, j;
 
 	if (DISPLAY_VER(display) < 35)
@@ -2238,17 +2218,11 @@ void intel_lt_phy_pll_state_verify(struct intel_atomic_state *state,
 
 	encoder = intel_get_crtc_new_encoder(state, new_crtc_state);
 	intel_lt_phy_pll_readout_hw_state(encoder, new_crtc_state, &pll_hw_state);
-	clock = intel_lt_phy_calc_port_clock(display, &new_crtc_state->dpll_hw_state.ltpll);
 
 	dig_port = enc_to_dig_port(encoder);
 	if (intel_tc_port_in_tbt_alt_mode(dig_port))
 		return;
 
-	INTEL_DISPLAY_STATE_WARN(display, pll_hw_state.clock != clock,
-				 "[CRTC:%d:%s] mismatch in LT PHY: Register CLOCK (expected %d, found %d)",
-				 crtc->base.base.id, crtc->base.name,
-				 pll_sw_state->clock, pll_hw_state.clock);
-
 	for (i = 0; i < 3; i++) {
 		INTEL_DISPLAY_STATE_WARN(display, pll_hw_state.config[i] != pll_sw_state->config[i],
 					 "[CRTC:%d:%s] mismatch in LT PHY PLL CONFIG%d: (expected 0x%04x, found 0x%04x)",
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
2.34.1

