Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C9B642483D
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Oct 2021 22:49:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA1186EE77;
	Wed,  6 Oct 2021 20:49:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6C5F6EE77
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Oct 2021 20:49:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10129"; a="249385718"
X-IronPort-AV: E=Sophos;i="5.85,352,1624345200"; d="scan'208";a="249385718"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2021 13:49:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,352,1624345200"; d="scan'208";a="524389741"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 06 Oct 2021 13:49:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 06 Oct 2021 23:49:43 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  6 Oct 2021 23:49:22 +0300
Message-Id: <20211006204937.30774-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211006204937.30774-1-ville.syrjala@linux.intel.com>
References: <20211006204937.30774-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 01/16] drm/i915: Remove pointless extra
 namespace from dkl/snps buf trans structs
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

The struct itself already has sufficient namespace. No need to
duplicate it in the members.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c           |  6 +++---
 drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h | 12 ++++++------
 drivers/gpu/drm/i915/display/intel_snps_phy.c      |  6 +++---
 3 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 3f7bbeb3e3cd..d85d731e37fb 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -1285,9 +1285,9 @@ static void tgl_dkl_phy_set_signal_levels(struct intel_encoder *encoder,
 	dpcnt_mask = (DKL_TX_PRESHOOT_COEFF_MASK |
 		      DKL_TX_DE_EMPAHSIS_COEFF_MASK |
 		      DKL_TX_VSWING_CONTROL_MASK);
-	dpcnt_val = DKL_TX_VSWING_CONTROL(trans->entries[level].dkl.dkl_vswing_control);
-	dpcnt_val |= DKL_TX_DE_EMPHASIS_COEFF(trans->entries[level].dkl.dkl_de_emphasis_control);
-	dpcnt_val |= DKL_TX_PRESHOOT_COEFF(trans->entries[level].dkl.dkl_preshoot_control);
+	dpcnt_val = DKL_TX_VSWING_CONTROL(trans->entries[level].dkl.vswing);
+	dpcnt_val |= DKL_TX_DE_EMPHASIS_COEFF(trans->entries[level].dkl.de_emphasis);
+	dpcnt_val |= DKL_TX_PRESHOOT_COEFF(trans->entries[level].dkl.preshoot);
 
 	for (ln = 0; ln < 2; ln++) {
 		intel_de_write(dev_priv, HIP_INDEX_REG(tc_port),
diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
index 6cdb8e9073c7..82fdc5ecd9de 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
@@ -40,15 +40,15 @@ struct icl_mg_phy_ddi_buf_trans {
 };
 
 struct tgl_dkl_phy_ddi_buf_trans {
-	u32 dkl_vswing_control;
-	u32 dkl_preshoot_control;
-	u32 dkl_de_emphasis_control;
+	u32 vswing;
+	u32 preshoot;
+	u32 de_emphasis;
 };
 
 struct dg2_snps_phy_buf_trans {
-	u8 snps_vswing;
-	u8 snps_pre_cursor;
-	u8 snps_post_cursor;
+	u8 vswing;
+	u8 pre_cursor;
+	u8 post_cursor;
 };
 
 union intel_ddi_buf_trans_entry {
diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
index b18f08c851dc..5e20f340730f 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
@@ -68,9 +68,9 @@ void intel_snps_phy_set_signal_levels(struct intel_encoder *encoder,
 	for (ln = 0; ln < 4; ln++) {
 		u32 val = 0;
 
-		val |= REG_FIELD_PREP(SNPS_PHY_TX_EQ_MAIN, trans->entries[level].snps.snps_vswing);
-		val |= REG_FIELD_PREP(SNPS_PHY_TX_EQ_PRE, trans->entries[level].snps.snps_pre_cursor);
-		val |= REG_FIELD_PREP(SNPS_PHY_TX_EQ_POST, trans->entries[level].snps.snps_post_cursor);
+		val |= REG_FIELD_PREP(SNPS_PHY_TX_EQ_MAIN, trans->entries[level].snps.vswing);
+		val |= REG_FIELD_PREP(SNPS_PHY_TX_EQ_PRE, trans->entries[level].snps.pre_cursor);
+		val |= REG_FIELD_PREP(SNPS_PHY_TX_EQ_POST, trans->entries[level].snps.post_cursor);
 
 		intel_de_write(dev_priv, SNPS_PHY_TX_EQ(ln, phy), val);
 	}
-- 
2.32.0

