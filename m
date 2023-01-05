Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0692865EB78
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Jan 2023 14:00:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B95410E721;
	Thu,  5 Jan 2023 13:00:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97B5010E721
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Jan 2023 13:00:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672923602; x=1704459602;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=G0fLL6pbb8TRNfshLXyO0yrRHjF3k4XjJ7QPeWh0vz4=;
 b=YWhyRqjGY41V3qpYOGz/8WzKU0C3gWWgGtiI8zzpiLzuXHlBBKMw/rrY
 RG8AprN84h5m0GqFPMjYebd4IFY+Nzd5U2/7aR/xiyjYwPktl+31LPsD4
 lVTG5xsAqzebjUsWWGYByhQDf4I+iBlVM3BazspYBgPN4u98PrZLPgbzg
 6O3LkpVJw8j4aZ6i9Ot8OVPM626nUvIvhsaqfrXI23r56aqnD7ppqzsl/
 bICDYglRd9xscOsSc8lNJy3Thf5hQI2j1Lh9IODHlzcsPZs0I+1k+nn8x
 9Euv7Zy6BLTvFF4I4dJDJblFLS9Sudv72ai8aMjhMmnL4gspjV7df2cFM w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="305697852"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="305697852"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 05:00:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="829541102"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="829541102"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga005.jf.intel.com with ESMTP; 05 Jan 2023 05:00:00 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Jan 2023 14:54:37 +0200
Message-Id: <20230105125446.960504-13-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230105125446.960504-1-mika.kahola@intel.com>
References: <20230105125446.960504-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 12/21] drm/i915/mtl: Add voltage swing
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DP1.4 and DP20 voltage swing sequence for C20 phy.

Bspec: 65449, 67636, 67610

v2: DP2.0 Tx Eq tables has been updated in BSpec.
    Update also the driver code as per BSpec 65449

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Link: https://patchwork.freedesktop.org/patch/msgid/20221014124740.774835-13-mika.kahola@intel.com
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 31 ++++++++++++-----
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  4 +++
 .../drm/i915/display/intel_ddi_buf_trans.c    | 33 +++++++++++++++++--
 3 files changed, 58 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index e5542fb209ab..7520f50d4ffc 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -342,14 +342,29 @@ void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
 		lane = ln / 2 + 1;
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
 
 	intel_cx0_write(i915, encoder->port, follower_lane, PHY_C10_VDR_CONTROL(1),
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
index 794372f4798d..9c32152a3d10 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
@@ -203,6 +203,10 @@
 #define C20_MPLLB_TX_CLK_DIV_MASK	REG_GENMASK(15, 13)
 #define C20_MPLLA_TX_CLK_DIV_MASK	REG_GENMASK(10, 8)
 
+/* C20 Phy VSwing Masks */
+#define C20_PHY_VSWING_PREEMPH_MASK	REG_GENMASK8(5, 0)
+#define C20_PHY_VSWING_PREEMPH(val)	REG_FIELD_PREP8(C20_PHY_VSWING_PREEMPH_MASK, val)
+
 #define RAWLANEAONX_DIG_TX_MPLLB_CAL_DONE_BANK(idx)	(0x303D + (idx))
 
 #endif /* __INTEL_CX0_PHY_REGS_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index ca2acaa73a64..4f4a8d3712a6 100644
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
+	{ .snps = { 40, 8, 0 } },	/* preset 14 */
+	{ .snps = { 28, 2, 2 } },	/* preset 15 */
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

