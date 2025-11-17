Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71913C63A7E
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 11:59:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0998910E343;
	Mon, 17 Nov 2025 10:59:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZMcQZPlR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C8D110E1D0;
 Mon, 17 Nov 2025 10:59:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763377145; x=1794913145;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Wt+ZuztZQ4o1IQ3i7Dc5vXzlTvpRL1q8j8cp0EDavOU=;
 b=ZMcQZPlR76Y8tJKcpiKJRgfHoBB+d40j9uPnGvo/15dbddc14Z3ImuQB
 UHRir/jfnpGxd3ILMFsbe//lM+Dm9QdAfVXuJU893MmvYe8feoVu/rcPT
 Lsyx5yrwJUfiw6UNOfX9eLQe6euXIH0PGPUoqjO4tDUF92BNwRel/53lu
 VIoLsl82sGU9cesfkoOlFGwQdYiI4sV7L9D8UUMuJ0jSBIi8t/Q/Z1HRF
 KQWMpI1lvs4P9ZhRGC3W0W/Rf7Wgh2RM3qFxWcd1lxpwPMsJD6sMbrfPE
 9Q9l3/m+fKCi2clpfOuGsBFP57kU26+edlPSPt4kx74J4EIJ8RSD6kbFn A==;
X-CSE-ConnectionGUID: 833myYhCQ7mmUr4UaZNv9g==
X-CSE-MsgGUID: OD9015c2QbS9XJqWCBxtWA==
X-IronPort-AV: E=McAfee;i="6800,10657,11615"; a="76475319"
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="76475319"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 02:59:04 -0800
X-CSE-ConnectionGUID: WpPb/rknS1+zzc+aHzQPcQ==
X-CSE-MsgGUID: 4kX5BhX2QRukeYiPHnvGMA==
X-ExtLoop1: 1
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa003.fm.intel.com with ESMTP; 17 Nov 2025 02:59:02 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>, Mika Kahola <mika.kahola@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v2 03/32] drm/i915/cx0: Sanitize setting the Cx0 PLL use_c10
 flag
Date: Mon, 17 Nov 2025 12:45:33 +0200
Message-Id: <20251117104602.2363671-4-mika.kahola@intel.com>
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

From: Imre Deak <imre.deak@intel.com>

Sanitize setting the Cx0 PLL use_c10 flag during state computation and
HW readout, making sure they happen the same way in the
intel_c{10,20}pll_calc_state() and intel_c{10,20}pll_readout_hw_state()
functions.

Follow-up changes will add more state computation/HW readout, this
change prepares for those as well.

Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 23 ++++++++++++--------
 1 file changed, 14 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index e130c96d0018..93b18dc49ee5 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2125,12 +2125,15 @@ static int intel_c10pll_calc_port_clock(struct intel_encoder *encoder,
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
@@ -2356,6 +2359,8 @@ static int intel_c20pll_calc_state(struct intel_crtc_state *crtc_state,
 	const struct intel_c20pll_state * const *tables;
 	int i;
 
+	crtc_state->dpll_hw_state.cx0pll.use_c10 = false;
+
 	/* try computed C20 HDMI tables before using consolidated tables */
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
 		if (intel_c20_compute_hdmi_tmds_pll(crtc_state) == 0)
@@ -2372,7 +2377,6 @@ static int intel_c20pll_calc_state(struct intel_crtc_state *crtc_state,
 			intel_cx0pll_update_ssc(encoder,
 						&crtc_state->dpll_hw_state.cx0pll,
 						intel_crtc_has_dp_encoder(crtc_state));
-			crtc_state->dpll_hw_state.cx0pll.use_c10 = false;
 			return 0;
 		}
 	}
@@ -2439,13 +2443,16 @@ static int intel_c20pll_calc_port_clock(struct intel_encoder *encoder,
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
@@ -3444,12 +3451,10 @@ void intel_cx0pll_readout_hw_state(struct intel_encoder *encoder,
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

