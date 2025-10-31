Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77EF9C24937
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Oct 2025 11:47:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50B5310EB4E;
	Fri, 31 Oct 2025 10:47:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GffS9v2F";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6DBC10EB31;
 Fri, 31 Oct 2025 10:47:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761907665; x=1793443665;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Kid1sgbyJRJAYxTiXIulOkHX81wABeH0G1YvafMtgLg=;
 b=GffS9v2FwU50LSbc1cjQtSCXxGZ8Uud+00pKRLO3cpV8Ele0DhuWzP9N
 U6HNwfkXexawnHqAe8U1JDJs+kc74KeRMn+zIyy3mWLLpGjF77qAHsh2o
 11CYxSP5xMltX3coIxI2Z68Id84kaAIv0Oy9wb+AjtUpHQbR2aEys/Qze
 UKpakm3VC9rR5EdRqSQy0iEAlB2yOTbPqSIorZCjpWWDBUoGircFPHoqz
 7lNsCtGNW6q/WuX9dznjaDuzBt3QnfRoiNo348uCbJtXXb0XJ80aaBoFI
 xPSTBdy5Rw/jL0KZ9iQvuYPR/zIGvJbdoEbmv4hkBwiZd+2gl1l2mWyGu w==;
X-CSE-ConnectionGUID: 1iMJMcPHQHSWBSUfQBYcLA==
X-CSE-MsgGUID: whEWWavSR0WB1Mzqx/pbdw==
X-IronPort-AV: E=McAfee;i="6800,10657,11598"; a="64217547"
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="64217547"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 03:47:45 -0700
X-CSE-ConnectionGUID: Dx1qab3cT+6LlwKnpqF2bA==
X-CSE-MsgGUID: GL5TNgc3RVeI9h6GHeJZeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="223441296"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa001.jf.intel.com with ESMTP; 31 Oct 2025 03:47:43 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>,
	Mika Kahola <mika.kahola@intel.com>
Subject: [CI 03/32] drm/i915/display: Sanitize setting the Cx0 PLL use_c10 flag
Date: Fri, 31 Oct 2025 12:35:20 +0200
Message-Id: <20251031103549.173208-4-mika.kahola@intel.com>
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

From: Imre Deak <imre.deak@intel.com>

Sanitize setting the Cx0 PLL use_c10 flag during state computation and
HW readout, making sure they happen the same way in the
intel_c{10,20}pll_calc_state() and intel_c{10,20}pll_readout_hw_state()
functions.

Follow-up changes will add more state computation/HW readout, this
change prepares for those as well.

Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 23 ++++++++++++--------
 1 file changed, 14 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 94ba7db2115a..dd4cf335f3ae 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2130,12 +2130,15 @@ static int intel_c10pll_calc_port_clock(struct intel_encoder *encoder,
 					const struct intel_c10pll_state *pll_state);
 
 static void intel_c10pll_readout_hw_state(struct intel_encoder *encoder,
-					  struct intel_c10pll_state *pll_state)
+					  struct intel_cx0pll_state *cx0pll_state)
 {
+	struct intel_c10pll_state *pll_state = &cx0pll_state->c10;
 	u8 lane = INTEL_CX0_LANE0;
 	intel_wakeref_t wakeref;
 	int i;
 
+	cx0pll_state->use_c10 = true;
+
 	wakeref = intel_cx0_phy_transaction_begin(encoder);
 
 	/*
@@ -2361,6 +2364,8 @@ static int intel_c20pll_calc_state(struct intel_crtc_state *crtc_state,
 	const struct intel_c20pll_state * const *tables;
 	int i;
 
+	crtc_state->dpll_hw_state.cx0pll.use_c10 = false;
+
 	/* try computed C20 HDMI tables before using consolidated tables */
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
 		if (intel_c20_compute_hdmi_tmds_pll(crtc_state) == 0)
@@ -2377,7 +2382,6 @@ static int intel_c20pll_calc_state(struct intel_crtc_state *crtc_state,
 			intel_cx0pll_update_ssc(encoder,
 						&crtc_state->dpll_hw_state.cx0pll,
 						intel_crtc_has_dp_encoder(crtc_state));
-			crtc_state->dpll_hw_state.cx0pll.use_c10 = false;
 			return 0;
 		}
 	}
@@ -2444,13 +2448,16 @@ static int intel_c20pll_calc_port_clock(struct intel_encoder *encoder,
 }
 
 static void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
-					  struct intel_c20pll_state *pll_state)
+					  struct intel_cx0pll_state *cx0pll_state)
 {
+	struct intel_c20pll_state *pll_state = &cx0pll_state->c20;
 	struct intel_display *display = to_intel_display(encoder);
 	bool cntx;
 	intel_wakeref_t wakeref;
 	int i;
 
+	cx0pll_state->use_c10 = false;
+
 	wakeref = intel_cx0_phy_transaction_begin(encoder);
 
 	/* 1. Read current context selection */
@@ -3470,12 +3477,10 @@ void intel_cx0pll_readout_hw_state(struct intel_encoder *encoder,
 	if (pll_state->tbt_mode)
 		return;
 
-	if (intel_encoder_is_c10phy(encoder)) {
-		intel_c10pll_readout_hw_state(encoder, &pll_state->c10);
-		pll_state->use_c10 = true;
-	} else {
-		intel_c20pll_readout_hw_state(encoder, &pll_state->c20);
-	}
+	if (intel_encoder_is_c10phy(encoder))
+		intel_c10pll_readout_hw_state(encoder, pll_state);
+	else
+		intel_c20pll_readout_hw_state(encoder, pll_state);
 }
 
 static bool mtl_compare_hw_state_c10(const struct intel_c10pll_state *a,
-- 
2.34.1

