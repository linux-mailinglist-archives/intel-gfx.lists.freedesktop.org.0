Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E31EB3D980D
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jul 2021 00:00:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCACC6EB3A;
	Wed, 28 Jul 2021 22:00:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 345326EAB6
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Jul 2021 22:00:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10059"; a="199937030"
X-IronPort-AV: E=Sophos;i="5.84,276,1620716400"; d="scan'208";a="199937030"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2021 15:00:05 -0700
X-IronPort-AV: E=Sophos;i="5.84,276,1620716400"; d="scan'208";a="663663255"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2021 15:00:05 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 28 Jul 2021 14:59:35 -0700
Message-Id: <20210728215946.1573015-15-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210728215946.1573015-1-lucas.demarchi@intel.com>
References: <20210728215946.1573015-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 14/25] drm/i915/display: remove CNL ddi buf
 translation tables
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The only real platform with DISPLAY_VER == 10 is GLK. We don't need to
handle CNL explicitly.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c      |  12 +-
 .../drm/i915/display/intel_ddi_buf_trans.c    | 616 +++++-------------
 .../drm/i915/display/intel_ddi_buf_trans.h    |   4 +-
 3 files changed, 184 insertions(+), 448 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 6e6d37b97c51..a989a56fc9ff 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -1055,8 +1055,8 @@ static void icl_ddi_combo_vswing_program(struct intel_encoder *encoder,
 	val = intel_de_read(dev_priv, ICL_PORT_TX_DW2_LN0(phy));
 	val &= ~(SWING_SEL_LOWER_MASK | SWING_SEL_UPPER_MASK |
 		 RCOMP_SCALAR_MASK);
-	val |= SWING_SEL_UPPER(ddi_translations->entries[level].cnl.dw2_swing_sel);
-	val |= SWING_SEL_LOWER(ddi_translations->entries[level].cnl.dw2_swing_sel);
+	val |= SWING_SEL_UPPER(ddi_translations->entries[level].icl.dw2_swing_sel);
+	val |= SWING_SEL_LOWER(ddi_translations->entries[level].icl.dw2_swing_sel);
 	/* Program Rcomp scalar for every table entry */
 	val |= RCOMP_SCALAR(0x98);
 	intel_de_write(dev_priv, ICL_PORT_TX_DW2_GRP(phy), val);
@@ -1067,16 +1067,16 @@ static void icl_ddi_combo_vswing_program(struct intel_encoder *encoder,
 		val = intel_de_read(dev_priv, ICL_PORT_TX_DW4_LN(ln, phy));
 		val &= ~(POST_CURSOR_1_MASK | POST_CURSOR_2_MASK |
 			 CURSOR_COEFF_MASK);
-		val |= POST_CURSOR_1(ddi_translations->entries[level].cnl.dw4_post_cursor_1);
-		val |= POST_CURSOR_2(ddi_translations->entries[level].cnl.dw4_post_cursor_2);
-		val |= CURSOR_COEFF(ddi_translations->entries[level].cnl.dw4_cursor_coeff);
+		val |= POST_CURSOR_1(ddi_translations->entries[level].icl.dw4_post_cursor_1);
+		val |= POST_CURSOR_2(ddi_translations->entries[level].icl.dw4_post_cursor_2);
+		val |= CURSOR_COEFF(ddi_translations->entries[level].icl.dw4_cursor_coeff);
 		intel_de_write(dev_priv, ICL_PORT_TX_DW4_LN(ln, phy), val);
 	}
 
 	/* Program PORT_TX_DW7 */
 	val = intel_de_read(dev_priv, ICL_PORT_TX_DW7_LN0(phy));
 	val &= ~N_SCALAR_MASK;
-	val |= N_SCALAR(ddi_translations->entries[level].cnl.dw7_n_scalar);
+	val |= N_SCALAR(ddi_translations->entries[level].icl.dw7_n_scalar);
 	intel_de_write(dev_priv, ICL_PORT_TX_DW7_GRP(phy), val);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index 63b1ae830d9a..9ab95bcd0c86 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -417,199 +417,19 @@ static const struct intel_ddi_buf_trans bxt_ddi_translations_hdmi = {
 	.hdmi_default_entry = ARRAY_SIZE(_bxt_ddi_translations_hdmi) - 1,
 };
 
-/* Voltage Swing Programming for VccIO 0.85V for DP */
-static const union intel_ddi_buf_trans_entry _cnl_ddi_translations_dp_0_85V[] = {
-							/* NT mV Trans mV db    */
-	{ .cnl = { 0xA, 0x5D, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
-	{ .cnl = { 0xA, 0x6A, 0x38, 0x00, 0x07 } },	/* 350   500      3.1   */
-	{ .cnl = { 0xB, 0x7A, 0x32, 0x00, 0x0D } },	/* 350   700      6.0   */
-	{ .cnl = { 0x6, 0x7C, 0x2D, 0x00, 0x12 } },	/* 350   900      8.2   */
-	{ .cnl = { 0xA, 0x69, 0x3F, 0x00, 0x00 } },	/* 500   500      0.0   */
-	{ .cnl = { 0xB, 0x7A, 0x36, 0x00, 0x09 } },	/* 500   700      2.9   */
-	{ .cnl = { 0x6, 0x7C, 0x30, 0x00, 0x0F } },	/* 500   900      5.1   */
-	{ .cnl = { 0xB, 0x7D, 0x3C, 0x00, 0x03 } },	/* 650   725      0.9   */
-	{ .cnl = { 0x6, 0x7C, 0x34, 0x00, 0x0B } },	/* 600   900      3.5   */
-	{ .cnl = { 0x6, 0x7B, 0x3F, 0x00, 0x00 } },	/* 900   900      0.0   */
-};
-
-static const struct intel_ddi_buf_trans cnl_ddi_translations_dp_0_85V = {
-	.entries = _cnl_ddi_translations_dp_0_85V,
-	.num_entries = ARRAY_SIZE(_cnl_ddi_translations_dp_0_85V),
-};
-
-/* Voltage Swing Programming for VccIO 0.85V for HDMI */
-static const union intel_ddi_buf_trans_entry _cnl_ddi_translations_hdmi_0_85V[] = {
-							/* NT mV Trans mV db    */
-	{ .cnl = { 0xA, 0x60, 0x3F, 0x00, 0x00 } },	/* 450   450      0.0   */
-	{ .cnl = { 0xB, 0x73, 0x36, 0x00, 0x09 } },	/* 450   650      3.2   */
-	{ .cnl = { 0x6, 0x7F, 0x31, 0x00, 0x0E } },	/* 450   850      5.5   */
-	{ .cnl = { 0xB, 0x73, 0x3F, 0x00, 0x00 } },	/* 650   650      0.0   */
-	{ .cnl = { 0x6, 0x7F, 0x37, 0x00, 0x08 } },	/* 650   850      2.3   */
-	{ .cnl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 850   850      0.0   */
-	{ .cnl = { 0x6, 0x7F, 0x35, 0x00, 0x0A } },	/* 600   850      3.0   */
-};
-
-static const struct intel_ddi_buf_trans cnl_ddi_translations_hdmi_0_85V = {
-	.entries = _cnl_ddi_translations_hdmi_0_85V,
-	.num_entries = ARRAY_SIZE(_cnl_ddi_translations_hdmi_0_85V),
-	.hdmi_default_entry = ARRAY_SIZE(_cnl_ddi_translations_hdmi_0_85V) - 1,
-};
-
-/* Voltage Swing Programming for VccIO 0.85V for eDP */
-static const union intel_ddi_buf_trans_entry _cnl_ddi_translations_edp_0_85V[] = {
-							/* NT mV Trans mV db    */
-	{ .cnl = { 0xA, 0x66, 0x3A, 0x00, 0x05 } },	/* 384   500      2.3   */
-	{ .cnl = { 0x0, 0x7F, 0x38, 0x00, 0x07 } },	/* 153   200      2.3   */
-	{ .cnl = { 0x8, 0x7F, 0x38, 0x00, 0x07 } },	/* 192   250      2.3   */
-	{ .cnl = { 0x1, 0x7F, 0x38, 0x00, 0x07 } },	/* 230   300      2.3   */
-	{ .cnl = { 0x9, 0x7F, 0x38, 0x00, 0x07 } },	/* 269   350      2.3   */
-	{ .cnl = { 0xA, 0x66, 0x3C, 0x00, 0x03 } },	/* 446   500      1.0   */
-	{ .cnl = { 0xB, 0x70, 0x3C, 0x00, 0x03 } },	/* 460   600      2.3   */
-	{ .cnl = { 0xC, 0x75, 0x3C, 0x00, 0x03 } },	/* 537   700      2.3   */
-	{ .cnl = { 0x2, 0x7F, 0x3F, 0x00, 0x00 } },	/* 400   400      0.0   */
-};
-
-static const struct intel_ddi_buf_trans cnl_ddi_translations_edp_0_85V = {
-	.entries = _cnl_ddi_translations_edp_0_85V,
-	.num_entries = ARRAY_SIZE(_cnl_ddi_translations_edp_0_85V),
-};
-
-/* Voltage Swing Programming for VccIO 0.95V for DP */
-static const union intel_ddi_buf_trans_entry _cnl_ddi_translations_dp_0_95V[] = {
-							/* NT mV Trans mV db    */
-	{ .cnl = { 0xA, 0x5D, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
-	{ .cnl = { 0xA, 0x6A, 0x38, 0x00, 0x07 } },	/* 350   500      3.1   */
-	{ .cnl = { 0xB, 0x7A, 0x32, 0x00, 0x0D } },	/* 350   700      6.0   */
-	{ .cnl = { 0x6, 0x7C, 0x2D, 0x00, 0x12 } },	/* 350   900      8.2   */
-	{ .cnl = { 0xA, 0x69, 0x3F, 0x00, 0x00 } },	/* 500   500      0.0   */
-	{ .cnl = { 0xB, 0x7A, 0x36, 0x00, 0x09 } },	/* 500   700      2.9   */
-	{ .cnl = { 0x6, 0x7C, 0x30, 0x00, 0x0F } },	/* 500   900      5.1   */
-	{ .cnl = { 0xB, 0x7D, 0x3C, 0x00, 0x03 } },	/* 650   725      0.9   */
-	{ .cnl = { 0x6, 0x7C, 0x34, 0x00, 0x0B } },	/* 600   900      3.5   */
-	{ .cnl = { 0x6, 0x7B, 0x3F, 0x00, 0x00 } },	/* 900   900      0.0   */
-};
-
-static const struct intel_ddi_buf_trans cnl_ddi_translations_dp_0_95V = {
-	.entries = _cnl_ddi_translations_dp_0_95V,
-	.num_entries = ARRAY_SIZE(_cnl_ddi_translations_dp_0_95V),
-};
-
-/* Voltage Swing Programming for VccIO 0.95V for HDMI */
-static const union intel_ddi_buf_trans_entry _cnl_ddi_translations_hdmi_0_95V[] = {
-							/* NT mV Trans mV db    */
-	{ .cnl = { 0xA, 0x5C, 0x3F, 0x00, 0x00 } },	/* 400   400      0.0   */
-	{ .cnl = { 0xB, 0x69, 0x37, 0x00, 0x08 } },	/* 400   600      3.5   */
-	{ .cnl = { 0x5, 0x76, 0x31, 0x00, 0x0E } },	/* 400   800      6.0   */
-	{ .cnl = { 0xA, 0x5E, 0x3F, 0x00, 0x00 } },	/* 450   450      0.0   */
-	{ .cnl = { 0xB, 0x69, 0x3F, 0x00, 0x00 } },	/* 600   600      0.0   */
-	{ .cnl = { 0xB, 0x79, 0x35, 0x00, 0x0A } },	/* 600   850      3.0   */
-	{ .cnl = { 0x6, 0x7D, 0x32, 0x00, 0x0D } },	/* 600   1000     4.4   */
-	{ .cnl = { 0x5, 0x76, 0x3F, 0x00, 0x00 } },	/* 800   800      0.0   */
-	{ .cnl = { 0x6, 0x7D, 0x39, 0x00, 0x06 } },	/* 800   1000     1.9   */
-	{ .cnl = { 0x6, 0x7F, 0x39, 0x00, 0x06 } },	/* 850   1050     1.8   */
-	{ .cnl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 1050  1050     0.0   */
-};
-
-static const struct intel_ddi_buf_trans cnl_ddi_translations_hdmi_0_95V = {
-	.entries = _cnl_ddi_translations_hdmi_0_95V,
-	.num_entries = ARRAY_SIZE(_cnl_ddi_translations_hdmi_0_95V),
-	.hdmi_default_entry = ARRAY_SIZE(_cnl_ddi_translations_hdmi_0_95V) - 1,
-};
-
-/* Voltage Swing Programming for VccIO 0.95V for eDP */
-static const union intel_ddi_buf_trans_entry _cnl_ddi_translations_edp_0_95V[] = {
-							/* NT mV Trans mV db    */
-	{ .cnl = { 0xA, 0x61, 0x3A, 0x00, 0x05 } },	/* 384   500      2.3   */
-	{ .cnl = { 0x0, 0x7F, 0x38, 0x00, 0x07 } },	/* 153   200      2.3   */
-	{ .cnl = { 0x8, 0x7F, 0x38, 0x00, 0x07 } },	/* 192   250      2.3   */
-	{ .cnl = { 0x1, 0x7F, 0x38, 0x00, 0x07 } },	/* 230   300      2.3   */
-	{ .cnl = { 0x9, 0x7F, 0x38, 0x00, 0x07 } },	/* 269   350      2.3   */
-	{ .cnl = { 0xA, 0x61, 0x3C, 0x00, 0x03 } },	/* 446   500      1.0   */
-	{ .cnl = { 0xB, 0x68, 0x39, 0x00, 0x06 } },	/* 460   600      2.3   */
-	{ .cnl = { 0xC, 0x6E, 0x39, 0x00, 0x06 } },	/* 537   700      2.3   */
-	{ .cnl = { 0x4, 0x7F, 0x3A, 0x00, 0x05 } },	/* 460   600      2.3   */
-	{ .cnl = { 0x2, 0x7F, 0x3F, 0x00, 0x00 } },	/* 400   400      0.0   */
-};
-
-static const struct intel_ddi_buf_trans cnl_ddi_translations_edp_0_95V = {
-	.entries = _cnl_ddi_translations_edp_0_95V,
-	.num_entries = ARRAY_SIZE(_cnl_ddi_translations_edp_0_95V),
-};
-
-/* Voltage Swing Programming for VccIO 1.05V for DP */
-static const union intel_ddi_buf_trans_entry _cnl_ddi_translations_dp_1_05V[] = {
-							/* NT mV Trans mV db    */
-	{ .cnl = { 0xA, 0x58, 0x3F, 0x00, 0x00 } },	/* 400   400      0.0   */
-	{ .cnl = { 0xB, 0x64, 0x37, 0x00, 0x08 } },	/* 400   600      3.5   */
-	{ .cnl = { 0x5, 0x70, 0x31, 0x00, 0x0E } },	/* 400   800      6.0   */
-	{ .cnl = { 0x6, 0x7F, 0x2C, 0x00, 0x13 } },	/* 400   1050     8.4   */
-	{ .cnl = { 0xB, 0x64, 0x3F, 0x00, 0x00 } },	/* 600   600      0.0   */
-	{ .cnl = { 0x5, 0x73, 0x35, 0x00, 0x0A } },	/* 600   850      3.0   */
-	{ .cnl = { 0x6, 0x7F, 0x30, 0x00, 0x0F } },	/* 550   1050     5.6   */
-	{ .cnl = { 0x5, 0x76, 0x3E, 0x00, 0x01 } },	/* 850   900      0.5   */
-	{ .cnl = { 0x6, 0x7F, 0x36, 0x00, 0x09 } },	/* 750   1050     2.9   */
-	{ .cnl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 1050  1050     0.0   */
-};
-
-static const struct intel_ddi_buf_trans cnl_ddi_translations_dp_1_05V = {
-	.entries = _cnl_ddi_translations_dp_1_05V,
-	.num_entries = ARRAY_SIZE(_cnl_ddi_translations_dp_1_05V),
-};
-
-/* Voltage Swing Programming for VccIO 1.05V for HDMI */
-static const union intel_ddi_buf_trans_entry _cnl_ddi_translations_hdmi_1_05V[] = {
-							/* NT mV Trans mV db    */
-	{ .cnl = { 0xA, 0x58, 0x3F, 0x00, 0x00 } },	/* 400   400      0.0   */
-	{ .cnl = { 0xB, 0x64, 0x37, 0x00, 0x08 } },	/* 400   600      3.5   */
-	{ .cnl = { 0x5, 0x70, 0x31, 0x00, 0x0E } },	/* 400   800      6.0   */
-	{ .cnl = { 0xA, 0x5B, 0x3F, 0x00, 0x00 } },	/* 450   450      0.0   */
-	{ .cnl = { 0xB, 0x64, 0x3F, 0x00, 0x00 } },	/* 600   600      0.0   */
-	{ .cnl = { 0x5, 0x73, 0x35, 0x00, 0x0A } },	/* 600   850      3.0   */
-	{ .cnl = { 0x6, 0x7C, 0x32, 0x00, 0x0D } },	/* 600   1000     4.4   */
-	{ .cnl = { 0x5, 0x70, 0x3F, 0x00, 0x00 } },	/* 800   800      0.0   */
-	{ .cnl = { 0x6, 0x7C, 0x39, 0x00, 0x06 } },	/* 800   1000     1.9   */
-	{ .cnl = { 0x6, 0x7F, 0x39, 0x00, 0x06 } },	/* 850   1050     1.8   */
-	{ .cnl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 1050  1050     0.0   */
-};
-
-static const struct intel_ddi_buf_trans cnl_ddi_translations_hdmi_1_05V = {
-	.entries = _cnl_ddi_translations_hdmi_1_05V,
-	.num_entries = ARRAY_SIZE(_cnl_ddi_translations_hdmi_1_05V),
-	.hdmi_default_entry = ARRAY_SIZE(_cnl_ddi_translations_hdmi_1_05V) - 1,
-};
-
-/* Voltage Swing Programming for VccIO 1.05V for eDP */
-static const union intel_ddi_buf_trans_entry _cnl_ddi_translations_edp_1_05V[] = {
-							/* NT mV Trans mV db    */
-	{ .cnl = { 0xA, 0x5E, 0x3A, 0x00, 0x05 } },	/* 384   500      2.3   */
-	{ .cnl = { 0x0, 0x7F, 0x38, 0x00, 0x07 } },	/* 153   200      2.3   */
-	{ .cnl = { 0x8, 0x7F, 0x38, 0x00, 0x07 } },	/* 192   250      2.3   */
-	{ .cnl = { 0x1, 0x7F, 0x38, 0x00, 0x07 } },	/* 230   300      2.3   */
-	{ .cnl = { 0x9, 0x7F, 0x38, 0x00, 0x07 } },	/* 269   350      2.3   */
-	{ .cnl = { 0xA, 0x5E, 0x3C, 0x00, 0x03 } },	/* 446   500      1.0   */
-	{ .cnl = { 0xB, 0x64, 0x39, 0x00, 0x06 } },	/* 460   600      2.3   */
-	{ .cnl = { 0xE, 0x6A, 0x39, 0x00, 0x06 } },	/* 537   700      2.3   */
-	{ .cnl = { 0x2, 0x7F, 0x3F, 0x00, 0x00 } },	/* 400   400      0.0   */
-};
-
-static const struct intel_ddi_buf_trans cnl_ddi_translations_edp_1_05V = {
-	.entries = _cnl_ddi_translations_edp_1_05V,
-	.num_entries = ARRAY_SIZE(_cnl_ddi_translations_edp_1_05V),
-};
-
 /* icl_combo_phy_ddi_translations */
 static const union intel_ddi_buf_trans_entry _icl_combo_phy_ddi_translations_dp_hbr2_edp_hbr3[] = {
 							/* NT mV Trans mV db    */
-	{ .cnl = { 0xA, 0x35, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
-	{ .cnl = { 0xA, 0x4F, 0x37, 0x00, 0x08 } },	/* 350   500      3.1   */
-	{ .cnl = { 0xC, 0x71, 0x2F, 0x00, 0x10 } },	/* 350   700      6.0   */
-	{ .cnl = { 0x6, 0x7F, 0x2B, 0x00, 0x14 } },	/* 350   900      8.2   */
-	{ .cnl = { 0xA, 0x4C, 0x3F, 0x00, 0x00 } },	/* 500   500      0.0   */
-	{ .cnl = { 0xC, 0x73, 0x34, 0x00, 0x0B } },	/* 500   700      2.9   */
-	{ .cnl = { 0x6, 0x7F, 0x2F, 0x00, 0x10 } },	/* 500   900      5.1   */
-	{ .cnl = { 0xC, 0x6C, 0x3C, 0x00, 0x03 } },	/* 650   700      0.6   */
-	{ .cnl = { 0x6, 0x7F, 0x35, 0x00, 0x0A } },	/* 600   900      3.5   */
-	{ .cnl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 900   900      0.0   */
+	{ .icl = { 0xA, 0x35, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
+	{ .icl = { 0xA, 0x4F, 0x37, 0x00, 0x08 } },	/* 350   500      3.1   */
+	{ .icl = { 0xC, 0x71, 0x2F, 0x00, 0x10 } },	/* 350   700      6.0   */
+	{ .icl = { 0x6, 0x7F, 0x2B, 0x00, 0x14 } },	/* 350   900      8.2   */
+	{ .icl = { 0xA, 0x4C, 0x3F, 0x00, 0x00 } },	/* 500   500      0.0   */
+	{ .icl = { 0xC, 0x73, 0x34, 0x00, 0x0B } },	/* 500   700      2.9   */
+	{ .icl = { 0x6, 0x7F, 0x2F, 0x00, 0x10 } },	/* 500   900      5.1   */
+	{ .icl = { 0xC, 0x6C, 0x3C, 0x00, 0x03 } },	/* 650   700      0.6   */
+	{ .icl = { 0x6, 0x7F, 0x35, 0x00, 0x0A } },	/* 600   900      3.5   */
+	{ .icl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 900   900      0.0   */
 };
 
 static const struct intel_ddi_buf_trans icl_combo_phy_ddi_translations_dp_hbr2_edp_hbr3 = {
@@ -619,16 +439,16 @@ static const struct intel_ddi_buf_trans icl_combo_phy_ddi_translations_dp_hbr2_e
 
 static const union intel_ddi_buf_trans_entry _icl_combo_phy_ddi_translations_edp_hbr2[] = {
 							/* NT mV Trans mV db    */
-	{ .cnl = { 0x0, 0x7F, 0x3F, 0x00, 0x00 } },	/* 200   200      0.0   */
-	{ .cnl = { 0x8, 0x7F, 0x38, 0x00, 0x07 } },	/* 200   250      1.9   */
-	{ .cnl = { 0x1, 0x7F, 0x33, 0x00, 0x0C } },	/* 200   300      3.5   */
-	{ .cnl = { 0x9, 0x7F, 0x31, 0x00, 0x0E } },	/* 200   350      4.9   */
-	{ .cnl = { 0x8, 0x7F, 0x3F, 0x00, 0x00 } },	/* 250   250      0.0   */
-	{ .cnl = { 0x1, 0x7F, 0x38, 0x00, 0x07 } },	/* 250   300      1.6   */
-	{ .cnl = { 0x9, 0x7F, 0x35, 0x00, 0x0A } },	/* 250   350      2.9   */
-	{ .cnl = { 0x1, 0x7F, 0x3F, 0x00, 0x00 } },	/* 300   300      0.0   */
-	{ .cnl = { 0x9, 0x7F, 0x38, 0x00, 0x07 } },	/* 300   350      1.3   */
-	{ .cnl = { 0x9, 0x7F, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
+	{ .icl = { 0x0, 0x7F, 0x3F, 0x00, 0x00 } },	/* 200   200      0.0   */
+	{ .icl = { 0x8, 0x7F, 0x38, 0x00, 0x07 } },	/* 200   250      1.9   */
+	{ .icl = { 0x1, 0x7F, 0x33, 0x00, 0x0C } },	/* 200   300      3.5   */
+	{ .icl = { 0x9, 0x7F, 0x31, 0x00, 0x0E } },	/* 200   350      4.9   */
+	{ .icl = { 0x8, 0x7F, 0x3F, 0x00, 0x00 } },	/* 250   250      0.0   */
+	{ .icl = { 0x1, 0x7F, 0x38, 0x00, 0x07 } },	/* 250   300      1.6   */
+	{ .icl = { 0x9, 0x7F, 0x35, 0x00, 0x0A } },	/* 250   350      2.9   */
+	{ .icl = { 0x1, 0x7F, 0x3F, 0x00, 0x00 } },	/* 300   300      0.0   */
+	{ .icl = { 0x9, 0x7F, 0x38, 0x00, 0x07 } },	/* 300   350      1.3   */
+	{ .icl = { 0x9, 0x7F, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
 };
 
 static const struct intel_ddi_buf_trans icl_combo_phy_ddi_translations_edp_hbr2 = {
@@ -638,13 +458,13 @@ static const struct intel_ddi_buf_trans icl_combo_phy_ddi_translations_edp_hbr2
 
 static const union intel_ddi_buf_trans_entry _icl_combo_phy_ddi_translations_hdmi[] = {
 							/* NT mV Trans mV db    */
-	{ .cnl = { 0xA, 0x60, 0x3F, 0x00, 0x00 } },	/* 450   450      0.0   */
-	{ .cnl = { 0xB, 0x73, 0x36, 0x00, 0x09 } },	/* 450   650      3.2   */
-	{ .cnl = { 0x6, 0x7F, 0x31, 0x00, 0x0E } },	/* 450   850      5.5   */
-	{ .cnl = { 0xB, 0x73, 0x3F, 0x00, 0x00 } },	/* 650   650      0.0   ALS */
-	{ .cnl = { 0x6, 0x7F, 0x37, 0x00, 0x08 } },	/* 650   850      2.3   */
-	{ .cnl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 850   850      0.0   */
-	{ .cnl = { 0x6, 0x7F, 0x35, 0x00, 0x0A } },	/* 600   850      3.0   */
+	{ .icl = { 0xA, 0x60, 0x3F, 0x00, 0x00 } },	/* 450   450      0.0   */
+	{ .icl = { 0xB, 0x73, 0x36, 0x00, 0x09 } },	/* 450   650      3.2   */
+	{ .icl = { 0x6, 0x7F, 0x31, 0x00, 0x0E } },	/* 450   850      5.5   */
+	{ .icl = { 0xB, 0x73, 0x3F, 0x00, 0x00 } },	/* 650   650      0.0   ALS */
+	{ .icl = { 0x6, 0x7F, 0x37, 0x00, 0x08 } },	/* 650   850      2.3   */
+	{ .icl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 850   850      0.0   */
+	{ .icl = { 0x6, 0x7F, 0x35, 0x00, 0x0A } },	/* 600   850      3.0   */
 };
 
 static const struct intel_ddi_buf_trans icl_combo_phy_ddi_translations_hdmi = {
@@ -655,16 +475,16 @@ static const struct intel_ddi_buf_trans icl_combo_phy_ddi_translations_hdmi = {
 
 static const union intel_ddi_buf_trans_entry _ehl_combo_phy_ddi_translations_dp[] = {
 							/* NT mV Trans mV db    */
-	{ .cnl = { 0xA, 0x33, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
-	{ .cnl = { 0xA, 0x47, 0x36, 0x00, 0x09 } },	/* 350   500      3.1   */
-	{ .cnl = { 0xC, 0x64, 0x34, 0x00, 0x0B } },	/* 350   700      6.0   */
-	{ .cnl = { 0x6, 0x7F, 0x30, 0x00, 0x0F } },	/* 350   900      8.2   */
-	{ .cnl = { 0xA, 0x46, 0x3F, 0x00, 0x00 } },	/* 500   500      0.0   */
-	{ .cnl = { 0xC, 0x64, 0x38, 0x00, 0x07 } },	/* 500   700      2.9   */
-	{ .cnl = { 0x6, 0x7F, 0x32, 0x00, 0x0D } },	/* 500   900      5.1   */
-	{ .cnl = { 0xC, 0x61, 0x3F, 0x00, 0x00 } },	/* 650   700      0.6   */
-	{ .cnl = { 0x6, 0x7F, 0x38, 0x00, 0x07 } },	/* 600   900      3.5   */
-	{ .cnl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 900   900      0.0   */
+	{ .icl = { 0xA, 0x33, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
+	{ .icl = { 0xA, 0x47, 0x36, 0x00, 0x09 } },	/* 350   500      3.1   */
+	{ .icl = { 0xC, 0x64, 0x34, 0x00, 0x0B } },	/* 350   700      6.0   */
+	{ .icl = { 0x6, 0x7F, 0x30, 0x00, 0x0F } },	/* 350   900      8.2   */
+	{ .icl = { 0xA, 0x46, 0x3F, 0x00, 0x00 } },	/* 500   500      0.0   */
+	{ .icl = { 0xC, 0x64, 0x38, 0x00, 0x07 } },	/* 500   700      2.9   */
+	{ .icl = { 0x6, 0x7F, 0x32, 0x00, 0x0D } },	/* 500   900      5.1   */
+	{ .icl = { 0xC, 0x61, 0x3F, 0x00, 0x00 } },	/* 650   700      0.6   */
+	{ .icl = { 0x6, 0x7F, 0x38, 0x00, 0x07 } },	/* 600   900      3.5   */
+	{ .icl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 900   900      0.0   */
 };
 
 static const struct intel_ddi_buf_trans ehl_combo_phy_ddi_translations_dp = {
@@ -674,16 +494,16 @@ static const struct intel_ddi_buf_trans ehl_combo_phy_ddi_translations_dp = {
 
 static const union intel_ddi_buf_trans_entry _ehl_combo_phy_ddi_translations_edp_hbr2[] = {
 							/* NT mV Trans mV db    */
-	{ .cnl = { 0x8, 0x7F, 0x3F, 0x00, 0x00 } },	/* 200   200      0.0   */
-	{ .cnl = { 0x8, 0x7F, 0x3F, 0x00, 0x00 } },	/* 200   250      1.9   */
-	{ .cnl = { 0x1, 0x7F, 0x3D, 0x00, 0x02 } },	/* 200   300      3.5   */
-	{ .cnl = { 0xA, 0x35, 0x39, 0x00, 0x06 } },	/* 200   350      4.9   */
-	{ .cnl = { 0x8, 0x7F, 0x3F, 0x00, 0x00 } },	/* 250   250      0.0   */
-	{ .cnl = { 0x1, 0x7F, 0x3C, 0x00, 0x03 } },	/* 250   300      1.6   */
-	{ .cnl = { 0xA, 0x35, 0x39, 0x00, 0x06 } },	/* 250   350      2.9   */
-	{ .cnl = { 0x1, 0x7F, 0x3F, 0x00, 0x00 } },	/* 300   300      0.0   */
-	{ .cnl = { 0xA, 0x35, 0x38, 0x00, 0x07 } },	/* 300   350      1.3   */
-	{ .cnl = { 0xA, 0x35, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
+	{ .icl = { 0x8, 0x7F, 0x3F, 0x00, 0x00 } },	/* 200   200      0.0   */
+	{ .icl = { 0x8, 0x7F, 0x3F, 0x00, 0x00 } },	/* 200   250      1.9   */
+	{ .icl = { 0x1, 0x7F, 0x3D, 0x00, 0x02 } },	/* 200   300      3.5   */
+	{ .icl = { 0xA, 0x35, 0x39, 0x00, 0x06 } },	/* 200   350      4.9   */
+	{ .icl = { 0x8, 0x7F, 0x3F, 0x00, 0x00 } },	/* 250   250      0.0   */
+	{ .icl = { 0x1, 0x7F, 0x3C, 0x00, 0x03 } },	/* 250   300      1.6   */
+	{ .icl = { 0xA, 0x35, 0x39, 0x00, 0x06 } },	/* 250   350      2.9   */
+	{ .icl = { 0x1, 0x7F, 0x3F, 0x00, 0x00 } },	/* 300   300      0.0   */
+	{ .icl = { 0xA, 0x35, 0x38, 0x00, 0x07 } },	/* 300   350      1.3   */
+	{ .icl = { 0xA, 0x35, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
 };
 
 static const struct intel_ddi_buf_trans ehl_combo_phy_ddi_translations_edp_hbr2 = {
@@ -693,16 +513,16 @@ static const struct intel_ddi_buf_trans ehl_combo_phy_ddi_translations_edp_hbr2
 
 static const union intel_ddi_buf_trans_entry _jsl_combo_phy_ddi_translations_edp_hbr[] = {
 							/* NT mV Trans mV db    */
-	{ .cnl = { 0x8, 0x7F, 0x3F, 0x00, 0x00 } },	/* 200   200      0.0   */
-	{ .cnl = { 0x8, 0x7F, 0x38, 0x00, 0x07 } },	/* 200   250      1.9   */
-	{ .cnl = { 0x1, 0x7F, 0x33, 0x00, 0x0C } },	/* 200   300      3.5   */
-	{ .cnl = { 0xA, 0x35, 0x36, 0x00, 0x09 } },	/* 200   350      4.9   */
-	{ .cnl = { 0x8, 0x7F, 0x3F, 0x00, 0x00 } },	/* 250   250      0.0   */
-	{ .cnl = { 0x1, 0x7F, 0x38, 0x00, 0x07 } },	/* 250   300      1.6   */
-	{ .cnl = { 0xA, 0x35, 0x35, 0x00, 0x0A } },	/* 250   350      2.9   */
-	{ .cnl = { 0x1, 0x7F, 0x3F, 0x00, 0x00 } },	/* 300   300      0.0   */
-	{ .cnl = { 0xA, 0x35, 0x38, 0x00, 0x07 } },	/* 300   350      1.3   */
-	{ .cnl = { 0xA, 0x35, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
+	{ .icl = { 0x8, 0x7F, 0x3F, 0x00, 0x00 } },	/* 200   200      0.0   */
+	{ .icl = { 0x8, 0x7F, 0x38, 0x00, 0x07 } },	/* 200   250      1.9   */
+	{ .icl = { 0x1, 0x7F, 0x33, 0x00, 0x0C } },	/* 200   300      3.5   */
+	{ .icl = { 0xA, 0x35, 0x36, 0x00, 0x09 } },	/* 200   350      4.9   */
+	{ .icl = { 0x8, 0x7F, 0x3F, 0x00, 0x00 } },	/* 250   250      0.0   */
+	{ .icl = { 0x1, 0x7F, 0x38, 0x00, 0x07 } },	/* 250   300      1.6   */
+	{ .icl = { 0xA, 0x35, 0x35, 0x00, 0x0A } },	/* 250   350      2.9   */
+	{ .icl = { 0x1, 0x7F, 0x3F, 0x00, 0x00 } },	/* 300   300      0.0   */
+	{ .icl = { 0xA, 0x35, 0x38, 0x00, 0x07 } },	/* 300   350      1.3   */
+	{ .icl = { 0xA, 0x35, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
 };
 
 static const struct intel_ddi_buf_trans jsl_combo_phy_ddi_translations_edp_hbr = {
@@ -712,16 +532,16 @@ static const struct intel_ddi_buf_trans jsl_combo_phy_ddi_translations_edp_hbr =
 
 static const union intel_ddi_buf_trans_entry _jsl_combo_phy_ddi_translations_edp_hbr2[] = {
 							/* NT mV Trans mV db    */
-	{ .cnl = { 0x8, 0x7F, 0x3F, 0x00, 0x00 } },	/* 200   200      0.0   */
-	{ .cnl = { 0x8, 0x7F, 0x3F, 0x00, 0x00 } },	/* 200   250      1.9   */
-	{ .cnl = { 0x1, 0x7F, 0x3D, 0x00, 0x02 } },	/* 200   300      3.5   */
-	{ .cnl = { 0xA, 0x35, 0x38, 0x00, 0x07 } },	/* 200   350      4.9   */
-	{ .cnl = { 0x8, 0x7F, 0x3F, 0x00, 0x00 } },	/* 250   250      0.0   */
-	{ .cnl = { 0x1, 0x7F, 0x3F, 0x00, 0x00 } },	/* 250   300      1.6   */
-	{ .cnl = { 0xA, 0x35, 0x3A, 0x00, 0x05 } },	/* 250   350      2.9   */
-	{ .cnl = { 0x1, 0x7F, 0x3F, 0x00, 0x00 } },	/* 300   300      0.0   */
-	{ .cnl = { 0xA, 0x35, 0x38, 0x00, 0x07 } },	/* 300   350      1.3   */
-	{ .cnl = { 0xA, 0x35, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
+	{ .icl = { 0x8, 0x7F, 0x3F, 0x00, 0x00 } },	/* 200   200      0.0   */
+	{ .icl = { 0x8, 0x7F, 0x3F, 0x00, 0x00 } },	/* 200   250      1.9   */
+	{ .icl = { 0x1, 0x7F, 0x3D, 0x00, 0x02 } },	/* 200   300      3.5   */
+	{ .icl = { 0xA, 0x35, 0x38, 0x00, 0x07 } },	/* 200   350      4.9   */
+	{ .icl = { 0x8, 0x7F, 0x3F, 0x00, 0x00 } },	/* 250   250      0.0   */
+	{ .icl = { 0x1, 0x7F, 0x3F, 0x00, 0x00 } },	/* 250   300      1.6   */
+	{ .icl = { 0xA, 0x35, 0x3A, 0x00, 0x05 } },	/* 250   350      2.9   */
+	{ .icl = { 0x1, 0x7F, 0x3F, 0x00, 0x00 } },	/* 300   300      0.0   */
+	{ .icl = { 0xA, 0x35, 0x38, 0x00, 0x07 } },	/* 300   350      1.3   */
+	{ .icl = { 0xA, 0x35, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
 };
 
 static const struct intel_ddi_buf_trans jsl_combo_phy_ddi_translations_edp_hbr2 = {
@@ -731,16 +551,16 @@ static const struct intel_ddi_buf_trans jsl_combo_phy_ddi_translations_edp_hbr2
 
 static const union intel_ddi_buf_trans_entry _dg1_combo_phy_ddi_translations_dp_rbr_hbr[] = {
 							/* NT mV Trans mV db    */
-	{ .cnl = { 0xA, 0x32, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
-	{ .cnl = { 0xA, 0x48, 0x35, 0x00, 0x0A } },	/* 350   500      3.1   */
-	{ .cnl = { 0xC, 0x63, 0x2F, 0x00, 0x10 } },	/* 350   700      6.0   */
-	{ .cnl = { 0x6, 0x7F, 0x2C, 0x00, 0x13 } },	/* 350   900      8.2   */
-	{ .cnl = { 0xA, 0x43, 0x3F, 0x00, 0x00 } },	/* 500   500      0.0   */
-	{ .cnl = { 0xC, 0x60, 0x36, 0x00, 0x09 } },	/* 500   700      2.9   */
-	{ .cnl = { 0x6, 0x7F, 0x30, 0x00, 0x0F } },	/* 500   900      5.1   */
-	{ .cnl = { 0xC, 0x60, 0x3F, 0x00, 0x00 } },	/* 650   700      0.6   */
-	{ .cnl = { 0x6, 0x7F, 0x37, 0x00, 0x08 } },	/* 600   900      3.5   */
-	{ .cnl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 900   900      0.0   */
+	{ .icl = { 0xA, 0x32, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
+	{ .icl = { 0xA, 0x48, 0x35, 0x00, 0x0A } },	/* 350   500      3.1   */
+	{ .icl = { 0xC, 0x63, 0x2F, 0x00, 0x10 } },	/* 350   700      6.0   */
+	{ .icl = { 0x6, 0x7F, 0x2C, 0x00, 0x13 } },	/* 350   900      8.2   */
+	{ .icl = { 0xA, 0x43, 0x3F, 0x00, 0x00 } },	/* 500   500      0.0   */
+	{ .icl = { 0xC, 0x60, 0x36, 0x00, 0x09 } },	/* 500   700      2.9   */
+	{ .icl = { 0x6, 0x7F, 0x30, 0x00, 0x0F } },	/* 500   900      5.1   */
+	{ .icl = { 0xC, 0x60, 0x3F, 0x00, 0x00 } },	/* 650   700      0.6   */
+	{ .icl = { 0x6, 0x7F, 0x37, 0x00, 0x08 } },	/* 600   900      3.5   */
+	{ .icl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 900   900      0.0   */
 };
 
 static const struct intel_ddi_buf_trans dg1_combo_phy_ddi_translations_dp_rbr_hbr = {
@@ -750,16 +570,16 @@ static const struct intel_ddi_buf_trans dg1_combo_phy_ddi_translations_dp_rbr_hb
 
 static const union intel_ddi_buf_trans_entry _dg1_combo_phy_ddi_translations_dp_hbr2_hbr3[] = {
 							/* NT mV Trans mV db    */
-	{ .cnl = { 0xA, 0x32, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
-	{ .cnl = { 0xA, 0x48, 0x35, 0x00, 0x0A } },	/* 350   500      3.1   */
-	{ .cnl = { 0xC, 0x63, 0x2F, 0x00, 0x10 } },	/* 350   700      6.0   */
-	{ .cnl = { 0x6, 0x7F, 0x2C, 0x00, 0x13 } },	/* 350   900      8.2   */
-	{ .cnl = { 0xA, 0x43, 0x3F, 0x00, 0x00 } },	/* 500   500      0.0   */
-	{ .cnl = { 0xC, 0x60, 0x36, 0x00, 0x09 } },	/* 500   700      2.9   */
-	{ .cnl = { 0x6, 0x7F, 0x30, 0x00, 0x0F } },	/* 500   900      5.1   */
-	{ .cnl = { 0xC, 0x58, 0x3F, 0x00, 0x00 } },	/* 650   700      0.6   */
-	{ .cnl = { 0x6, 0x7F, 0x35, 0x00, 0x0A } },	/* 600   900      3.5   */
-	{ .cnl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 900   900      0.0   */
+	{ .icl = { 0xA, 0x32, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
+	{ .icl = { 0xA, 0x48, 0x35, 0x00, 0x0A } },	/* 350   500      3.1   */
+	{ .icl = { 0xC, 0x63, 0x2F, 0x00, 0x10 } },	/* 350   700      6.0   */
+	{ .icl = { 0x6, 0x7F, 0x2C, 0x00, 0x13 } },	/* 350   900      8.2   */
+	{ .icl = { 0xA, 0x43, 0x3F, 0x00, 0x00 } },	/* 500   500      0.0   */
+	{ .icl = { 0xC, 0x60, 0x36, 0x00, 0x09 } },	/* 500   700      2.9   */
+	{ .icl = { 0x6, 0x7F, 0x30, 0x00, 0x0F } },	/* 500   900      5.1   */
+	{ .icl = { 0xC, 0x58, 0x3F, 0x00, 0x00 } },	/* 650   700      0.6   */
+	{ .icl = { 0x6, 0x7F, 0x35, 0x00, 0x0A } },	/* 600   900      3.5   */
+	{ .icl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 900   900      0.0   */
 };
 
 static const struct intel_ddi_buf_trans dg1_combo_phy_ddi_translations_dp_hbr2_hbr3 = {
@@ -885,16 +705,16 @@ static const struct intel_ddi_buf_trans tgl_dkl_phy_ddi_translations_hdmi = {
 
 static const union intel_ddi_buf_trans_entry _tgl_combo_phy_ddi_translations_dp_hbr[] = {
 							/* NT mV Trans mV db    */
-	{ .cnl = { 0xA, 0x32, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
-	{ .cnl = { 0xA, 0x4F, 0x37, 0x00, 0x08 } },	/* 350   500      3.1   */
-	{ .cnl = { 0xC, 0x71, 0x2F, 0x00, 0x10 } },	/* 350   700      6.0   */
-	{ .cnl = { 0x6, 0x7D, 0x2B, 0x00, 0x14 } },	/* 350   900      8.2   */
-	{ .cnl = { 0xA, 0x4C, 0x3F, 0x00, 0x00 } },	/* 500   500      0.0   */
-	{ .cnl = { 0xC, 0x73, 0x34, 0x00, 0x0B } },	/* 500   700      2.9   */
-	{ .cnl = { 0x6, 0x7F, 0x2F, 0x00, 0x10 } },	/* 500   900      5.1   */
-	{ .cnl = { 0xC, 0x6C, 0x3C, 0x00, 0x03 } },	/* 650   700      0.6   */
-	{ .cnl = { 0x6, 0x7F, 0x35, 0x00, 0x0A } },	/* 600   900      3.5   */
-	{ .cnl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 900   900      0.0   */
+	{ .icl = { 0xA, 0x32, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
+	{ .icl = { 0xA, 0x4F, 0x37, 0x00, 0x08 } },	/* 350   500      3.1   */
+	{ .icl = { 0xC, 0x71, 0x2F, 0x00, 0x10 } },	/* 350   700      6.0   */
+	{ .icl = { 0x6, 0x7D, 0x2B, 0x00, 0x14 } },	/* 350   900      8.2   */
+	{ .icl = { 0xA, 0x4C, 0x3F, 0x00, 0x00 } },	/* 500   500      0.0   */
+	{ .icl = { 0xC, 0x73, 0x34, 0x00, 0x0B } },	/* 500   700      2.9   */
+	{ .icl = { 0x6, 0x7F, 0x2F, 0x00, 0x10 } },	/* 500   900      5.1   */
+	{ .icl = { 0xC, 0x6C, 0x3C, 0x00, 0x03 } },	/* 650   700      0.6   */
+	{ .icl = { 0x6, 0x7F, 0x35, 0x00, 0x0A } },	/* 600   900      3.5   */
+	{ .icl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 900   900      0.0   */
 };
 
 static const struct intel_ddi_buf_trans tgl_combo_phy_ddi_translations_dp_hbr = {
@@ -904,16 +724,16 @@ static const struct intel_ddi_buf_trans tgl_combo_phy_ddi_translations_dp_hbr =
 
 static const union intel_ddi_buf_trans_entry _tgl_combo_phy_ddi_translations_dp_hbr2[] = {
 							/* NT mV Trans mV db    */
-	{ .cnl = { 0xA, 0x35, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
-	{ .cnl = { 0xA, 0x4F, 0x37, 0x00, 0x08 } },	/* 350   500      3.1   */
-	{ .cnl = { 0xC, 0x63, 0x2F, 0x00, 0x10 } },	/* 350   700      6.0   */
-	{ .cnl = { 0x6, 0x7F, 0x2B, 0x00, 0x14 } },	/* 350   900      8.2   */
-	{ .cnl = { 0xA, 0x47, 0x3F, 0x00, 0x00 } },	/* 500   500      0.0   */
-	{ .cnl = { 0xC, 0x63, 0x34, 0x00, 0x0B } },	/* 500   700      2.9   */
-	{ .cnl = { 0x6, 0x7F, 0x2F, 0x00, 0x10 } },	/* 500   900      5.1   */
-	{ .cnl = { 0xC, 0x61, 0x3C, 0x00, 0x03 } },	/* 650   700      0.6   */
-	{ .cnl = { 0x6, 0x7B, 0x35, 0x00, 0x0A } },	/* 600   900      3.5   */
-	{ .cnl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 900   900      0.0   */
+	{ .icl = { 0xA, 0x35, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
+	{ .icl = { 0xA, 0x4F, 0x37, 0x00, 0x08 } },	/* 350   500      3.1   */
+	{ .icl = { 0xC, 0x63, 0x2F, 0x00, 0x10 } },	/* 350   700      6.0   */
+	{ .icl = { 0x6, 0x7F, 0x2B, 0x00, 0x14 } },	/* 350   900      8.2   */
+	{ .icl = { 0xA, 0x47, 0x3F, 0x00, 0x00 } },	/* 500   500      0.0   */
+	{ .icl = { 0xC, 0x63, 0x34, 0x00, 0x0B } },	/* 500   700      2.9   */
+	{ .icl = { 0x6, 0x7F, 0x2F, 0x00, 0x10 } },	/* 500   900      5.1   */
+	{ .icl = { 0xC, 0x61, 0x3C, 0x00, 0x03 } },	/* 650   700      0.6   */
+	{ .icl = { 0x6, 0x7B, 0x35, 0x00, 0x0A } },	/* 600   900      3.5   */
+	{ .icl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 900   900      0.0   */
 };
 
 static const struct intel_ddi_buf_trans tgl_combo_phy_ddi_translations_dp_hbr2 = {
@@ -923,16 +743,16 @@ static const struct intel_ddi_buf_trans tgl_combo_phy_ddi_translations_dp_hbr2 =
 
 static const union intel_ddi_buf_trans_entry _tgl_uy_combo_phy_ddi_translations_dp_hbr2[] = {
 							/* NT mV Trans mV db    */
-	{ .cnl = { 0xA, 0x35, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
-	{ .cnl = { 0xA, 0x4F, 0x36, 0x00, 0x09 } },	/* 350   500      3.1   */
-	{ .cnl = { 0xC, 0x60, 0x32, 0x00, 0x0D } },	/* 350   700      6.0   */
-	{ .cnl = { 0xC, 0x7F, 0x2D, 0x00, 0x12 } },	/* 350   900      8.2   */
-	{ .cnl = { 0xC, 0x47, 0x3F, 0x00, 0x00 } },	/* 500   500      0.0   */
-	{ .cnl = { 0xC, 0x6F, 0x36, 0x00, 0x09 } },	/* 500   700      2.9   */
-	{ .cnl = { 0x6, 0x7D, 0x32, 0x00, 0x0D } },	/* 500   900      5.1   */
-	{ .cnl = { 0x6, 0x60, 0x3C, 0x00, 0x03 } },	/* 650   700      0.6   */
-	{ .cnl = { 0x6, 0x7F, 0x34, 0x00, 0x0B } },	/* 600   900      3.5   */
-	{ .cnl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 900   900      0.0   */
+	{ .icl = { 0xA, 0x35, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
+	{ .icl = { 0xA, 0x4F, 0x36, 0x00, 0x09 } },	/* 350   500      3.1   */
+	{ .icl = { 0xC, 0x60, 0x32, 0x00, 0x0D } },	/* 350   700      6.0   */
+	{ .icl = { 0xC, 0x7F, 0x2D, 0x00, 0x12 } },	/* 350   900      8.2   */
+	{ .icl = { 0xC, 0x47, 0x3F, 0x00, 0x00 } },	/* 500   500      0.0   */
+	{ .icl = { 0xC, 0x6F, 0x36, 0x00, 0x09 } },	/* 500   700      2.9   */
+	{ .icl = { 0x6, 0x7D, 0x32, 0x00, 0x0D } },	/* 500   900      5.1   */
+	{ .icl = { 0x6, 0x60, 0x3C, 0x00, 0x03 } },	/* 650   700      0.6   */
+	{ .icl = { 0x6, 0x7F, 0x34, 0x00, 0x0B } },	/* 600   900      3.5   */
+	{ .icl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 900   900      0.0   */
 };
 
 static const struct intel_ddi_buf_trans tgl_uy_combo_phy_ddi_translations_dp_hbr2 = {
@@ -946,15 +766,15 @@ static const struct intel_ddi_buf_trans tgl_uy_combo_phy_ddi_translations_dp_hbr
  */
 static const union intel_ddi_buf_trans_entry _tgl_combo_phy_ddi_translations_edp_hbr2_hobl[] = {
 							/* VS	pre-emp	*/
-	{ .cnl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 0	0	*/
-	{ .cnl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 0	1	*/
-	{ .cnl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 0	2	*/
-	{ .cnl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 0	3	*/
-	{ .cnl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 1	0	*/
-	{ .cnl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 1	1	*/
-	{ .cnl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 1	2	*/
-	{ .cnl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 2	0	*/
-	{ .cnl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 2	1	*/
+	{ .icl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 0	0	*/
+	{ .icl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 0	1	*/
+	{ .icl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 0	2	*/
+	{ .icl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 0	3	*/
+	{ .icl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 1	0	*/
+	{ .icl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 1	1	*/
+	{ .icl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 1	2	*/
+	{ .icl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 2	0	*/
+	{ .icl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 2	1	*/
 };
 
 static const struct intel_ddi_buf_trans tgl_combo_phy_ddi_translations_edp_hbr2_hobl = {
@@ -964,16 +784,16 @@ static const struct intel_ddi_buf_trans tgl_combo_phy_ddi_translations_edp_hbr2_
 
 static const union intel_ddi_buf_trans_entry _rkl_combo_phy_ddi_translations_dp_hbr[] = {
 							/* NT mV Trans mV db    */
-	{ .cnl = { 0xA, 0x2F, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
-	{ .cnl = { 0xA, 0x4F, 0x37, 0x00, 0x08 } },	/* 350   500      3.1   */
-	{ .cnl = { 0xC, 0x63, 0x2F, 0x00, 0x10 } },	/* 350   700      6.0   */
-	{ .cnl = { 0x6, 0x7D, 0x2A, 0x00, 0x15 } },	/* 350   900      8.2   */
-	{ .cnl = { 0xA, 0x4C, 0x3F, 0x00, 0x00 } },	/* 500   500      0.0   */
-	{ .cnl = { 0xC, 0x73, 0x34, 0x00, 0x0B } },	/* 500   700      2.9   */
-	{ .cnl = { 0x6, 0x7F, 0x2F, 0x00, 0x10 } },	/* 500   900      5.1   */
-	{ .cnl = { 0xC, 0x6E, 0x3E, 0x00, 0x01 } },	/* 650   700      0.6   */
-	{ .cnl = { 0x6, 0x7F, 0x35, 0x00, 0x0A } },	/* 600   900      3.5   */
-	{ .cnl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 900   900      0.0   */
+	{ .icl = { 0xA, 0x2F, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
+	{ .icl = { 0xA, 0x4F, 0x37, 0x00, 0x08 } },	/* 350   500      3.1   */
+	{ .icl = { 0xC, 0x63, 0x2F, 0x00, 0x10 } },	/* 350   700      6.0   */
+	{ .icl = { 0x6, 0x7D, 0x2A, 0x00, 0x15 } },	/* 350   900      8.2   */
+	{ .icl = { 0xA, 0x4C, 0x3F, 0x00, 0x00 } },	/* 500   500      0.0   */
+	{ .icl = { 0xC, 0x73, 0x34, 0x00, 0x0B } },	/* 500   700      2.9   */
+	{ .icl = { 0x6, 0x7F, 0x2F, 0x00, 0x10 } },	/* 500   900      5.1   */
+	{ .icl = { 0xC, 0x6E, 0x3E, 0x00, 0x01 } },	/* 650   700      0.6   */
+	{ .icl = { 0x6, 0x7F, 0x35, 0x00, 0x0A } },	/* 600   900      3.5   */
+	{ .icl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 900   900      0.0   */
 };
 
 static const struct intel_ddi_buf_trans rkl_combo_phy_ddi_translations_dp_hbr = {
@@ -983,16 +803,16 @@ static const struct intel_ddi_buf_trans rkl_combo_phy_ddi_translations_dp_hbr =
 
 static const union intel_ddi_buf_trans_entry _rkl_combo_phy_ddi_translations_dp_hbr2_hbr3[] = {
 							/* NT mV Trans mV db    */
-	{ .cnl = { 0xA, 0x35, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
-	{ .cnl = { 0xA, 0x50, 0x38, 0x00, 0x07 } },	/* 350   500      3.1   */
-	{ .cnl = { 0xC, 0x61, 0x33, 0x00, 0x0C } },	/* 350   700      6.0   */
-	{ .cnl = { 0x6, 0x7F, 0x2E, 0x00, 0x11 } },	/* 350   900      8.2   */
-	{ .cnl = { 0xA, 0x47, 0x3F, 0x00, 0x00 } },	/* 500   500      0.0   */
-	{ .cnl = { 0xC, 0x5F, 0x38, 0x00, 0x07 } },	/* 500   700      2.9   */
-	{ .cnl = { 0x6, 0x7F, 0x2F, 0x00, 0x10 } },	/* 500   900      5.1   */
-	{ .cnl = { 0xC, 0x5F, 0x3F, 0x00, 0x00 } },	/* 650   700      0.6   */
-	{ .cnl = { 0x6, 0x7E, 0x36, 0x00, 0x09 } },	/* 600   900      3.5   */
-	{ .cnl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 900   900      0.0   */
+	{ .icl = { 0xA, 0x35, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
+	{ .icl = { 0xA, 0x50, 0x38, 0x00, 0x07 } },	/* 350   500      3.1   */
+	{ .icl = { 0xC, 0x61, 0x33, 0x00, 0x0C } },	/* 350   700      6.0   */
+	{ .icl = { 0x6, 0x7F, 0x2E, 0x00, 0x11 } },	/* 350   900      8.2   */
+	{ .icl = { 0xA, 0x47, 0x3F, 0x00, 0x00 } },	/* 500   500      0.0   */
+	{ .icl = { 0xC, 0x5F, 0x38, 0x00, 0x07 } },	/* 500   700      2.9   */
+	{ .icl = { 0x6, 0x7F, 0x2F, 0x00, 0x10 } },	/* 500   900      5.1   */
+	{ .icl = { 0xC, 0x5F, 0x3F, 0x00, 0x00 } },	/* 650   700      0.6   */
+	{ .icl = { 0x6, 0x7E, 0x36, 0x00, 0x09 } },	/* 600   900      3.5   */
+	{ .icl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 900   900      0.0   */
 };
 
 static const struct intel_ddi_buf_trans rkl_combo_phy_ddi_translations_dp_hbr2_hbr3 = {
@@ -1002,16 +822,16 @@ static const struct intel_ddi_buf_trans rkl_combo_phy_ddi_translations_dp_hbr2_h
 
 static const union intel_ddi_buf_trans_entry _adls_combo_phy_ddi_translations_dp_hbr2_hbr3[] = {
 							/* NT mV Trans mV db    */
-	{ .cnl = { 0xA, 0x35, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
-	{ .cnl = { 0xA, 0x4F, 0x37, 0x00, 0x08 } },	/* 350   500      3.1   */
-	{ .cnl = { 0xC, 0x63, 0x30, 0x00, 0x0F } },	/* 350   700      6.0   */
-	{ .cnl = { 0x6, 0x7F, 0x2B, 0x00, 0x14 } },	/* 350   900      8.2   */
-	{ .cnl = { 0xA, 0x47, 0x3F, 0x00, 0x00 } },	/* 500   500      0.0   */
-	{ .cnl = { 0xC, 0x63, 0x37, 0x00, 0x08 } },	/* 500   700      2.9   */
-	{ .cnl = { 0x6, 0x7F, 0x31, 0x00, 0x0E } },	/* 500   900      5.1   */
-	{ .cnl = { 0xC, 0x61, 0x3C, 0x00, 0x03 } },	/* 650   700      0.6   */
-	{ .cnl = { 0x6, 0x7B, 0x35, 0x00, 0x0A } },	/* 600   900      3.5   */
-	{ .cnl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 900   900      0.0   */
+	{ .icl = { 0xA, 0x35, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
+	{ .icl = { 0xA, 0x4F, 0x37, 0x00, 0x08 } },	/* 350   500      3.1   */
+	{ .icl = { 0xC, 0x63, 0x30, 0x00, 0x0F } },	/* 350   700      6.0   */
+	{ .icl = { 0x6, 0x7F, 0x2B, 0x00, 0x14 } },	/* 350   900      8.2   */
+	{ .icl = { 0xA, 0x47, 0x3F, 0x00, 0x00 } },	/* 500   500      0.0   */
+	{ .icl = { 0xC, 0x63, 0x37, 0x00, 0x08 } },	/* 500   700      2.9   */
+	{ .icl = { 0x6, 0x7F, 0x31, 0x00, 0x0E } },	/* 500   900      5.1   */
+	{ .icl = { 0xC, 0x61, 0x3C, 0x00, 0x03 } },	/* 650   700      0.6   */
+	{ .icl = { 0x6, 0x7B, 0x35, 0x00, 0x0A } },	/* 600   900      3.5   */
+	{ .icl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 900   900      0.0   */
 };
 
 static const struct intel_ddi_buf_trans adls_combo_phy_ddi_translations_dp_hbr2_hbr3 = {
@@ -1021,16 +841,16 @@ static const struct intel_ddi_buf_trans adls_combo_phy_ddi_translations_dp_hbr2_
 
 static const union intel_ddi_buf_trans_entry _adls_combo_phy_ddi_translations_edp_hbr2[] = {
 							/* NT mV Trans mV db    */
-	{ .cnl = { 0x9, 0x70, 0x3C, 0x00, 0x03 } },	/* 200   200      0.0   */
-	{ .cnl = { 0x9, 0x6D, 0x3A, 0x00, 0x05 } },	/* 200   250      1.9   */
-	{ .cnl = { 0x9, 0x7F, 0x36, 0x00, 0x09 } },	/* 200   300      3.5   */
-	{ .cnl = { 0x4, 0x59, 0x32, 0x00, 0x0D } },	/* 200   350      4.9   */
-	{ .cnl = { 0x2, 0x77, 0x3A, 0x00, 0x05 } },	/* 250   250      0.0   */
-	{ .cnl = { 0x2, 0x7F, 0x38, 0x00, 0x07 } },	/* 250   300      1.6   */
-	{ .cnl = { 0x4, 0x5A, 0x36, 0x00, 0x09 } },	/* 250   350      2.9   */
-	{ .cnl = { 0x4, 0x5E, 0x3D, 0x00, 0x04 } },	/* 300   300      0.0   */
-	{ .cnl = { 0x4, 0x65, 0x38, 0x00, 0x07 } },	/* 300   350      1.3   */
-	{ .cnl = { 0x4, 0x6F, 0x3A, 0x00, 0x05 } },	/* 350   350      0.0   */
+	{ .icl = { 0x9, 0x70, 0x3C, 0x00, 0x03 } },	/* 200   200      0.0   */
+	{ .icl = { 0x9, 0x6D, 0x3A, 0x00, 0x05 } },	/* 200   250      1.9   */
+	{ .icl = { 0x9, 0x7F, 0x36, 0x00, 0x09 } },	/* 200   300      3.5   */
+	{ .icl = { 0x4, 0x59, 0x32, 0x00, 0x0D } },	/* 200   350      4.9   */
+	{ .icl = { 0x2, 0x77, 0x3A, 0x00, 0x05 } },	/* 250   250      0.0   */
+	{ .icl = { 0x2, 0x7F, 0x38, 0x00, 0x07 } },	/* 250   300      1.6   */
+	{ .icl = { 0x4, 0x5A, 0x36, 0x00, 0x09 } },	/* 250   350      2.9   */
+	{ .icl = { 0x4, 0x5E, 0x3D, 0x00, 0x04 } },	/* 300   300      0.0   */
+	{ .icl = { 0x4, 0x65, 0x38, 0x00, 0x07 } },	/* 300   350      1.3   */
+	{ .icl = { 0x4, 0x6F, 0x3A, 0x00, 0x05 } },	/* 350   350      0.0   */
 };
 
 static const struct intel_ddi_buf_trans adls_combo_phy_ddi_translations_edp_hbr2 = {
@@ -1040,16 +860,16 @@ static const struct intel_ddi_buf_trans adls_combo_phy_ddi_translations_edp_hbr2
 
 static const union intel_ddi_buf_trans_entry _adls_combo_phy_ddi_translations_edp_hbr3[] = {
 							/* NT mV Trans mV db    */
-	{ .cnl = { 0xA, 0x5E, 0x34, 0x00, 0x0B } },	/* 350   350      0.0   */
-	{ .cnl = { 0xA, 0x69, 0x32, 0x00, 0x0D } },	/* 350   500      3.1   */
-	{ .cnl = { 0xC, 0x74, 0x31, 0x00, 0x0E } },	/* 350   700      6.0   */
-	{ .cnl = { 0x6, 0x7F, 0x2E, 0x00, 0x11 } },	/* 350   900      8.2   */
-	{ .cnl = { 0xA, 0x5C, 0x3F, 0x00, 0x00 } },	/* 500   500      0.0   */
-	{ .cnl = { 0xC, 0x7F, 0x34, 0x00, 0x0B } },	/* 500   700      2.9   */
-	{ .cnl = { 0x6, 0x7F, 0x33, 0x00, 0x0C } },	/* 500   900      5.1   */
-	{ .cnl = { 0xC, 0x7F, 0x3F, 0x00, 0x00 } },	/* 650   700      0.6   */
-	{ .cnl = { 0x6, 0x7F, 0x3C, 0x00, 0x03 } },	/* 600   900      3.5   */
-	{ .cnl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 900   900      0.0   */
+	{ .icl = { 0xA, 0x5E, 0x34, 0x00, 0x0B } },	/* 350   350      0.0   */
+	{ .icl = { 0xA, 0x69, 0x32, 0x00, 0x0D } },	/* 350   500      3.1   */
+	{ .icl = { 0xC, 0x74, 0x31, 0x00, 0x0E } },	/* 350   700      6.0   */
+	{ .icl = { 0x6, 0x7F, 0x2E, 0x00, 0x11 } },	/* 350   900      8.2   */
+	{ .icl = { 0xA, 0x5C, 0x3F, 0x00, 0x00 } },	/* 500   500      0.0   */
+	{ .icl = { 0xC, 0x7F, 0x34, 0x00, 0x0B } },	/* 500   700      2.9   */
+	{ .icl = { 0x6, 0x7F, 0x33, 0x00, 0x0C } },	/* 500   900      5.1   */
+	{ .icl = { 0xC, 0x7F, 0x3F, 0x00, 0x00 } },	/* 650   700      0.6   */
+	{ .icl = { 0x6, 0x7F, 0x3C, 0x00, 0x03 } },	/* 600   900      3.5   */
+	{ .icl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 900   900      0.0   */
 };
 
 static const struct intel_ddi_buf_trans adls_combo_phy_ddi_translations_edp_hbr3 = {
@@ -1269,88 +1089,6 @@ bxt_get_buf_trans(struct intel_encoder *encoder,
 		return intel_get_buf_trans(&bxt_ddi_translations_dp, n_entries);
 }
 
-static const struct intel_ddi_buf_trans *
-cnl_get_buf_trans_hdmi(struct intel_encoder *encoder, int *n_entries)
-{
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	u32 voltage = intel_de_read(dev_priv, CNL_PORT_COMP_DW3) & VOLTAGE_INFO_MASK;
-
-	if (voltage == VOLTAGE_INFO_0_85V) {
-		return intel_get_buf_trans(&cnl_ddi_translations_hdmi_0_85V,
-					   n_entries);
-	} else if (voltage == VOLTAGE_INFO_0_95V) {
-		return intel_get_buf_trans(&cnl_ddi_translations_hdmi_0_95V,
-					   n_entries);
-	} else if (voltage == VOLTAGE_INFO_1_05V) {
-		return intel_get_buf_trans(&cnl_ddi_translations_hdmi_1_05V,
-					   n_entries);
-	} else {
-		*n_entries = 1; /* shut up gcc */
-		MISSING_CASE(voltage);
-	}
-	return NULL;
-}
-
-static const struct intel_ddi_buf_trans *
-cnl_get_buf_trans_dp(struct intel_encoder *encoder, int *n_entries)
-{
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	u32 voltage = intel_de_read(dev_priv, CNL_PORT_COMP_DW3) & VOLTAGE_INFO_MASK;
-
-	if (voltage == VOLTAGE_INFO_0_85V) {
-		return intel_get_buf_trans(&cnl_ddi_translations_dp_0_85V,
-					   n_entries);
-	} else if (voltage == VOLTAGE_INFO_0_95V) {
-		return intel_get_buf_trans(&cnl_ddi_translations_dp_0_95V,
-					   n_entries);
-	} else if (voltage == VOLTAGE_INFO_1_05V) {
-		return intel_get_buf_trans(&cnl_ddi_translations_dp_1_05V,
-					   n_entries);
-	} else {
-		*n_entries = 1; /* shut up gcc */
-		MISSING_CASE(voltage);
-	}
-	return NULL;
-}
-
-static const struct intel_ddi_buf_trans *
-cnl_get_buf_trans_edp(struct intel_encoder *encoder, int *n_entries)
-{
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	u32 voltage = intel_de_read(dev_priv, CNL_PORT_COMP_DW3) & VOLTAGE_INFO_MASK;
-
-	if (dev_priv->vbt.edp.low_vswing) {
-		if (voltage == VOLTAGE_INFO_0_85V) {
-			return intel_get_buf_trans(&cnl_ddi_translations_edp_0_85V,
-						   n_entries);
-		} else if (voltage == VOLTAGE_INFO_0_95V) {
-			return intel_get_buf_trans(&cnl_ddi_translations_edp_0_95V,
-						   n_entries);
-		} else if (voltage == VOLTAGE_INFO_1_05V) {
-			return intel_get_buf_trans(&cnl_ddi_translations_edp_1_05V,
-						   n_entries);
-		} else {
-			*n_entries = 1; /* shut up gcc */
-			MISSING_CASE(voltage);
-		}
-		return NULL;
-	} else {
-		return cnl_get_buf_trans_dp(encoder, n_entries);
-	}
-}
-
-static const struct intel_ddi_buf_trans *
-cnl_get_buf_trans(struct intel_encoder *encoder,
-		  const struct intel_crtc_state *crtc_state,
-		  int *n_entries)
-{
-	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
-		return cnl_get_buf_trans_hdmi(encoder, n_entries);
-	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
-		return cnl_get_buf_trans_edp(encoder, n_entries);
-	return cnl_get_buf_trans_dp(encoder, n_entries);
-}
-
 static const struct intel_ddi_buf_trans *
 icl_get_combo_buf_trans_dp(struct intel_encoder *encoder,
 			   const struct intel_crtc_state *crtc_state,
@@ -1761,8 +1499,6 @@ void intel_ddi_buf_trans_init(struct intel_encoder *encoder)
 			encoder->get_buf_trans = icl_get_combo_buf_trans;
 		else
 			encoder->get_buf_trans = icl_get_mg_buf_trans;
-	} else if (IS_CANNONLAKE(i915)) {
-		encoder->get_buf_trans = cnl_get_buf_trans;
 	} else if (IS_GEMINILAKE(i915) || IS_BROXTON(i915)) {
 		encoder->get_buf_trans = bxt_get_buf_trans;
 	} else if (IS_CML_ULX(i915) || IS_CFL_ULX(i915) || IS_KBL_ULX(i915)) {
diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
index 05226eb46cd6..2acd720f9d4f 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
@@ -25,7 +25,7 @@ struct bxt_ddi_buf_trans {
 	u8 deemphasis;
 };
 
-struct cnl_ddi_buf_trans {
+struct icl_ddi_buf_trans {
 	u8 dw2_swing_sel;
 	u8 dw7_n_scalar;
 	u8 dw4_cursor_coeff;
@@ -48,7 +48,7 @@ struct tgl_dkl_phy_ddi_buf_trans {
 union intel_ddi_buf_trans_entry {
 	struct hsw_ddi_buf_trans hsw;
 	struct bxt_ddi_buf_trans bxt;
-	struct cnl_ddi_buf_trans cnl;
+	struct icl_ddi_buf_trans icl;
 	struct icl_mg_phy_ddi_buf_trans mg;
 	struct tgl_dkl_phy_ddi_buf_trans dkl;
 };
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
