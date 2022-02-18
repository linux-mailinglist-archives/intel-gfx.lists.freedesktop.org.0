Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 01E284BB930
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Feb 2022 13:31:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2B2110EC4B;
	Fri, 18 Feb 2022 12:31:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D11510E1C2
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Feb 2022 12:31:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645187514; x=1676723514;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=31PHY8UgNQD1DKSG8+WPRRgW/AjntOi5XLILiP3BjoM=;
 b=JFFofNC/3yuzA+61OYFKbnz4xwhjGvn5mqZ7NTnHaU7Pv3ZzgJlhIx25
 t/0UJX6fiQwkjJ0uIMdDLl6c7jKG/twvlfaLOVaiKiNhiuFM977pTpCJr
 Q2eJYRkllkCobP6ZVNTCH8F8wwAXzVSqWbb3K7J4IrYKgzU7/G69p2bIX
 e1ifhFBoRSfGEsNfgyIatqZsmqRsJxQ+wRVnF4lWIx36KgiIhs3eDy0N+
 LooF3nuXqKBxyoG7JF+05gjDdAApgFIrpMktcUIClZ6EuEoo1/cGpyGCr
 4bvFcY+TCDy8QY1adDy469LNOM0I1MBA+Pa9cPNyaF6f/6ru3Zp/RDwpo g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10261"; a="311859755"
X-IronPort-AV: E=Sophos;i="5.88,378,1635231600"; d="scan'208";a="311859755"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2022 04:31:53 -0800
X-IronPort-AV: E=Sophos;i="5.88,378,1635231600"; d="scan'208";a="637729355"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2022 04:31:52 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Feb 2022 14:31:49 +0200
Message-Id: <20220218123149.768485-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20220218122611.767974-1-imre.deak@intel.com>
References: <20220218122611.767974-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/adlp: Add TypeC PHY
 TBT->DP-alt/legacy mode switch workaround
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

Add display workaround # 1309179469 , which fixes a PHY hang when
switching from TBT mode to DP-alt/legacy mode. The workaround also
requires an IFWI/PHY firmware change, before that this change has no
effect (the DKL_PCS_DW5/SOFTRESET flag is always cleared).

HSDES: 18018237866
HSDES: 16014473319

v2: Add the WA comment and make the WA func name more accurate.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 20 +++++++++++++++++++-
 drivers/gpu/drm/i915/i915_reg.h          |  6 ++++++
 2 files changed, 25 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 9dee12986991c..e6e26e4cd87d7 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3101,10 +3101,24 @@ intel_ddi_pre_pll_enable(struct intel_atomic_state *state,
 						crtc_state->lane_lat_optim_mask);
 }
 
+/* Display WA #1309179469: adl-p */
+static void adlp_tbt_to_dp_alt_legacy_switch_wa(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	enum tc_port tc_port = intel_port_to_tc(i915, encoder->port);
+	int ln;
+
+	for (ln = 0; ln < 2; ln++) {
+		intel_de_write(i915, HIP_INDEX_REG(tc_port), HIP_INDEX_VAL(tc_port, ln));
+		intel_de_rmw(i915, DKL_PCS_DW5(tc_port), DKL_PCS_DW5_CORE_SOFTRESET, 0);
+	}
+}
+
 static void intel_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
 					   const struct intel_crtc_state *crtc_state)
 {
-	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
+	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
+	struct intel_encoder *encoder = &dig_port->base;
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	enum port port = encoder->port;
 	u32 dp_tp_ctl, ddi_buf_ctl;
@@ -3140,6 +3154,10 @@ static void intel_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
 	intel_de_write(dev_priv, dp_tp_ctl_reg(encoder, crtc_state), dp_tp_ctl);
 	intel_de_posting_read(dev_priv, dp_tp_ctl_reg(encoder, crtc_state));
 
+	if (IS_ALDERLAKE_P(dev_priv) &&
+	    (intel_tc_port_in_dp_alt_mode(dig_port) || intel_tc_port_in_legacy_mode(dig_port)))
+		adlp_tbt_to_dp_alt_legacy_switch_wa(encoder);
+
 	intel_dp->DP |= DDI_BUF_CTL_ENABLE;
 	intel_de_write(dev_priv, DDI_BUF_CTL(port), intel_dp->DP);
 	intel_de_posting_read(dev_priv, DDI_BUF_CTL(port));
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 26b496fa31972..8abbdc62b981f 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -7907,6 +7907,12 @@ enum skl_power_gate {
 #define _DKL_PHY6_BASE			0x16D000
 
 /* DEKEL PHY MMIO Address = Phy base + (internal address & ~index_mask) */
+#define _DKL_PCS_DW5			0x14
+#define DKL_PCS_DW5(tc_port)		_MMIO(_PORT(tc_port, _DKL_PHY1_BASE, \
+						    _DKL_PHY2_BASE) + \
+						    _DKL_PCS_DW5)
+#define   DKL_PCS_DW5_CORE_SOFTRESET	REG_BIT(11)
+
 #define _DKL_PLL_DIV0			0x200
 #define   DKL_PLL_DIV0_INTEG_COEFF(x)	((x) << 16)
 #define   DKL_PLL_DIV0_INTEG_COEFF_MASK	(0x1F << 16)
-- 
2.27.0

