Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A675785E3E
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Aug 2023 19:10:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDBAB10E4BB;
	Wed, 23 Aug 2023 17:09:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B16610E49C;
 Wed, 23 Aug 2023 17:09:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692810563; x=1724346563;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NlXuoOdv43YJ41q4oa/mTgnWnhpDinTp80MrF2oOucc=;
 b=emkMN+3e5UfN2tFAtzvi6dFFTt9ABs0PtNheCpb5qRLFi91Vp7LJtdc6
 gh+bwuaElvKhT4vDbsolW/5XCCfd2SGzprJM6fJgmYSVZKTgqq396amTS
 CgDMUEX40koHFN/aQmWdEhSnuXv6ELSSNNF5ewoWupXCNilXqMCevQVdt
 gdHCCrIfCDf2mZj79wLtqRa0C3AzWZRYoA5kFukyTomWHUIdE4y6scJ0M
 ZkwTLZE0IN8cPf1tvCTPPDKiW/hFPep9+leUyMtUAmdt69dfPxdlaDLn+
 mhQgjBHEOcX5sh1l7iezBXNilKshGRUpS/B1JWnfOgE3iwMxZH3soykOp w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="438147517"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="438147517"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 10:09:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="802204885"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="802204885"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 10:09:22 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed, 23 Aug 2023 10:07:37 -0700
Message-Id: <20230823170740.1180212-40-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230823170740.1180212-1-lucas.demarchi@intel.com>
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 39/42] drm/i915/lnl: Add pll table for LNL
 platform
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>

Add PLL Table for Lunar Lake platform.

BSpec: 68862
Cc: Clint Taylor <Clinton.A.Taylor@intel.com>
Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
Signed-off-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 411 ++++++++++++++++++-
 1 file changed, 406 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 6533ec417806..c8da6985c179 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -697,6 +697,261 @@ static const struct intel_c10pll_state * const mtl_c10_edp_tables[] = {
 	NULL,
 };
 
+static const struct intel_c10pll_state lnl_c10_dp_rbr = {
+	.clock = 162000,
+	.tx = 0x10,
+	.cmn = 0x21,
+	.pll[0] = 0xB4,
+	.pll[1] = 0,
+	.pll[2] = 0x30,
+	.pll[3] = 0x1,
+	.pll[4] = 0x26,
+	.pll[5] = 0xC0,
+	.pll[6] = 0x98,
+	.pll[7] = 0x46,
+	.pll[8] = 0x1,
+	.pll[9] = 0x1,
+	.pll[10] = 0,
+	.pll[11] = 0,
+	.pll[12] = 0xC0,
+	.pll[13] = 0,
+	.pll[14] = 0,
+	.pll[15] = 0x2,
+	.pll[16] = 0x84,
+	.pll[17] = 0x4F,
+	.pll[18] = 0xE5,
+	.pll[19] = 0x23,
+};
+
+static const struct intel_c10pll_state lnl_c10_dp_hbr1 = {
+	.clock = 270000,
+	.tx = 0x10,
+	.cmn = 0x21,
+	.pll[0] = 0xF4,
+	.pll[1] = 0,
+	.pll[2] = 0xF8,
+	.pll[3] = 0x0,
+	.pll[4] = 0x20,
+	.pll[5] = 0xA0,
+	.pll[6] = 0x29,
+	.pll[7] = 0x10,
+	.pll[8] = 0x1,   /* Verify */
+	.pll[9] = 0x1,
+	.pll[10] = 0,
+	.pll[11] = 0,
+	.pll[12] = 0xA0,
+	.pll[13] = 0,
+	.pll[14] = 0,
+	.pll[15] = 0x1,
+	.pll[16] = 0x84,
+	.pll[17] = 0x4F,
+	.pll[18] = 0xE5,
+	.pll[19] = 0x23,
+};
+
+static const struct intel_c10pll_state lnl_c10_dp_hbr2 = {
+	.clock = 540000,
+	.tx = 0x10,
+	.cmn = 0x21,
+	.pll[0] = 0xF4,
+	.pll[1] = 0,
+	.pll[2] = 0xF8,
+	.pll[3] = 0,
+	.pll[4] = 0x20,
+	.pll[5] = 0xA0,
+	.pll[6] = 0x29,
+	.pll[7] = 0x10,
+	.pll[8] = 0x1,
+	.pll[9] = 0x1,
+	.pll[10] = 0,
+	.pll[11] = 0,
+	.pll[12] = 0xA0,
+	.pll[13] = 0,
+	.pll[14] = 0,
+	.pll[15] = 0,
+	.pll[16] = 0x84,
+	.pll[17] = 0x4F,
+	.pll[18] = 0xE5,
+	.pll[19] = 0x23,
+};
+
+static const struct intel_c10pll_state lnl_c10_dp_hbr3 = {
+	.clock = 810000,
+	.tx = 0x10,
+	.cmn = 0x21,
+	.pll[0] = 0x34,
+	.pll[1] = 0,
+	.pll[2] = 0x84,
+	.pll[3] = 0x1,
+	.pll[4] = 0x30,
+	.pll[5] = 0xF0,
+	.pll[6] = 0x3D,
+	.pll[7] = 0x98,
+	.pll[8] = 0x1,
+	.pll[9] = 0x1,
+	.pll[10] = 0,
+	.pll[11] = 0,
+	.pll[12] = 0xF0,
+	.pll[13] = 0,
+	.pll[14] = 0,
+	.pll[15] = 0,
+	.pll[16] = 0x84,
+	.pll[17] = 0x0F,
+	.pll[18] = 0xE5,
+	.pll[19] = 0x23,
+};
+
+static const struct intel_c10pll_state lnl_c10_edp_r216 = {
+	.clock = 216000,
+	.tx = 0x10,
+	.cmn = 0x21,
+	.pll[0] = 0x4,
+	.pll[1] = 0,
+	.pll[2] = 0xA2,
+	.pll[3] = 0x1,
+	.pll[4] = 0x33,
+	.pll[5] = 0x10,
+	.pll[6] = 0x75,
+	.pll[7] = 0xB3,
+	.pll[8] = 0x1,
+	.pll[9] = 0x1,
+	.pll[10] = 0,
+	.pll[11] = 0,
+	.pll[12] = 0,
+	.pll[13] = 0,
+	.pll[14] = 0,
+	.pll[15] = 0x2,
+	.pll[16] = 0x85,
+	.pll[17] = 0x20,
+	.pll[18] = 0xE6,
+	.pll[19] = 0x2F,
+};
+
+static const struct intel_c10pll_state lnl_c10_edp_r243 = {
+	.clock = 243000,
+	.tx = 0x10,
+	.cmn = 0x21,
+	.pll[0] = 0x34,
+	.pll[1] = 0,
+	.pll[2] = 0xDA,
+	.pll[3] = 0x1,
+	.pll[4] = 0x39,
+	.pll[5] = 0x12,
+	.pll[6] = 0xE3,
+	.pll[7] = 0xE9,
+	.pll[8] = 0x1,
+	.pll[9] = 0x1,
+	.pll[10] = 0,
+	.pll[11] = 0,
+	.pll[12] = 0x20,
+	.pll[13] = 0,
+	.pll[14] = 0,
+	.pll[15] = 0x2,
+	.pll[16] = 0x85,
+	.pll[17] = 0xA0,
+	.pll[18] = 0xE6,
+	.pll[19] = 0x2F,
+};
+
+static const struct intel_c10pll_state lnl_c10_edp_r324 = {
+	.clock = 324000,
+	.tx = 0x10,
+	.cmn = 0x21,
+	.pll[0] = 0xB4,
+	.pll[1] = 0,
+	.pll[2] = 0x30,
+	.pll[3] = 0x1,
+	.pll[4] = 0x26,
+	.pll[5] = 0xC0,
+	.pll[6] = 0x98,
+	.pll[7] = 0x46,
+	.pll[8] = 0x1,
+	.pll[9] = 0x1,
+	.pll[10] = 0,
+	.pll[11] = 0,
+	.pll[12] = 0xC0,
+	.pll[13] = 0,
+	.pll[14] = 0,
+	.pll[15] = 0x1,
+	.pll[16] = 0x85,
+	.pll[17] = 0x60,
+	.pll[18] = 0xE6,
+	.pll[19] = 0x2F,
+};
+
+static const struct intel_c10pll_state lnl_c10_edp_r432 = {
+	.clock = 432000,
+	.tx = 0x10,
+	.cmn = 0x21,
+	.pll[0] = 0x4,
+	.pll[1] = 0,
+	.pll[2] = 0xA2,
+	.pll[3] = 0x1,
+	.pll[4] = 0x33,
+	.pll[5] = 0x10,
+	.pll[6] = 0x75,
+	.pll[7] = 0xB3,
+	.pll[8] = 0x1,
+	.pll[9] = 0x1,
+	.pll[10] = 0,
+	.pll[11] = 0,
+	.pll[12] = 0,
+	.pll[13] = 0,
+	.pll[14] = 0,
+	.pll[15] = 0x1,
+	.pll[16] = 0x85,
+	.pll[17] = 0x20,
+	.pll[18] = 0xE6,
+	.pll[19] = 0x2F,
+};
+
+static const struct intel_c10pll_state lnl_c10_edp_r675 = {
+	.clock = 675000,
+	.tx = 0x10,
+	.cmn = 0x21,
+	.pll[0] = 0xB4,
+	.pll[1] = 0,
+	.pll[2] = 0x3E,
+	.pll[3] = 0x1,
+	.pll[4] = 0xA8,
+	.pll[5] = 0xC8,
+	.pll[6] = 0x33,
+	.pll[7] = 0x54,
+	.pll[8] = 0x1,
+	.pll[9] = 0x1,
+	.pll[10] = 0,
+	.pll[11] = 0,
+	.pll[12] = 0xC8,
+	.pll[13] = 0,
+	.pll[14] = 0,
+	.pll[15] = 0,
+	.pll[16] = 0x85,
+	.pll[17] = 0xA0,
+	.pll[18] = 0xE6,
+	.pll[19] = 0x2F,
+};
+
+static const struct intel_c10pll_state * const lnl_c10_dp_tables[] = {
+	&lnl_c10_dp_rbr,
+	&lnl_c10_dp_hbr1,
+	&lnl_c10_dp_hbr2,
+	&lnl_c10_dp_hbr3,
+	NULL,
+};
+
+static const struct intel_c10pll_state * const lnl_c10_edp_tables[] = {
+	&lnl_c10_dp_rbr,
+	&lnl_c10_edp_r216,
+	&lnl_c10_edp_r243,
+	&lnl_c10_dp_hbr1,
+	&lnl_c10_edp_r324,
+	&lnl_c10_edp_r432,
+	&lnl_c10_dp_hbr2,
+	&lnl_c10_edp_r675,
+	&lnl_c10_dp_hbr3,
+	NULL,
+};
+
 /* C20 basic DP 1.4 tables */
 static const struct intel_c20pll_state mtl_c20_dp_rbr = {
 	.link_bit_rate = 162000,
@@ -1474,6 +1729,140 @@ static const struct intel_c10pll_state * const mtl_c10_hdmi_tables[] = {
 	NULL,
 };
 
+/*
+ * HDMI link rates with 38.4 MHz reference clock.
+ */
+
+static const struct intel_c10pll_state lnl_c10_hdmi_252 = {
+	.clock = 25200,
+	.pll[0] = 0x4,
+	.pll[1] = 0,
+	.pll[2] = 0xB2,
+	.pll[3] = 0,
+	.pll[4] = 0,
+	.pll[5] = 0,
+	.pll[6] = 0,
+	.pll[7] = 0,
+	.pll[8] = 0x20,
+	.pll[9] = 0x1,
+	.pll[10] = 0,
+	.pll[11] = 0,
+	.pll[12] = 0,
+	.pll[13] = 0,
+	.pll[14] = 0,
+	.pll[15] = 0xD,
+	.pll[16] = 0x0A,
+	.pll[17] = 0xA0,
+	.pll[18] = 0x87,
+	.pll[19] = 0x2F,
+};
+
+static const struct intel_c10pll_state lnl_c10_hdmi_27_0 = {
+	.clock = 27000,
+	.pll[0] = 0x34,
+	.pll[1] = 0,
+	.pll[2] = 0xC0,
+	.pll[3] = 0,
+	.pll[4] = 0,
+	.pll[5] = 0,
+	.pll[6] = 0,
+	.pll[7] = 0,
+	.pll[8] = 0x20,
+	.pll[9] = 0x1,
+	.pll[10] = 0,
+	.pll[11] = 0,
+	.pll[12] = 0x80,
+	.pll[13] = 0,
+	.pll[14] = 0,
+	.pll[15] = 0xD,
+	.pll[16] = 0x6,
+	.pll[17] = 0xE0,
+	.pll[18] = 0x84,
+	.pll[19] = 0x2F,
+};
+
+static const struct intel_c10pll_state lnl_c10_hdmi_74_2 = {
+	.clock = 74250,
+	.pll[0] = 0xF4,
+	.pll[1] = 0,
+	.pll[2] = 0x7A,
+	.pll[3] = 0,
+	.pll[4] = 0,
+	.pll[5] = 0,
+	.pll[6] = 0,
+	.pll[7] = 0,
+	.pll[8] = 0x20,
+	.pll[9] = 0x1,
+	.pll[10] = 0,
+	.pll[11] = 0,
+	.pll[12] = 0x58,
+	.pll[13] = 0,
+	.pll[14] = 0,
+	.pll[15] = 0xB,
+	.pll[16] = 0x6,
+	.pll[17] = 0x20,
+	.pll[18] = 0x85,
+	.pll[19] = 0x2F,
+};
+
+static const struct intel_c10pll_state lnl_c10_hdmi_148_5 = {
+	.clock = 148500,
+	.pll[0] = 0xF4,
+	.pll[1] = 0,
+	.pll[2] = 0x7A,
+	.pll[3] = 0,
+	.pll[4] = 0,
+	.pll[5] = 0,
+	.pll[6] = 0,
+	.pll[7] = 0,
+	.pll[8] = 0x20,
+	.pll[9] = 0x1,
+	.pll[10] = 0,
+	.pll[11] = 0,
+	.pll[12] = 0x58,
+	.pll[13] = 0,
+	.pll[14] = 0,
+	.pll[15] = 0xA,
+	.pll[16] = 0x6,
+	.pll[17] = 0x20,
+	.pll[18] = 0x85,
+	.pll[19] = 0x2F,
+};
+
+static const struct intel_c10pll_state lnl_c10_hdmi_594 = {
+	.clock = 594000,
+	.pll[0] = 0xF4,
+	.pll[1] = 0,
+	.pll[2] = 0x7A,
+	.pll[3] = 0,
+	.pll[4] = 0,
+	.pll[5] = 0,
+	.pll[6] = 0,
+	.pll[7] = 0,
+	.pll[8] = 0x20,
+	.pll[9] = 0x1,
+	.pll[10] = 0,
+	.pll[11] = 0,
+	.pll[12] = 0x58,
+	.pll[13] = 0,
+	.pll[14] = 0,
+	.pll[15] = 0x8,
+	.pll[16] = 0x6,
+	.pll[17] = 0x20,
+	.pll[18] = 0x85,
+	.pll[19] = 0x2F,
+};
+
+/* Consolidated Table */
+static const struct intel_c10pll_state * const lnl_c10_hdmi_tables[] = {
+	&lnl_c10_hdmi_252,
+	&lnl_c10_hdmi_27_0,
+	&lnl_c10_hdmi_74_2,
+	&lnl_c10_hdmi_148_5,
+	&lnl_c10_hdmi_594,
+	NULL,
+};
+
 static const struct intel_c20pll_state mtl_c20_hdmi_25_175 = {
 	.link_bit_rate = 25175,
 	.clock = 25175,
@@ -1765,13 +2154,25 @@ static const struct intel_c10pll_state * const *
 intel_c10pll_tables_get(struct intel_crtc_state *crtc_state,
 			struct intel_encoder *encoder)
 {
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
 	if (intel_crtc_has_dp_encoder(crtc_state)) {
-		if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
-			return mtl_c10_edp_tables;
-		else
-			return mtl_c10_dp_tables;
+		if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP)) {
+			if (DISPLAY_VER(i915) >= 20)
+				return lnl_c10_edp_tables;
+			else
+				return mtl_c10_edp_tables;
+		} else {
+			if (DISPLAY_VER(i915) >= 20)
+				return lnl_c10_dp_tables;
+			else
+				return mtl_c10_dp_tables;
+		}
 	} else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
-		return mtl_c10_hdmi_tables;
+		if (DISPLAY_VER(i915) >= 20)
+			return lnl_c10_hdmi_tables;
+		else
+			return mtl_c10_hdmi_tables;
 	}
 
 	MISSING_CASE(encoder->type);
-- 
2.40.1

