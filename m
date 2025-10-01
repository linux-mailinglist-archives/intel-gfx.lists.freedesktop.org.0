Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2EA5BAFAC9
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 10:38:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4191810E6B4;
	Wed,  1 Oct 2025 08:38:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CTOjSirW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B41C10E6C0;
 Wed,  1 Oct 2025 08:38:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759307929; x=1790843929;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IZP6RA3fvQe4K5XbDf3wsdm4n0PMmljvo2hg5ULoBXg=;
 b=CTOjSirW5vtd+2p49nYcBUTrdChPbP4ZILjELwwPD4I2EC+UXwcNu2FC
 wPZAOAwH/9ZRIFBQ5Ongz86ltc/EI10Np/4/c2UvSP+2dOnz39Xebz1QJ
 dsN6P9rcSGr9VgDz/0hybOsnXszTa7xnzETuuiOZogYcW8BgyIVVzrWYj
 Du4S46sVGIOl7dXF9QYmugL/r3kt3Y1UPy0RfSResClebF6CfvVh3GmLn
 H+sI5NYA2qTsAsKqMqu3DCQj7WtefG3EJZmZfP6cyWwVeAUB+qFxznid6
 l/GspRlIxyoI6UqAo+RiWqh7OUlPdio3M5QfBFdLBiauiYNyUuq+2Mtsx g==;
X-CSE-ConnectionGUID: rVT8KkkLQguhPpan4axjzg==
X-CSE-MsgGUID: JQ8dAXs8RI2HsrCC0LL32g==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="61742724"
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="61742724"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 01:38:48 -0700
X-CSE-ConnectionGUID: 9RdueLjPQhegzdQDdzg6CQ==
X-CSE-MsgGUID: YUa/zMSxSnueJ2ULAHdSJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="179142548"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa008.fm.intel.com with ESMTP; 01 Oct 2025 01:38:46 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>
Subject: [RFC PATCH 10/39] drm/i915/display: Sanitize setting the Cx0 PLL
 use_c10 flag
Date: Wed,  1 Oct 2025 11:28:10 +0300
Message-Id: <20251001082839.2585559-11-mika.kahola@intel.com>
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

From: Imre Deak <imre.deak@intel.com>

Sanitize setting the Cx0 PLL use_c10 flag during state computation and
HW readout, making sure they happen the same way in the
intel_c{10,20}pll_calc_state() and intel_c{10,20}pll_readout_hw_state()
functions.

Follow-up changes will add more state computation/HW readout, this
change prepares for those as well.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 23 ++++++++++++--------
 1 file changed, 14 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 9b38c7b4f0a7..0ac186e5db88 100644
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

