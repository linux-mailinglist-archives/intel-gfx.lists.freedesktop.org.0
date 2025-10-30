Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBCB6C1EC90
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Oct 2025 08:35:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D381F10E8F9;
	Thu, 30 Oct 2025 07:35:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NytarD0X";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E37BD10E8F5;
 Thu, 30 Oct 2025 07:35:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761809714; x=1793345714;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JSqDXO3nzXmOG6MUcB3DVhJmtVeP8tPXL7GKr4El9i8=;
 b=NytarD0Xnx0wk73VbIRFhYPFCFpEdrH0CsjGB5SG0zixFbVahY72N07e
 m57WQtPCCDM/fhRl7jamvEidrDndICUI5DIhSERC4RPZaHWOCxwv6QeZP
 8SwdBF4cRJHhgFIdsBgYaYKgmiwxHPRxrL+5dBsElOK26D7nefILZcbrv
 RfgG/ZYyk+ePio2gI503OHVCn0olBv5iAZPzpCNYNgekPq2hYmAQMFtaz
 jTmMa+60jVefJhj/K1pzHHcaeMmdKKCKAIOm6U774YS8E+7k+WYHfd2gy
 1MzF6DntZbh0gDbWZOC9HSYAWHL6ygdo7KDveN3ddm26vHb5+jHUS7/jL w==;
X-CSE-ConnectionGUID: YTzXO0+qQHWr9qmpxnEyIQ==
X-CSE-MsgGUID: O+jSKjYvRJeNPAdeMAUhSw==
X-IronPort-AV: E=McAfee;i="6800,10657,11597"; a="75063404"
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="75063404"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 00:35:13 -0700
X-CSE-ConnectionGUID: GQ7nsYvLSB6VB9MAX0NbKg==
X-CSE-MsgGUID: HO7Cwxb8THC360zZHfW7Ew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="185075492"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa006.jf.intel.com with ESMTP; 30 Oct 2025 00:35:12 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH 25/32] drm/i915/display: Add .get_hw_state to MTL+ platforms
Date: Thu, 30 Oct 2025 09:22:42 +0200
Message-Id: <20251030072249.155095-26-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251030072249.155095-1-mika.kahola@intel.com>
References: <20251030072249.155095-1-mika.kahola@intel.com>
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

