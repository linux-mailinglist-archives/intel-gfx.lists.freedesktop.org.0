Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 896BA918831
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2024 19:08:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EEFC10E8C8;
	Wed, 26 Jun 2024 17:08:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MXUyApLC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 915FD10E96F
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jun 2024 17:08:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719421683; x=1750957683;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=H5Pxu06K8Kqp2a7nbT9tu0rvV96PMYq5CA/A3Asl380=;
 b=MXUyApLCTd5Ekv7WQdYZTdx88z0MxXMOtLkJGeehM/sMmZcuePNnxPfg
 iuoaq71U0M+qVgCYC9bRRsK7/4NpQvnLN8WmFnDTFc3Le4g+BCHvrf2wt
 zEJylZoId0ocJLuZ4SzF9klo2iRZQ8z2G8IpenJzvTZzVYieks1v6KVct
 BZqHJpi8NZGZHSnAo+WGVxjBoRUQyvYiLmqS+5NJaxkzT+zMQiFLvuSoz
 7SSfhPJQkAB0SPTZwC4WvxZBYhJhbsIxKIB206yNfv4kFKzCRQ4ujjYXd
 2+Kudn0KgWygyO7SjJ5P7L5nczUxqXcKN3rooeqz6RiWwU1LVLe6xMveP A==;
X-CSE-ConnectionGUID: 5iJWgC12TBipndSelYdeow==
X-CSE-MsgGUID: weF/DBp4TXOA02WcKyKBog==
X-IronPort-AV: E=McAfee;i="6700,10204,11115"; a="41925454"
X-IronPort-AV: E=Sophos;i="6.08,267,1712646000"; d="scan'208";a="41925454"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2024 10:08:03 -0700
X-CSE-ConnectionGUID: Qpre7lzrTRGypjgkheY2OA==
X-CSE-MsgGUID: /ho7frgrR/2A/tAFIio+5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,267,1712646000"; d="scan'208";a="43947048"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2024 10:08:02 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH] drm/i915/mtl: Skip PLL state verification in TBT mode
Date: Wed, 26 Jun 2024 20:08:13 +0300
Message-ID: <20240626170813.806470-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
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

In TBT-alt mode the driver doesn't program the PHY's PLL, which is
handled instead by Thunderbolt driver/FW components, hence the PLL's HW
vs. SW state verification should be skipped. During HW readout set a flag
in the PLL state if the port was at the moment in TBT-alt mode and skip
the verification of PLL parameters in this case.

Fixes: 45fe957ae769 ("drm/i915/display: Add compare config for MTL+ platforms")
Cc: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 13 +++++++++----
 drivers/gpu/drm/i915/display/intel_ddi.c      |  8 +++-----
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  1 +
 3 files changed, 13 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 41f684c970dcf..4a6c3040ca15e 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -3279,6 +3279,10 @@ void intel_cx0pll_readout_hw_state(struct intel_encoder *encoder,
 {
 	pll_state->use_c10 = false;
 
+	pll_state->tbt_mode = intel_tc_port_in_tbt_alt_mode(enc_to_dig_port(encoder));
+	if (pll_state->tbt_mode)
+		return;
+
 	if (intel_encoder_is_c10phy(encoder)) {
 		intel_c10pll_readout_hw_state(encoder, &pll_state->c10);
 		pll_state->use_c10 = true;
@@ -3325,6 +3329,8 @@ static bool mtl_compare_hw_state_c20(const struct intel_c20pll_state *a,
 bool intel_cx0pll_compare_hw_state(const struct intel_cx0pll_state *a,
 				   const struct intel_cx0pll_state *b)
 {
+	if (a->tbt_mode || b->tbt_mode)
+		return true;
 
 	if (a->use_c10 != b->use_c10)
 		return false;
@@ -3420,12 +3426,11 @@ void intel_cx0pll_state_verify(struct intel_atomic_state *state,
 		return;
 
 	encoder = intel_get_crtc_new_encoder(state, new_crtc_state);
-
-	if (intel_tc_port_in_tbt_alt_mode(enc_to_dig_port(encoder)))
-		return;
-
 	intel_cx0pll_readout_hw_state(encoder, &mpll_hw_state);
 
+	if (mpll_hw_state.tbt_mode)
+		return;
+
 	if (intel_encoder_is_c10phy(encoder))
 		intel_c10pll_state_verify(new_crtc_state, crtc, encoder, &mpll_hw_state.c10);
 	else
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index bb13a3ca8c7c9..c5510d5bbe696 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4024,14 +4024,12 @@ void intel_ddi_get_clock(struct intel_encoder *encoder,
 static void mtl_ddi_get_config(struct intel_encoder *encoder,
 			       struct intel_crtc_state *crtc_state)
 {
-	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+	intel_cx0pll_readout_hw_state(encoder, &crtc_state->dpll_hw_state.cx0pll);
 
-	if (intel_tc_port_in_tbt_alt_mode(dig_port)) {
+	if (crtc_state->dpll_hw_state.cx0pll.tbt_mode)
 		crtc_state->port_clock = intel_mtl_tbt_calc_port_clock(encoder);
-	} else {
-		intel_cx0pll_readout_hw_state(encoder, &crtc_state->dpll_hw_state.cx0pll);
+	else
 		crtc_state->port_clock = intel_cx0pll_calc_port_clock(encoder, &crtc_state->dpll_hw_state.cx0pll);
-	}
 
 	intel_ddi_get_config(encoder, crtc_state);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index 36baed75b89ab..6af325b8e27dd 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -265,6 +265,7 @@ struct intel_cx0pll_state {
 	};
 	bool ssc_enabled;
 	bool use_c10;
+	bool tbt_mode;
 };
 
 struct intel_dpll_hw_state {
-- 
2.43.3

