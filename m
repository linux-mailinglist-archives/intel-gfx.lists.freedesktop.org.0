Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 534773D3428
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jul 2021 07:39:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 583146FA45;
	Fri, 23 Jul 2021 05:39:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 384D56FA45
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Jul 2021 05:39:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10053"; a="211818680"
X-IronPort-AV: E=Sophos;i="5.84,263,1620716400"; d="scan'208";a="211818680"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2021 22:39:00 -0700
X-IronPort-AV: E=Sophos;i="5.84,263,1620716400"; d="scan'208";a="470992667"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2021 22:38:59 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 22 Jul 2021 22:38:54 -0700
Message-Id: <20210723053854.1294411-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210723053401.1269829-3-matthew.d.roper@intel.com>
References: <20210723053401.1269829-3-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 2/2] drm/i915/adl_p: Add ddi buf translation
 tables for combo PHY
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

ADL-P now has its own set of DDI buf translation tables (except for eDP
which appears to be the same as TGL).  Add the new values (last updated
in bspec 2021-07-22) to the driver.

v2:
 - Actually hook up the new tables via encoder->get_buf_trans()

Bspec: 49291
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 .../drm/i915/display/intel_ddi_buf_trans.c    | 106 +++++++++++++++++-
 1 file changed, 105 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index cdd0df467287..7bf80b72733d 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -1057,6 +1057,64 @@ static const struct intel_ddi_buf_trans adls_combo_phy_ddi_translations_edp_hbr3
 	.num_entries = ARRAY_SIZE(_adls_combo_phy_ddi_translations_edp_hbr3),
 };
 
+static const union intel_ddi_buf_trans_entry _adlp_combo_phy_ddi_translations_hdmi[] = {
+							/* NT mV Trans mV    db   */
+	{ .cnl = { 0x6, 0x60, 0x3F, 0x00, 0x00 } },	/*  400    400      0.0 */
+	{ .cnl = { 0x6, 0x68, 0x3F, 0x00, 0x00 } },	/*  500    500      0.0 */
+	{ .cnl = { 0xA, 0x73, 0x3F, 0x00, 0x00 } },	/*  650    650      0.0 ALS */
+	{ .cnl = { 0xA, 0x78, 0x3F, 0x00, 0x00 } },	/*  800    800      0.0 */
+	{ .cnl = { 0xB, 0x7F, 0x3F, 0x00, 0x00 } },	/* 1000   1000      0.0 Re-timer */
+	{ .cnl = { 0xB, 0x7F, 0x3B, 0x00, 0x04 } },	/* Full    Red     -1.5 */
+	{ .cnl = { 0xB, 0x7F, 0x39, 0x00, 0x06 } },	/* Full    Red     -1.8 */
+	{ .cnl = { 0xB, 0x7F, 0x37, 0x00, 0x08 } },	/* Full    Red     -2.0 CRLS */
+	{ .cnl = { 0xB, 0x7F, 0x35, 0x00, 0x0A } },	/* Full    Red     -2.5 */
+	{ .cnl = { 0xB, 0x7F, 0x33, 0x00, 0x0C } },	/* Full    Red     -3.0 */
+};
+
+static const struct intel_ddi_buf_trans adlp_combo_phy_ddi_translations_hdmi = {
+	.entries = _adlp_combo_phy_ddi_translations_hdmi,
+	.num_entries = ARRAY_SIZE(_adlp_combo_phy_ddi_translations_hdmi),
+	.hdmi_default_entry = ARRAY_SIZE(_adlp_combo_phy_ddi_translations_hdmi) - 1,
+};
+
+static const union intel_ddi_buf_trans_entry _adlp_combo_phy_ddi_translations_dp_hbr[] = {
+							/* NT mV Trans mV db    */
+	{ .cnl = { 0xA, 0x35, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
+	{ .cnl = { 0xA, 0x4F, 0x37, 0x00, 0x08 } },	/* 350   500      3.1   */
+	{ .cnl = { 0xC, 0x71, 0x31, 0x00, 0x0E } },	/* 350   700      6.0   */
+	{ .cnl = { 0x6, 0x7F, 0x2C, 0x00, 0x13 } },	/* 350   900      8.2   */
+	{ .cnl = { 0xA, 0x4C, 0x3F, 0x00, 0x00 } },	/* 500   500      0.0   */
+	{ .cnl = { 0xC, 0x73, 0x34, 0x00, 0x0B } },	/* 500   700      2.9   */
+	{ .cnl = { 0x6, 0x7F, 0x2F, 0x00, 0x10 } },	/* 500   900      5.1   */
+	{ .cnl = { 0xC, 0x73, 0x3E, 0x00, 0x01 } },	/* 650   700      0.6   */
+	{ .cnl = { 0x6, 0x7F, 0x35, 0x00, 0x0A } },	/* 600   900      3.5   */
+	{ .cnl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 900   900      0.0   */
+};
+
+static const struct intel_ddi_buf_trans adlp_combo_phy_ddi_translations_dp_hbr = {
+	.entries = _adlp_combo_phy_ddi_translations_dp_hbr,
+	.num_entries = ARRAY_SIZE(_adlp_combo_phy_ddi_translations_dp_hbr),
+};
+
+static const union intel_ddi_buf_trans_entry _adlp_combo_phy_ddi_translations_dp_hbr2_hbr3[] = {
+							/* NT mV Trans mV db    */
+	{ .cnl = { 0xA, 0x35, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
+	{ .cnl = { 0xA, 0x4F, 0x37, 0x00, 0x08 } },	/* 350   500      3.1   */
+	{ .cnl = { 0xC, 0x71, 0x2F, 0x00, 0x10 } },	/* 350   700      6.0   */
+	{ .cnl = { 0x6, 0x7F, 0x2B, 0x00, 0x14 } },	/* 350   900      8.2   */
+	{ .cnl = { 0xA, 0x4C, 0x3F, 0x00, 0x00 } },	/* 500   500      0.0   */
+	{ .cnl = { 0xC, 0x73, 0x34, 0x00, 0x0B } },	/* 500   700      2.9   */
+	{ .cnl = { 0x6, 0x7F, 0x30, 0x00, 0x0F } },	/* 500   900      5.1   */
+	{ .cnl = { 0xC, 0x63, 0x3F, 0x00, 0x00 } },	/* 650   700      0.6   */
+	{ .cnl = { 0x6, 0x7F, 0x38, 0x00, 0x07 } },	/* 600   900      3.5   */
+	{ .cnl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 900   900      0.0   */
+};
+
+static const struct intel_ddi_buf_trans adlp_combo_phy_ddi_translations_dp_hbr2_hbr3 = {
+	.entries = _adlp_combo_phy_ddi_translations_dp_hbr2_hbr3,
+	.num_entries = ARRAY_SIZE(_adlp_combo_phy_ddi_translations_dp_hbr2_hbr3),
+};
+
 static const union intel_ddi_buf_trans_entry _adlp_dkl_phy_ddi_translations_dp_hbr[] = {
 					/* VS	pre-emp	Non-trans mV	Pre-emph dB */
 	{ .dkl = { 0x7, 0x0, 0x01 } },	/* 0	0	400mV		0 dB */
@@ -1661,6 +1719,52 @@ adls_get_combo_buf_trans(struct intel_encoder *encoder,
 		return adls_get_combo_buf_trans_dp(encoder, crtc_state, n_entries);
 }
 
+static const struct intel_ddi_buf_trans *
+adlp_get_combo_buf_trans_dp(struct intel_encoder *encoder,
+			    const struct intel_crtc_state *crtc_state,
+			    int *n_entries)
+{
+	if (crtc_state->port_clock > 270000)
+		return intel_get_buf_trans(&adlp_combo_phy_ddi_translations_dp_hbr2_hbr3, n_entries);
+	else
+		return intel_get_buf_trans(&adlp_combo_phy_ddi_translations_dp_hbr, n_entries);
+}
+
+static const struct intel_ddi_buf_trans *
+adlp_get_combo_buf_trans_edp(struct intel_encoder *encoder,
+			     const struct intel_crtc_state *crtc_state,
+			     int *n_entries)
+{
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+
+	if (crtc_state->port_clock > 540000) {
+		return intel_get_buf_trans(&icl_combo_phy_ddi_translations_dp_hbr2_edp_hbr3,
+					   n_entries);
+	} else if (dev_priv->vbt.edp.hobl && !intel_dp->hobl_failed) {
+		return intel_get_buf_trans(&tgl_combo_phy_ddi_translations_edp_hbr2_hobl,
+					   n_entries);
+	} else if (dev_priv->vbt.edp.low_vswing) {
+		return intel_get_buf_trans(&icl_combo_phy_ddi_translations_edp_hbr2,
+					   n_entries);
+	}
+
+	return adlp_get_combo_buf_trans_dp(encoder, crtc_state, n_entries);
+}
+
+static const struct intel_ddi_buf_trans *
+adlp_get_combo_buf_trans(struct intel_encoder *encoder,
+			 const struct intel_crtc_state *crtc_state,
+			 int *n_entries)
+{
+	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
+		return intel_get_buf_trans(&adlp_combo_phy_ddi_translations_hdmi, n_entries);
+	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
+		return adlp_get_combo_buf_trans_edp(encoder, crtc_state, n_entries);
+	else
+		return adlp_get_combo_buf_trans_dp(encoder, crtc_state, n_entries);
+}
+
 static const struct intel_ddi_buf_trans *
 tgl_get_dkl_buf_trans_dp(struct intel_encoder *encoder,
 			 const struct intel_crtc_state *crtc_state,
@@ -1738,7 +1842,7 @@ void intel_ddi_buf_trans_init(struct intel_encoder *encoder)
 
 	if (IS_ALDERLAKE_P(i915)) {
 		if (intel_phy_is_combo(i915, phy))
-			encoder->get_buf_trans = tgl_get_combo_buf_trans;
+			encoder->get_buf_trans = adlp_get_combo_buf_trans;
 		else
 			encoder->get_buf_trans = adlp_get_dkl_buf_trans;
 	} else if (IS_ALDERLAKE_S(i915)) {
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
