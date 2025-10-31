Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AF88C24964
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Oct 2025 11:48:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DD5510EB6F;
	Fri, 31 Oct 2025 10:48:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IyjL7ykQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F57310EB6D;
 Fri, 31 Oct 2025 10:48:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761907694; x=1793443694;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JSqDXO3nzXmOG6MUcB3DVhJmtVeP8tPXL7GKr4El9i8=;
 b=IyjL7ykQ8P2bPJz1/D0LPfm1NZXVZ9jyiHiwu2esSM2mSu90O7jvbAkF
 vLI73vTTUrXbXM0sAJ7aHmv7oLKy9xdD0D3Z+08fWjsTnyGEfoD8juEOF
 f5QDYg6k5NcybKr7g+WhAoNtgb/tIg2ywGkkzBK/THHaUDHd2oMKqpxL/
 V/nZweOLkfJasZFnoDUf9xJvz3yro7bhSxXMsx8mI1LYJkjD149JRr0YF
 aUycISdYLM7Z47pRo0XBmDlXTltuhXc3LwWYhbM4N7WNtKebOQIyDCEdl
 oBWDr90zFPPJ2SEEnfLIZzJ8lyO22hO/ZKfkoC3hQg5cWTruy3f1F1aH7 g==;
X-CSE-ConnectionGUID: GNTKCTckTXSBKXZi2phZrw==
X-CSE-MsgGUID: EUwtP3fnQLG7VAzV6WgkIA==
X-IronPort-AV: E=McAfee;i="6800,10657,11598"; a="64217587"
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="64217587"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 03:48:14 -0700
X-CSE-ConnectionGUID: mH8mQOtaQcaz9QyKpGD4YA==
X-CSE-MsgGUID: eLC23Sk3RYmzKgcfPrgomA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="223441428"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa001.jf.intel.com with ESMTP; 31 Oct 2025 03:48:13 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [CI 25/32] drm/i915/display: Add .get_hw_state to MTL+ platforms
Date: Fri, 31 Oct 2025 12:35:42 +0200
Message-Id: <20251031103549.173208-26-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251031103549.173208-1-mika.kahola@intel.com>
References: <20251031103549.173208-1-mika.kahola@intel.com>
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
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  |  9 ++++--
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  |  2 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 29 +++++++++++++++++++
 3 files changed, 37 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index e44dfda43d38..15ba3522b5b3 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -3620,19 +3620,24 @@ intel_mtl_port_pll_type(struct intel_encoder *encoder,
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
index 03441138ec01..13eaf6d280ff 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -32,7 +32,7 @@ intel_mtl_port_pll_type(struct intel_encoder *encoder,
 int intel_cx0pll_calc_state(const struct intel_crtc_state *crtc_state,
 			    struct intel_encoder *encoder,
 			    struct intel_dpll_hw_state *hw_state);
-void intel_cx0pll_readout_hw_state(struct intel_encoder *encoder,
+bool intel_cx0pll_readout_hw_state(struct intel_encoder *encoder,
 				   struct intel_cx0pll_state *pll_state);
 int intel_cx0pll_calc_port_clock(struct intel_encoder *encoder,
 				 const struct intel_cx0pll_state *pll_state);
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index d22771cf2ebd..db6ae7bc63d6 100644
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

