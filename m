Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7871642484D
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Oct 2021 22:50:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97F056EE77;
	Wed,  6 Oct 2021 20:50:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 475DC6EE77
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Oct 2021 20:50:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10129"; a="225992418"
X-IronPort-AV: E=Sophos;i="5.85,352,1624345200"; d="scan'208";a="225992418"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2021 13:50:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,352,1624345200"; d="scan'208";a="488657339"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 06 Oct 2021 13:50:30 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 06 Oct 2021 23:50:29 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  6 Oct 2021 23:49:36 +0300
Message-Id: <20211006204937.30774-16-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211006204937.30774-1-ville.syrjala@linux.intel.com>
References: <20211006204937.30774-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 15/16] drm/i915: Use intel_de_rmw() for icl
 combo phy programming
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
 drivers/gpu/drm/i915/display/intel_ddi.c | 44 ++++++++++--------------
 1 file changed, 18 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index ce8c85701cff..c7c86b497ebc 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -1070,14 +1070,11 @@ static void icl_ddi_combo_vswing_program(struct intel_encoder *encoder,
 	for (ln = 0; ln < 4; ln++) {
 		int level = intel_ddi_level(encoder, crtc_state, ln);
 
-		val = intel_de_read(dev_priv, ICL_PORT_TX_DW2_LN(ln, phy));
-		val &= ~(SWING_SEL_LOWER_MASK | SWING_SEL_UPPER_MASK |
-			 RCOMP_SCALAR_MASK);
-		val |= SWING_SEL_UPPER(trans->entries[level].icl.dw2_swing_sel);
-		val |= SWING_SEL_LOWER(trans->entries[level].icl.dw2_swing_sel);
-		/* Program Rcomp scalar for every table entry */
-		val |= RCOMP_SCALAR(0x98);
-		intel_de_write(dev_priv, ICL_PORT_TX_DW2_LN(ln, phy), val);
+		intel_de_rmw(dev_priv, ICL_PORT_TX_DW2_LN(ln, phy),
+			     SWING_SEL_UPPER_MASK | SWING_SEL_LOWER_MASK | RCOMP_SCALAR_MASK,
+			     SWING_SEL_UPPER(trans->entries[level].icl.dw2_swing_sel) |
+			     SWING_SEL_LOWER(trans->entries[level].icl.dw2_swing_sel) |
+			     RCOMP_SCALAR(0x98));
 	}
 
 	/* Program PORT_TX_DW4 */
@@ -1085,23 +1082,20 @@ static void icl_ddi_combo_vswing_program(struct intel_encoder *encoder,
 	for (ln = 0; ln < 4; ln++) {
 		int level = intel_ddi_level(encoder, crtc_state, ln);
 
-		val = intel_de_read(dev_priv, ICL_PORT_TX_DW4_LN(ln, phy));
-		val &= ~(POST_CURSOR_1_MASK | POST_CURSOR_2_MASK |
-			 CURSOR_COEFF_MASK);
-		val |= POST_CURSOR_1(trans->entries[level].icl.dw4_post_cursor_1);
-		val |= POST_CURSOR_2(trans->entries[level].icl.dw4_post_cursor_2);
-		val |= CURSOR_COEFF(trans->entries[level].icl.dw4_cursor_coeff);
-		intel_de_write(dev_priv, ICL_PORT_TX_DW4_LN(ln, phy), val);
+		intel_de_rmw(dev_priv, ICL_PORT_TX_DW4_LN(ln, phy),
+			     POST_CURSOR_1_MASK | POST_CURSOR_2_MASK | CURSOR_COEFF_MASK,
+			     POST_CURSOR_1(trans->entries[level].icl.dw4_post_cursor_1) |
+			     POST_CURSOR_2(trans->entries[level].icl.dw4_post_cursor_2) |
+			     CURSOR_COEFF(trans->entries[level].icl.dw4_cursor_coeff));
 	}
 
 	/* Program PORT_TX_DW7 */
 	for (ln = 0; ln < 4; ln++) {
 		int level = intel_ddi_level(encoder, crtc_state, ln);
 
-		val = intel_de_read(dev_priv, ICL_PORT_TX_DW7_LN(ln, phy));
-		val &= ~N_SCALAR_MASK;
-		val |= N_SCALAR(trans->entries[level].icl.dw7_n_scalar);
-		intel_de_write(dev_priv, ICL_PORT_TX_DW7_LN(ln, phy), val);
+		intel_de_rmw(dev_priv, ICL_PORT_TX_DW7_LN(ln, phy),
+			     N_SCALAR_MASK,
+			     N_SCALAR(trans->entries[level].icl.dw7_n_scalar));
 	}
 }
 
@@ -1133,16 +1127,14 @@ static void icl_combo_phy_set_signal_levels(struct intel_encoder *encoder,
 	 * > 6 GHz (LN0=0, LN1=0, LN2=0, LN3=0)
 	 */
 	for (ln = 0; ln < 4; ln++) {
-		val = intel_de_read(dev_priv, ICL_PORT_TX_DW4_LN(ln, phy));
-		val &= ~LOADGEN_SELECT;
-		val |= icl_combo_phy_loadgen_select(crtc_state, ln);
-		intel_de_write(dev_priv, ICL_PORT_TX_DW4_LN(ln, phy), val);
+		intel_de_rmw(dev_priv, ICL_PORT_TX_DW4_LN(ln, phy),
+			     LOADGEN_SELECT,
+			     icl_combo_phy_loadgen_select(crtc_state, ln));
 	}
 
 	/* 3. Set PORT_CL_DW5 SUS Clock Config to 11b */
-	val = intel_de_read(dev_priv, ICL_PORT_CL_DW5(phy));
-	val |= SUS_CLOCK_CONFIG;
-	intel_de_write(dev_priv, ICL_PORT_CL_DW5(phy), val);
+	intel_de_rmw(dev_priv, ICL_PORT_CL_DW5(phy),
+		     0, SUS_CLOCK_CONFIG);
 
 	/* 4. Clear training enable to change swing values */
 	val = intel_de_read(dev_priv, ICL_PORT_TX_DW5_LN(0, phy));
-- 
2.32.0

