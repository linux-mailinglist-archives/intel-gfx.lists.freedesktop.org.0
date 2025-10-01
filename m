Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A374BAFACD
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 10:38:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B151A10E6C0;
	Wed,  1 Oct 2025 08:38:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kGfouHXr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72A2010E6BB;
 Wed,  1 Oct 2025 08:38:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759307930; x=1790843930;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hfFbZFEm88PDwBzV15d0BoV9PNcv3rm2Pb5BLxT1deI=;
 b=kGfouHXr3eteidafV97a76286tySAnDkWO29enCVdK84W6EVWqt5CDl4
 Cw3HeCZLHGCL2RLFX2vTf09MI3FXrMneJo3YXIF2EN5dpthxQAWT3VOh0
 TgDSfGyqEAINjP/ZXUzY/jAsJUUtMfeIFLCNihrDCTO9GFcOBD0Ci0qZm
 Qq/N6bOIcmV9Y8JRy17tk1ha9I/jLHjZtAfFPIjd8aPeCV1T60gSdfrmp
 nyVQdwE89+gnhvihHtjwnKhf25c/NVynfWl4zry2zUATtCNXKGnyaQi+x
 w5BFDY0ac1ZYgqp2tIjQ7OvmcqgYrB/yPKvYMIw9dgcV0jBIqbmlmGZe2 Q==;
X-CSE-ConnectionGUID: 6Hmvu5d4Q02avvVmwgqJzQ==
X-CSE-MsgGUID: ZN2CoZS4RnuQNtQtc/2UQw==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="61742728"
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="61742728"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 01:38:50 -0700
X-CSE-ConnectionGUID: G+iwa0ToRvSoX1qj/IABxw==
X-CSE-MsgGUID: OJYJDzLBSBivEC3ixlob1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="179142556"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa008.fm.intel.com with ESMTP; 01 Oct 2025 01:38:48 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>
Subject: [RFC PATCH 11/39] drm/i915/display: Sanitize calculating C20 PLL
 state from tables
Date: Wed,  1 Oct 2025 11:28:11 +0300
Message-Id: <20251001082839.2585559-12-mika.kahola@intel.com>
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

A follow up change adds a computation for the C20 PLL VDR state, which
is common to both the HDMI algorithmic and DP/HDMI table based method.
To prepare for that streamline the code. The C10 counterpart would
benefit from the same change, leave that for later adding a TODO
comment.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 68 ++++++++++++++------
 1 file changed, 47 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 0ac186e5db88..b2fc93954933 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2077,6 +2077,10 @@ static void intel_c10pll_update_pll(struct intel_encoder *encoder,
 		pll_state->c10.pll[i] = 0;
 }
 
+/*
+ * TODO: Convert the following align with intel_c20pll_find_table() and
+ * intel_c20pll_calc_state_from_table().
+ */
 static int intel_c10pll_calc_state_from_table(struct intel_encoder *encoder,
 					      const struct intel_c10pll_state * const *tables,
 					      bool is_dp, int port_clock,
@@ -2330,7 +2334,7 @@ static int intel_c20_compute_hdmi_tmds_pll(struct intel_crtc_state *crtc_state)
 }
 
 static const struct intel_c20pll_state * const *
-intel_c20_pll_tables_get(struct intel_crtc_state *crtc_state,
+intel_c20_pll_tables_get(const struct intel_crtc_state *crtc_state,
 			 struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
@@ -2358,35 +2362,57 @@ intel_c20_pll_tables_get(struct intel_crtc_state *crtc_state,
 	return NULL;
 }
 
-static int intel_c20pll_calc_state(struct intel_crtc_state *crtc_state,
-				   struct intel_encoder *encoder)
+static const struct intel_c20pll_state *
+intel_c20_pll_find_table(const struct intel_crtc_state *crtc_state,
+			 struct intel_encoder *encoder)
 {
 	const struct intel_c20pll_state * const *tables;
 	int i;
 
-	crtc_state->dpll_hw_state.cx0pll.use_c10 = false;
-
-	/* try computed C20 HDMI tables before using consolidated tables */
-	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
-		if (intel_c20_compute_hdmi_tmds_pll(crtc_state) == 0)
-			return 0;
-	}
-
 	tables = intel_c20_pll_tables_get(crtc_state, encoder);
 	if (!tables)
+		return NULL;
+
+	for (i = 0; tables[i]; i++)
+		if (crtc_state->port_clock == tables[i]->clock)
+			return tables[i];
+
+	return NULL;
+}
+
+static int intel_c20pll_calc_state_from_table(struct intel_crtc_state *crtc_state,
+					      struct intel_encoder *encoder)
+{
+	const struct intel_c20pll_state *table;
+
+	table = intel_c20_pll_find_table(crtc_state, encoder);
+	if (!table)
 		return -EINVAL;
 
-	for (i = 0; tables[i]; i++) {
-		if (crtc_state->port_clock == tables[i]->clock) {
-			crtc_state->dpll_hw_state.cx0pll.c20 = *tables[i];
-			intel_cx0pll_update_ssc(encoder,
-						&crtc_state->dpll_hw_state.cx0pll,
-						intel_crtc_has_dp_encoder(crtc_state));
-			return 0;
-		}
-	}
+	crtc_state->dpll_hw_state.cx0pll.c20 = *table;
 
-	return -EINVAL;
+	intel_cx0pll_update_ssc(encoder, &crtc_state->dpll_hw_state.cx0pll,
+				intel_crtc_has_dp_encoder(crtc_state));
+
+	return 0;
+}
+
+static int intel_c20pll_calc_state(struct intel_crtc_state *crtc_state,
+				   struct intel_encoder *encoder)
+{
+	int err = -ENOENT;
+
+	crtc_state->dpll_hw_state.cx0pll.use_c10 = false;
+
+	/* try computed C20 HDMI tables before using consolidated tables */
+	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
+		/* TODO: Update SSC state for HDMI as well */
+		err = intel_c20_compute_hdmi_tmds_pll(crtc_state);
+
+	if (err)
+		err = intel_c20pll_calc_state_from_table(crtc_state, encoder);
+
+	return err;
 }
 
 int intel_cx0pll_calc_state(struct intel_crtc_state *crtc_state,
-- 
2.34.1

