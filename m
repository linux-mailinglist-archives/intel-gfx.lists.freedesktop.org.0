Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D60C8C610F
	for <lists+intel-gfx@lfdr.de>; Wed, 15 May 2024 08:52:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A25D810E02E;
	Wed, 15 May 2024 06:52:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gGJifHcY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B01610E0D1
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 May 2024 06:52:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715755966; x=1747291966;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vM6oHQtibF3HRhcMYOk6fbIJjxUs4dHgcIDwE3mf45g=;
 b=gGJifHcYblTSd+QOrzj3wtM5rmDO8r1uWc/Tx2/oedSI/RjdhIwspGDt
 +BYTMqSirCrh8ZMfsV8r+9OYvPspJSiXSAxVZgiHKhFTjE2YF5kODFUrX
 fjVzlvkVu+JszsjjW8uuIlE0SKQaicJVvc/MFva45llWPCgoQLeA5I/ir
 KhawQHALYbNHd61iNUTzLGgBuh/unXu9lnPzM6Bb4Rn8ZCHXfa5dGbPDi
 feVkCYMfLdMVzjfabW3BNWPXrJuNvbl/7YWXBBR8gRSyor8uvcTN1qKAv
 6g3957DMWb6F1sTfPE+4YANbBECIyBvlgCRk6XwJ9Lhc++m1UsiLEgUbJ A==;
X-CSE-ConnectionGUID: /bke8UvETw+ay+g6T4d2MQ==
X-CSE-MsgGUID: VuMtNtdJTHqYW6bzg2JV3A==
X-IronPort-AV: E=McAfee;i="6600,9927,11073"; a="11951052"
X-IronPort-AV: E=Sophos;i="6.08,161,1712646000"; d="scan'208";a="11951052"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2024 23:52:46 -0700
X-CSE-ConnectionGUID: lFuFANrSSFy1khvWatd7zw==
X-CSE-MsgGUID: KPQtbqMgTzGO5FC9QLW1Ww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,161,1712646000"; d="scan'208";a="31537742"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orviesa008.jf.intel.com with ESMTP; 14 May 2024 23:52:45 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: imre.deak@intel.com,
	Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH 2/2] drm/i915/display: Remove .clock from pll state structure
Date: Wed, 15 May 2024 09:45:24 +0300
Message-Id: <20240515064524.164137-2-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240515064524.164137-1-mika.kahola@intel.com>
References: <20240515064524.164137-1-mika.kahola@intel.com>
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

.clock is not necessarily required to have in pll state
structure as it can always recalculated with the *_calc_port_clock()
function. Hence, let's remove this struct member complitely.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 86 -------------------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  2 -
 2 files changed, 88 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 9f860a05e623..abb937368284 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -505,7 +505,6 @@ void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
  */
 
 static const struct intel_c10pll_state mtl_c10_dp_rbr = {
-	.clock = 162000,
 	.tx = 0x10,
 	.cmn = 0x21,
 	.pll[0] = 0xB4,
@@ -531,7 +530,6 @@ static const struct intel_c10pll_state mtl_c10_dp_rbr = {
 };
 
 static const struct intel_c10pll_state mtl_c10_edp_r216 = {
-	.clock = 216000,
 	.tx = 0x10,
 	.cmn = 0x21,
 	.pll[0] = 0x4,
@@ -557,7 +555,6 @@ static const struct intel_c10pll_state mtl_c10_edp_r216 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_edp_r243 = {
-	.clock = 243000,
 	.tx = 0x10,
 	.cmn = 0x21,
 	.pll[0] = 0x34,
@@ -583,7 +580,6 @@ static const struct intel_c10pll_state mtl_c10_edp_r243 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_dp_hbr1 = {
-	.clock = 270000,
 	.tx = 0x10,
 	.cmn = 0x21,
 	.pll[0] = 0xF4,
@@ -609,7 +605,6 @@ static const struct intel_c10pll_state mtl_c10_dp_hbr1 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_edp_r324 = {
-	.clock = 324000,
 	.tx = 0x10,
 	.cmn = 0x21,
 	.pll[0] = 0xB4,
@@ -635,7 +630,6 @@ static const struct intel_c10pll_state mtl_c10_edp_r324 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_edp_r432 = {
-	.clock = 432000,
 	.tx = 0x10,
 	.cmn = 0x21,
 	.pll[0] = 0x4,
@@ -661,7 +655,6 @@ static const struct intel_c10pll_state mtl_c10_edp_r432 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_dp_hbr2 = {
-	.clock = 540000,
 	.tx = 0x10,
 	.cmn = 0x21,
 	.pll[0] = 0xF4,
@@ -687,7 +680,6 @@ static const struct intel_c10pll_state mtl_c10_dp_hbr2 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_edp_r675 = {
-	.clock = 675000,
 	.tx = 0x10,
 	.cmn = 0x21,
 	.pll[0] = 0xB4,
@@ -713,7 +705,6 @@ static const struct intel_c10pll_state mtl_c10_edp_r675 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_dp_hbr3 = {
-	.clock = 810000,
 	.tx = 0x10,
 	.cmn = 0x21,
 	.pll[0] = 0x34,
@@ -761,7 +752,6 @@ static const struct intel_c10pll_state * const mtl_c10_edp_tables[] = {
 
 /* C20 basic DP 1.4 tables */
 static const struct intel_c20pll_state mtl_c20_dp_rbr = {
-	.clock = 162000,
 	.tx = {	0xbe88, /* tx cfg0 */
 		0x5800, /* tx cfg1 */
 		0x0000, /* tx cfg2 */
@@ -786,7 +776,6 @@ static const struct intel_c20pll_state mtl_c20_dp_rbr = {
 };
 
 static const struct intel_c20pll_state mtl_c20_dp_hbr1 = {
-	.clock = 270000,
 	.tx = {	0xbe88, /* tx cfg0 */
 		0x4800, /* tx cfg1 */
 		0x0000, /* tx cfg2 */
@@ -811,7 +800,6 @@ static const struct intel_c20pll_state mtl_c20_dp_hbr1 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_dp_hbr2 = {
-	.clock = 540000,
 	.tx = {	0xbe88, /* tx cfg0 */
 		0x4800, /* tx cfg1 */
 		0x0000, /* tx cfg2 */
@@ -836,7 +824,6 @@ static const struct intel_c20pll_state mtl_c20_dp_hbr2 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_dp_hbr3 = {
-	.clock = 810000,
 	.tx = {	0xbe88, /* tx cfg0 */
 		0x4800, /* tx cfg1 */
 		0x0000, /* tx cfg2 */
@@ -862,7 +849,6 @@ static const struct intel_c20pll_state mtl_c20_dp_hbr3 = {
 
 /* C20 basic DP 2.0 tables */
 static const struct intel_c20pll_state mtl_c20_dp_uhbr10 = {
-	.clock = 1000000, /* 10 Gbps */
 	.tx = {	0xbe21, /* tx cfg0 */
 		0xe800, /* tx cfg1 */
 		0x0000, /* tx cfg2 */
@@ -886,7 +872,6 @@ static const struct intel_c20pll_state mtl_c20_dp_uhbr10 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_dp_uhbr13_5 = {
-	.clock = 1350000, /* 13.5 Gbps */
 	.tx = {	0xbea0, /* tx cfg0 */
 		0x4800, /* tx cfg1 */
 		0x0000, /* tx cfg2 */
@@ -911,7 +896,6 @@ static const struct intel_c20pll_state mtl_c20_dp_uhbr13_5 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_dp_uhbr20 = {
-	.clock = 2000000, /* 20 Gbps */
 	.tx = {	0xbe20, /* tx cfg0 */
 		0x4800, /* tx cfg1 */
 		0x0000, /* tx cfg2 */
@@ -950,7 +934,6 @@ static const struct intel_c20pll_state * const mtl_c20_dp_tables[] = {
  */
 
 static const struct intel_c20pll_state xe2hpd_c20_edp_r216 = {
-	.clock = 216000,
 	.tx = { 0xbe88,
 		0x4800,
 		0x0000,
@@ -975,7 +958,6 @@ static const struct intel_c20pll_state xe2hpd_c20_edp_r216 = {
 };
 
 static const struct intel_c20pll_state xe2hpd_c20_edp_r243 = {
-	.clock = 243000,
 	.tx = { 0xbe88,
 		0x4800,
 		0x0000,
@@ -1000,7 +982,6 @@ static const struct intel_c20pll_state xe2hpd_c20_edp_r243 = {
 };
 
 static const struct intel_c20pll_state xe2hpd_c20_edp_r324 = {
-	.clock = 324000,
 	.tx = { 0xbe88,
 		0x4800,
 		0x0000,
@@ -1025,7 +1006,6 @@ static const struct intel_c20pll_state xe2hpd_c20_edp_r324 = {
 };
 
 static const struct intel_c20pll_state xe2hpd_c20_edp_r432 = {
-	.clock = 432000,
 	.tx = { 0xbe88,
 		0x4800,
 		0x0000,
@@ -1050,7 +1030,6 @@ static const struct intel_c20pll_state xe2hpd_c20_edp_r432 = {
 };
 
 static const struct intel_c20pll_state xe2hpd_c20_edp_r675 = {
-	.clock = 675000,
 	.tx = { 0xbe88,
 		0x4800,
 		0x0000,
@@ -1088,7 +1067,6 @@ static const struct intel_c20pll_state * const xe2hpd_c20_edp_tables[] = {
 };
 
 static const struct intel_c20pll_state xe2hpd_c20_dp_uhbr13_5 = {
-	.clock = 1350000, /* 13.5 Gbps */
 	.tx = {	0xbea0, /* tx cfg0 */
 		0x4800, /* tx cfg1 */
 		0x0000, /* tx cfg2 */
@@ -1127,7 +1105,6 @@ static const struct intel_c20pll_state * const xe2hpd_c20_dp_tables[] = {
  */
 
 static const struct intel_c10pll_state mtl_c10_hdmi_25_2 = {
-	.clock = 25200,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x4,
@@ -1153,7 +1130,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_25_2 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_27_0 = {
-	.clock = 27000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x34,
@@ -1179,7 +1155,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_27_0 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_74_25 = {
-	.clock = 74250,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4,
@@ -1205,7 +1180,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_74_25 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_148_5 = {
-	.clock = 148500,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4,
@@ -1231,7 +1205,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_148_5 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_594 = {
-	.clock = 594000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4,
@@ -1258,7 +1231,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_594 = {
 
 /* Precomputed C10 HDMI PLL tables */
 static const struct intel_c10pll_state mtl_c10_hdmi_27027 = {
-	.clock = 27027,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x34, .pll[1] = 0x00, .pll[2] = 0xC0, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1268,7 +1240,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_27027 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_28320 = {
-	.clock = 28320,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x04, .pll[1] = 0x00, .pll[2] = 0xCC, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1278,7 +1249,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_28320 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_30240 = {
-	.clock = 30240,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x04, .pll[1] = 0x00, .pll[2] = 0xDC, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1288,7 +1258,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_30240 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_31500 = {
-	.clock = 31500,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x62, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1298,7 +1267,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_31500 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_36000 = {
-	.clock = 36000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xC4, .pll[1] = 0x00, .pll[2] = 0x76, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1308,7 +1276,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_36000 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_40000 = {
-	.clock = 40000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xB4, .pll[1] = 0x00, .pll[2] = 0x86, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1318,7 +1285,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_40000 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_49500 = {
-	.clock = 49500,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x74, .pll[1] = 0x00, .pll[2] = 0xAE, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1328,7 +1294,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_49500 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_50000 = {
-	.clock = 50000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x74, .pll[1] = 0x00, .pll[2] = 0xB0, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1338,7 +1303,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_50000 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_57284 = {
-	.clock = 57284,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x34, .pll[1] = 0x00, .pll[2] = 0xCE, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1348,7 +1312,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_57284 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_58000 = {
-	.clock = 58000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x34, .pll[1] = 0x00, .pll[2] = 0xD0, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1358,7 +1321,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_58000 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_65000 = {
-	.clock = 65000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x66, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1368,7 +1330,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_65000 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_71000 = {
-	.clock = 71000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x72, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1378,7 +1339,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_71000 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_74176 = {
-	.clock = 74176,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x7A, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1388,7 +1348,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_74176 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_75000 = {
-	.clock = 75000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x7C, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1398,7 +1357,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_75000 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_78750 = {
-	.clock = 78750,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xB4, .pll[1] = 0x00, .pll[2] = 0x84, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1408,7 +1366,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_78750 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_85500 = {
-	.clock = 85500,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xB4, .pll[1] = 0x00, .pll[2] = 0x92, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1418,7 +1375,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_85500 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_88750 = {
-	.clock = 88750,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x74, .pll[1] = 0x00, .pll[2] = 0x98, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1428,7 +1384,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_88750 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_106500 = {
-	.clock = 106500,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x34, .pll[1] = 0x00, .pll[2] = 0xBC, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1438,7 +1393,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_106500 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_108000 = {
-	.clock = 108000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x34, .pll[1] = 0x00, .pll[2] = 0xC0, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1448,7 +1402,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_108000 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_115500 = {
-	.clock = 115500,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x34, .pll[1] = 0x00, .pll[2] = 0xD0, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1458,7 +1411,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_115500 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_119000 = {
-	.clock = 119000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x34, .pll[1] = 0x00, .pll[2] = 0xD6, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1468,7 +1420,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_119000 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_135000 = {
-	.clock = 135000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x6C, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1478,7 +1429,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_135000 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_138500 = {
-	.clock = 138500,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x70, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1488,7 +1438,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_138500 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_147160 = {
-	.clock = 147160,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x78, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1498,7 +1447,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_147160 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_148352 = {
-	.clock = 148352,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x7A, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1508,7 +1456,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_148352 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_154000 = {
-	.clock = 154000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xB4, .pll[1] = 0x00, .pll[2] = 0x80, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1518,7 +1465,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_154000 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_162000 = {
-	.clock = 162000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xB4, .pll[1] = 0x00, .pll[2] = 0x88, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1528,7 +1474,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_162000 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_167000 = {
-	.clock = 167000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xB4, .pll[1] = 0x00, .pll[2] = 0x8C, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1538,7 +1483,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_167000 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_197802 = {
-	.clock = 197802,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x74, .pll[1] = 0x00, .pll[2] = 0xAE, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1548,7 +1492,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_197802 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_198000 = {
-	.clock = 198000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x74, .pll[1] = 0x00, .pll[2] = 0xAE, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1558,7 +1501,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_198000 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_209800 = {
-	.clock = 209800,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x34, .pll[1] = 0x00, .pll[2] = 0xBA, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1568,7 +1510,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_209800 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_241500 = {
-	.clock = 241500,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x34, .pll[1] = 0x00, .pll[2] = 0xDA, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1578,7 +1519,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_241500 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_262750 = {
-	.clock = 262750,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x68, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1588,7 +1528,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_262750 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_268500 = {
-	.clock = 268500,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x6A, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1598,7 +1537,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_268500 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_296703 = {
-	.clock = 296703,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x7A, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1608,7 +1546,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_296703 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_297000 = {
-	.clock = 297000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x7A, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1618,7 +1555,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_297000 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_319750 = {
-	.clock = 319750,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xB4, .pll[1] = 0x00, .pll[2] = 0x86, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1628,7 +1564,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_319750 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_497750 = {
-	.clock = 497750,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0x34, .pll[1] = 0x00, .pll[2] = 0xE2, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1638,7 +1573,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_497750 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_592000 = {
-	.clock = 592000,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x7A, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1648,7 +1582,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_592000 = {
 };
 
 static const struct intel_c10pll_state mtl_c10_hdmi_593407 = {
-	.clock = 593407,
 	.tx = 0x10,
 	.cmn = 0x1,
 	.pll[0] = 0xF4, .pll[1] = 0x00, .pll[2] = 0x7A, .pll[3] = 0x00, .pll[4] = 0x00,
@@ -1707,7 +1640,6 @@ static const struct intel_c10pll_state * const mtl_c10_hdmi_tables[] = {
 };
 
 static const struct intel_c20pll_state mtl_c20_hdmi_25_175 = {
-	.clock = 25175,
 	.tx = {  0xbe88, /* tx cfg0 */
 		  0x9800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -1732,7 +1664,6 @@ static const struct intel_c20pll_state mtl_c20_hdmi_25_175 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_hdmi_27_0 = {
-	.clock = 27000,
 	.tx = {  0xbe88, /* tx cfg0 */
 		  0x9800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -1757,7 +1688,6 @@ static const struct intel_c20pll_state mtl_c20_hdmi_27_0 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_hdmi_74_25 = {
-	.clock = 74250,
 	.tx = {  0xbe88, /* tx cfg0 */
 		  0x9800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -1782,7 +1712,6 @@ static const struct intel_c20pll_state mtl_c20_hdmi_74_25 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_hdmi_148_5 = {
-	.clock = 148500,
 	.tx = {  0xbe88, /* tx cfg0 */
 		  0x9800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -1807,7 +1736,6 @@ static const struct intel_c20pll_state mtl_c20_hdmi_148_5 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_hdmi_594 = {
-	.clock = 594000,
 	.tx = {  0xbe88, /* tx cfg0 */
 		  0x9800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -1832,7 +1760,6 @@ static const struct intel_c20pll_state mtl_c20_hdmi_594 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_hdmi_300 = {
-	.clock = 3000000,
 	.tx = {  0xbe98, /* tx cfg0 */
 		  0x8800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -1857,7 +1784,6 @@ static const struct intel_c20pll_state mtl_c20_hdmi_300 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_hdmi_600 = {
-	.clock = 6000000,
 	.tx = {  0xbe98, /* tx cfg0 */
 		  0x8800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -1882,7 +1808,6 @@ static const struct intel_c20pll_state mtl_c20_hdmi_600 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_hdmi_800 = {
-	.clock = 8000000,
 	.tx = {  0xbe98, /* tx cfg0 */
 		  0x8800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -1907,7 +1832,6 @@ static const struct intel_c20pll_state mtl_c20_hdmi_800 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_hdmi_1000 = {
-	.clock = 10000000,
 	.tx = {  0xbe98, /* tx cfg0 */
 		  0x8800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -1932,7 +1856,6 @@ static const struct intel_c20pll_state mtl_c20_hdmi_1000 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_hdmi_1200 = {
-	.clock = 12000000,
 	.tx = {  0xbe98, /* tx cfg0 */
 		  0x8800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -2259,7 +2182,6 @@ static int intel_c20_compute_hdmi_tmds_pll(u64 pixel_clock, struct intel_c20pll_
 	else
 		mpllb_ana_freq_vco = MPLLB_ANA_FREQ_VCO_0;
 
-	pll_state->clock	= pixel_clock;
 	pll_state->tx[0]	= 0xbe88;
 	pll_state->tx[1]	= 0x9800;
 	pll_state->tx[2]	= 0x0000;
@@ -2438,8 +2360,6 @@ static void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
 		}
 	}
 
-	pll_state->clock = intel_c20pll_calc_port_clock(encoder, pll_state);
-
 	intel_cx0_phy_transaction_end(encoder, wakeref);
 }
 
@@ -3299,14 +3219,8 @@ static void intel_c20pll_state_verify(const struct intel_crtc_state *state,
 	const struct intel_c20pll_state *mpll_sw_state = &state->dpll_hw_state.cx0pll.c20;
 	bool sw_use_mpllb = intel_c20phy_use_mpllb(mpll_sw_state);
 	bool hw_use_mpllb = intel_c20phy_use_mpllb(mpll_hw_state);
-	int clock = intel_c20pll_calc_port_clock(encoder, mpll_sw_state);
 	int i;
 
-	I915_STATE_WARN(i915, mpll_hw_state->clock != clock,
-			"[CRTC:%d:%s] mismatch in C20: Register CLOCK (expected %d, found %d)",
-			crtc->base.base.id, crtc->base.name,
-			mpll_sw_state->clock, mpll_hw_state->clock);
-
 	I915_STATE_WARN(i915, sw_use_mpllb != hw_use_mpllb,
 			"[CRTC:%d:%s] mismatch in C20: Register MPLLB selection (expected %d, found %d)",
 			crtc->base.base.id, crtc->base.name,
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index f09e513ce05b..fedc5e41460c 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -242,14 +242,12 @@ struct intel_mpllb_state {
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
-- 
2.34.1

