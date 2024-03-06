Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA1078734AE
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Mar 2024 11:45:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAB8B11303E;
	Wed,  6 Mar 2024 10:45:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DgC4v7zs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE10011303E
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Mar 2024 10:45:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709721932; x=1741257932;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FaO5N/hNCAGWHXIXzTz2672OEaeyoDb74WoxGZbgik0=;
 b=DgC4v7zsrYuJSPfQpw5xk7ylqxSWqOz2D1iGV17pACEbZ388QIVuBnGe
 Iv46oRLGntsZo0zxmjAq/kGug6XU+uvTQryXIqm2alno8jyLAl6S4tj4C
 60cyuQkM4IEZr1QO4mCvJFdaFRxnvZy0tFSaVmTUorBKjb07Deb5eLuiW
 t8zVvbP7eW3a4uPSuj6KPMrhNJ3zoxJ1gD0ZlOcHRBCGvui9+QoGPaWL6
 2QvHFSuUaHuWGNuJsiiZN9SyT9Dr6Qgx7grZ8f+t+l5sX9eEAIvzmpD2+
 /Si/Bq3y3gGzpzx3kF+RYS4HYG6KYLhy6v9Rz+4Su52nZC4XEXwifQPO9 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11004"; a="26794736"
X-IronPort-AV: E=Sophos;i="6.06,208,1705392000"; d="scan'208";a="26794736"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 02:45:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,208,1705392000"; d="scan'208";a="14206984"
Received: from bdallmer-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.223.229])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 02:45:30 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Animesh Manna <animesh.manna@intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 3/6] drm/i915/psr: Calculate aux less wake time
Date: Wed,  6 Mar 2024 12:45:10 +0200
Message-Id: <20240306104513.2129442-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240306104513.2129442-1-jouni.hogander@intel.com>
References: <20240306104513.2129442-1-jouni.hogander@intel.com>
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

v3:
  - use ALPM_CTL_AUX_LESS_WAKE_TIME_MASK instead of value 63
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
index e67cd5b02e84..928317acc1bd 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1737,6 +1737,7 @@ struct intel_psr {
 
 		/* LNL and beyond */
 		u8 check_entry_lines;
+		u8 aux_less_wake_lines;
 	} alpm_parameters;
 
 	ktime_t last_entry_attempt;
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 6927785fd6ff..c545ee229684 100644
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
+	if (aux_less_wake_lines > ALPM_CTL_AUX_LESS_WAKE_TIME_MASK)
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

