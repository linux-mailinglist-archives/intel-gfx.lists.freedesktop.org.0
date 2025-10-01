Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E77FBAFB1D
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 10:39:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 025C010E6F0;
	Wed,  1 Oct 2025 08:39:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UoZC7rN7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFF8110E6EE;
 Wed,  1 Oct 2025 08:39:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759307957; x=1790843957;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=k8DNcwiRd+3vkiW/LzWpgod4+3xal4Q1DugaZZrU9zk=;
 b=UoZC7rN7rkVMVPZ36dFRFPpQlWWz+Vg3/nSMNFbSxVTCrn+aVrbdEI6b
 3ny1nx0GT8eTV0jSWIiJFQzKxpIJlpI930Sn63BDdMezlhNtV1j0p4SiE
 OCsSD/3A65tjrKewyy+yQl2A/mvRq4KzMEKzawGRKK9parYxfX04GkoEy
 Mh8x4EbQNkra5uzVen95s4ISB2ngPYNNLhGNkg4/5FQnPfJT9bd78V2NQ
 DtX+r019CYB6Eu1u7HLUN0k9ZVPpoavFlFQ01bYcfny1tJ+9ZEinQctBp
 Xt64Ac6CTOqbF3qqKV6VDUuS6aVm3Bfg6kFVp/T/WDk6t6U9MlkASs/bF A==;
X-CSE-ConnectionGUID: st+3HVC6RuWG6n6BKhIb9Q==
X-CSE-MsgGUID: Ws8JdqpQQpONEKr4UiyXkA==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="61742809"
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="61742809"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 01:39:17 -0700
X-CSE-ConnectionGUID: uFvOmffERd+6eD28ockgcg==
X-CSE-MsgGUID: 2kL9EH3qRkWbq+rmcD/o+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="179142888"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa008.fm.intel.com with ESMTP; 01 Oct 2025 01:39:15 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [RFC PATCH 32/39] drm/i915/display: Add .get_hw_state to MTL+
 platforms
Date: Wed,  1 Oct 2025 11:28:32 +0300
Message-Id: <20251001082839.2585559-33-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251001082839.2585559-1-mika.kahola@intel.com>
References: <20251001082839.2585559-1-mika.kahola@intel.com>
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
index ec91186848d7..ba8c26a1fa91 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -3616,19 +3616,24 @@ intel_mtl_port_pll_type(struct intel_encoder *encoder,
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
index 3d0073153463..39795d1d93be 100644
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
index 0e356655ba03..38074a1897fa 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4348,7 +4348,36 @@ static const struct intel_dpll_mgr adlp_pll_mgr = {
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

