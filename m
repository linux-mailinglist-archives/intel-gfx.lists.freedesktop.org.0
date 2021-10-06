Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5996442484C
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Oct 2021 22:50:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DAD26EE86;
	Wed,  6 Oct 2021 20:50:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AACB76EE86
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Oct 2021 20:50:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10129"; a="225992406"
X-IronPort-AV: E=Sophos;i="5.85,352,1624345200"; d="scan'208";a="225992406"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2021 13:50:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,352,1624345200"; d="scan'208";a="624019920"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga001.fm.intel.com with SMTP; 06 Oct 2021 13:50:27 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 06 Oct 2021 23:50:26 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  6 Oct 2021 23:49:35 +0300
Message-Id: <20211006204937.30774-15-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211006204937.30774-1-ville.syrjala@linux.intel.com>
References: <20211006204937.30774-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 14/16] drm/i915: Use intel_de_rmw() for icl mg
 phy programming
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

Streamline the code by using intel_de_rmw().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 111 ++++++++---------------
 1 file changed, 39 insertions(+), 72 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 3c1b289df2c0..ce8c85701cff 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -1165,7 +1165,6 @@ static void icl_mg_phy_set_signal_levels(struct intel_encoder *encoder,
 	enum tc_port tc_port = intel_port_to_tc(dev_priv, encoder->port);
 	const struct intel_ddi_buf_trans *trans;
 	int n_entries, ln;
-	u32 val;
 
 	if (intel_tc_port_in_tbt_alt_mode(enc_to_dig_port(encoder)))
 		return;
@@ -1174,15 +1173,11 @@ static void icl_mg_phy_set_signal_levels(struct intel_encoder *encoder,
 	if (drm_WARN_ON_ONCE(&dev_priv->drm, !trans))
 		return;
 
-	/* Set MG_TX_LINK_PARAMS cri_use_fs32 to 0. */
 	for (ln = 0; ln < 2; ln++) {
-		val = intel_de_read(dev_priv, MG_TX1_LINK_PARAMS(ln, tc_port));
-		val &= ~CRI_USE_FS32;
-		intel_de_write(dev_priv, MG_TX1_LINK_PARAMS(ln, tc_port), val);
-
-		val = intel_de_read(dev_priv, MG_TX2_LINK_PARAMS(ln, tc_port));
-		val &= ~CRI_USE_FS32;
-		intel_de_write(dev_priv, MG_TX2_LINK_PARAMS(ln, tc_port), val);
+		intel_de_rmw(dev_priv, MG_TX1_LINK_PARAMS(ln, tc_port),
+			     CRI_USE_FS32, 0);
+		intel_de_rmw(dev_priv, MG_TX2_LINK_PARAMS(ln, tc_port),
+			     CRI_USE_FS32, 0);
 	}
 
 	/* Program MG_TX_SWINGCTRL with values from vswing table */
@@ -1191,19 +1186,15 @@ static void icl_mg_phy_set_signal_levels(struct intel_encoder *encoder,
 
 		level = intel_ddi_level(encoder, crtc_state, 2*ln+0);
 
-		val = intel_de_read(dev_priv, MG_TX1_SWINGCTRL(ln, tc_port));
-		val &= ~CRI_TXDEEMPH_OVERRIDE_17_12_MASK;
-		val |= CRI_TXDEEMPH_OVERRIDE_17_12(
-			trans->entries[level].mg.cri_txdeemph_override_17_12);
-		intel_de_write(dev_priv, MG_TX1_SWINGCTRL(ln, tc_port), val);
+		intel_de_rmw(dev_priv, MG_TX1_SWINGCTRL(ln, tc_port),
+			     CRI_TXDEEMPH_OVERRIDE_17_12_MASK,
+			     CRI_TXDEEMPH_OVERRIDE_17_12(trans->entries[level].mg.cri_txdeemph_override_17_12));
 
 		level = intel_ddi_level(encoder, crtc_state, 2*ln+1);
 
-		val = intel_de_read(dev_priv, MG_TX2_SWINGCTRL(ln, tc_port));
-		val &= ~CRI_TXDEEMPH_OVERRIDE_17_12_MASK;
-		val |= CRI_TXDEEMPH_OVERRIDE_17_12(
-			trans->entries[level].mg.cri_txdeemph_override_17_12);
-		intel_de_write(dev_priv, MG_TX2_SWINGCTRL(ln, tc_port), val);
+		intel_de_rmw(dev_priv, MG_TX2_SWINGCTRL(ln, tc_port),
+			     CRI_TXDEEMPH_OVERRIDE_17_12_MASK,
+			     CRI_TXDEEMPH_OVERRIDE_17_12(trans->entries[level].mg.cri_txdeemph_override_17_12));
 	}
 
 	/* Program MG_TX_DRVCTRL with values from vswing table */
@@ -1212,27 +1203,21 @@ static void icl_mg_phy_set_signal_levels(struct intel_encoder *encoder,
 
 		level = intel_ddi_level(encoder, crtc_state, 2*ln+0);
 
-		val = intel_de_read(dev_priv, MG_TX1_DRVCTRL(ln, tc_port));
-		val &= ~(CRI_TXDEEMPH_OVERRIDE_11_6_MASK |
-			 CRI_TXDEEMPH_OVERRIDE_5_0_MASK);
-		val |= CRI_TXDEEMPH_OVERRIDE_5_0(
-			trans->entries[level].mg.cri_txdeemph_override_5_0) |
-			CRI_TXDEEMPH_OVERRIDE_11_6(
-				trans->entries[level].mg.cri_txdeemph_override_11_6) |
-			CRI_TXDEEMPH_OVERRIDE_EN;
-		intel_de_write(dev_priv, MG_TX1_DRVCTRL(ln, tc_port), val);
+		intel_de_rmw(dev_priv, MG_TX1_DRVCTRL(ln, tc_port),
+			     CRI_TXDEEMPH_OVERRIDE_11_6_MASK |
+			     CRI_TXDEEMPH_OVERRIDE_5_0_MASK,
+			     CRI_TXDEEMPH_OVERRIDE_5_0(trans->entries[level].mg.cri_txdeemph_override_5_0) |
+			     CRI_TXDEEMPH_OVERRIDE_11_6(trans->entries[level].mg.cri_txdeemph_override_11_6) |
+			     CRI_TXDEEMPH_OVERRIDE_EN);
 
 		level = intel_ddi_level(encoder, crtc_state, 2*ln+1);
 
-		val = intel_de_read(dev_priv, MG_TX2_DRVCTRL(ln, tc_port));
-		val &= ~(CRI_TXDEEMPH_OVERRIDE_11_6_MASK |
-			 CRI_TXDEEMPH_OVERRIDE_5_0_MASK);
-		val |= CRI_TXDEEMPH_OVERRIDE_5_0(
-			trans->entries[level].mg.cri_txdeemph_override_5_0) |
-			CRI_TXDEEMPH_OVERRIDE_11_6(
-				trans->entries[level].mg.cri_txdeemph_override_11_6) |
-			CRI_TXDEEMPH_OVERRIDE_EN;
-		intel_de_write(dev_priv, MG_TX2_DRVCTRL(ln, tc_port), val);
+		intel_de_rmw(dev_priv, MG_TX2_DRVCTRL(ln, tc_port),
+			     CRI_TXDEEMPH_OVERRIDE_11_6_MASK |
+			     CRI_TXDEEMPH_OVERRIDE_5_0_MASK,
+			     CRI_TXDEEMPH_OVERRIDE_5_0(trans->entries[level].mg.cri_txdeemph_override_5_0) |
+			     CRI_TXDEEMPH_OVERRIDE_11_6(trans->entries[level].mg.cri_txdeemph_override_11_6) |
+			     CRI_TXDEEMPH_OVERRIDE_EN);
 
 		/* FIXME: Program CRI_LOADGEN_SEL after the spec is updated */
 	}
@@ -1243,50 +1228,32 @@ static void icl_mg_phy_set_signal_levels(struct intel_encoder *encoder,
 	 * values from table for which TX1 and TX2 enabled.
 	 */
 	for (ln = 0; ln < 2; ln++) {
-		val = intel_de_read(dev_priv, MG_CLKHUB(ln, tc_port));
-		if (crtc_state->port_clock < 300000)
-			val |= CFG_LOW_RATE_LKREN_EN;
-		else
-			val &= ~CFG_LOW_RATE_LKREN_EN;
-		intel_de_write(dev_priv, MG_CLKHUB(ln, tc_port), val);
+		intel_de_rmw(dev_priv, MG_CLKHUB(ln, tc_port),
+			     CFG_LOW_RATE_LKREN_EN,
+			     crtc_state->port_clock < 300000 ? CFG_LOW_RATE_LKREN_EN : 0);
 	}
 
 	/* Program the MG_TX_DCC<LN, port being used> based on the link frequency */
 	for (ln = 0; ln < 2; ln++) {
-		val = intel_de_read(dev_priv, MG_TX1_DCC(ln, tc_port));
-		val &= ~CFG_AMI_CK_DIV_OVERRIDE_VAL_MASK;
-		if (crtc_state->port_clock <= 500000) {
-			val &= ~CFG_AMI_CK_DIV_OVERRIDE_EN;
-		} else {
-			val |= CFG_AMI_CK_DIV_OVERRIDE_EN |
-				CFG_AMI_CK_DIV_OVERRIDE_VAL(1);
-		}
-		intel_de_write(dev_priv, MG_TX1_DCC(ln, tc_port), val);
+		intel_de_rmw(dev_priv, MG_TX1_DCC(ln, tc_port),
+			     CFG_AMI_CK_DIV_OVERRIDE_VAL_MASK |
+			     CFG_AMI_CK_DIV_OVERRIDE_EN,
+			     crtc_state->port_clock > 500000 ?
+			     CFG_AMI_CK_DIV_OVERRIDE_EN | CFG_AMI_CK_DIV_OVERRIDE_VAL(1) : 0);
 
-		val = intel_de_read(dev_priv, MG_TX2_DCC(ln, tc_port));
-		val &= ~CFG_AMI_CK_DIV_OVERRIDE_VAL_MASK;
-		if (crtc_state->port_clock <= 500000) {
-			val &= ~CFG_AMI_CK_DIV_OVERRIDE_EN;
-		} else {
-			val |= CFG_AMI_CK_DIV_OVERRIDE_EN |
-				CFG_AMI_CK_DIV_OVERRIDE_VAL(1);
-		}
-		intel_de_write(dev_priv, MG_TX2_DCC(ln, tc_port), val);
+		intel_de_rmw(dev_priv, MG_TX2_DCC(ln, tc_port),
+			     CFG_AMI_CK_DIV_OVERRIDE_VAL_MASK |
+			     CFG_AMI_CK_DIV_OVERRIDE_EN,
+			     crtc_state->port_clock > 500000 ?
+			     CFG_AMI_CK_DIV_OVERRIDE_EN | CFG_AMI_CK_DIV_OVERRIDE_VAL(1) : 0);
 	}
 
 	/* Program MG_TX_PISO_READLOAD with values from vswing table */
 	for (ln = 0; ln < 2; ln++) {
-		val = intel_de_read(dev_priv,
-				    MG_TX1_PISO_READLOAD(ln, tc_port));
-		val |= CRI_CALCINIT;
-		intel_de_write(dev_priv, MG_TX1_PISO_READLOAD(ln, tc_port),
-			       val);
-
-		val = intel_de_read(dev_priv,
-				    MG_TX2_PISO_READLOAD(ln, tc_port));
-		val |= CRI_CALCINIT;
-		intel_de_write(dev_priv, MG_TX2_PISO_READLOAD(ln, tc_port),
-			       val);
+		intel_de_rmw(dev_priv, MG_TX1_PISO_READLOAD(ln, tc_port),
+			     0, CRI_CALCINIT);
+		intel_de_rmw(dev_priv, MG_TX2_PISO_READLOAD(ln, tc_port),
+			     0, CRI_CALCINIT);
 	}
 }
 
-- 
2.32.0

