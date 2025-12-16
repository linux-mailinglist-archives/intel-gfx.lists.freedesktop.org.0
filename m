Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBDE4CC1A20
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Dec 2025 09:46:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5668910E7AC;
	Tue, 16 Dec 2025 08:46:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nTLI0p55";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B011310E79B;
 Tue, 16 Dec 2025 08:46:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765874809; x=1797410809;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VvLZjS1HR1jh4xpPdBMa3D3TQZ9+YU1w3qe4Qvhi2pY=;
 b=nTLI0p55/gQVBEi+9A9qBWCHB3SMqExhNVikHB0Wa9AXlEVsItBgCeqm
 bBRVcObdBERsRuUorSWQqlO/qlRvuPIMAiEQ6HFCU6JRB3wlszRV0COuf
 Tdy+P/3k5VcWmexVxJjDPo4RBdd1Kqevuy0oJ715sASm2ENKdiU+g6LmF
 IUKCJQMebDdk6d6/yFuIvUQn0SWafK5Ny1lKBOmojmbe7k7Jn8kU8LW4n
 ZVXISBHB1yvGM0Y+PeYNfmSFACD5oEuxvjy18eAjKHUOH64arXcZ+STX5
 mXvYFed3bw7+6nGtgGtPFICakotBLSVWJURyY1cb0EHMskUScUBFGjzfn A==;
X-CSE-ConnectionGUID: JFWttIe1SU2S+lh87/480w==
X-CSE-MsgGUID: f2XxmF9KSyGRleLTcVAcLg==
X-IronPort-AV: E=McAfee;i="6800,10657,11643"; a="71642312"
X-IronPort-AV: E=Sophos;i="6.21,152,1763452800"; d="scan'208";a="71642312"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 00:46:49 -0800
X-CSE-ConnectionGUID: cvs/vkloQOSfYIYZQZ11Pw==
X-CSE-MsgGUID: TLcBv8VIT2eXIxkiuT7s7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,152,1763452800"; d="scan'208";a="198448813"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa009.fm.intel.com with ESMTP; 16 Dec 2025 00:46:48 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
	Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH 07/13] drm/i915/display: Add helper function for fuzzy clock
 check
Date: Tue, 16 Dec 2025 10:37:53 +0200
Message-Id: <20251216083759.383163-8-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251216083759.383163-1-mika.kahola@intel.com>
References: <20251216083759.383163-1-mika.kahola@intel.com>
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

Add fuzzy clock check for calculated and requested port clocks.
These clocks are expected to be withing +-2 kHz range.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 19 ++++++++++++++++---
 drivers/gpu/drm/i915/display/intel_cx0_phy.h |  1 +
 2 files changed, 17 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index a33150db2f16..ef23a3fb3286 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2205,6 +2205,11 @@ static int intel_c20pll_calc_port_clock(struct intel_encoder *encoder,
 	return vco << tx_rate_mult >> tx_clk_div >> tx_rate;
 }
 
+bool intel_cx0pll_clock_matches(int clock1, int clock2)
+{
+	return abs(clock1 - clock2) <= 2;
+}
+
 /*
  * TODO: Convert the following to align with intel_c20pll_find_table() and
  * intel_c20pll_calc_state_from_table().
@@ -2218,7 +2223,10 @@ static int intel_c10pll_calc_state_from_table(struct intel_encoder *encoder,
 	int i;
 
 	for (i = 0; tables; i++) {
-		if (port_clock == tables[i].clock_rate) {
+		int clock = intel_c10pll_calc_port_clock(tables[i].c10);
+
+		drm_WARN_ON(display->drm, !intel_cx0pll_clock_matches(clock, tables[i].clock_rate));
+		if (intel_cx0pll_clock_matches(port_clock, clock)) {
 			pll_state->c10 = *tables[i].c10;
 			intel_cx0pll_update_ssc(encoder, pll_state, is_dp);
 			intel_c10pll_update_pll(encoder, pll_state);
@@ -2709,9 +2717,14 @@ intel_c20_pll_find_table(struct intel_display *display,
 	if (!tables)
 		return NULL;
 
-	for (i = 0; tables; i++)
-		if (port_clock == tables[i].clock_rate)
+	for (i = 0; tables; i++) {
+		int clock = intel_c20pll_calc_port_clock(tables[i].c20);
+
+		drm_WARN_ON(display->drm, !intel_cx0pll_clock_matches(clock, tables[i].clock_rate));
+
+		if (intel_cx0pll_clock_matches(port_clock, clock))
 			return &tables[i];
+	}
 
 	return NULL;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
index 9f10113e2d18..3d9c580eb562 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -43,6 +43,7 @@ void intel_mtl_tbt_pll_enable_clock(struct intel_encoder *encoder,
 				    int port_clock);
 void intel_mtl_tbt_pll_disable_clock(struct intel_encoder *encoder);
 
+bool intel_cx0pll_clock_matches(int clock1, int clock2);
 int intel_cx0pll_calc_state(const struct intel_crtc_state *crtc_state,
 			    struct intel_encoder *encoder,
 			    struct intel_dpll_hw_state *hw_state);
-- 
2.34.1

