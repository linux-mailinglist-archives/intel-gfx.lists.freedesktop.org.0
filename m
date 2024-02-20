Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC22185BB7D
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Feb 2024 13:11:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D187E10E229;
	Tue, 20 Feb 2024 12:11:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IvVhgf/6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5031910E229
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Feb 2024 12:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708431086; x=1739967086;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EK+iUiAQuCzjggU0OwiY6p5xFMiorwMjtfMWXkbeeYg=;
 b=IvVhgf/6jLYGenNKGFdR9ZBNAniMDzGqCnjaArd75jeBW43fOlvVmlj1
 VLrqicCZlaCh9fhJEvC3qyRmRxP64fnGJwZ6I6drmI1OGBngQj2wtPTWB
 c0LnDX6C6m2yZ3uQsVhWYog2qDncVVV+EUmxSvI0enDrB75um9hpuxPZi
 tK+Ca9Kg/jrfdCkHgkiOCPtUHUnzlDpvst48OMPlbssKaYoHd5dRb+zqp
 2WeGpp1p4PFufi83OK4Kk6vOFJt8VFa5fgYHLbvt6T2kgUKjK5Bjz8oc6
 eCXwRxhP9y8GYLSdAlYtQje2c5Cx2/k0WYVYsyb7s2M2vcMLMKSlztfgX g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10989"; a="24987090"
X-IronPort-AV: E=Sophos;i="6.06,172,1705392000"; d="scan'208";a="24987090"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2024 04:11:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,172,1705392000"; 
   d="scan'208";a="9378136"
Received: from sbeleaga-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.43.237])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2024 04:11:02 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 2/6] drm/i915/psr: Calculate aux less wake time
Date: Tue, 20 Feb 2024 14:10:41 +0200
Message-Id: <20240220121045.2156004-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240220121045.2156004-1-jouni.hogander@intel.com>
References: <20240220121045.2156004-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Calculate aux less wake time and store it into alpm_params struct

Bspec: 71477

v2:
  - use variables instead of values directly
  - fix max value
  - move converting port clock to Mhz into _lnl_compute_aux_less_wake_time

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 60 +++++++++++++++++++
 2 files changed, 61 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 0d4012097db1..a531c1e5af20 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1721,6 +1721,7 @@ struct intel_psr {
 
 		/* LNL and beyond */
 		u8 check_entry_lines;
+		u8 aux_less_wake_lines;
 	} alpm_parameters;
 
 	ktime_t last_entry_attempt;
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 72cadad09db5..83f3cab31878 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1126,6 +1126,63 @@ static bool _compute_psr2_sdp_prior_scanline_indication(struct intel_dp *intel_d
 	return true;
 }
 
+/*
+ * AUX-Less Wake Time = CEILING( ((PHY P2 to P0) + tLFPS_Period, Max+
+ * tSilence, Max+ tPHY Establishment + tCDS) / tline)
+ * For the "PHY P2 to P0" latency see the PHY Power Control page
+ * (PHY P2 to P0) : https://gfxspecs.intel.com/Predator/Home/Index/68965
+ * : 12 us
+ * The tLFPS_Period, Max term is 800ns
+ * The tSilence, Max term is 180ns
+ * The tPHY Establishment (a.k.a. t1) term is 50us
+ * The tCDS term is 1 or 2 times t2
+ * t2 = Number ML_PHY_LOCK * tML_PHY_LOCK
+ * Number ML_PHY_LOCK = ( 7 + CEILING( 6.5us / tML_PHY_LOCK ) + 1)
+ * Rounding up the 6.5us padding to the next ML_PHY_LOCK boundary and
+ * adding the "+ 1" term ensures all ML_PHY_LOCK sequences that start
+ * within the CDS period complete within the CDS period regardless of
+ * entry into the period
+ * tML_PHY_LOCK = TPS4 Length * ( 10 / (Link Rate in MHz) )
+ * TPS4 Length = 252 Symbols
+ */
+static int _lnl_compute_aux_less_wake_time(int port_clock)
+{
+	int tphy2_p2_to_p0 = 12 * 1000;
+	int tlfps_period_max = 800;
+	int tsilence_max = 180;
+	int t1 = 50 * 1000;
+	int tps4 = 252;
+	int tml_phy_lock = 1000 * 1000 * tps4 * 10 / port_clock;
+	int num_ml_phy_lock = 7 + DIV_ROUND_UP(6500, tml_phy_lock) + 1;
+	int t2 = num_ml_phy_lock * tml_phy_lock;
+	int tcds = 1 * t2;
+
+	return DIV_ROUND_UP(tphy2_p2_to_p0 + tlfps_period_max + tsilence_max +
+			    t1 + tcds, 1000);
+}
+
+static int _lnl_compute_aux_less_alpm_params(struct intel_dp *intel_dp,
+					     struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	int aux_less_wake_time, aux_less_wake_lines;
+
+	aux_less_wake_time =
+		_lnl_compute_aux_less_wake_time(crtc_state->port_clock);
+	aux_less_wake_lines = intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode,
+						       aux_less_wake_time);
+
+	if (aux_less_wake_lines > 63)
+		return false;
+
+	if (i915->display.params.psr_safest_params)
+		aux_less_wake_lines = 63;
+
+	intel_dp->psr.alpm_parameters.aux_less_wake_lines = aux_less_wake_lines;
+
+	return true;
+}
+
 static bool _lnl_compute_alpm_params(struct intel_dp *intel_dp,
 				     struct intel_crtc_state *crtc_state)
 {
@@ -1142,6 +1199,9 @@ static bool _lnl_compute_alpm_params(struct intel_dp *intel_dp,
 	if (check_entry_lines > 15)
 		return false;
 
+	if (!_lnl_compute_aux_less_alpm_params(intel_dp, crtc_state))
+		return false;
+
 	if (i915->display.params.psr_safest_params)
 		check_entry_lines = 15;
 
-- 
2.34.1

