Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CABCD6F14D2
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Apr 2023 11:59:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A91310ECB7;
	Fri, 28 Apr 2023 09:59:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9295310ECB5
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Apr 2023 09:59:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682675983; x=1714211983;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ynyphJ2Ly+ve+YnHj23xIzJH44ICIS5zjva9lzM5mqM=;
 b=h7EB+rXMWE3NOmDE7KyTpUCWGvQKWlB9LxONWeQHu+PH73PhsSh9hWDr
 5JWjrAGtKsQxk+YlUe2CkpSRo0JPdQjSq1Z20CDFgeFl/ogkJJMTnSwz+
 SUNqzd4oDGtdmyVkBzkT9kx8SGrct4Dcw9G66roDwHcyTMBN4NkL4rTG/
 V1L0Ts1TseGTYJ5qKKbFWQSX8QBf3GEjfMZZa+690JS5uNXIfYqyLIWOL
 xjCarfnTVJlyb1c2N/kULfUd64iim2mwTIOkgUZ5VuqTNHYEAlcZU3vO8
 ZM0kwWKJ+bfQ8OaqCzaO98VRYYEQhuzOWeWkpmryLG+q8QAbU1ksvmMCf w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="375698137"
X-IronPort-AV: E=Sophos;i="5.99,234,1677571200"; d="scan'208";a="375698137"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2023 02:59:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="725295742"
X-IronPort-AV: E=Sophos;i="5.99,234,1677571200"; d="scan'208";a="725295742"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga008.jf.intel.com with ESMTP; 28 Apr 2023 02:59:41 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Apr 2023 12:54:25 +0300
Message-Id: <20230428095433.4109054-6-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230428095433.4109054-1-mika.kahola@intel.com>
References: <20230428095433.4109054-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 05/13] drm/i915/mtl: Add voltage swing
 sequence for C20
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

DP1.4 and DP20 voltage swing sequence for C20 phy.

Bspec: 65449, 67636, 67610

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Clint Taylor <Clinton.A.Taylor@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  4 ++
 .../drm/i915/display/intel_ddi_buf_trans.c    | 53 ++++++++++++++++++-
 2 files changed, 55 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
index d3de4df2b682..ab9d1d983b88 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
@@ -212,6 +212,10 @@
 #define   C20_MULTIPLIER_MASK		REG_GENMASK(11, 0)
 #define   C20_PHY_USE_MPLLB		REG_BIT(7)
 
+/* C20 Phy VSwing Masks */
+#define C20_PHY_VSWING_PREEMPH_MASK	REG_GENMASK8(5, 0)
+#define C20_PHY_VSWING_PREEMPH(val)	REG_FIELD_PREP8(C20_PHY_VSWING_PREEMPH_MASK, val)
+
 #define RAWLANEAONX_DIG_TX_MPLLB_CAL_DONE_BANK(idx) (0x303D + (idx))
 
 #endif /* __INTEL_CX0_REG_DEFS_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index cd4becbae098..b7d20485bde5 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -9,6 +9,7 @@
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_dp.h"
+#include "intel_cx0_phy.h"
 
 /* HDMI/DVI modes ignore everything but the last 2 items. So we share
  * them for both DP and FDI transports, allowing those ports to
@@ -1048,12 +1049,52 @@ static const union intel_ddi_buf_trans_entry _mtl_c10_trans_dp14[] = {
 	{ .snps = { 62, 0, 0  } },      /* preset 9 */
 };
 
-static const struct intel_ddi_buf_trans mtl_cx0c10_trans = {
+static const struct intel_ddi_buf_trans mtl_cx0_trans = {
 	.entries = _mtl_c10_trans_dp14,
 	.num_entries = ARRAY_SIZE(_mtl_c10_trans_dp14),
 	.hdmi_default_entry = ARRAY_SIZE(_mtl_c10_trans_dp14) - 1,
 };
 
+/* DP2.0 */
+static const union intel_ddi_buf_trans_entry _mtl_c20_trans_uhbr[] = {
+	{ .snps = { 48, 0, 0 } },       /* preset 0 */
+	{ .snps = { 43, 0, 5 } },       /* preset 1 */
+	{ .snps = { 40, 0, 8 } },       /* preset 2 */
+	{ .snps = { 37, 0, 11 } },      /* preset 3 */
+	{ .snps = { 33, 0, 15 } },      /* preset 4 */
+	{ .snps = { 46, 2, 0 } },       /* preset 5 */
+	{ .snps = { 42, 2, 4 } },       /* preset 6 */
+	{ .snps = { 38, 2, 8 } },       /* preset 7 */
+	{ .snps = { 35, 2, 11 } },      /* preset 8 */
+	{ .snps = { 33, 2, 13 } },      /* preset 9 */
+	{ .snps = { 44, 4, 0 } },       /* preset 10 */
+	{ .snps = { 40, 4, 4 } },       /* preset 11 */
+	{ .snps = { 37, 4, 7 } },       /* preset 12 */
+	{ .snps = { 33, 4, 11 } },      /* preset 13 */
+	{ .snps = { 40, 8, 0 } },	/* preset 14 */
+	{ .snps = { 28, 2, 2 } },	/* preset 15 */
+};
+
+/* HDMI2.0 */
+static const union intel_ddi_buf_trans_entry _mtl_c20_trans_hdmi[] = {
+	{ .snps = { 48, 0, 0 } },       /* preset 0 */
+	{ .snps = { 38, 4, 6 } },       /* preset 1 */
+	{ .snps = { 36, 4, 8 } },       /* preset 2 */
+	{ .snps = { 34, 4, 10 } },      /* preset 3 */
+	{ .snps = { 32, 4, 12 } },      /* preset 4 */
+};
+
+static const struct intel_ddi_buf_trans mtl_c20_trans_hdmi = {
+	.entries = _mtl_c20_trans_hdmi,
+	.num_entries = ARRAY_SIZE(_mtl_c20_trans_hdmi),
+	.hdmi_default_entry = 0,
+};
+
+static const struct intel_ddi_buf_trans mtl_c20_trans_uhbr = {
+	.entries = _mtl_c20_trans_uhbr,
+	.num_entries = ARRAY_SIZE(_mtl_c20_trans_uhbr),
+};
+
 bool is_hobl_buf_trans(const struct intel_ddi_buf_trans *table)
 {
 	return table == &tgl_combo_phy_trans_edp_hbr2_hobl;
@@ -1630,7 +1671,15 @@ mtl_get_cx0_buf_trans(struct intel_encoder *encoder,
 		      const struct intel_crtc_state *crtc_state,
 		      int *n_entries)
 {
-	return intel_get_buf_trans(&mtl_cx0c10_trans, n_entries);
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	enum phy phy = intel_port_to_phy(i915, encoder->port);
+
+	if (intel_crtc_has_dp_encoder(crtc_state) && crtc_state->port_clock >= 1000000)
+		return intel_get_buf_trans(&mtl_c20_trans_uhbr, n_entries);
+	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI) && !(intel_is_c10phy(i915, phy)))
+		return intel_get_buf_trans(&mtl_c20_trans_hdmi, n_entries);
+	else
+		return intel_get_buf_trans(&mtl_cx0_trans, n_entries);
 }
 
 void intel_ddi_buf_trans_init(struct intel_encoder *encoder)
-- 
2.34.1

