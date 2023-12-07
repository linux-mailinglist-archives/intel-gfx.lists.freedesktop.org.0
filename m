Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44DE880951B
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Dec 2023 23:12:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 370A910E996;
	Thu,  7 Dec 2023 22:12:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C344110E996
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Dec 2023 22:11:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701987119; x=1733523119;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2tO188Q3PixeN4JVhLlzVpeycdQCsldzLMH8qA3Q9kw=;
 b=PyjJumcop7nhdsd7T+duuSW2gz7R8FPQSATYKH1sS3nV2zunXkg6Juum
 qkIvthAtxT9U4Q5pVjRZyBSYFmpX1KY9dDnzms62ZeqhKsbQXVLbIMMre
 zWtq76tqT3oUC+3IK43XYoYz8gkF2+4Wpzum4fs9/8zyngAc0rm5c/H6C
 mjHMbGpnYm6pasZlIU59g5qDpeXBtKHVCShHYSRIB3/H0lc5sOHeAkf1A
 9j1Tzia58m+Z2G5DAsKBAMMXN8sgY8KZawUgSRBA9Qcj9BakCuobDo39/
 r5j5U82isB8DTinNLM+Hiyjap/2LJ05ygiK8kKFumphSZdvD+8BKeYN9N A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="1179284"
X-IronPort-AV: E=Sophos;i="6.04,258,1695711600"; 
   d="scan'208";a="1179284"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2023 14:11:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,258,1695711600"; d="scan'208";a="13257015"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2023 14:11:58 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/3] drm/i915/mtl: Remove misleading "clock" field from C20
 pll_state
Date: Thu,  7 Dec 2023 14:10:24 -0800
Message-Id: <20231207221025.2032207-3-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231207221025.2032207-1-radhakrishna.sripada@intel.com>
References: <20231207221025.2032207-1-radhakrishna.sripada@intel.com>
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

The field link_bit_rate serves as the actual clock value for the C20
pll_state structure. Remove the misleading clock field. The subsequent
patch would rename the link_bit_rate as the clock field.

Cc: Clint Taylor <clinton.a.taylor@intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c   | 18 ------------------
 .../gpu/drm/i915/display/intel_display_types.h |  3 +--
 2 files changed, 1 insertion(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 7d412be996ea..d518b55d5150 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -746,7 +746,6 @@ static const struct intel_c10pll_state * const mtl_c10_edp_tables[] = {
 /* C20 basic DP 1.4 tables */
 static const struct intel_c20pll_state mtl_c20_dp_rbr = {
 	.link_bit_rate = 162000,
-	.clock = 162000,
 	.tx = {	0xbe88, /* tx cfg0 */
 		0x5800, /* tx cfg1 */
 		0x0000, /* tx cfg2 */
@@ -772,7 +771,6 @@ static const struct intel_c20pll_state mtl_c20_dp_rbr = {
 
 static const struct intel_c20pll_state mtl_c20_dp_hbr1 = {
 	.link_bit_rate = 270000,
-	.clock = 270000,
 	.tx = {	0xbe88, /* tx cfg0 */
 		0x4800, /* tx cfg1 */
 		0x0000, /* tx cfg2 */
@@ -798,7 +796,6 @@ static const struct intel_c20pll_state mtl_c20_dp_hbr1 = {
 
 static const struct intel_c20pll_state mtl_c20_dp_hbr2 = {
 	.link_bit_rate = 540000,
-	.clock = 540000,
 	.tx = {	0xbe88, /* tx cfg0 */
 		0x4800, /* tx cfg1 */
 		0x0000, /* tx cfg2 */
@@ -824,7 +821,6 @@ static const struct intel_c20pll_state mtl_c20_dp_hbr2 = {
 
 static const struct intel_c20pll_state mtl_c20_dp_hbr3 = {
 	.link_bit_rate = 810000,
-	.clock = 810000,
 	.tx = {	0xbe88, /* tx cfg0 */
 		0x4800, /* tx cfg1 */
 		0x0000, /* tx cfg2 */
@@ -851,7 +847,6 @@ static const struct intel_c20pll_state mtl_c20_dp_hbr3 = {
 /* C20 basic DP 2.0 tables */
 static const struct intel_c20pll_state mtl_c20_dp_uhbr10 = {
 	.link_bit_rate = 1000000, /* 10 Gbps */
-	.clock = 312500,
 	.tx = {	0xbe21, /* tx cfg0 */
 		0x4800, /* tx cfg1 */
 		0x0000, /* tx cfg2 */
@@ -876,7 +871,6 @@ static const struct intel_c20pll_state mtl_c20_dp_uhbr10 = {
 
 static const struct intel_c20pll_state mtl_c20_dp_uhbr13_5 = {
 	.link_bit_rate = 1350000, /* 13.5 Gbps */
-	.clock = 421875,
 	.tx = {	0xbea0, /* tx cfg0 */
 		0x4800, /* tx cfg1 */
 		0x0000, /* tx cfg2 */
@@ -902,7 +896,6 @@ static const struct intel_c20pll_state mtl_c20_dp_uhbr13_5 = {
 
 static const struct intel_c20pll_state mtl_c20_dp_uhbr20 = {
 	.link_bit_rate = 2000000, /* 20 Gbps */
-	.clock = 625000,
 	.tx = {	0xbe20, /* tx cfg0 */
 		0x4800, /* tx cfg1 */
 		0x0000, /* tx cfg2 */
@@ -1522,7 +1515,6 @@ static const struct intel_c10pll_state * const mtl_c10_hdmi_tables[] = {
 
 static const struct intel_c20pll_state mtl_c20_hdmi_25_175 = {
 	.link_bit_rate = 25175,
-	.clock = 25175,
 	.tx = {  0xbe88, /* tx cfg0 */
 		  0x9800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -1548,7 +1540,6 @@ static const struct intel_c20pll_state mtl_c20_hdmi_25_175 = {
 
 static const struct intel_c20pll_state mtl_c20_hdmi_27_0 = {
 	.link_bit_rate = 27000,
-	.clock = 27000,
 	.tx = {  0xbe88, /* tx cfg0 */
 		  0x9800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -1574,7 +1565,6 @@ static const struct intel_c20pll_state mtl_c20_hdmi_27_0 = {
 
 static const struct intel_c20pll_state mtl_c20_hdmi_74_25 = {
 	.link_bit_rate = 74250,
-	.clock = 74250,
 	.tx = {  0xbe88, /* tx cfg0 */
 		  0x9800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -1600,7 +1590,6 @@ static const struct intel_c20pll_state mtl_c20_hdmi_74_25 = {
 
 static const struct intel_c20pll_state mtl_c20_hdmi_148_5 = {
 	.link_bit_rate = 148500,
-	.clock = 148500,
 	.tx = {  0xbe88, /* tx cfg0 */
 		  0x9800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -1626,7 +1615,6 @@ static const struct intel_c20pll_state mtl_c20_hdmi_148_5 = {
 
 static const struct intel_c20pll_state mtl_c20_hdmi_594 = {
 	.link_bit_rate = 594000,
-	.clock = 594000,
 	.tx = {  0xbe88, /* tx cfg0 */
 		  0x9800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -1652,7 +1640,6 @@ static const struct intel_c20pll_state mtl_c20_hdmi_594 = {
 
 static const struct intel_c20pll_state mtl_c20_hdmi_300 = {
 	.link_bit_rate = 3000000,
-	.clock = 166670,
 	.tx = {  0xbe98, /* tx cfg0 */
 		  0x9800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -1678,7 +1665,6 @@ static const struct intel_c20pll_state mtl_c20_hdmi_300 = {
 
 static const struct intel_c20pll_state mtl_c20_hdmi_600 = {
 	.link_bit_rate = 6000000,
-	.clock = 333330,
 	.tx = {  0xbe98, /* tx cfg0 */
 		  0x9800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -1704,7 +1690,6 @@ static const struct intel_c20pll_state mtl_c20_hdmi_600 = {
 
 static const struct intel_c20pll_state mtl_c20_hdmi_800 = {
 	.link_bit_rate = 8000000,
-	.clock = 444440,
 	.tx = {  0xbe98, /* tx cfg0 */
 		  0x9800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -1730,7 +1715,6 @@ static const struct intel_c20pll_state mtl_c20_hdmi_800 = {
 
 static const struct intel_c20pll_state mtl_c20_hdmi_1000 = {
 	.link_bit_rate = 10000000,
-	.clock = 555560,
 	.tx = {  0xbe98, /* tx cfg0 */
 		  0x9800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -1756,7 +1740,6 @@ static const struct intel_c20pll_state mtl_c20_hdmi_1000 = {
 
 static const struct intel_c20pll_state mtl_c20_hdmi_1200 = {
 	.link_bit_rate = 12000000,
-	.clock = 666670,
 	.tx = {  0xbe98, /* tx cfg0 */
 		  0x9800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -2006,7 +1989,6 @@ static int intel_c20_compute_hdmi_tmds_pll(u64 pixel_clock, struct intel_c20pll_
 		mpllb_ana_freq_vco = MPLLB_ANA_FREQ_VCO_0;
 
 	pll_state->link_bit_rate	= pixel_clock;
-	pll_state->clock	= pixel_clock;
 	pll_state->tx[0]	= 0xbe88;
 	pll_state->tx[1]	= 0x9800;
 	pll_state->tx[2]	= 0x0000;
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index b3e942f2eeb0..6b348d329957 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1022,8 +1022,7 @@ struct intel_c10pll_state {
 };
 
 struct intel_c20pll_state {
-	u32 link_bit_rate;
-	u32 clock; /* in kHz */
+	u32 link_bit_rate; /* in kHz */
 	u16 tx[3];
 	u16 cmn[4];
 	union {
-- 
2.34.1

