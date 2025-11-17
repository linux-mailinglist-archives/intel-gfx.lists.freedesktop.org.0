Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90BC1C63ACE
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 11:59:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0362A10E392;
	Mon, 17 Nov 2025 10:59:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TNLLmEo8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CDCD10E38A;
 Mon, 17 Nov 2025 10:59:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763377175; x=1794913175;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=B9afUoH25qAjNg1HT/aowpCwOgwSB7q/acb1C7Z35vU=;
 b=TNLLmEo8M5e9mEWURY+xeGl0BmRKgZ76eZUhmvvvXrfwQZUyRB+U9/1l
 yvekbyTRTjPJndByTRt4iUZQjRLbtHL1cQVVc3GqqXismnHF0tF1RzHKY
 /syHkY7SOiJxpgzMtdTW442oWIMIBR+oCtxnKekg4BwkgyZA5Eo2fJOZy
 BWJSV81XmXIhclkVAXCe6ZRX0oUPv08H1+uIVuUc/NW2ZFPYhCBzoVeCg
 AYccBYeZyOvIND59+l2pCY6oHsevWsoLupOSZLababQgYdNq5IPpoyT4g
 izVWVAgMzvrgPp0EuC1R/Fg44ZXvx2Y2WICCtXrR96ROqkPuNs4wp4ANS A==;
X-CSE-ConnectionGUID: prL5sTCnTv2TREUgci4grQ==
X-CSE-MsgGUID: f1Mcr7BERPikJ2jZ4lPmJA==
X-IronPort-AV: E=McAfee;i="6800,10657,11615"; a="76475422"
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="76475422"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 02:59:35 -0800
X-CSE-ConnectionGUID: 4LXj5WB2Sl2DYVWVhTp8DA==
X-CSE-MsgGUID: 11ht78KBRsGljXvo/mUEQw==
X-ExtLoop1: 1
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa003.fm.intel.com with ESMTP; 17 Nov 2025 02:59:33 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v2 25/32] drm/i915/cx0: Add MTL+ .get_hw_state hook
Date: Mon, 17 Nov 2025 12:45:55 +0200
Message-Id: <20251117104602.2363671-26-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251117104602.2363671-1-mika.kahola@intel.com>
References: <20251117104602.2363671-1-mika.kahola@intel.com>
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

Add .get_hw_state hook to MTL+ platforms for dpll framework.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  |  9 ++++--
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  |  2 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 29 +++++++++++++++++++
 3 files changed, 37 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index a88169b76cfa..bde461878647 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -3594,19 +3594,24 @@ intel_mtl_port_pll_type(struct intel_encoder *encoder,
 		return ICL_PORT_DPLL_DEFAULT;
 }
 
-void intel_cx0pll_readout_hw_state(struct intel_encoder *encoder,
+bool intel_cx0pll_readout_hw_state(struct intel_encoder *encoder,
 				   struct intel_cx0pll_state *pll_state)
 {
 	memset(pll_state, 0, sizeof(*pll_state));
 
 	pll_state->tbt_mode = intel_tc_port_in_tbt_alt_mode(enc_to_dig_port(encoder));
 	if (pll_state->tbt_mode)
-		return;
+		return true;
+
+	if (!intel_cx0_pll_is_enabled(encoder))
+		return false;
 
 	if (intel_encoder_is_c10phy(encoder))
 		intel_c10pll_readout_hw_state(encoder, pll_state);
 	else
 		intel_c20pll_readout_hw_state(encoder, pll_state);
+
+	return true;
 }
 
 static bool mtl_compare_hw_state_c10(const struct intel_c10pll_state *a,
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
index acfbaced22f5..37b53faa5e78 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -37,7 +37,7 @@ intel_mtl_port_pll_type(struct intel_encoder *encoder,
 int intel_cx0pll_calc_state(const struct intel_crtc_state *crtc_state,
 			    struct intel_encoder *encoder,
 			    struct intel_dpll_hw_state *hw_state);
-void intel_cx0pll_readout_hw_state(struct intel_encoder *encoder,
+bool intel_cx0pll_readout_hw_state(struct intel_encoder *encoder,
 				   struct intel_cx0pll_state *pll_state);
 int intel_cx0pll_calc_port_clock(struct intel_encoder *encoder,
 				 const struct intel_cx0pll_state *pll_state);
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index c0ba269dc714..beaf270294ca 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4351,7 +4351,36 @@ static const struct intel_dpll_mgr adlp_pll_mgr = {
 	.compare_hw_state = icl_compare_hw_state,
 };
 
+static struct intel_encoder *get_intel_encoder(struct intel_display *display,
+					       const struct intel_dpll *pll)
+{
+	struct intel_encoder *encoder;
+	enum intel_dpll_id mtl_id;
+
+	for_each_intel_encoder(display->drm, encoder) {
+		mtl_id = mtl_port_to_pll_id(display, encoder->port);
+
+		if (mtl_id == pll->info->id)
+			return encoder;
+	}
+
+	return NULL;
+}
+
+static bool mtl_pll_get_hw_state(struct intel_display *display,
+				 struct intel_dpll *pll,
+				 struct intel_dpll_hw_state *dpll_hw_state)
+{
+	struct intel_encoder *encoder = get_intel_encoder(display, pll);
+
+	if (!encoder)
+		return false;
+
+	return intel_cx0pll_readout_hw_state(encoder, &dpll_hw_state->cx0pll);
+}
+
 static const struct intel_dpll_funcs mtl_pll_funcs = {
+	.get_hw_state = mtl_pll_get_hw_state,
 };
 
 static const struct dpll_info mtl_plls[] = {
-- 
2.34.1

