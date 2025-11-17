Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A519FC63A82
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 11:59:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1386A10E342;
	Mon, 17 Nov 2025 10:59:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NjA4WZV/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED7A010E33F;
 Mon, 17 Nov 2025 10:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763377146; x=1794913146;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=f3frrQ1yqiXyNJxtsUEKSMvbYaHEuN/AFmhgFAfHoX0=;
 b=NjA4WZV/HStW1zFxh4qUi8sd8KTDGXpEnQw08boz1PYl6c/ROBjkhDc6
 zARRGJBOSgc74ISet4HQl+mk91e8BeBkpHNqYJqxb9+vXKyOyHlnRNwov
 SfyDxx6YUETFUYYGpel+bVLRj/g/JQdRrOVWJo1W9oc+gJzk4ghkOCW88
 HUcY9OFcdVTzmhknN2sajcOLzA6w9dCbur924awcs0NmTZcULEbbfvlId
 Wru4I5DlLu5b/9iGBPVDWJb6+nJq7VCv9uUnlJQIQ+j+1wdSjDM4Q5aTf
 xAg4XlCtsde9sBsk8iX8LN8zhc6AvEfssT07yPzoMsgKiZYSgxHhCr4v5 Q==;
X-CSE-ConnectionGUID: RL1Ki/1ERLGvi05ZnyPRmg==
X-CSE-MsgGUID: usyXL6vAQTqBf2vt6t5s3g==
X-IronPort-AV: E=McAfee;i="6800,10657,11615"; a="76475329"
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="76475329"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 02:59:05 -0800
X-CSE-ConnectionGUID: TSCigg+RRFm4eRjynB70gQ==
X-CSE-MsgGUID: /1UkjCj2QQOxg2+1oYlaaA==
X-ExtLoop1: 1
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa003.fm.intel.com with ESMTP; 17 Nov 2025 02:59:04 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>, Mika Kahola <mika.kahola@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v2 04/32] drm/i915/cx0: Sanitize calculating C20 PLL state
 from tables
Date: Mon, 17 Nov 2025 12:45:34 +0200
Message-Id: <20251117104602.2363671-5-mika.kahola@intel.com>
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

A follow up change adds a computation for the C20 PLL VDR state, which
is common to both the HDMI algorithmic and DP/HDMI table based method.
To prepare for that streamline the code. The C10 counterpart would
benefit from the same change, leave that for later adding a TODO
comment.

Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 68 ++++++++++++++------
 1 file changed, 47 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 93b18dc49ee5..a1f2272fed14 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2072,6 +2072,10 @@ static void intel_c10pll_update_pll(struct intel_encoder *encoder,
 		pll_state->c10.pll[i] = 0;
 }
 
+/*
+ * TODO: Convert the following to align with intel_c20pll_find_table() and
+ * intel_c20pll_calc_state_from_table().
+ */
 static int intel_c10pll_calc_state_from_table(struct intel_encoder *encoder,
 					      const struct intel_c10pll_state * const *tables,
 					      bool is_dp, int port_clock,
@@ -2325,7 +2329,7 @@ static int intel_c20_compute_hdmi_tmds_pll(struct intel_crtc_state *crtc_state)
 }
 
 static const struct intel_c20pll_state * const *
-intel_c20_pll_tables_get(struct intel_crtc_state *crtc_state,
+intel_c20_pll_tables_get(const struct intel_crtc_state *crtc_state,
 			 struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
@@ -2353,35 +2357,57 @@ intel_c20_pll_tables_get(struct intel_crtc_state *crtc_state,
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

