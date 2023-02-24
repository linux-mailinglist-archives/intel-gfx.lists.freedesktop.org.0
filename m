Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EC5F6A19DD
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Feb 2023 11:19:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2496A10E893;
	Fri, 24 Feb 2023 10:19:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 353F410E878
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Feb 2023 10:19:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677233966; x=1708769966;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sQl/7Em5aaFH7JDstWw2UmPLOnNtNK1Q47ADMZWLgbc=;
 b=alSOFNsHoc8IszFOLEXWFNNudp0ayozI96gSRUQ9gZID0khL7Q99JPB+
 s2zlUMjTcBu5cruPFohSjizbOth06UJw12f0t9Tc8p9wjISYW5OsXqqkV
 6NAK4G+/DYvo2hql+RsRsV7be7FBTwjADxiauzGht7V25fMKT91vq7hz/
 kExqSvXo8rb8WWtWrBY17fP3/F8FFS3gkddo9Xx4Rm6Dug5dwflmPSTVg
 yhuEm+Xj31BoUwqGcGpJnNnaob747sLCSKFR0qm8KamT4AowwRELPjfHO
 rNEheAqsnwYmn/T2bApaYMXh6sfLVZWsKUq/TrxrNeyMTUx3dArgAsrWv g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="332129877"
X-IronPort-AV: E=Sophos;i="5.97,324,1669104000"; d="scan'208";a="332129877"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2023 02:19:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="672846591"
X-IronPort-AV: E=Sophos;i="5.97,324,1669104000"; d="scan'208";a="672846591"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga002.jf.intel.com with ESMTP; 24 Feb 2023 02:19:24 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Feb 2023 12:13:45 +0200
Message-Id: <20230224101356.2390838-12-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230224101356.2390838-1-mika.kahola@intel.com>
References: <20230224101356.2390838-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 11/22] drm/i915/mtl: C20 port clock
 calculation
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

Calculate port clock with C20 phy.

v2: Initialize parameters

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 64 +++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_cx0_phy.h |  2 +
 drivers/gpu/drm/i915/display/intel_ddi.c     |  4 +-
 3 files changed, 65 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index bc6913a7444a..60db8d1b7589 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -1626,6 +1626,18 @@ intel_c10_mpllb_tables_get(struct intel_crtc_state *crtc_state,
 	return NULL;
 }
 
+static const struct intel_c20pll_state * const *
+intel_c20_pll_tables_get(struct intel_crtc_state *crtc_state,
+			 struct intel_encoder *encoder)
+{
+	if (intel_crtc_has_dp_encoder(crtc_state)) {
+		return mtl_c20_dp_tables;
+	}
+
+	MISSING_CASE(encoder->type);
+	return NULL;
+}
+
 static int intel_c10mpllb_calc_state(struct intel_crtc_state *crtc_state,
 				     struct intel_encoder *encoder)
 {
@@ -1657,15 +1669,36 @@ static int intel_c10mpllb_calc_state(struct intel_crtc_state *crtc_state,
 	return -EINVAL;
 }
 
+static int intel_c20pll_calc_state(struct intel_crtc_state *crtc_state,
+				   struct intel_encoder *encoder)
+{
+	const struct intel_c20pll_state * const *tables;
+	int i;
+
+	tables = intel_c20_pll_tables_get(crtc_state, encoder);
+	if (!tables)
+		return -EINVAL;
+
+	for (i = 0; tables[i]; i++) {
+		if (crtc_state->port_clock <= tables[i]->clock) {
+			crtc_state->cx0pll_state.c20pll_state = *tables[i];
+			return 0;
+		}
+	}
+
+	return -EINVAL;
+}
+
 int intel_cx0mpllb_calc_state(struct intel_crtc_state *crtc_state,
 			      struct intel_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	enum phy phy = intel_port_to_phy(i915, encoder->port);
 
-	drm_WARN_ON(&i915->drm, !intel_is_c10phy(i915, phy));
-
-	return intel_c10mpllb_calc_state(crtc_state, encoder);
+	if (intel_is_c10phy(i915, phy))
+		return intel_c10mpllb_calc_state(crtc_state, encoder);
+	else
+		return intel_c20pll_calc_state(crtc_state, encoder);
 }
 
 void intel_c10mpllb_readout_hw_state(struct intel_encoder *encoder,
@@ -2111,6 +2144,31 @@ int intel_c10mpllb_calc_port_clock(struct intel_encoder *encoder,
 	return tmpclk;
 }
 
+int intel_c20pll_calc_port_clock(struct intel_encoder *encoder,
+				 const struct intel_c20pll_state *pll_state)
+{
+	unsigned int frac_quot = 0, frac_rem = 0, frac_den = 1;
+	unsigned int multiplier = 0, tx_clk_div = 0, refclk = 38400;
+
+	if (pll_state->mpllb[6] & C20_MPLLB_FRACEN) {
+		frac_quot = pll_state->mpllb[8];
+		frac_rem =  pll_state->mpllb[9];
+		frac_den =  pll_state->mpllb[7];
+		multiplier = REG_FIELD_GET(C20_MULTIPLIER_MASK, pll_state->mpllb[0]);
+		tx_clk_div = REG_FIELD_GET(C20_MPLLB_TX_CLK_DIV_MASK, pll_state->mpllb[0]);
+	} else if (pll_state->mplla[6] & C20_MPLLA_FRACEN) {
+		frac_quot = pll_state->mplla[8];
+		frac_rem =  pll_state->mplla[9];
+		frac_den =  pll_state->mplla[7];
+		multiplier = REG_FIELD_GET(C20_MULTIPLIER_MASK, pll_state->mplla[0]);
+		tx_clk_div = REG_FIELD_GET(C20_MPLLA_TX_CLK_DIV_MASK, pll_state->mplla[1]);
+       }
+
+	return DIV_ROUND_CLOSEST_ULL(mul_u32_u32(refclk, (multiplier << 16) + frac_quot) +
+	       DIV_ROUND_CLOSEST(refclk * frac_rem, frac_den),
+				 10 << (tx_clk_div + 16));
+}
+
 static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
 					 const struct intel_crtc_state *crtc_state,
 					 bool lane_reversal)
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
index 0b46b2ad48a9..0a8e76fd101e 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -43,6 +43,8 @@ int intel_c10mpllb_calc_port_clock(struct intel_encoder *encoder,
 				   const struct intel_c10mpllb_state *pll_state);
 void intel_c10mpllb_state_verify(struct intel_atomic_state *state,
 				 struct intel_crtc_state *new_crtc_state);
+int intel_c20pll_calc_port_clock(struct intel_encoder *encoder,
+				 const struct intel_c20pll_state *pll_state);
 int intel_cx0_phy_check_hdmi_link_rate(struct intel_hdmi *hdmi, int clock);
 void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
 				     const struct intel_crtc_state *crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 4e8f3632b3bc..5ec856e3c3bf 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3520,13 +3520,13 @@ static void mtl_ddi_get_config(struct intel_encoder *encoder,
 	if (intel_is_c10phy(i915, phy)) {
 		intel_c10mpllb_readout_hw_state(encoder, &crtc_state->cx0pll_state.c10mpllb_state);
 		intel_c10mpllb_dump_hw_state(i915, &crtc_state->cx0pll_state.c10mpllb_state);
+		crtc_state->port_clock = intel_c10mpllb_calc_port_clock(encoder, &crtc_state->cx0pll_state.c10mpllb_state);
 	} else {
 		intel_c20pll_readout_hw_state(encoder, &crtc_state->cx0pll_state.c20pll_state);
 		intel_c20pll_dump_hw_state(i915, &crtc_state->cx0pll_state.c20pll_state);
+		crtc_state->port_clock = intel_c20pll_calc_port_clock(encoder, &crtc_state->cx0pll_state.c20pll_state);
 	}
 
-	crtc_state->port_clock = intel_c10mpllb_calc_port_clock(encoder, &crtc_state->cx0pll_state.c10mpllb_state);
-
 	intel_ddi_get_config(encoder, crtc_state);
 }
 
-- 
2.34.1

