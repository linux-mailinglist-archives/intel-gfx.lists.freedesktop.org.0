Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D63BD424844
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Oct 2021 22:50:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C42F06EE7E;
	Wed,  6 Oct 2021 20:50:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CE676EE7E
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Oct 2021 20:50:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10129"; a="213225823"
X-IronPort-AV: E=Sophos;i="5.85,352,1624345200"; d="scan'208";a="213225823"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2021 13:50:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,352,1624345200"; d="scan'208";a="439263428"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga006.jf.intel.com with SMTP; 06 Oct 2021 13:50:05 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 06 Oct 2021 23:50:04 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  6 Oct 2021 23:49:28 +0300
Message-Id: <20211006204937.30774-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211006204937.30774-1-ville.syrjala@linux.intel.com>
References: <20211006204937.30774-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/16] drm/i915: Stop using group access when
 progrmming icl combo phy TX
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

Program each TX lane individually so that we can start to use per-lane
drive settings.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 28 ++++++++++++++----------
 1 file changed, 16 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index d06c76694a08..aa789cabc55b 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -1068,14 +1068,16 @@ static void icl_ddi_combo_vswing_program(struct intel_encoder *encoder,
 	intel_de_write(dev_priv, ICL_PORT_TX_DW5_GRP(phy), val);
 
 	/* Program PORT_TX_DW2 */
-	val = intel_de_read(dev_priv, ICL_PORT_TX_DW2_LN(0, phy));
-	val &= ~(SWING_SEL_LOWER_MASK | SWING_SEL_UPPER_MASK |
-		 RCOMP_SCALAR_MASK);
-	val |= SWING_SEL_UPPER(trans->entries[level].icl.dw2_swing_sel);
-	val |= SWING_SEL_LOWER(trans->entries[level].icl.dw2_swing_sel);
-	/* Program Rcomp scalar for every table entry */
-	val |= RCOMP_SCALAR(0x98);
-	intel_de_write(dev_priv, ICL_PORT_TX_DW2_GRP(phy), val);
+	for (ln = 0; ln < 4; ln++) {
+		val = intel_de_read(dev_priv, ICL_PORT_TX_DW2_LN(ln, phy));
+		val &= ~(SWING_SEL_LOWER_MASK | SWING_SEL_UPPER_MASK |
+			 RCOMP_SCALAR_MASK);
+		val |= SWING_SEL_UPPER(trans->entries[level].icl.dw2_swing_sel);
+		val |= SWING_SEL_LOWER(trans->entries[level].icl.dw2_swing_sel);
+		/* Program Rcomp scalar for every table entry */
+		val |= RCOMP_SCALAR(0x98);
+		intel_de_write(dev_priv, ICL_PORT_TX_DW2_LN(ln, phy), val);
+	}
 
 	/* Program PORT_TX_DW4 */
 	/* We cannot write to GRP. It would overwrite individual loadgen. */
@@ -1090,10 +1092,12 @@ static void icl_ddi_combo_vswing_program(struct intel_encoder *encoder,
 	}
 
 	/* Program PORT_TX_DW7 */
-	val = intel_de_read(dev_priv, ICL_PORT_TX_DW7_LN(0, phy));
-	val &= ~N_SCALAR_MASK;
-	val |= N_SCALAR(trans->entries[level].icl.dw7_n_scalar);
-	intel_de_write(dev_priv, ICL_PORT_TX_DW7_GRP(phy), val);
+	for (ln = 0; ln < 4; ln++) {
+		val = intel_de_read(dev_priv, ICL_PORT_TX_DW7_LN(ln, phy));
+		val &= ~N_SCALAR_MASK;
+		val |= N_SCALAR(trans->entries[level].icl.dw7_n_scalar);
+		intel_de_write(dev_priv, ICL_PORT_TX_DW7_LN(ln, phy), val);
+	}
 }
 
 static void icl_combo_phy_set_signal_levels(struct intel_encoder *encoder,
-- 
2.32.0

