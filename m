Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35741C1EC5A
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Oct 2025 08:34:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6CAD10E8B6;
	Thu, 30 Oct 2025 07:34:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QOTG4YCA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1398410E8B1;
 Thu, 30 Oct 2025 07:34:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761809685; x=1793345685;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jiiKSy3Vd2YguIGSkw8sW9IlegE7cxGj51JDz3xIqPY=;
 b=QOTG4YCArY+dzxXtDdmVhkVEDZJM0E4k6vqGlOIk2W/CvZ6DLL5hoFfb
 6Wwo5S9uhYHHAgSkQBw63rKkdi33qyuTuK27DdqPYBswHPuK5q2ZK6Lk5
 qgyOt8fQ5VcBeTIwzR0bIUpgk2KfplQ1/4Wd5BnBWG0dkYLmF7AbYHoRh
 CMHy80y2atLyIx9eGaG2YaKkwaRBYbS2YiDXRTDdY7TDsd0Me06EpCe6q
 RFhl/zquDbuwHIGnc8NVuDfwhPlX0ssCtef+q20773o8asQel+e/QEPwu
 Aqy12ymGtfSZer5shJ3WD4q8r+JCT3HC8/BVZc5yPuANELEFDRHvoz/x4 w==;
X-CSE-ConnectionGUID: /ek1zzf9QqmhP6+z7FEEqg==
X-CSE-MsgGUID: QrQ3BWDmRnKJK0SxZzgkuA==
X-IronPort-AV: E=McAfee;i="6800,10657,11597"; a="75063362"
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="75063362"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 00:34:44 -0700
X-CSE-ConnectionGUID: rOv6xyu9Qdam7+KhPa/oWw==
X-CSE-MsgGUID: zKilF6kvSYOeYvdHAHXmXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="185075298"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa006.jf.intel.com with ESMTP; 30 Oct 2025 00:34:43 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>,
	Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH 04/32] drm/i915/display: Sanitize calculating C20 PLL state
 from tables
Date: Thu, 30 Oct 2025 09:22:21 +0200
Message-Id: <20251030072249.155095-5-mika.kahola@intel.com>
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

A follow up change adds a computation for the C20 PLL VDR state, which
is common to both the HDMI algorithmic and DP/HDMI table based method.
To prepare for that streamline the code. The C10 counterpart would
benefit from the same change, leave that for later adding a TODO
comment.

Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 68 ++++++++++++++------
 1 file changed, 47 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index dd4cf335f3ae..0dd367457f93 100644
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

