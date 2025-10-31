Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 960BCC24817
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Oct 2025 11:37:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 297DE10EB2B;
	Fri, 31 Oct 2025 10:37:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V9hlq8FQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCECC10EB26;
 Fri, 31 Oct 2025 10:37:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761907061; x=1793443061;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QWODs41wOx93vGePnQKMOb8liQLITke2tAYkY1NCAZ0=;
 b=V9hlq8FQkMn5gJTdkQytdzWIBvKNPGY156SFrl/2t/Rrgc6C19WslL/j
 sOqh3FDdYYlWVEMMyw0v/axftL1j7I9JCLuD0d1NQSLIg0VGryZVbcpUv
 q80i7sOtIYdZWgn1j1KXNzxTM5H8O1LwvCDhgyNF/5EBRIipVKjT5N0cH
 VilUDzYIDkEVGwnqLO9qhRTs8QDScK5/6E3WP8ELfQmJWQB1VU7iBoKYH
 TSEvtUaBnArBwvS9TaK9y8b4nrA0pBdWpIDvB059I4h0BXnyxYjg9JlCX
 KZbS7dpN44sMF0mXrDV56X9WiVChfSl0erqYJ4dDnk6MPZBTnz3HpNndH g==;
X-CSE-ConnectionGUID: xzNd+7ALSlOuHALTDOdZ4A==
X-CSE-MsgGUID: OZ2RgXQJRlO6ShKhkAzjHQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11598"; a="86690893"
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="86690893"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 03:37:41 -0700
X-CSE-ConnectionGUID: MjuC5ylPTgC8ZHtNVLUMug==
X-CSE-MsgGUID: WuwQTboRSfmj28ueaq/SHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="190554718"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa005.fm.intel.com with ESMTP; 31 Oct 2025 03:37:38 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, uma.shankar@intel.com,
 gustavo.sousa@intel.com, lucas.demarchi@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v3 19/25] drm/i915/ltphy: Program LT Phy Voltage Swing
Date: Fri, 31 Oct 2025 16:06:37 +0530
Message-Id: <20251031103643.4147868-20-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251031103643.4147868-1-suraj.kandpal@intel.com>
References: <20251031103643.4147868-1-suraj.kandpal@intel.com>
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

Program LT Phy voltage swing using the Swing tables and plug in the
function at encoder->set_signal_level

Bspec: 74493
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c      | 13 +++-
 drivers/gpu/drm/i915/display/intel_lt_phy.c   | 63 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_lt_phy.h   |  2 +
 .../gpu/drm/i915/display/intel_lt_phy_regs.h  | 13 ++++
 4 files changed, 88 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index a4ea9f29fd85..2cbe9fa7135d 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -1467,10 +1467,15 @@ static int translate_signal_level(struct intel_dp *intel_dp,
 				  u8 signal_levels)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
+	const u8 *signal_array;
+	size_t array_size;
 	int i;
 
-	for (i = 0; i < ARRAY_SIZE(index_to_dp_signal_levels); i++) {
-		if (index_to_dp_signal_levels[i] == signal_levels)
+	signal_array = index_to_dp_signal_levels;
+	array_size = ARRAY_SIZE(index_to_dp_signal_levels);
+
+	for (i = 0; i < array_size; i++) {
+		if (signal_array[i] == signal_levels)
 			return i;
 	}
 
@@ -5301,7 +5306,9 @@ void intel_ddi_init(struct intel_display *display,
 		encoder->get_config = hsw_ddi_get_config;
 	}
 
-	if (DISPLAY_VER(display) >= 14) {
+	if (HAS_LT_PHY(display)) {
+		encoder->set_signal_levels = intel_lt_phy_set_signal_levels;
+	} else if (DISPLAY_VER(display) >= 14) {
 		encoder->set_signal_levels = intel_cx0_phy_set_signal_levels;
 	} else if (display->platform.dg2) {
 		encoder->set_signal_levels = intel_snps_phy_set_signal_levels;
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index cc8cd7faf98f..7cf412606736 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -9,6 +9,8 @@
 #include "i915_utils.h"
 #include "intel_cx0_phy.h"
 #include "intel_cx0_phy_regs.h"
+#include "intel_ddi.h"
+#include "intel_ddi_buf_trans.h"
 #include "intel_de.h"
 #include "intel_display.h"
 #include "intel_display_types.h"
@@ -1003,6 +1005,12 @@ static void intel_lt_phy_write(struct intel_encoder *encoder,
 	intel_cx0_write(encoder, lane_mask, addr, data, committed);
 }
 
+static void intel_lt_phy_rmw(struct intel_encoder *encoder,
+			     u8 lane_mask, u16 addr, u8 clear, u8 set, bool committed)
+{
+	intel_cx0_rmw(encoder, lane_mask, addr, clear, set, committed);
+}
+
 static void intel_lt_phy_clear_status_p2p(struct intel_encoder *encoder,
 					  int lane)
 {
@@ -1703,6 +1711,61 @@ void intel_lt_phy_pll_disable(struct intel_encoder *encoder)
 	intel_lt_phy_transaction_end(encoder, wakeref);
 }
 
+void intel_lt_phy_set_signal_levels(struct intel_encoder *encoder,
+				    const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(encoder);
+	const struct intel_ddi_buf_trans *trans;
+	u8 owned_lane_mask;
+	intel_wakeref_t wakeref;
+	int n_entries, ln;
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+
+	if (intel_tc_port_in_tbt_alt_mode(dig_port))
+		return;
+
+	owned_lane_mask = intel_lt_phy_get_owned_lane_mask(encoder);
+
+	wakeref = intel_lt_phy_transaction_begin(encoder);
+
+	trans = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
+	if (drm_WARN_ON_ONCE(display->drm, !trans)) {
+		intel_lt_phy_transaction_end(encoder, wakeref);
+		return;
+	}
+
+	for (ln = 0; ln < crtc_state->lane_count; ln++) {
+		int level = intel_ddi_level(encoder, crtc_state, ln);
+		int lane = ln / 2;
+		int tx = ln % 2;
+		u8 lane_mask = lane == 0 ? INTEL_LT_PHY_LANE0 : INTEL_LT_PHY_LANE1;
+
+		if (!(lane_mask & owned_lane_mask))
+			continue;
+
+		intel_lt_phy_rmw(encoder, lane_mask, LT_PHY_TXY_CTL8(tx),
+				 LT_PHY_TX_SWING_LEVEL_MASK | LT_PHY_TX_SWING_MASK,
+				 LT_PHY_TX_SWING_LEVEL(trans->entries[level].lt.txswing_level) |
+				 LT_PHY_TX_SWING(trans->entries[level].lt.txswing),
+				 MB_WRITE_COMMITTED);
+
+		intel_lt_phy_rmw(encoder, lane_mask, LT_PHY_TXY_CTL2(tx),
+				 LT_PHY_TX_CURSOR_MASK,
+				 LT_PHY_TX_CURSOR(trans->entries[level].lt.pre_cursor),
+				 MB_WRITE_COMMITTED);
+		intel_lt_phy_rmw(encoder, lane_mask, LT_PHY_TXY_CTL3(tx),
+				 LT_PHY_TX_CURSOR_MASK,
+				 LT_PHY_TX_CURSOR(trans->entries[level].lt.main_cursor),
+				 MB_WRITE_COMMITTED);
+		intel_lt_phy_rmw(encoder, lane_mask, LT_PHY_TXY_CTL4(tx),
+				 LT_PHY_TX_CURSOR_MASK,
+				 LT_PHY_TX_CURSOR(trans->entries[level].lt.post_cursor),
+				 MB_WRITE_COMMITTED);
+	}
+
+	intel_lt_phy_transaction_end(encoder, wakeref);
+}
+
 void intel_xe3plpd_pll_enable(struct intel_encoder *encoder,
 			      const struct intel_crtc_state *crtc_state)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.h b/drivers/gpu/drm/i915/display/intel_lt_phy.h
index 15d3d680871c..6e67ae78801c 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.h
@@ -20,6 +20,8 @@ intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state,
 			    struct intel_encoder *encoder);
 int intel_lt_phy_calc_port_clock(struct intel_encoder *encoder,
 				 const struct intel_crtc_state *crtc_state);
+void intel_lt_phy_set_signal_levels(struct intel_encoder *encoder,
+				    const struct intel_crtc_state *crtc_state);
 void intel_xe3plpd_pll_enable(struct intel_encoder *encoder,
 			      const struct intel_crtc_state *crtc_state);
 void intel_xe3plpd_pll_disable(struct intel_encoder *encoder);
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h b/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
index 1f4e48177c8b..da83a7c5faa3 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
@@ -19,6 +19,19 @@
 #define LT_PHY_MAC_VDR			_MMIO(0xC00)
 #define    LT_PHY_PCLKIN_GATE		REG_BIT8(0)
 
+/* LT Phy Pipe Spec Registers */
+#define LT_PHY_TXY_CTL8(idx)		(0x408 + (0x200 * (idx)))
+#define  LT_PHY_TX_SWING_LEVEL_MASK	REG_GENMASK8(7, 4)
+#define  LT_PHY_TX_SWING_LEVEL(val)	REG_FIELD_PREP8(LT_PHY_TX_SWING_LEVEL_MASK, val)
+#define  LT_PHY_TX_SWING_MASK		REG_BIT8(3)
+#define  LT_PHY_TX_SWING(val)		REG_FIELD_PREP8(LT_PHY_TX_SWING_MASK, val)
+
+#define LT_PHY_TXY_CTL2(idx)		(0x402 + (0x200 * (idx)))
+#define LT_PHY_TXY_CTL3(idx)		(0x403 + (0x200 * (idx)))
+#define LT_PHY_TXY_CTL4(idx)		(0x404 + (0x200 * (idx)))
+#define  LT_PHY_TX_CURSOR_MASK		REG_GENMASK8(5, 0)
+#define  LT_PHY_TX_CURSOR(val)		REG_FIELD_PREP8(LT_PHY_TX_CURSOR_MASK, val)
+
 /* LT Phy Vendor Register */
 #define LT_PHY_VDR_0_CONFIG	0xC02
 #define  LT_PHY_VDR_DP_PLL_ENABLE	REG_BIT(7)
-- 
2.34.1

