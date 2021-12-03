Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B94494677E5
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Dec 2021 14:13:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3D8473C52;
	Fri,  3 Dec 2021 13:13:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E41173A33
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Dec 2021 13:13:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10186"; a="223844760"
X-IronPort-AV: E=Sophos;i="5.87,284,1631602800"; d="scan'208";a="223844760"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2021 05:13:25 -0800
X-IronPort-AV: E=Sophos;i="5.87,284,1631602800"; d="scan'208";a="513704761"
Received: from chobbs-mobl1.ger.corp.intel.com (HELO localhost) ([10.252.2.56])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2021 05:13:24 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  3 Dec 2021 15:13:18 +0200
Message-Id: <20211203131318.2885969-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/ddi: add use_edp_hobl() and
 use_edp_low_vswing() helpers
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

Localize HOBL and low vswing VBT lookups to a couple of small helpers,
and get rid of a bunch of local variables.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_ddi_buf_trans.c    | 94 +++++++------------
 1 file changed, 36 insertions(+), 58 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index 78cd8f77b49d..4ecbfa625891 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -1032,6 +1032,21 @@ bool is_hobl_buf_trans(const struct intel_ddi_buf_trans *table)
 	return table == &tgl_combo_phy_trans_edp_hbr2_hobl;
 }
 
+static bool use_edp_hobl(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+
+	return i915->vbt.edp.hobl && !intel_dp->hobl_failed;
+}
+
+static bool use_edp_low_vswing(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+
+	return dev_priv->vbt.edp.low_vswing;
+}
+
 static const struct intel_ddi_buf_trans *
 intel_get_buf_trans(const struct intel_ddi_buf_trans *trans, int *num_entries)
 {
@@ -1057,14 +1072,12 @@ bdw_get_buf_trans(struct intel_encoder *encoder,
 		  const struct intel_crtc_state *crtc_state,
 		  int *n_entries)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_ANALOG))
 		return intel_get_buf_trans(&bdw_trans_fdi, n_entries);
 	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
 		return intel_get_buf_trans(&bdw_trans_hdmi, n_entries);
 	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP) &&
-		 i915->vbt.edp.low_vswing)
+		 use_edp_low_vswing(encoder))
 		return intel_get_buf_trans(&bdw_trans_edp, n_entries);
 	else
 		return intel_get_buf_trans(&bdw_trans_dp, n_entries);
@@ -1094,12 +1107,10 @@ skl_y_get_buf_trans(struct intel_encoder *encoder,
 		    const struct intel_crtc_state *crtc_state,
 		    int *n_entries)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
 		return intel_get_buf_trans(&skl_y_trans_hdmi, n_entries);
 	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP) &&
-		 i915->vbt.edp.low_vswing)
+		 use_edp_low_vswing(encoder))
 		return _skl_get_buf_trans_dp(encoder, &skl_y_trans_edp, n_entries);
 	else
 		return _skl_get_buf_trans_dp(encoder, &skl_y_trans_dp, n_entries);
@@ -1110,12 +1121,10 @@ skl_u_get_buf_trans(struct intel_encoder *encoder,
 		    const struct intel_crtc_state *crtc_state,
 		    int *n_entries)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
 		return intel_get_buf_trans(&skl_trans_hdmi, n_entries);
 	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP) &&
-		 i915->vbt.edp.low_vswing)
+		 use_edp_low_vswing(encoder))
 		return _skl_get_buf_trans_dp(encoder, &skl_u_trans_edp, n_entries);
 	else
 		return _skl_get_buf_trans_dp(encoder, &skl_u_trans_dp, n_entries);
@@ -1126,12 +1135,10 @@ skl_get_buf_trans(struct intel_encoder *encoder,
 		  const struct intel_crtc_state *crtc_state,
 		  int *n_entries)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
 		return intel_get_buf_trans(&skl_trans_hdmi, n_entries);
 	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP) &&
-		 i915->vbt.edp.low_vswing)
+		 use_edp_low_vswing(encoder))
 		return _skl_get_buf_trans_dp(encoder, &skl_trans_edp, n_entries);
 	else
 		return _skl_get_buf_trans_dp(encoder, &skl_trans_dp, n_entries);
@@ -1142,12 +1149,10 @@ kbl_y_get_buf_trans(struct intel_encoder *encoder,
 		    const struct intel_crtc_state *crtc_state,
 		    int *n_entries)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
 		return intel_get_buf_trans(&skl_y_trans_hdmi, n_entries);
 	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP) &&
-		 i915->vbt.edp.low_vswing)
+		 use_edp_low_vswing(encoder))
 		return _skl_get_buf_trans_dp(encoder, &skl_y_trans_edp, n_entries);
 	else
 		return _skl_get_buf_trans_dp(encoder, &kbl_y_trans_dp, n_entries);
@@ -1158,12 +1163,10 @@ kbl_u_get_buf_trans(struct intel_encoder *encoder,
 		    const struct intel_crtc_state *crtc_state,
 		    int *n_entries)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
 		return intel_get_buf_trans(&skl_trans_hdmi, n_entries);
 	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP) &&
-		 i915->vbt.edp.low_vswing)
+		 use_edp_low_vswing(encoder))
 		return _skl_get_buf_trans_dp(encoder, &skl_u_trans_edp, n_entries);
 	else
 		return _skl_get_buf_trans_dp(encoder, &kbl_u_trans_dp, n_entries);
@@ -1174,12 +1177,10 @@ kbl_get_buf_trans(struct intel_encoder *encoder,
 		  const struct intel_crtc_state *crtc_state,
 		  int *n_entries)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
 		return intel_get_buf_trans(&skl_trans_hdmi, n_entries);
 	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP) &&
-		 i915->vbt.edp.low_vswing)
+		 use_edp_low_vswing(encoder))
 		return _skl_get_buf_trans_dp(encoder, &skl_trans_edp, n_entries);
 	else
 		return _skl_get_buf_trans_dp(encoder, &kbl_trans_dp, n_entries);
@@ -1190,12 +1191,10 @@ bxt_get_buf_trans(struct intel_encoder *encoder,
 		  const struct intel_crtc_state *crtc_state,
 		  int *n_entries)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
 		return intel_get_buf_trans(&bxt_trans_hdmi, n_entries);
 	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP) &&
-		 i915->vbt.edp.low_vswing)
+		 use_edp_low_vswing(encoder))
 		return intel_get_buf_trans(&bxt_trans_edp, n_entries);
 	else
 		return intel_get_buf_trans(&bxt_trans_dp, n_entries);
@@ -1215,12 +1214,10 @@ icl_get_combo_buf_trans_edp(struct intel_encoder *encoder,
 			    const struct intel_crtc_state *crtc_state,
 			    int *n_entries)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-
 	if (crtc_state->port_clock > 540000) {
 		return intel_get_buf_trans(&icl_combo_phy_trans_dp_hbr2_edp_hbr3,
 					   n_entries);
-	} else if (dev_priv->vbt.edp.low_vswing) {
+	} else if (use_edp_low_vswing(encoder)) {
 		return intel_get_buf_trans(&icl_combo_phy_trans_edp_hbr2,
 					   n_entries);
 	}
@@ -1282,12 +1279,10 @@ ehl_get_combo_buf_trans(struct intel_encoder *encoder,
 			const struct intel_crtc_state *crtc_state,
 			int *n_entries)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
 		return intel_get_buf_trans(&icl_combo_phy_trans_hdmi, n_entries);
 	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP) &&
-		 dev_priv->vbt.edp.low_vswing)
+		 use_edp_low_vswing(encoder))
 		return ehl_get_combo_buf_trans_edp(encoder, crtc_state, n_entries);
 	else
 		return intel_get_buf_trans(&ehl_combo_phy_trans_dp, n_entries);
@@ -1309,12 +1304,10 @@ jsl_get_combo_buf_trans(struct intel_encoder *encoder,
 			const struct intel_crtc_state *crtc_state,
 			int *n_entries)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
 		return intel_get_buf_trans(&icl_combo_phy_trans_hdmi, n_entries);
 	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP) &&
-		 dev_priv->vbt.edp.low_vswing)
+		 use_edp_low_vswing(encoder))
 		return jsl_get_combo_buf_trans_edp(encoder, crtc_state, n_entries);
 	else
 		return intel_get_buf_trans(&icl_combo_phy_trans_dp_hbr2_edp_hbr3, n_entries);
@@ -1346,16 +1339,13 @@ tgl_get_combo_buf_trans_edp(struct intel_encoder *encoder,
 			    const struct intel_crtc_state *crtc_state,
 			    int *n_entries)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
-
 	if (crtc_state->port_clock > 540000) {
 		return intel_get_buf_trans(&icl_combo_phy_trans_dp_hbr2_edp_hbr3,
 					   n_entries);
-	} else if (dev_priv->vbt.edp.hobl && !intel_dp->hobl_failed) {
+	} else if (use_edp_hobl(encoder)) {
 		return intel_get_buf_trans(&tgl_combo_phy_trans_edp_hbr2_hobl,
 					   n_entries);
-	} else if (dev_priv->vbt.edp.low_vswing) {
+	} else if (use_edp_low_vswing(encoder)) {
 		return intel_get_buf_trans(&icl_combo_phy_trans_edp_hbr2,
 					   n_entries);
 	}
@@ -1394,16 +1384,13 @@ dg1_get_combo_buf_trans_edp(struct intel_encoder *encoder,
 			    const struct intel_crtc_state *crtc_state,
 			    int *n_entries)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
-
 	if (crtc_state->port_clock > 540000)
 		return intel_get_buf_trans(&icl_combo_phy_trans_dp_hbr2_edp_hbr3,
 					   n_entries);
-	else if (dev_priv->vbt.edp.hobl && !intel_dp->hobl_failed)
+	else if (use_edp_hobl(encoder))
 		return intel_get_buf_trans(&tgl_combo_phy_trans_edp_hbr2_hobl,
 					   n_entries);
-	else if (dev_priv->vbt.edp.low_vswing)
+	else if (use_edp_low_vswing(encoder))
 		return intel_get_buf_trans(&icl_combo_phy_trans_edp_hbr2,
 					   n_entries);
 	else
@@ -1439,16 +1426,13 @@ rkl_get_combo_buf_trans_edp(struct intel_encoder *encoder,
 			    const struct intel_crtc_state *crtc_state,
 			    int *n_entries)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
-
 	if (crtc_state->port_clock > 540000) {
 		return intel_get_buf_trans(&icl_combo_phy_trans_dp_hbr2_edp_hbr3,
 					   n_entries);
-	} else if (dev_priv->vbt.edp.hobl && !intel_dp->hobl_failed) {
+	} else if (use_edp_hobl(encoder)) {
 		return intel_get_buf_trans(&tgl_combo_phy_trans_edp_hbr2_hobl,
 					   n_entries);
-	} else if (dev_priv->vbt.edp.low_vswing) {
+	} else if (use_edp_low_vswing(encoder)) {
 		return intel_get_buf_trans(&icl_combo_phy_trans_edp_hbr2,
 					   n_entries);
 	}
@@ -1485,14 +1469,11 @@ adls_get_combo_buf_trans_edp(struct intel_encoder *encoder,
 			     const struct intel_crtc_state *crtc_state,
 			     int *n_entries)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
-
 	if (crtc_state->port_clock > 540000)
 		return intel_get_buf_trans(&adls_combo_phy_trans_edp_hbr3, n_entries);
-	else if (i915->vbt.edp.hobl && !intel_dp->hobl_failed)
+	else if (use_edp_hobl(encoder))
 		return intel_get_buf_trans(&tgl_combo_phy_trans_edp_hbr2_hobl, n_entries);
-	else if (i915->vbt.edp.low_vswing)
+	else if (use_edp_low_vswing(encoder))
 		return intel_get_buf_trans(&adls_combo_phy_trans_edp_hbr2, n_entries);
 	else
 		return adls_get_combo_buf_trans_dp(encoder, crtc_state, n_entries);
@@ -1527,16 +1508,13 @@ adlp_get_combo_buf_trans_edp(struct intel_encoder *encoder,
 			     const struct intel_crtc_state *crtc_state,
 			     int *n_entries)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
-
 	if (crtc_state->port_clock > 540000) {
 		return intel_get_buf_trans(&adlp_combo_phy_trans_edp_hbr3,
 					   n_entries);
-	} else if (dev_priv->vbt.edp.hobl && !intel_dp->hobl_failed) {
+	} else if (use_edp_hobl(encoder)) {
 		return intel_get_buf_trans(&tgl_combo_phy_trans_edp_hbr2_hobl,
 					   n_entries);
-	} else if (dev_priv->vbt.edp.low_vswing) {
+	} else if (use_edp_low_vswing(encoder)) {
 		return intel_get_buf_trans(&adlp_combo_phy_trans_edp_up_to_hbr2,
 					   n_entries);
 	}
-- 
2.30.2

