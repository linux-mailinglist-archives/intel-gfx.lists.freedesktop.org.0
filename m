Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FCBC6A0B07
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Feb 2023 14:46:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C318410E4ED;
	Thu, 23 Feb 2023 13:46:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48D2310EB8F
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Feb 2023 13:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677159959; x=1708695959;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Xo3VVICChE38AB91O8iBYGcWBxBvc4o1iEMZJw54cVM=;
 b=MnsgX2JAuHtk4Rz2i4Oz8rCxGxq94rFIEoc0mL21N5CJmc7ZKTFkR+Y/
 M4NYfUtTPV8vBWPFnZzbwFycqVsAOg8lEfj/AJvkIQQtkjQkIzSuOatNE
 /CfMbZQtjVK1YitDnxm0OrwWCh4GmdZ849on2JNKDZT++U3SC9nLv5Anu
 Y7k1wr+6Z722qEcOJv4y/xLmKwtGANSJPPAAcU2NXYEJ2DhLZM8QPuCN8
 pyq4rl6kQxvoxpZpSyI55624/66rtMFxsmyXo/o6+H+6eEjdybAAFxUqR
 6fEOr6n12JtLFdHSrjRou82afoywt3ycUCougaZorPr6yadCkw3hBrIss g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="334581694"
X-IronPort-AV: E=Sophos;i="5.97,320,1669104000"; d="scan'208";a="334581694"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2023 05:45:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="846562566"
X-IronPort-AV: E=Sophos;i="5.97,320,1669104000"; d="scan'208";a="846562566"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga005.jf.intel.com with ESMTP; 23 Feb 2023 05:45:57 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Feb 2023 15:40:15 +0200
Message-Id: <20230223134021.2236889-17-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230223134021.2236889-1-mika.kahola@intel.com>
References: <20230223134021.2236889-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 16/22] drm/i915/mtl: Readout Thunderbolt HW
 state
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

Readout hw state for Thunderbolt.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 27 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_cx0_phy.h |  2 +-
 drivers/gpu/drm/i915/display/intel_ddi.c     |  5 +++-
 3 files changed, 32 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 6ce3b8aaf773..39556dfe0e63 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2533,6 +2533,33 @@ static void intel_cx0pll_enable(struct intel_encoder *encoder,
 	intel_cx0_phy_transaction_end(encoder, wakeref);
 }
 
+int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	u32 clock;
+	u32 val = intel_de_read(i915, XELPDP_PORT_CLOCK_CTL(encoder->port));
+
+	clock = REG_FIELD_GET(XELPDP_DDI_CLOCK_SELECT_MASK, val);
+
+	drm_WARN_ON(&i915->drm, !(val & XELPDP_FORWARD_CLOCK_UNGATE));
+	drm_WARN_ON(&i915->drm, !(val & XELPDP_TBT_CLOCK_REQUEST));
+	drm_WARN_ON(&i915->drm, !(val & XELPDP_TBT_CLOCK_ACK));
+
+	switch (clock) {
+	case XELPDP_DDI_CLOCK_SELECT_TBT_162:
+		return 162000;
+	case XELPDP_DDI_CLOCK_SELECT_TBT_270:
+		return 270000;
+	case XELPDP_DDI_CLOCK_SELECT_TBT_540:
+		return 540000;
+	case XELPDP_DDI_CLOCK_SELECT_TBT_810:
+		return 810000;
+	default:
+		MISSING_CASE(clock);
+		return 162000;
+       }
+}
+
 static int intel_mtl_tbt_clock_select(struct drm_i915_private *i915, int clock)
 {
 	switch (clock) {
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
index f8a86da4a3f7..9e115ec619ea 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -53,5 +53,5 @@ int intel_c20_phy_check_hdmi_link_rate(int clock);
 void intel_cx0_phy_ddi_vswing_sequence(struct intel_encoder *encoder,
 				       const struct intel_crtc_state *crtc_state,
 				       u32 level);
-int intel_mtl_tbt_readout_hw_state(struct intel_encoder *encoder);
+int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder);
 #endif /* __INTEL_CX0_PHY_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 5e940d2a39d2..84a6648c53d9 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3516,8 +3516,11 @@ static void mtl_ddi_get_config(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	enum phy phy = intel_port_to_phy(i915, encoder->port);
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 
-	if (intel_is_c10phy(i915, phy)) {
+	if (intel_tc_port_in_tbt_alt_mode(dig_port)) {
+		crtc_state->port_clock = intel_mtl_tbt_calc_port_clock(encoder);
+	} else if (intel_is_c10phy(i915, phy)) {
 		intel_c10mpllb_readout_hw_state(encoder, &crtc_state->cx0pll_state.c10mpllb_state);
 		intel_c10mpllb_dump_hw_state(i915, &crtc_state->cx0pll_state.c10mpllb_state);
 		crtc_state->port_clock = intel_c10mpllb_calc_port_clock(encoder, &crtc_state->cx0pll_state.c10mpllb_state);
-- 
2.34.1

