Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 991E980951C
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Dec 2023 23:12:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 862FE10E9A3;
	Thu,  7 Dec 2023 22:12:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0BD410E217
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Dec 2023 22:11:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701987119; x=1733523119;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=I3ThnhrtWHbgMsqTbSegJZT7kdrNEkBgzbge5fd3gkQ=;
 b=oF5ZnRq8eatNs8YxPIGXS1BnuUf33OzIS4F3Qj+KPQtZaEgARrgDjpL4
 QcDxjvis0YDFKzw3U8dl5jIXaE7Ki4Gc0Vc+PgETKppvSR2schZ5JBbyt
 urugylx2i/taUBRiFJW5qI0W7jfvLVuNG/HZXEI1jCPG0QCMUszwzlD5s
 zA5SVI9DTXf714hxO2HcigULp/MJWAv5BMpACt26k34mEXxfKF7XrRkPH
 HlQKfjzkfegn+Q1RJgaMoRH3OglU5MX6xmspIx4j4A08e1gQqZZvDZIut
 iBjo8ME+/DTGXD/BRuvQEwghDEWmF2k01eBlf4NCvKfGM2DI6eRcPbze4 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="1179285"
X-IronPort-AV: E=Sophos;i="6.04,258,1695711600"; 
   d="scan'208";a="1179285"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2023 14:11:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,258,1695711600"; d="scan'208";a="13257018"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2023 14:11:58 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 3/3] drm/i915/mtl: Rename the link_bit_rate to clock in C20
 pll_state
Date: Thu,  7 Dec 2023 14:10:25 -0800
Message-Id: <20231207221025.2032207-4-radhakrishna.sripada@intel.com>
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

With the cleanup of the misleading clock value to avoid extra
calculations to convert between link_bit_rate and clock, use
one standard "clock" field for the c20 pll which works with
crtc_state->port_clock field.

Cc: Clint Taylor <clinton.a.taylor@intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 42 +++++++++----------
 .../drm/i915/display/intel_display_types.h    |  2 +-
 2 files changed, 22 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index d518b55d5150..4e6ea71ff629 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -745,7 +745,7 @@ static const struct intel_c10pll_state * const mtl_c10_edp_tables[] = {
 
 /* C20 basic DP 1.4 tables */
 static const struct intel_c20pll_state mtl_c20_dp_rbr = {
-	.link_bit_rate = 162000,
+	.clock = 162000,
 	.tx = {	0xbe88, /* tx cfg0 */
 		0x5800, /* tx cfg1 */
 		0x0000, /* tx cfg2 */
@@ -770,7 +770,7 @@ static const struct intel_c20pll_state mtl_c20_dp_rbr = {
 };
 
 static const struct intel_c20pll_state mtl_c20_dp_hbr1 = {
-	.link_bit_rate = 270000,
+	.clock = 270000,
 	.tx = {	0xbe88, /* tx cfg0 */
 		0x4800, /* tx cfg1 */
 		0x0000, /* tx cfg2 */
@@ -795,7 +795,7 @@ static const struct intel_c20pll_state mtl_c20_dp_hbr1 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_dp_hbr2 = {
-	.link_bit_rate = 540000,
+	.clock = 540000,
 	.tx = {	0xbe88, /* tx cfg0 */
 		0x4800, /* tx cfg1 */
 		0x0000, /* tx cfg2 */
@@ -820,7 +820,7 @@ static const struct intel_c20pll_state mtl_c20_dp_hbr2 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_dp_hbr3 = {
-	.link_bit_rate = 810000,
+	.clock = 810000,
 	.tx = {	0xbe88, /* tx cfg0 */
 		0x4800, /* tx cfg1 */
 		0x0000, /* tx cfg2 */
@@ -846,7 +846,7 @@ static const struct intel_c20pll_state mtl_c20_dp_hbr3 = {
 
 /* C20 basic DP 2.0 tables */
 static const struct intel_c20pll_state mtl_c20_dp_uhbr10 = {
-	.link_bit_rate = 1000000, /* 10 Gbps */
+	.clock = 1000000, /* 10 Gbps */
 	.tx = {	0xbe21, /* tx cfg0 */
 		0x4800, /* tx cfg1 */
 		0x0000, /* tx cfg2 */
@@ -870,7 +870,7 @@ static const struct intel_c20pll_state mtl_c20_dp_uhbr10 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_dp_uhbr13_5 = {
-	.link_bit_rate = 1350000, /* 13.5 Gbps */
+	.clock = 1350000, /* 13.5 Gbps */
 	.tx = {	0xbea0, /* tx cfg0 */
 		0x4800, /* tx cfg1 */
 		0x0000, /* tx cfg2 */
@@ -895,7 +895,7 @@ static const struct intel_c20pll_state mtl_c20_dp_uhbr13_5 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_dp_uhbr20 = {
-	.link_bit_rate = 2000000, /* 20 Gbps */
+	.clock = 2000000, /* 20 Gbps */
 	.tx = {	0xbe20, /* tx cfg0 */
 		0x4800, /* tx cfg1 */
 		0x0000, /* tx cfg2 */
@@ -1514,7 +1514,7 @@ static const struct intel_c10pll_state * const mtl_c10_hdmi_tables[] = {
 };
 
 static const struct intel_c20pll_state mtl_c20_hdmi_25_175 = {
-	.link_bit_rate = 25175,
+	.clock = 25175,
 	.tx = {  0xbe88, /* tx cfg0 */
 		  0x9800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -1539,7 +1539,7 @@ static const struct intel_c20pll_state mtl_c20_hdmi_25_175 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_hdmi_27_0 = {
-	.link_bit_rate = 27000,
+	.clock = 27000,
 	.tx = {  0xbe88, /* tx cfg0 */
 		  0x9800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -1564,7 +1564,7 @@ static const struct intel_c20pll_state mtl_c20_hdmi_27_0 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_hdmi_74_25 = {
-	.link_bit_rate = 74250,
+	.clock = 74250,
 	.tx = {  0xbe88, /* tx cfg0 */
 		  0x9800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -1589,7 +1589,7 @@ static const struct intel_c20pll_state mtl_c20_hdmi_74_25 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_hdmi_148_5 = {
-	.link_bit_rate = 148500,
+	.clock = 148500,
 	.tx = {  0xbe88, /* tx cfg0 */
 		  0x9800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -1614,7 +1614,7 @@ static const struct intel_c20pll_state mtl_c20_hdmi_148_5 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_hdmi_594 = {
-	.link_bit_rate = 594000,
+	.clock = 594000,
 	.tx = {  0xbe88, /* tx cfg0 */
 		  0x9800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -1639,7 +1639,7 @@ static const struct intel_c20pll_state mtl_c20_hdmi_594 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_hdmi_300 = {
-	.link_bit_rate = 3000000,
+	.clock = 3000000,
 	.tx = {  0xbe98, /* tx cfg0 */
 		  0x9800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -1664,7 +1664,7 @@ static const struct intel_c20pll_state mtl_c20_hdmi_300 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_hdmi_600 = {
-	.link_bit_rate = 6000000,
+	.clock = 6000000,
 	.tx = {  0xbe98, /* tx cfg0 */
 		  0x9800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -1689,7 +1689,7 @@ static const struct intel_c20pll_state mtl_c20_hdmi_600 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_hdmi_800 = {
-	.link_bit_rate = 8000000,
+	.clock = 8000000,
 	.tx = {  0xbe98, /* tx cfg0 */
 		  0x9800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -1714,7 +1714,7 @@ static const struct intel_c20pll_state mtl_c20_hdmi_800 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_hdmi_1000 = {
-	.link_bit_rate = 10000000,
+	.clock = 10000000,
 	.tx = {  0xbe98, /* tx cfg0 */
 		  0x9800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -1739,7 +1739,7 @@ static const struct intel_c20pll_state mtl_c20_hdmi_1000 = {
 };
 
 static const struct intel_c20pll_state mtl_c20_hdmi_1200 = {
-	.link_bit_rate = 12000000,
+	.clock = 12000000,
 	.tx = {  0xbe98, /* tx cfg0 */
 		  0x9800, /* tx cfg1 */
 		  0x0000, /* tx cfg2 */
@@ -1988,7 +1988,7 @@ static int intel_c20_compute_hdmi_tmds_pll(u64 pixel_clock, struct intel_c20pll_
 	else
 		mpllb_ana_freq_vco = MPLLB_ANA_FREQ_VCO_0;
 
-	pll_state->link_bit_rate	= pixel_clock;
+	pll_state->clock	= pixel_clock;
 	pll_state->tx[0]	= 0xbe88;
 	pll_state->tx[1]	= 0x9800;
 	pll_state->tx[2]	= 0x0000;
@@ -2024,7 +2024,7 @@ static int intel_c20_phy_check_hdmi_link_rate(int clock)
 	int i;
 
 	for (i = 0; tables[i]; i++) {
-		if (clock == tables[i]->link_bit_rate)
+		if (clock == tables[i]->clock)
 			return MODE_OK;
 	}
 
@@ -2076,7 +2076,7 @@ static int intel_c20pll_calc_state(struct intel_crtc_state *crtc_state,
 		return -EINVAL;
 
 	for (i = 0; tables[i]; i++) {
-		if (crtc_state->port_clock == tables[i]->link_bit_rate) {
+		if (crtc_state->port_clock == tables[i]->clock) {
 			crtc_state->cx0pll_state.c20 = *tables[i];
 			return 0;
 		}
@@ -2174,7 +2174,7 @@ void intel_c20pll_dump_hw_state(struct drm_i915_private *i915,
 	drm_dbg_kms(&i915->drm, "cmn[0] = 0x%.4x, cmn[1] = 0x%.4x, cmn[2] = 0x%.4x, cmn[3] = 0x%.4x\n",
 		    hw_state->cmn[0], hw_state->cmn[1], hw_state->cmn[2], hw_state->cmn[3]);
 
-	if (intel_c20_use_mplla(hw_state->link_bit_rate)) {
+	if (intel_c20_use_mplla(hw_state->clock)) {
 		for (i = 0; i < ARRAY_SIZE(hw_state->mplla); i++)
 			drm_dbg_kms(&i915->drm, "mplla[%d] = 0x%.4x\n", i, hw_state->mplla[i]);
 	} else {
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 6b348d329957..2616bb6267a1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1022,7 +1022,7 @@ struct intel_c10pll_state {
 };
 
 struct intel_c20pll_state {
-	u32 link_bit_rate; /* in kHz */
+	u32 clock; /* in kHz */
 	u16 tx[3];
 	u16 cmn[4];
 	union {
-- 
2.34.1

