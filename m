Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A716886FB32
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Mar 2024 08:57:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F09210FDF3;
	Mon,  4 Mar 2024 07:57:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l8b65Niq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32E1710FDF3
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Mar 2024 07:57:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709539067; x=1741075067;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=isO6w/52kv9hXrxxPiKBA/9WMfEjfwU3FgjWXYuI2Ek=;
 b=l8b65NiqpYbId0999POMYjSBGWlj7XA2yPojFgUq92Ohc01ag+6RAZ8s
 QMDaMTId9JjNkGMI1ThHFn9OL2Zb5aHaNBugNXJxWWnfDNb3XNhhjRhKe
 vKSz5JwTwaUD2pZFqGVlczpl47eSk+a4Nor5sVzqHqvrf0MACZ/sSt7f7
 Kc0IuilwC9zZ5rVICJ83A0ak76U+CefUcoBenOCmbGVHb9Jc3m+VrYmbi
 Q0j3mOFSD3kA9UQjmFx42tSwg543+6TH87tuc8oyaxLS5DULkrb4APeta
 ao08M8ULuwC17A51awMNwPenYLAvlRtcI3cQW+kA7u7Kw6iAquAxTqPti g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11002"; a="4139325"
X-IronPort-AV: E=Sophos;i="6.06,203,1705392000"; 
   d="scan'208";a="4139325"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2024 23:57:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,203,1705392000"; 
   d="scan'208";a="9043943"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa008.fm.intel.com with ESMTP; 03 Mar 2024 23:57:42 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jouni.hogander@intel.com, arun.r.murthy@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [RFC 1/3] drm/i915/alpm: Move alpm parameters from intel_psr
Date: Mon,  4 Mar 2024 13:13:01 +0530
Message-Id: <20240304074303.202882-2-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20240304074303.202882-1-animesh.manna@intel.com>
References: <20240304074303.202882-1-animesh.manna@intel.com>
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

ALPM can be enabled for non psr panel and currenly aplm-params are
encapsulated under intel_psr struct, so moving out to intel_dp struct.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 .../drm/i915/display/intel_display_types.h    | 23 +++++-----
 drivers/gpu/drm/i915/display/intel_psr.c      | 42 +++++++++----------
 2 files changed, 31 insertions(+), 34 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index cc52693a0e58..d473d8dca90a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1715,18 +1715,6 @@ struct intel_psr {
 	bool psr2_sel_fetch_cff_enabled;
 	bool req_psr2_sdp_prior_scanline;
 	u8 sink_sync_latency;
-
-	struct {
-		u8 io_wake_lines;
-		u8 fast_wake_lines;
-
-		/* LNL and beyond */
-		u8 check_entry_lines;
-		u8 aux_less_wake_lines;
-		u8 silence_period_sym_clocks;
-		u8 lfps_half_cycle_num_of_syms;
-	} alpm_parameters;
-
 	ktime_t last_entry_attempt;
 	ktime_t last_exit;
 	bool sink_not_reliable;
@@ -1852,6 +1840,17 @@ struct intel_dp {
 	unsigned long last_oui_write;
 
 	bool colorimetry_support;
+
+	struct {
+		u8 io_wake_lines;
+		u8 fast_wake_lines;
+
+		/* LNL and beyond */
+		u8 check_entry_lines;
+		u8 aux_less_wake_lines;
+		u8 silence_period_sym_clocks;
+		u8 lfps_half_cycle_num_of_syms;
+	} alpm_parameters;
 };
 
 enum lspcon_vendor {
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index ed5f62f89027..4adcddba69c1 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -779,8 +779,8 @@ static u32 intel_psr2_get_tp_time(struct intel_dp *intel_dp)
 
 static int psr2_block_count_lines(struct intel_dp *intel_dp)
 {
-	return intel_dp->psr.alpm_parameters.io_wake_lines < 9 &&
-		intel_dp->psr.alpm_parameters.fast_wake_lines < 9 ? 8 : 12;
+	return intel_dp->alpm_parameters.io_wake_lines < 9 &&
+		intel_dp->alpm_parameters.fast_wake_lines < 9 ? 8 : 12;
 }
 
 static int psr2_block_count(struct intel_dp *intel_dp)
@@ -817,7 +817,6 @@ static void dg2_activate_panel_replay(struct intel_dp *intel_dp)
 static void hsw_activate_psr2(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
-	struct intel_psr *psr = &intel_dp->psr;
 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 	u32 val = EDP_PSR2_ENABLE;
 	u32 psr_val = 0;
@@ -859,18 +858,18 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
 		 */
 		int tmp;
 
-		tmp = map[psr->alpm_parameters.io_wake_lines -
+		tmp = map[intel_dp->alpm_parameters.io_wake_lines -
 			  TGL_EDP_PSR2_IO_BUFFER_WAKE_MIN_LINES];
 		val |= TGL_EDP_PSR2_IO_BUFFER_WAKE(tmp + TGL_EDP_PSR2_IO_BUFFER_WAKE_MIN_LINES);
 
-		tmp = map[psr->alpm_parameters.fast_wake_lines - TGL_EDP_PSR2_FAST_WAKE_MIN_LINES];
+		tmp = map[intel_dp->alpm_parameters.fast_wake_lines - TGL_EDP_PSR2_FAST_WAKE_MIN_LINES];
 		val |= TGL_EDP_PSR2_FAST_WAKE(tmp + TGL_EDP_PSR2_FAST_WAKE_MIN_LINES);
 	} else if (DISPLAY_VER(dev_priv) >= 12) {
-		val |= TGL_EDP_PSR2_IO_BUFFER_WAKE(psr->alpm_parameters.io_wake_lines);
-		val |= TGL_EDP_PSR2_FAST_WAKE(psr->alpm_parameters.fast_wake_lines);
+		val |= TGL_EDP_PSR2_IO_BUFFER_WAKE(intel_dp->alpm_parameters.io_wake_lines);
+		val |= TGL_EDP_PSR2_FAST_WAKE(intel_dp->alpm_parameters.fast_wake_lines);
 	} else if (DISPLAY_VER(dev_priv) >= 9) {
-		val |= EDP_PSR2_IO_BUFFER_WAKE(psr->alpm_parameters.io_wake_lines);
-		val |= EDP_PSR2_FAST_WAKE(psr->alpm_parameters.fast_wake_lines);
+		val |= EDP_PSR2_IO_BUFFER_WAKE(intel_dp->alpm_parameters.io_wake_lines);
+		val |= EDP_PSR2_FAST_WAKE(intel_dp->alpm_parameters.fast_wake_lines);
 	}
 
 	if (intel_dp->psr.req_psr2_sdp_prior_scanline)
@@ -1253,9 +1252,9 @@ static int _lnl_compute_aux_less_alpm_params(struct intel_dp *intel_dp,
 	if (i915->display.params.psr_safest_params)
 		aux_less_wake_lines = 63;
 
-	intel_dp->psr.alpm_parameters.aux_less_wake_lines = aux_less_wake_lines;
-	intel_dp->psr.alpm_parameters.silence_period_sym_clocks = silence_period;
-	intel_dp->psr.alpm_parameters.lfps_half_cycle_num_of_syms = lfps_half_cycle;
+	intel_dp->alpm_parameters.aux_less_wake_lines = aux_less_wake_lines;
+	intel_dp->alpm_parameters.silence_period_sym_clocks = silence_period;
+	intel_dp->alpm_parameters.lfps_half_cycle_num_of_syms = lfps_half_cycle;
 
 	return true;
 }
@@ -1282,7 +1281,7 @@ static bool _lnl_compute_alpm_params(struct intel_dp *intel_dp,
 	if (i915->display.params.psr_safest_params)
 		check_entry_lines = 15;
 
-	intel_dp->psr.alpm_parameters.check_entry_lines = check_entry_lines;
+	intel_dp->alpm_parameters.check_entry_lines = check_entry_lines;
 
 	return true;
 }
@@ -1326,8 +1325,8 @@ static bool _compute_alpm_params(struct intel_dp *intel_dp,
 		io_wake_lines = fast_wake_lines = max_wake_lines;
 
 	/* According to Bspec lower limit should be set as 7 lines. */
-	intel_dp->psr.alpm_parameters.io_wake_lines = max(io_wake_lines, 7);
-	intel_dp->psr.alpm_parameters.fast_wake_lines = max(fast_wake_lines, 7);
+	intel_dp->alpm_parameters.io_wake_lines = max(io_wake_lines, 7);
+	intel_dp->alpm_parameters.fast_wake_lines = max(fast_wake_lines, 7);
 
 	return true;
 }
@@ -1695,7 +1694,6 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
-	struct intel_psr *psr = &intel_dp->psr;
 	u32 alpm_ctl;
 
 	if (DISPLAY_VER(dev_priv) < 20 || (!intel_dp->psr.psr2_enabled &&
@@ -1712,22 +1710,22 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp)
 			       PORT_ALPM_CTL_MAX_PHY_SWING_SETUP(15) |
 			       PORT_ALPM_CTL_MAX_PHY_SWING_HOLD(0) |
 			       PORT_ALPM_CTL_SILENCE_PERIOD(
-				       psr->alpm_parameters.silence_period_sym_clocks));
+				       intel_dp->alpm_parameters.silence_period_sym_clocks));
 
 		intel_de_write(dev_priv, PORT_ALPM_LFPS_CTL(cpu_transcoder),
 			       PORT_ALPM_LFPS_CTL_LFPS_CYCLE_COUNT(10) |
 			       PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION(
-				       psr->alpm_parameters.lfps_half_cycle_num_of_syms) |
+				       intel_dp->alpm_parameters.lfps_half_cycle_num_of_syms) |
 			       PORT_ALPM_LFPS_CTL_FIRST_LFPS_HALF_CYCLE_DURATION(
-				       psr->alpm_parameters.lfps_half_cycle_num_of_syms) |
+				       intel_dp->alpm_parameters.lfps_half_cycle_num_of_syms) |
 			       PORT_ALPM_LFPS_CTL_LAST_LFPS_HALF_CYCLE_DURATION(
-				       psr->alpm_parameters.lfps_half_cycle_num_of_syms));
+				       intel_dp->alpm_parameters.lfps_half_cycle_num_of_syms));
 	} else {
 		alpm_ctl = ALPM_CTL_EXTENDED_FAST_WAKE_ENABLE |
-			ALPM_CTL_EXTENDED_FAST_WAKE_TIME(psr->alpm_parameters.fast_wake_lines);
+			ALPM_CTL_EXTENDED_FAST_WAKE_TIME(intel_dp->alpm_parameters.fast_wake_lines);
 	}
 
-	alpm_ctl |= ALPM_CTL_ALPM_ENTRY_CHECK(psr->alpm_parameters.check_entry_lines);
+	alpm_ctl |= ALPM_CTL_ALPM_ENTRY_CHECK(intel_dp->alpm_parameters.check_entry_lines);
 
 	intel_de_write(dev_priv, ALPM_CTL(cpu_transcoder), alpm_ctl);
 }
-- 
2.29.0

