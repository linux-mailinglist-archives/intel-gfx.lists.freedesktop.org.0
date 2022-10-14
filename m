Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B68395FEE2D
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Oct 2022 14:52:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D48810EAE7;
	Fri, 14 Oct 2022 12:52:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21E7D10EADE
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Oct 2022 12:52:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665751935; x=1697287935;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hhg1eBdgCyYD3C2nW76lyv5dsAOiOE6GXdzrkx1tWJ4=;
 b=FqUUD/f6Il8D0OKDDnO1O2Pb9Ea3gn9cbTcbI2WDwqQ2xASPVOl0LLKU
 AHPrwVW4QWm3tGaPvVDuj457AsQQcPh4xP30K/pOqeJk2sxrRWPMb0c4/
 y1IhfcEoF8cCvRdxahkh6gH8+a4vyYQQi5iJLgVS7wrEnH2MkQw8LJnY9
 KlBgMshQTIEb8tRAjaSHI9iT2CCGG8vw5gTZUiOD6Ps00vazZNF4LlTbI
 6CZHDugvksB9j8XmGv5HNpG6EnLf69Wkk4Kbe9xdhX5vx+7jgWS6G0id4
 QzMvN8aWghMqFw6OLM9C2Iq4SXlM37mBmkrXrLeXTiJ/soLhwCV02KoY1 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10500"; a="304104674"
X-IronPort-AV: E=Sophos;i="5.95,184,1661842800"; d="scan'208";a="304104674"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 05:52:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10500"; a="716739804"
X-IronPort-AV: E=Sophos;i="5.95,184,1661842800"; d="scan'208";a="716739804"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by FMSMGA003.fm.intel.com with ESMTP; 14 Oct 2022 05:52:13 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Oct 2022 15:47:35 +0300
Message-Id: <20221014124740.774835-16-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221014124740.774835-1-mika.kahola@intel.com>
References: <20221014124740.774835-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 15/20] drm/i915/mtl: Readout Thunderbolt HW state
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
index 04b77f113403..377ae5f6ac3f 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2026,6 +2026,33 @@ static void intel_cx0pll_enable(struct intel_encoder *encoder,
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
index 141802038f12..aaaa971111a3 100644
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
index 07ea0dc6d5d0..e538bfed5cca 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3498,8 +3498,11 @@ static void mtl_ddi_get_config(struct intel_encoder *encoder,
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

