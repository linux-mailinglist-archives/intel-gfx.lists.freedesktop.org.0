Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C165BDC6B0
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 06:09:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F67910E734;
	Wed, 15 Oct 2025 04:09:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aYgAGr4S";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D968B10E730;
 Wed, 15 Oct 2025 04:09:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760501353; x=1792037353;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Uu6tgtQAoxnOrnkteKMOKqU6taluEal9V8YjV6wF+wo=;
 b=aYgAGr4SViZrm7vh8ax2qrsCxH77+RQhfiHh/7gIWMw0MjRecwBSiIiT
 wjkKyggNiAipj1mSNtEVGd+ShSWnnHsh1YFohpMFwpur8+9m6/g0DQnBe
 IUw3JC8YyxHWaJ/Pqs5FbivPGKusZX8z3VoSRiqwVvFAx8+KzSkg9hovA
 rnNNK260MUDaTvVlx9sRmAGHbuR06fTAj+hqiZCMtZB8obtzKPfg1s7Uj
 mpvqyNPAQO/jRUbGbaMCnDikSLeqKgPkSfuBaoBxsZ3/OYHgb3ZL+HlfE
 SD+ldjkBFLXaMIx7cR9a9osg5qxsggPwHP/PSg/w++wBwipzfULq0uHCN w==;
X-CSE-ConnectionGUID: DF+7/YuNTKiNtS1fvZnGjA==
X-CSE-MsgGUID: bBdMIuR8TxevxdNkuSKPEQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11582"; a="66318974"
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="66318974"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 21:09:12 -0700
X-CSE-ConnectionGUID: wv9BTDv0Rsq5tXUu3E/erg==
X-CSE-MsgGUID: EboEiJTZReSoX2JlhTvoNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="219196251"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa001.jf.intel.com with ESMTP; 14 Oct 2025 21:09:10 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, uma.shankar@intel.com,
 gustavo.sousa@intel.com, lucas.demarchi@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 16/25] drm/i915/ltphy: Hook up LT Phy Enable & Disable
 sequences
Date: Wed, 15 Oct 2025 09:38:08 +0530
Message-Id: <20251015040817.3431297-17-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251015040817.3431297-1-suraj.kandpal@intel.com>
References: <20251015040817.3431297-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Hook up the LT Phy enable and disable sequences using encoder->
enable/disable_clock and reusing the TBT enable disable sequence from
cx0 PHY since it remains the same.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c |  7 ++++---
 drivers/gpu/drm/i915/display/intel_cx0_phy.h |  3 +++
 drivers/gpu/drm/i915/display/intel_ddi.c     |  7 ++++++-
 drivers/gpu/drm/i915/display/intel_lt_phy.c  | 21 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_lt_phy.h  |  3 +++
 5 files changed, 37 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 914b215d8bd4..986da034d4de 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -18,6 +18,7 @@
 #include "intel_display_types.h"
 #include "intel_dp.h"
 #include "intel_hdmi.h"
+#include "intel_lt_phy.h"
 #include "intel_panel.h"
 #include "intel_psr.h"
 #include "intel_snps_hdmi_pll.h"
@@ -3155,8 +3156,8 @@ static int intel_mtl_tbt_clock_select(struct intel_display *display,
 	}
 }
 
-static void intel_mtl_tbt_pll_enable(struct intel_encoder *encoder,
-				     const struct intel_crtc_state *crtc_state)
+void intel_mtl_tbt_pll_enable(struct intel_encoder *encoder,
+			      const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(encoder);
 	enum phy phy = intel_encoder_to_phy(encoder);
@@ -3340,7 +3341,7 @@ static bool intel_cx0_pll_is_enabled(struct intel_encoder *encoder)
 			     intel_cx0_get_pclk_pll_request(lane);
 }
 
-static void intel_mtl_tbt_pll_disable(struct intel_encoder *encoder)
+void intel_mtl_tbt_pll_disable(struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(encoder);
 	enum phy phy = intel_encoder_to_phy(encoder);
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
index f0f0efa2d48b..a37827482a32 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -64,5 +64,8 @@ int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder);
 void intel_cx0_pll_power_save_wa(struct intel_display *display);
 void intel_lnl_mac_transmit_lfps(struct intel_encoder *encoder,
 				 const struct intel_crtc_state *crtc_state);
+void intel_mtl_tbt_pll_enable(struct intel_encoder *encoder,
+			      const struct intel_crtc_state *crtc_state);
+void intel_mtl_tbt_pll_disable(struct intel_encoder *encoder);
 
 #endif /* __INTEL_CX0_PHY_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index c09aa759f4d4..6fcfdd0b0103 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -72,6 +72,7 @@
 #include "intel_hotplug.h"
 #include "intel_hti.h"
 #include "intel_lspcon.h"
+#include "intel_lt_phy.h"
 #include "intel_mg_phy_regs.h"
 #include "intel_modeset_lock.h"
 #include "intel_panel.h"
@@ -5224,7 +5225,11 @@ void intel_ddi_init(struct intel_display *display,
 	encoder->cloneable = 0;
 	encoder->pipe_mask = ~0;
 
-	if (DISPLAY_VER(display) >= 14) {
+	if (HAS_LT_PHY(display)) {
+		encoder->enable_clock = intel_xe3plpd_pll_enable;
+		encoder->disable_clock = intel_xe3plpd_pll_disable;
+		encoder->port_pll_type = intel_mtl_port_pll_type;
+	} else if (DISPLAY_VER(display) >= 14) {
 		encoder->enable_clock = intel_mtl_pll_enable;
 		encoder->disable_clock = intel_mtl_pll_disable;
 		encoder->port_pll_type = intel_mtl_port_pll_type;
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index 747cce4a484a..d458909b5f12 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -1692,3 +1692,24 @@ void intel_lt_phy_pll_disable(struct intel_encoder *encoder)
 
 	intel_lt_phy_transaction_end(encoder, wakeref);
 }
+
+void intel_xe3plpd_pll_enable(struct intel_encoder *encoder,
+			      const struct intel_crtc_state *crtc_state)
+{
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+
+	if (intel_tc_port_in_tbt_alt_mode(dig_port))
+		intel_mtl_tbt_pll_enable(encoder, crtc_state);
+	else
+		intel_lt_phy_pll_enable(encoder, crtc_state);
+}
+
+void intel_xe3plpd_pll_disable(struct intel_encoder *encoder)
+{
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+
+	if (intel_tc_port_in_tbt_alt_mode(dig_port))
+		intel_mtl_tbt_pll_disable(encoder);
+	else
+		intel_lt_phy_pll_disable(encoder);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.h b/drivers/gpu/drm/i915/display/intel_lt_phy.h
index 499091e04e82..15d3d680871c 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.h
@@ -20,6 +20,9 @@ intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state,
 			    struct intel_encoder *encoder);
 int intel_lt_phy_calc_port_clock(struct intel_encoder *encoder,
 				 const struct intel_crtc_state *crtc_state);
+void intel_xe3plpd_pll_enable(struct intel_encoder *encoder,
+			      const struct intel_crtc_state *crtc_state);
+void intel_xe3plpd_pll_disable(struct intel_encoder *encoder);
 
 #define HAS_LT_PHY(display) (DISPLAY_VER(display) >= 35)
 
-- 
2.34.1

