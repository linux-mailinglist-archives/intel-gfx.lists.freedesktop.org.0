Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF90DCC1A38
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Dec 2025 09:47:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9D2110E7A6;
	Tue, 16 Dec 2025 08:46:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NtVNF2vz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0E4910E798;
 Tue, 16 Dec 2025 08:46:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765874818; x=1797410818;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=taCdkoo7CRh1nmm3XH3RLiaDjRUFoPiF+Zt6OfPW1KE=;
 b=NtVNF2vzl32Gm21czXKPvA5XEp0ds9LPhGEimF3NTgA30Ie7Tj7kekuS
 HTF2QbDOWFs+Bjwe5hd+HF1pnFMVzF6E2oNLMK746AM1l2Kqx/we476EM
 oIatJ6LIx3VijL1zCVm3ciiEfrg0KSGnCHKY6aDM/8ZE3ERFj7aSNaMr7
 LeCid2eSper0Gvpt2mL6VbavcQcdf0c7sQ6n3oV4KEXSujiK09sYlqf0f
 Uj34LZNRoaZB2kPYNvWpS9OairFLKO4HsxAxD38vzJ9QrT6GU5dRkjpoE
 pjbvkcbUj4AwToykMdrYs7m1uTQc79wPzNvfYpTrWEbImIKnmv5pXBF7b Q==;
X-CSE-ConnectionGUID: eCEpGiqCSgmzZP9b+NbeuQ==
X-CSE-MsgGUID: cs78LnjzR66n0qisvIufmw==
X-IronPort-AV: E=McAfee;i="6800,10657,11643"; a="71642345"
X-IronPort-AV: E=Sophos;i="6.21,152,1763452800"; d="scan'208";a="71642345"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 00:46:58 -0800
X-CSE-ConnectionGUID: Q0eoA3DAT5Of7NoNiJ2O+A==
X-CSE-MsgGUID: S99D0kTFTrG3wpeXDFuftg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,152,1763452800"; d="scan'208";a="198448920"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa009.fm.intel.com with ESMTP; 16 Dec 2025 00:46:57 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
	Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH 13/13] drm/i915/display: Remove .clock member from eDP/DP/HDMI
 pll tables
Date: Tue, 16 Dec 2025 10:37:59 +0200
Message-Id: <20251216083759.383163-14-mika.kahola@intel.com>
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

PLL state structure has a member .clock. This is not needed as
the port clock is possible to calculate from the pll dividers.
Remove the .clock from the pll state structure.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 88 +------------------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  3 -
 drivers/gpu/drm/i915/display/intel_lt_phy.c   | 26 ------
 .../drm/i915/display/intel_snps_hdmi_pll.c    |  3 -
 4 files changed, 3 insertions(+), 117 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 25f6062345f9..d58dda4cd014 100644
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
@@ -834,7 +825,6 @@ static const struct intel_cx0pll_params mtl_c10_edp_tables[] = {
 
 /* C20 basic DP 1.4 tables */
 static const struct intel_c20pll_state mtl_c20_dp_rbr = {
-	.clock = 162000,
 	.tx = {	0xbe88, /* tx cfg0 */
 		0x5800, /* tx cfg1 */
 		0x0000, /* tx cfg2 */
@@ -859,7 +849,6 @@ static const struct intel_c20pll_state mtl_c20_dp_rbr = {
 };
 
 static const struct intel_c20pll_state mtl_c20_dp_hbr1 = {
-	.clock = 270000,
 	.tx = {	0xbe88, /* tx cfg0 */
 		0x4800, /* tx cfg1 */
 		0x0000, /* tx cfg2 */
@@ -884,7 +873,6 @@ static const struct intel_c20pll_state mtl_c20_dp_hbr1 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_dp_hbr2 = {
-	.clock = 540000,
 	.tx = {	0xbe88, /* tx cfg0 */
 		0x4800, /* tx cfg1 */
 		0x0000, /* tx cfg2 */
@@ -909,7 +897,6 @@ static const struct intel_c20pll_state mtl_c20_dp_hbr2 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_dp_hbr3 = {
-	.clock = 810000,
 	.tx = {	0xbe88, /* tx cfg0 */
 		0x4800, /* tx cfg1 */
 		0x0000, /* tx cfg2 */
@@ -935,7 +922,6 @@ static const struct intel_c20pll_state mtl_c20_dp_hbr3 = {
 
 /* C20 basic DP 2.0 tables */
 static const struct intel_c20pll_state mtl_c20_dp_uhbr10 = {
-	.clock = 1000000, /* 10 Gbps */
 	.tx = {	0xbe21, /* tx cfg0 */
 		0xe800, /* tx cfg1 */
 		0x0000, /* tx cfg2 */
@@ -959,7 +945,6 @@ static const struct intel_c20pll_state mtl_c20_dp_uhbr10 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_dp_uhbr13_5 = {
-	.clock = 1350000, /* 13.5 Gbps */
 	.tx = {	0xbea0, /* tx cfg0 */
 		0x4800, /* tx cfg1 */
 		0x0000, /* tx cfg2 */
@@ -984,7 +969,6 @@ static const struct intel_c20pll_state mtl_c20_dp_uhbr13_5 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_dp_uhbr20 = {
-	.clock = 2000000, /* 20 Gbps */
 	.tx = {	0xbe20, /* tx cfg0 */
 		0x4800, /* tx cfg1 */
 		0x0000, /* tx cfg2 */
@@ -1022,7 +1006,6 @@ static const struct intel_cx0pll_params mtl_c20_dp_tables[] = {
  */
 
 static const struct intel_c20pll_state xe2hpd_c20_edp_r216 = {
-	.clock = 216000,
 	.tx = { 0xbe88,
 		0x4800,
 		0x0000,
@@ -1047,7 +1030,6 @@ static const struct intel_c20pll_state xe2hpd_c20_edp_r216 = {
 };
 
 static const struct intel_c20pll_state xe2hpd_c20_edp_r243 = {
-	.clock = 243000,
 	.tx = { 0xbe88,
 		0x4800,
 		0x0000,
@@ -1072,7 +1054,6 @@ static const struct intel_c20pll_state xe2hpd_c20_edp_r243 = {
 };
 
 static const struct intel_c20pll_state xe2hpd_c20_edp_r324 = {
-	.clock = 324000,
 	.tx = { 0xbe88,
 		0x4800,
 		0x0000,
@@ -1097,7 +1078,6 @@ static const struct intel_c20pll_state xe2hpd_c20_edp_r324 = {
 };
 
 static const struct intel_c20pll_state xe2hpd_c20_edp_r432 = {
-	.clock = 432000,
 	.tx = { 0xbe88,
 		0x4800,
 		0x0000,
@@ -1122,7 +1102,6 @@ static const struct intel_c20pll_state xe2hpd_c20_edp_r432 = {
 };
 
 static const struct intel_c20pll_state xe2hpd_c20_edp_r675 = {
-	.clock = 675000,
 	.tx = { 0xbe88,
 		0x4800,
 		0x0000,
@@ -1159,7 +1138,6 @@ static const struct intel_cx0pll_params xe2hpd_c20_edp_tables[] = {
 };
 
 static const struct intel_c20pll_state xe2hpd_c20_dp_uhbr13_5 = {
-	.clock = 1350000, /* 13.5 Gbps */
 	.tx = {	0xbea0, /* tx cfg0 */
 		0x4800, /* tx cfg1 */
 		0x0000, /* tx cfg2 */
@@ -1212,7 +1190,6 @@ static const struct intel_cx0pll_params xe3lpd_c20_dp_edp_tables[] = {
  */
 
 static const struct intel_c10pll_state mtl_c10_hdmi_25_2 = {
-	.clock = 25200,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x4,
@@ -1238,7 +1215,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_25_2 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_27_0 = {
-	.clock = 27000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x34,
@@ -1264,7 +1240,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_27_0 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_74_25 = {
-	.clock = 74250,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4,
@@ -1290,7 +1265,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_74_25 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_148_5 = {
-	.clock = 148500,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4,
@@ -1316,7 +1290,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_148_5 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_594 = {
-	.clock = 594000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4,
@@ -1343,7 +1316,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_594 = {
 
 /* Precomputed C10 HDMI PLL tables */
 static const struct intel_c10pll_state mtl_c10_hdmi_27027 = {
-	.clock = 27027,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x34, .pll[1] = 0x00, .pll[2] = 0xC0, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1353,7 +1325,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_27027 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_28320 = {
-	.clock = 28320,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x04, .pll[1] = 0x00, .pll[2] = 0xCC, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1363,7 +1334,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_28320 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_30240 = {
-	.clock = 30240,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x04, .pll[1] = 0x00, .pll[2] = 0xDC, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1373,7 +1343,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_30240 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_31500 = {
-	.clock = 31500,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x62, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1383,7 +1352,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_31500 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_36000 = {
-	.clock = 36000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xC4, .pll[1] = 0x00, .pll[2] = 0x76, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1393,7 +1361,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_36000 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_40000 = {
-	.clock = 40000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xB4, .pll[1] = 0x00, .pll[2] = 0x86, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1403,7 +1370,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_40000 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_49500 = {
-	.clock = 49500,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x74, .pll[1] = 0x00, .pll[2] = 0xAE, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1413,7 +1379,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_49500 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_50000 = {
-	.clock = 50000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x74, .pll[1] = 0x00, .pll[2] = 0xB0, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1423,7 +1388,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_50000 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_57284 = {
-	.clock = 57284,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x34, .pll[1] = 0x00, .pll[2] = 0xCE, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1433,7 +1397,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_57284 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_58000 = {
-	.clock = 58000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x34, .pll[1] = 0x00, .pll[2] = 0xD0, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1443,7 +1406,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_58000 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_65000 = {
-	.clock = 65000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x66, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1453,7 +1415,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_65000 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_71000 = {
-	.clock = 71000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x72, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1463,7 +1424,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_71000 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_74176 = {
-	.clock = 74176,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x7A, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1473,7 +1433,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_74176 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_75000 = {
-	.clock = 75000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x7C, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1483,7 +1442,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_75000 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_78750 = {
-	.clock = 78750,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xB4, .pll[1] = 0x00, .pll[2] = 0x84, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1493,7 +1451,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_78750 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_85500 = {
-	.clock = 85500,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xB4, .pll[1] = 0x00, .pll[2] = 0x92, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1503,7 +1460,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_85500 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_88750 = {
-	.clock = 88750,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x74, .pll[1] = 0x00, .pll[2] = 0x98, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1513,7 +1469,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_88750 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_106500 = {
-	.clock = 106500,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x34, .pll[1] = 0x00, .pll[2] = 0xBC, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1523,7 +1478,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_106500 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_108000 = {
-	.clock = 108000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x34, .pll[1] = 0x00, .pll[2] = 0xC0, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1533,7 +1487,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_108000 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_115500 = {
-	.clock = 115500,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x34, .pll[1] = 0x00, .pll[2] = 0xD0, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1543,7 +1496,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_115500 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_119000 = {
-	.clock = 119000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x34, .pll[1] = 0x00, .pll[2] = 0xD6, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1553,7 +1505,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_119000 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_135000 = {
-	.clock = 135000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x6C, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1563,7 +1514,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_135000 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_138500 = {
-	.clock = 138500,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x70, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1573,7 +1523,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_138500 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_147160 = {
-	.clock = 147160,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x78, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1583,7 +1532,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_147160 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_148352 = {
-	.clock = 148352,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x7A, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1593,7 +1541,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_148352 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_154000 = {
-	.clock = 154000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xB4, .pll[1] = 0x00, .pll[2] = 0x80, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1603,7 +1550,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_154000 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_162000 = {
-	.clock = 162000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xB4, .pll[1] = 0x00, .pll[2] = 0x88, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1613,7 +1559,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_162000 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_167000 = {
-	.clock = 167000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xB4, .pll[1] = 0x00, .pll[2] = 0x8C, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1623,7 +1568,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_167000 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_197802 = {
-	.clock = 197802,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x74, .pll[1] = 0x00, .pll[2] = 0xAE, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1633,7 +1577,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_197802 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_198000 = {
-	.clock = 198000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x74, .pll[1] = 0x00, .pll[2] = 0xAE, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1643,7 +1586,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_198000 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_209800 = {
-	.clock = 209800,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x34, .pll[1] = 0x00, .pll[2] = 0xBA, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1653,7 +1595,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_209800 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_241500 = {
-	.clock = 241500,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x34, .pll[1] = 0x00, .pll[2] = 0xDA, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1663,7 +1604,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_241500 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_262750 = {
-	.clock = 262750,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x68, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1673,7 +1613,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_262750 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_268500 = {
-	.clock = 268500,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x6A, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1683,7 +1622,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_268500 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_296703 = {
-	.clock = 296703,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x7A, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1693,7 +1631,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_296703 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_297000 = {
-	.clock = 297000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x7A, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1703,7 +1640,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_297000 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_319750 = {
-	.clock = 319750,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xB4, .pll[1] = 0x00, .pll[2] = 0x86, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1713,7 +1649,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_319750 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_497750 = {
-	.clock = 497750,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x34, .pll[1] = 0x00, .pll[2] = 0xE2, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1723,7 +1658,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_497750 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_592000 = {
-	.clock = 592000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x7A, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1733,7 +1667,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_592000 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_593407 = {
-	.clock = 593407,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x7A, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1791,7 +1724,6 @@ static const struct intel_cx0pll_params mtl_c10_hdmi_tables[] = {
 };
 
 static const struct intel_c20pll_state mtl_c20_hdmi_27_0 = {
-	.clock = 27000,
 	.tx = {  0xbe88, /* tx cfg0 */
 		  0x9800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -1816,7 +1748,6 @@ static const struct intel_c20pll_state mtl_c20_hdmi_27_0 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_hdmi_74_25 = {
-	.clock = 74250,
 	.tx = {  0xbe88, /* tx cfg0 */
 		  0x9800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -1841,7 +1772,6 @@ static const struct intel_c20pll_state mtl_c20_hdmi_74_25 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_hdmi_148_5 = {
-	.clock = 148500,
 	.tx = {  0xbe88, /* tx cfg0 */
 		  0x9800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -1866,7 +1796,6 @@ static const struct intel_c20pll_state mtl_c20_hdmi_148_5 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_hdmi_594 = {
-	.clock = 594000,
 	.tx = {  0xbe88, /* tx cfg0 */
 		  0x9800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -1891,7 +1820,6 @@ static const struct intel_c20pll_state mtl_c20_hdmi_594 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_hdmi_300 = {
-	.clock = 300000,
 	.tx = {  0xbe98, /* tx cfg0 */
 		  0x8800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -1916,7 +1844,6 @@ static const struct intel_c20pll_state mtl_c20_hdmi_300 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_hdmi_600 = {
-	.clock = 600000,
 	.tx = {  0xbe98, /* tx cfg0 */
 		  0x8800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -1941,7 +1868,6 @@ static const struct intel_c20pll_state mtl_c20_hdmi_600 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_hdmi_800 = {
-	.clock = 800000,
 	.tx = {  0xbe98, /* tx cfg0 */
 		  0x8800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -1966,7 +1892,6 @@ static const struct intel_c20pll_state mtl_c20_hdmi_800 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_hdmi_1000 = {
-	.clock = 1000000,
 	.tx = {  0xbe98, /* tx cfg0 */
 		  0x8800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -1991,7 +1916,6 @@ static const struct intel_c20pll_state mtl_c20_hdmi_1000 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_hdmi_1200 = {
-	.clock = 1200000,
 	.tx = {  0xbe98, /* tx cfg0 */
 		  0x8800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -2329,8 +2253,6 @@ static void intel_c10pll_readout_hw_state(struct intel_encoder *encoder,
 
 	intel_cx0_phy_transaction_end(encoder, wakeref);
 
-	pll_state->clock = intel_c10pll_calc_port_clock(pll_state);
-
 	cx0pll_state->ssc_enabled = readout_ssc_state(encoder, true);
 
 	if (cx0pll_state->ssc_enabled != intel_c10pll_ssc_enabled(pll_state))
@@ -2375,8 +2297,7 @@ static void intel_c10pll_dump_hw_state(struct drm_printer *p,
 	unsigned int multiplier, tx_clk_div;
 
 	fracen = hw_state->pll[0] & C10_PLL0_FRACEN;
-	drm_printf(p, "c10pll_hw_state: clock: %d, fracen: %s, ",
-		   hw_state->clock, str_yes_no(fracen));
+	drm_printf(p, "c10pll_hw_state: fracen: %s, ", str_yes_no(fracen));
 
 	if (fracen) {
 		frac_quot = hw_state->pll[12] << 8 | hw_state->pll[11];
@@ -2481,7 +2402,6 @@ static int intel_c20_compute_hdmi_tmds_pll(struct intel_display *display,
 	else
 		mpllb_ana_freq_vco = MPLLB_ANA_FREQ_VCO_0;
 
-	pll_state->clock	= port_clock;
 	pll_state->tx[0]	= 0xbe88;
 	pll_state->tx[1]	= intel_c20_hdmi_tmds_tx_cgf_1(display);
 	pll_state->tx[2]	= 0x0000;
@@ -2830,8 +2750,6 @@ static void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
 		}
 	}
 
-	pll_state->clock = intel_c20pll_calc_port_clock(pll_state);
-
 	intel_cx0_phy_transaction_end(encoder, wakeref);
 
 	cx0pll_state->ssc_enabled = readout_ssc_state(encoder, intel_c20phy_use_mpllb(pll_state));
@@ -2842,7 +2760,7 @@ static void intel_c20pll_dump_hw_state(struct drm_printer *p,
 {
 	int i;
 
-	drm_printf(p, "c20pll_hw_state: clock: %d\n", hw_state->clock);
+	drm_printf(p, "c20pll_hw_state:\n");
 	drm_printf(p,
 		   "tx[0] = 0x%.4x, tx[1] = 0x%.4x, tx[2] = 0x%.4x\n",
 		   hw_state->tx[0], hw_state->tx[1], hw_state->tx[2]);
@@ -3230,7 +3148,7 @@ static u32 intel_cx0_get_pclk_pll_ack(u8 lane_mask)
 static void intel_cx0pll_enable(struct intel_encoder *encoder,
 				const struct intel_cx0pll_state *pll_state)
 {
-	int port_clock = pll_state->use_c10 ? pll_state->c10.clock : pll_state->c20.clock;
+	int port_clock;
 	struct intel_display *display = to_intel_display(encoder);
 	enum phy phy = intel_encoder_to_phy(encoder);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
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
index cf2c29c77de5..09a48d414603 100644
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
@@ -464,7 +457,6 @@ static const struct intel_lt_phy_pll_params xe3plpd_lt_dp_tables[] = {
 };
 
 static const struct intel_lt_phy_pll_state xe3plpd_lt_edp_2_16 = {
-	.clock = 216000,
 	.config = {
 		0xa3,
 		0x2d,
@@ -518,7 +510,6 @@ static const struct intel_lt_phy_pll_state xe3plpd_lt_edp_2_16 = {
 };
 
 static const struct intel_lt_phy_pll_state xe3plpd_lt_edp_2_43 = {
-	.clock = 243000,
 	.config = {
 		0xab,
 		0x2d,
@@ -572,7 +563,6 @@ static const struct intel_lt_phy_pll_state xe3plpd_lt_edp_2_43 = {
 };
 
 static const struct intel_lt_phy_pll_state xe3plpd_lt_edp_3_24 = {
-	.clock = 324000,
 	.config = {
 		0xb3,
 		0x2d,
@@ -626,7 +616,6 @@ static const struct intel_lt_phy_pll_state xe3plpd_lt_edp_3_24 = {
 };
 
 static const struct intel_lt_phy_pll_state xe3plpd_lt_edp_4_32 = {
-	.clock = 432000,
 	.config = {
 		0xbb,
 		0x2d,
@@ -680,7 +669,6 @@ static const struct intel_lt_phy_pll_state xe3plpd_lt_edp_4_32 = {
 };
 
 static const struct intel_lt_phy_pll_state xe3plpd_lt_edp_6_75 = {
-	.clock = 675000,
 	.config = {
 		0xdb,
 		0x2d,
@@ -746,7 +734,6 @@ static const struct intel_lt_phy_pll_params xe3plpd_lt_edp_tables[] = {
 };
 
 static const struct intel_lt_phy_pll_state xe3plpd_lt_hdmi_252 = {
-	.clock = 25200,
 	.config = {
 		0x84,
 		0x2d,
@@ -800,7 +787,6 @@ static const struct intel_lt_phy_pll_state xe3plpd_lt_hdmi_252 = {
 };
 
 static const struct intel_lt_phy_pll_state xe3plpd_lt_hdmi_742p5 = {
-	.clock = 74250,
 	.config = {
 		0x84,
 		0x2d,
@@ -854,7 +840,6 @@ static const struct intel_lt_phy_pll_state xe3plpd_lt_hdmi_742p5 = {
 };
 
 static const struct intel_lt_phy_pll_state xe3plpd_lt_hdmi_1p485 = {
-	.clock = 148500,
 	.config = {
 		0x84,
 		0x2d,
@@ -908,7 +893,6 @@ static const struct intel_lt_phy_pll_state xe3plpd_lt_hdmi_1p485 = {
 };
 
 static const struct intel_lt_phy_pll_state xe3plpd_lt_hdmi_5p94 = {
-	.clock = 594000,
 	.config = {
 		0x84,
 		0x2d,
@@ -2175,7 +2159,6 @@ void intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
 				       const struct intel_crtc_state *crtc_state,
 				       struct intel_lt_phy_pll_state *pll_state)
 {
-	struct intel_display *display = to_intel_display(encoder);
 	u8 owned_lane_mask;
 	u8 lane;
 	struct ref_tracker *wakeref;
@@ -2200,8 +2183,6 @@ void intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
 						  LT_PHY_VDR_X_DATAY(i, j));
 	}
 
-	pll_state->clock =
-		intel_lt_phy_calc_port_clock(display, &crtc_state->dpll_hw_state.ltpll);
 	intel_lt_phy_transaction_end(encoder, wakeref);
 }
 
@@ -2215,7 +2196,6 @@ void intel_lt_phy_pll_state_verify(struct intel_atomic_state *state,
 	struct intel_encoder *encoder;
 	struct intel_lt_phy_pll_state pll_hw_state = {};
 	const struct intel_lt_phy_pll_state *pll_sw_state = &new_crtc_state->dpll_hw_state.ltpll;
-	int clock;
 	int i, j;
 
 	if (DISPLAY_VER(display) < 35)
@@ -2231,17 +2211,11 @@ void intel_lt_phy_pll_state_verify(struct intel_atomic_state *state,
 
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
index a201edceee10..7d4ff41134c2 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
+++ b/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
@@ -259,7 +259,6 @@ void intel_snps_hdmi_pll_compute_mpllb(struct intel_mpllb_state *pll_state, u64
 			      dg2_curve_freq_hz, dg2_curve_0, dg2_curve_1, dg2_curve_2,
 			      prescaler_divider, &pll_params);
 
-	pll_state->clock = pixel_clock;
 	pll_state->ref_control =
 		REG_FIELD_PREP(SNPS_PHY_REF_CONTROL_REF_RANGE, ref_range);
 	pll_state->mpllb_cp =
@@ -332,8 +331,6 @@ void intel_snps_hdmi_pll_compute_c10pll(struct intel_c10pll_state *pll_state, u6
 			      c10_curve_1, c10_curve_2, prescaler_divider,
 			      &pll_params);
 
-	pll_state->clock = pixel_clock;
-
 	pll_state->tx = 0x10;
 	pll_state->cmn = 0x1;
 	pll_state->pll[0] = REG_FIELD_PREP(C10_PLL0_DIV5CLK_EN, pll_params.mpll_div5_en) |
-- 
2.34.1

