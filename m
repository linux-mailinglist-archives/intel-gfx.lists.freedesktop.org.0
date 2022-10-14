Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60EE95FEE36
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Oct 2022 14:53:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D11C10EADB;
	Fri, 14 Oct 2022 12:53:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7094D10EADE
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Oct 2022 12:52:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665751931; x=1697287931;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=drOA4BdsP/YER6qPKo5lrefBidmK7o04BkGe8rt5r88=;
 b=Q6+KKyr1rmofR+idAy86brNea9s4Z45NOzPJNMCNJRFKW16W20MWLXv2
 dS0icQLdNT93QxxXkFpC9VVa+ihYS4e0aTKy0ivs9FYi9VyL/+36fq8u4
 q55uOX3eE9FwKnlGvAN7GJZMwtpJtvZeCzdEvQMRYQsLCG7IABbKwvzxL
 hoYwCcae6w0Cur3O0SCmPCVR2oHRRCQnWwFEoJfvJ/tmUZvy3tDc7vguC
 jWiaqNm6e62K4HQfUWFLPwfdyKsEfDZSe6dvTgez8JrxkUehIbfz1xAuA
 AZ6L8u1paG7DPzdcnfHehfliz0NrK9fUxsav1lUtXGXsj9m4oN2S785OB w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10500"; a="304104665"
X-IronPort-AV: E=Sophos;i="5.95,184,1661842800"; d="scan'208";a="304104665"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 05:52:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10500"; a="716739788"
X-IronPort-AV: E=Sophos;i="5.95,184,1661842800"; d="scan'208";a="716739788"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by FMSMGA003.fm.intel.com with ESMTP; 14 Oct 2022 05:52:10 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Oct 2022 15:47:32 +0300
Message-Id: <20221014124740.774835-13-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221014124740.774835-1-mika.kahola@intel.com>
References: <20221014124740.774835-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 12/20] drm/i915/mtl: Add voltage swing sequence
 for C20
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

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 31 ++++++++++++-----
 .../gpu/drm/i915/display/intel_cx0_reg_defs.h |  4 +++
 .../drm/i915/display/intel_ddi_buf_trans.c    | 33 +++++++++++++++++--
 3 files changed, 58 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 088f59c26dde..aab606520a62 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -340,14 +340,29 @@ void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
 		lane = ln / 2;
 		tx = ln % 2 + 1;
 
-		intel_cx0_rmw(i915, encoder->port, lane, PHY_CX0_TX_CONTROL(tx, 2),
-			      C10_PHY_VSWING_PREEMPH_MASK,
-			      C10_PHY_VSWING_PREEMPH(trans->entries[level].direct.preemph),
-			      MB_WRITE_COMMITTED);
-		intel_cx0_rmw(i915, encoder->port, lane, PHY_CX0_TX_CONTROL(tx, 8),
-			      C10_PHY_VSWING_LEVEL_MASK,
-			      C10_PHY_VSWING_LEVEL(trans->entries[level].direct.level),
-			      MB_WRITE_COMMITTED);
+		if (crtc_state->port_clock > 1000000) {
+			intel_cx0_rmw(i915, encoder->port, lane, PHY_CX0_TX_CONTROL(tx, 2),
+				      C20_PHY_VSWING_PREEMPH_MASK,
+				      C20_PHY_VSWING_PREEMPH(trans->entries[level].snps.pre_cursor),
+				      MB_WRITE_COMMITTED);
+			intel_cx0_rmw(i915, encoder->port, lane, PHY_CX0_TX_CONTROL(tx, 3),
+				      C20_PHY_VSWING_PREEMPH_MASK,
+				      C20_PHY_VSWING_PREEMPH(trans->entries[level].snps.vswing),
+				      MB_WRITE_COMMITTED);
+			intel_cx0_rmw(i915, encoder->port, lane, PHY_CX0_TX_CONTROL(tx, 4),
+				      C20_PHY_VSWING_PREEMPH_MASK,
+				      C20_PHY_VSWING_PREEMPH(trans->entries[level].snps.post_cursor),
+				      MB_WRITE_COMMITTED);
+		} else {
+			intel_cx0_rmw(i915, encoder->port, lane, PHY_CX0_TX_CONTROL(tx, 2),
+				      C10_PHY_VSWING_PREEMPH_MASK,
+				      C10_PHY_VSWING_PREEMPH(trans->entries[level].direct.preemph),
+				      MB_WRITE_COMMITTED);
+			intel_cx0_rmw(i915, encoder->port, lane, PHY_CX0_TX_CONTROL(tx, 8),
+				      C10_PHY_VSWING_LEVEL_MASK,
+				      C10_PHY_VSWING_LEVEL(trans->entries[level].direct.level),
+				      MB_WRITE_COMMITTED);
+		}
 	}
 
 	intel_cx0_write(i915, encoder->port, master_lane, PHY_C10_VDR_CONTROL(1),
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h b/drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h
index b3912d15a823..de5bce5037dd 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h
@@ -198,6 +198,10 @@
 #define C20_MPLLB_TX_CLK_DIV_MASK	REG_GENMASK(15, 13)
 #define C20_MPLLA_TX_CLK_DIV_MASK	REG_GENMASK(10, 8)
 
+/* C20 Phy VSwing Masks */
+#define C20_PHY_VSWING_PREEMPH_MASK	REG_GENMASK8(5, 0)
+#define C20_PHY_VSWING_PREEMPH(val)	REG_FIELD_PREP8(C20_PHY_VSWING_PREEMPH_MASK, val)
+
 #define RAWLANEAONX_DIG_TX_MPLLB_CAL_DONE_BANK(idx)	(0x303D + (idx))
 
 #endif /* __INTEL_CX0_REG_DEFS_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index 49f8a0a6593b..916b5dc28abe 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -9,6 +9,7 @@
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_dp.h"
+#include "intel_cx0_phy.h"
 
 /* HDMI/DVI modes ignore everything but the last 2 items. So we share
  * them for both DP and FDI transports, allowing those ports to
@@ -1053,12 +1054,37 @@ static const union intel_ddi_buf_trans_entry direct_map_trans[] = {
     { .direct = { .level = 3, .preemph = 0 } },
 };
 
-static const struct intel_ddi_buf_trans mtl_cx0c10_trans = {
+static const struct intel_ddi_buf_trans mtl_cx0_trans = {
 	.entries = direct_map_trans,
 	.num_entries = ARRAY_SIZE(direct_map_trans),
 	.hdmi_default_entry = ARRAY_SIZE(direct_map_trans) - 1,
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
+	{ .snps = { 36, 6, 6 } },       /* preset 14 */
+	{ .snps = { 28, 6, 2 } },       /* preset 15 */
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
@@ -1635,7 +1661,10 @@ mtl_get_cx0_buf_trans(struct intel_encoder *encoder,
 		      const struct intel_crtc_state *crtc_state,
 		      int *n_entries)
 {
-	return intel_get_buf_trans(&mtl_cx0c10_trans, n_entries);
+	if (crtc_state->port_clock > 1000000)
+		return intel_get_buf_trans(&mtl_c20_trans_uhbr, n_entries);
+	else
+		return intel_get_buf_trans(&mtl_cx0_trans, n_entries);
 }
 
 void intel_ddi_buf_trans_init(struct intel_encoder *encoder)
-- 
2.34.1

