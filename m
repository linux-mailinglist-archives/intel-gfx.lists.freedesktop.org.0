Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A263386D3E0
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Feb 2024 21:04:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DDA410E1E9;
	Thu, 29 Feb 2024 20:04:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H/x6EhXQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A809E10E5B2
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Feb 2024 20:04:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709237044; x=1740773044;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=49TE4dkDcfo+X9CKBTFIqMXMzzo/oiHdluHymP1c8aQ=;
 b=H/x6EhXQpVYjDNAkc0NxHsPMxlwSU0/mfi59XwjrUBFIkSbsh+iIPpiS
 l+53+sfPxBn3sRFk4aVNnjlzEgOeQ9P7sx598doltyzrDINXH1NWrG4Mz
 OlxDd4h/UgGlZCY2jC3jkP+QNwUqGuZjjZWlmagqUpGBOdwnHkRp5jCI/
 MVAcOAX3mFtvJEixM1abadYyofGwoo5mhKV0vDDggSv2lauHAWnV3I0ZU
 8Z+98qkeuyvo0pvDW18T3OipDTh8ZCYba+6HCuivrrl/wvTB/IyQBiajj
 I0n2CCcM8N3bGyQxbEd6QUjN6SoG7g5xKEssAD2tzKVUqyaIcSBnLccM3 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10999"; a="14310418"
X-IronPort-AV: E=Sophos;i="6.06,194,1705392000"; d="scan'208";a="14310418"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Feb 2024 12:04:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10999"; a="827771641"
X-IronPort-AV: E=Sophos;i="6.06,194,1705392000"; d="scan'208";a="827771641"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 29 Feb 2024 12:04:01 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 29 Feb 2024 22:04:00 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/4] drm/i915: Use REG_BIT() & co. in intel_combo_phy_regs.h
Date: Thu, 29 Feb 2024 22:03:55 +0200
Message-ID: <20240229200357.7969-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240229200357.7969-1-ville.syrjala@linux.intel.com>
References: <20240229200357.7969-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Modernize the ICL+ combo PHY register refinitions by using
REG_BIT() & co.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_combo_phy_regs.h   | 114 +++++++++---------
 1 file changed, 55 insertions(+), 59 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy_regs.h b/drivers/gpu/drm/i915/display/intel_combo_phy_regs.h
index 1d931557cd79..63601129b736 100644
--- a/drivers/gpu/drm/i915/display/intel_combo_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_combo_phy_regs.h
@@ -25,28 +25,26 @@
 						 4 * (dw))
 
 #define ICL_PORT_CL_DW5(phy)			_MMIO(_ICL_PORT_CL_DW(5, phy))
-#define   CL_POWER_DOWN_ENABLE			(1 << 4)
-#define   SUS_CLOCK_CONFIG			(3 << 0)
+#define   CL_POWER_DOWN_ENABLE			REG_BIT(4)
+#define   SUS_CLOCK_CONFIG			REG_GENMASK(1, 0)
 
 #define ICL_PORT_CL_DW10(phy)			_MMIO(_ICL_PORT_CL_DW(10, phy))
-#define  PG_SEQ_DELAY_OVERRIDE_MASK		(3 << 25)
-#define  PG_SEQ_DELAY_OVERRIDE_SHIFT		25
-#define  PG_SEQ_DELAY_OVERRIDE_ENABLE		(1 << 24)
-#define  PWR_UP_ALL_LANES			(0x0 << 4)
-#define  PWR_DOWN_LN_3_2_1			(0xe << 4)
-#define  PWR_DOWN_LN_3_2			(0xc << 4)
-#define  PWR_DOWN_LN_3				(0x8 << 4)
-#define  PWR_DOWN_LN_2_1_0			(0x7 << 4)
-#define  PWR_DOWN_LN_1_0			(0x3 << 4)
-#define  PWR_DOWN_LN_3_1			(0xa << 4)
-#define  PWR_DOWN_LN_3_1_0			(0xb << 4)
-#define  PWR_DOWN_LN_MASK			(0xf << 4)
-#define  PWR_DOWN_LN_SHIFT			4
-#define  EDP4K2K_MODE_OVRD_EN			(1 << 3)
-#define  EDP4K2K_MODE_OVRD_OPTIMIZED		(1 << 2)
+#define  PG_SEQ_DELAY_OVERRIDE_MASK		REG_GENMASK(26, 25)
+#define  PG_SEQ_DELAY_OVERRIDE_ENABLE		REG_BIT(24)
+#define  PWR_DOWN_LN_MASK			REG_GENMASK(7, 4)
+#define  PWR_UP_ALL_LANES			REG_FIELD_PREP(PWR_DOWN_LN_MASK, 0x0)
+#define  PWR_DOWN_LN_3_2_1			REG_FIELD_PREP(PWR_DOWN_LN_MASK, 0xe)
+#define  PWR_DOWN_LN_3_2			REG_FIELD_PREP(PWR_DOWN_LN_MASK, 0xc)
+#define  PWR_DOWN_LN_3				REG_FIELD_PREP(PWR_DOWN_LN_MASK, 0x8)
+#define  PWR_DOWN_LN_2_1_0			REG_FIELD_PREP(PWR_DOWN_LN_MASK, 0x7)
+#define  PWR_DOWN_LN_1_0			REG_FIELD_PREP(PWR_DOWN_LN_MASK, 0x3)
+#define  PWR_DOWN_LN_3_1			REG_FIELD_PREP(PWR_DOWN_LN_MASK, 0xa)
+#define  PWR_DOWN_LN_3_1_0			REG_FIELD_PREP(PWR_DOWN_LN_MASK, 0xb)
+#define  EDP4K2K_MODE_OVRD_EN			REG_BIT(3)
+#define  EDP4K2K_MODE_OVRD_OPTIMIZED		REG_BIT(2)
 
 #define ICL_PORT_CL_DW12(phy)			_MMIO(_ICL_PORT_CL_DW(12, phy))
-#define   ICL_LANE_ENABLE_AUX			(1 << 0)
+#define   ICL_LANE_ENABLE_AUX			REG_BIT(0)
 
 /* ICL Port COMP_DW registers */
 #define _ICL_PORT_COMP				0x100
@@ -54,24 +52,22 @@
 						 _ICL_PORT_COMP + 4 * (dw))
 
 #define ICL_PORT_COMP_DW0(phy)			_MMIO(_ICL_PORT_COMP_DW(0, phy))
-#define   COMP_INIT				(1 << 31)
+#define   COMP_INIT				REG_BIT(31)
 
 #define ICL_PORT_COMP_DW1(phy)			_MMIO(_ICL_PORT_COMP_DW(1, phy))
 
 #define ICL_PORT_COMP_DW3(phy)			_MMIO(_ICL_PORT_COMP_DW(3, phy))
-#define   PROCESS_INFO_DOT_0			(0 << 26)
-#define   PROCESS_INFO_DOT_1			(1 << 26)
-#define   PROCESS_INFO_DOT_4			(2 << 26)
-#define   PROCESS_INFO_MASK			(7 << 26)
-#define   PROCESS_INFO_SHIFT			26
-#define   VOLTAGE_INFO_0_85V			(0 << 24)
-#define   VOLTAGE_INFO_0_95V			(1 << 24)
-#define   VOLTAGE_INFO_1_05V			(2 << 24)
-#define   VOLTAGE_INFO_MASK			(3 << 24)
-#define   VOLTAGE_INFO_SHIFT			24
+#define   PROCESS_INFO_MASK			REG_GENMASK(28, 26)
+#define   PROCESS_INFO_DOT_0			REG_FIELD_PREP(PROCESS_INFO_MASK, 0)
+#define   PROCESS_INFO_DOT_1			REG_FIELD_PREP(PROCESS_INFO_MASK, 1)
+#define   PROCESS_INFO_DOT_4			REG_FIELD_PREP(PROCESS_INFO_MASK, 2)
+#define   VOLTAGE_INFO_MASK			REG_GENMASK(25, 24)
+#define   VOLTAGE_INFO_0_85V			REG_FIELD_PREP(VOLTAGE_INFO_MASK, 0)
+#define   VOLTAGE_INFO_0_95V			REG_FIELD_PREP(VOLTAGE_INFO_MASK, 1)
+#define   VOLTAGE_INFO_1_05V			REG_FIELD_PREP(VOLTAGE_INFO_MASK, 2)
 
 #define ICL_PORT_COMP_DW8(phy)			_MMIO(_ICL_PORT_COMP_DW(8, phy))
-#define   IREFGEN				(1 << 24)
+#define   IREFGEN				REG_BIT(24)
 
 #define ICL_PORT_COMP_DW9(phy)			_MMIO(_ICL_PORT_COMP_DW(9, phy))
 
@@ -92,9 +88,9 @@
 #define ICL_PORT_PCS_DW1_LN(ln, phy)		_MMIO(_ICL_PORT_PCS_DW_LN(1, ln, phy))
 #define   DCC_MODE_SELECT_MASK			REG_GENMASK(21, 20)
 #define   RUN_DCC_ONCE				REG_FIELD_PREP(DCC_MODE_SELECT_MASK, 0)
-#define   COMMON_KEEPER_EN			(1 << 26)
-#define   LATENCY_OPTIM_MASK			(0x3 << 2)
-#define   LATENCY_OPTIM_VAL(x)			((x) << 2)
+#define   COMMON_KEEPER_EN			REG_BIT(26)
+#define   LATENCY_OPTIM_MASK			REG_GENMASK(3, 2)
+#define   LATENCY_OPTIM_VAL(x)			REG_FIELD_PREP(LATENCY_OPTIM_MASK, (x))
 
 /* ICL Port TX registers */
 #define _ICL_PORT_TX_AUX			0x380
@@ -111,48 +107,48 @@
 #define ICL_PORT_TX_DW2_AUX(phy)		_MMIO(_ICL_PORT_TX_DW_AUX(2, phy))
 #define ICL_PORT_TX_DW2_GRP(phy)		_MMIO(_ICL_PORT_TX_DW_GRP(2, phy))
 #define ICL_PORT_TX_DW2_LN(ln, phy)		_MMIO(_ICL_PORT_TX_DW_LN(2, ln, phy))
-#define   SWING_SEL_UPPER(x)			(((x) >> 3) << 15)
-#define   SWING_SEL_UPPER_MASK			(1 << 15)
-#define   SWING_SEL_LOWER(x)			(((x) & 0x7) << 11)
-#define   SWING_SEL_LOWER_MASK			(0x7 << 11)
-#define   FRC_LATENCY_OPTIM_MASK		(0x7 << 8)
-#define   FRC_LATENCY_OPTIM_VAL(x)		((x) << 8)
-#define   RCOMP_SCALAR(x)			((x) << 0)
-#define   RCOMP_SCALAR_MASK			(0xFF << 0)
+#define   SWING_SEL_UPPER_MASK			REG_BIT(15)
+#define   SWING_SEL_UPPER(x)			REG_FIELD_PREP(SWING_SEL_UPPER_MASK, (x) >> 3)
+#define   SWING_SEL_LOWER_MASK			REG_GENMASK(13, 11)
+#define   SWING_SEL_LOWER(x)			REG_FIELD_PREP(SWING_SEL_LOWER_MASK, (x) & 0x7)
+#define   FRC_LATENCY_OPTIM_MASK		REG_GENMASK(10, 8)
+#define   FRC_LATENCY_OPTIM_VAL(x)		REG_FIELD_PREP(FRC_LATENCY_OPTIM_MASK, (x))
+#define   RCOMP_SCALAR_MASK			REG_GENMASK(7, 0)
+#define   RCOMP_SCALAR(x)			REG_FIELD_PREP(RCOMP_SCALAR_MASK, (x))
 
 #define ICL_PORT_TX_DW4_AUX(phy)		_MMIO(_ICL_PORT_TX_DW_AUX(4, phy))
 #define ICL_PORT_TX_DW4_GRP(phy)		_MMIO(_ICL_PORT_TX_DW_GRP(4, phy))
 #define ICL_PORT_TX_DW4_LN(ln, phy)		_MMIO(_ICL_PORT_TX_DW_LN(4, ln, phy))
-#define   LOADGEN_SELECT			(1 << 31)
-#define   POST_CURSOR_1(x)			((x) << 12)
-#define   POST_CURSOR_1_MASK			(0x3F << 12)
-#define   POST_CURSOR_2(x)			((x) << 6)
-#define   POST_CURSOR_2_MASK			(0x3F << 6)
-#define   CURSOR_COEFF(x)			((x) << 0)
-#define   CURSOR_COEFF_MASK			(0x3F << 0)
+#define   LOADGEN_SELECT			REG_BIT(31)
+#define   POST_CURSOR_1_MASK			REG_GENMASK(17, 12)
+#define   POST_CURSOR_1(x)			REG_FIELD_PREP(POST_CURSOR_1_MASK, (x))
+#define   POST_CURSOR_2_MASK			REG_GENMASK(11, 6)
+#define   POST_CURSOR_2(x)			REG_FIELD_PREP(POST_CURSOR_2_MASK, (x))
+#define   CURSOR_COEFF_MASK			REG_GENMASK(5, 0)
+#define   CURSOR_COEFF(x)			REG_FIELD_PREP(CURSOR_COEFF_MASK, (x))
 
 #define ICL_PORT_TX_DW5_AUX(phy)		_MMIO(_ICL_PORT_TX_DW_AUX(5, phy))
 #define ICL_PORT_TX_DW5_GRP(phy)		_MMIO(_ICL_PORT_TX_DW_GRP(5, phy))
 #define ICL_PORT_TX_DW5_LN(ln, phy)		_MMIO(_ICL_PORT_TX_DW_LN(5, ln, phy))
-#define   TX_TRAINING_EN			(1 << 31)
-#define   TAP2_DISABLE				(1 << 30)
-#define   TAP3_DISABLE				(1 << 29)
-#define   SCALING_MODE_SEL(x)			((x) << 18)
-#define   SCALING_MODE_SEL_MASK			(0x7 << 18)
-#define   RTERM_SELECT(x)			((x) << 3)
-#define   RTERM_SELECT_MASK			(0x7 << 3)
+#define   TX_TRAINING_EN			REG_BIT(31)
+#define   TAP2_DISABLE				REG_BIT(30)
+#define   TAP3_DISABLE				REG_BIT(29)
+#define   SCALING_MODE_SEL_MASK			REG_GENMASK(20, 18)
+#define   SCALING_MODE_SEL(x)			REG_FIELD_PREP(SCALING_MODE_SEL_MASK, (x))
+#define   RTERM_SELECT_MASK			REG_GENMASK(5, 3)
+#define   RTERM_SELECT(x)			REG_FIELD_PREP(RTERM_SELECT_MASK, (x))
 
 #define ICL_PORT_TX_DW6_AUX(phy)		_MMIO(_ICL_PORT_TX_DW_AUX(6, phy))
 #define ICL_PORT_TX_DW6_GRP(phy)		_MMIO(_ICL_PORT_TX_DW_GRP(6, phy))
 #define ICL_PORT_TX_DW6_LN(ln, phy)		_MMIO(_ICL_PORT_TX_DW_LN(6, ln, phy))
-#define   ICL_AUX_ANAOVRD1_LDO_BYPASS		(1 << 7)
-#define   ICL_AUX_ANAOVRD1_ENABLE		(1 << 0)
+#define   ICL_AUX_ANAOVRD1_LDO_BYPASS		REG_BIT(7)
+#define   ICL_AUX_ANAOVRD1_ENABLE		REG_BIT(0)
 
 #define ICL_PORT_TX_DW7_AUX(phy)		_MMIO(_ICL_PORT_TX_DW_AUX(7, phy))
 #define ICL_PORT_TX_DW7_GRP(phy)		_MMIO(_ICL_PORT_TX_DW_GRP(7, phy))
 #define ICL_PORT_TX_DW7_LN(ln, phy)		_MMIO(_ICL_PORT_TX_DW_LN(7, ln, phy))
-#define   N_SCALAR(x)				((x) << 24)
-#define   N_SCALAR_MASK				(0x7F << 24)
+#define   N_SCALAR_MASK				REG_GENMASK(30, 24)
+#define   N_SCALAR(x)				REG_FIELD_PREP(N_SCALAR_MASK, (x))
 
 #define ICL_PORT_TX_DW8_AUX(phy)		_MMIO(_ICL_PORT_TX_DW_AUX(8, phy))
 #define ICL_PORT_TX_DW8_GRP(phy)		_MMIO(_ICL_PORT_TX_DW_GRP(8, phy))
-- 
2.43.0

