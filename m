Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57925C1EC57
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Oct 2025 08:34:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3967010E8B0;
	Thu, 30 Oct 2025 07:34:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IqhoOAm6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A2EC10E8B0;
 Thu, 30 Oct 2025 07:34:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761809683; x=1793345683;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Kid1sgbyJRJAYxTiXIulOkHX81wABeH0G1YvafMtgLg=;
 b=IqhoOAm6mvZTzUEi0eK8vKi/8qbOYEWpx+y8gIqEuLc70kuUWYP+kb8r
 dnyKKmr5u3gnR/ETvAQM4Mn2jH1+hS1quLoloKZ+qKPAYS3ET8gZ2ix7p
 vtHebB9qid6f+AYyESzg1QFV11yzLoYDho1UhCxDIdfoaDFcGRBlYaXiX
 0M0T57ObeYjpFyCoAgLF2gUc58SZZvAhALEAvOcoYnIF+SR7Ds4OJ6sNW
 Ap+QEJRx2FeULCKY9+zs4Ly22Hg4x0yl2y+UCmjvitlklAJZsCopi2S5A
 j2/qaUH8FqF5telAbZJtS8RW45HUUbptTUHwtdwvN+cn8sf0onMqE7lq9 g==;
X-CSE-ConnectionGUID: YXw0FuSEQBK0BUPw5UMWCA==
X-CSE-MsgGUID: SLCc+EyIQ1W5gbkSwTIdIQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11597"; a="75063360"
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="75063360"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 00:34:43 -0700
X-CSE-ConnectionGUID: 7LwWJWoeQo2CJCLMzAPROg==
X-CSE-MsgGUID: hv7n7XvNRBOkB7+1xRX65g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="185075291"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa006.jf.intel.com with ESMTP; 30 Oct 2025 00:34:41 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>,
	Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH 03/32] drm/i915/display: Sanitize setting the Cx0 PLL use_c10
 flag
Date: Thu, 30 Oct 2025 09:22:20 +0200
Message-Id: <20251030072249.155095-4-mika.kahola@intel.com>
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

