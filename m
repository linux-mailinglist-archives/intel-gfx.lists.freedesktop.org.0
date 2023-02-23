Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA61A6A0B0B
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Feb 2023 14:46:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F88210EB9F;
	Thu, 23 Feb 2023 13:46:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 449B710E4F2
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Feb 2023 13:45:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677159955; x=1708695955;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7Xf3Z1YU8usy+vUoQ06lTJhj+xkRaV0vErEw+88fumU=;
 b=Jowgxh9qBT7s3c1mGKE+95w/f/XC8xe/bscojaM+sJUceUX88yHtiP/R
 sejxsdMaaeDL9h3t4fNC+qkSILExniZ56PTPQ3RBxNf2epkjxEUwEMQC/
 Dc+oO2O87dlElzfn0IREAoIql1wTebSpliK9asEHWYHcKMeIMvF53M+aj
 /g0pztRZztDCnW+qS+CJF17/42rEtX5ZBOWMq+Y9cR56zHR9vJK2sKUt+
 Dm0nRiLftxQKEIcULmSW/sBSdlsHqf16uKEIT//i+8Fd1PolU3odpDuF9
 SM0cDzIfsigTlRLfrlrJwfsE71ON1xKsaoHD1L/hisfE9Xk97OAnUZ51K w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="334581673"
X-IronPort-AV: E=Sophos;i="5.97,320,1669104000"; d="scan'208";a="334581673"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2023 05:45:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="846562521"
X-IronPort-AV: E=Sophos;i="5.97,320,1669104000"; d="scan'208";a="846562521"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga005.jf.intel.com with ESMTP; 23 Feb 2023 05:45:53 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Feb 2023 15:40:12 +0200
Message-Id: <20230223134021.2236889-14-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230223134021.2236889-1-mika.kahola@intel.com>
References: <20230223134021.2236889-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 13/22] drm/i915/mtl: Add voltage swing
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

v2: DP2.0 Tx Eq tables has been updated in BSpec.
    Update also the driver code as per BSpec 65449

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
---
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  4 ++
 .../drm/i915/display/intel_ddi_buf_trans.c    | 51 ++++++++++++++++++-
 2 files changed, 54 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
index a17da2d7298e..257b4cd6c80c 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
@@ -211,6 +211,10 @@
 #define C20_MPLLB_TX_CLK_DIV_MASK	REG_GENMASK(15, 13)
 #define C20_MPLLA_TX_CLK_DIV_MASK	REG_GENMASK(10, 8)
 
+/* C20 Phy VSwing Masks */
+#define C20_PHY_VSWING_PREEMPH_MASK	REG_GENMASK8(5, 0)
+#define C20_PHY_VSWING_PREEMPH(val)	REG_FIELD_PREP8(C20_PHY_VSWING_PREEMPH_MASK, val)
+
 #define RAWLANEAONX_DIG_TX_MPLLB_CAL_DONE_BANK(idx)	(0x303D + (idx))
 
 #endif /* __INTEL_CX0_PHY_REGS_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index d5a9aa2de2fa..883084422f1f 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -9,6 +9,7 @@
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_dp.h"
+#include "intel_cx0_phy.h"
 
 /* HDMI/DVI modes ignore everything but the last 2 items. So we share
  * them for both DP and FDI transports, allowing those ports to
@@ -1059,6 +1060,46 @@ static const struct intel_ddi_buf_trans mtl_cx0_trans = {
 	.hdmi_default_entry = ARRAY_SIZE(_mtl_c10_trans_dp14) - 1,
 };
 
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
@@ -1635,7 +1676,15 @@ mtl_get_cx0_buf_trans(struct intel_encoder *encoder,
 		      const struct intel_crtc_state *crtc_state,
 		      int *n_entries)
 {
-	return intel_get_buf_trans(&mtl_cx0_trans, n_entries);
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	enum phy phy = intel_port_to_phy(i915, encoder->port);
+
+	if (intel_crtc_has_dp_encoder(crtc_state) && crtc_state->port_clock > 1000000)
+		return intel_get_buf_trans(&mtl_c20_trans_uhbr, n_entries);
+	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI) && !(intel_is_c10phy(i915, phy)))
+		return intel_get_buf_trans(&mtl_c20_trans_hdmi, n_entries);
+	else
+		return intel_get_buf_trans(&mtl_cx0_trans, n_entries);
 }
 
 void intel_ddi_buf_trans_init(struct intel_encoder *encoder)
-- 
2.34.1

