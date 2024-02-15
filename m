Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17EBA856018
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Feb 2024 11:50:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55E2A10E5C6;
	Thu, 15 Feb 2024 10:50:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T/uRabqq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA02410E4A2
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Feb 2024 10:50:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707994210; x=1739530210;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7BIndOrIqXaHJhExlfB10v03xcC+GtfztMgk5xn/Z14=;
 b=T/uRabqq9R2ih/dX9nckc3ehBem3wtcHdCPK2ZK/KCVIyw00gA1uAs9x
 DBpj+EdzgehGG3sjnJQDBQKDhF9WIQUNUIvkpRuYxYogE+yuq7LdVFcO7
 NlzkfqoAUdcJX8335/dES6YJs/e/kDG1/NBoDgydbZdHu+OOtUCELcf1A
 HFbjgsHyiZwt/epX0UYYH5ingWLa3V0BS7nBnRMivzdJJ74Kmy2bN+bfl
 RIo0jh1+G1mViVHMY8utTwRhAhsywfty6Ds1UikMZyK/FQKQd1ACOuM/s
 tIoqoi5rsl6r62Wyu6O6mRdAw56VI6QKbFxcmAdXbIOMlZ9vTt7C+5tEJ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10984"; a="2219017"
X-IronPort-AV: E=Sophos;i="6.06,161,1705392000"; 
   d="scan'208";a="2219017"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2024 02:50:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,161,1705392000"; d="scan'208";a="26653241"
Received: from marquiz-desk-2.fi.intel.com (HELO jhogande-mobl1.fi.intel.com)
 ([10.237.72.63])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2024 02:50:08 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 4/6] drm/i915/psr: Silence period and lfps half cycle
Date: Thu, 15 Feb 2024 12:49:32 +0200
Message-Id: <20240215104934.2395239-5-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240215104934.2395239-1-jouni.hogander@intel.com>
References: <20240215104934.2395239-1-jouni.hogander@intel.com>
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

Add get function for silence period and lfps half cycle. Values are taken
from the tables in bspec.

Bspec: 71632

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  2 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 77 ++++++++++++++++++-
 2 files changed, 77 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index df82551a3f42..1bb72e606367 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1723,6 +1723,8 @@ struct intel_psr {
 		u8 check_entry_lines;
 		u8 aux_less_wake_lines;
 		u8 switch_to_active_lines;
+		u8 silence_period_sym_clocks;
+		u8 lfps_half_cycle_num_of_syms;
 	} alpm_parameters;
 
 	ktime_t last_entry_attempt;
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 4cefb9ada5db..8385d8172b27 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1126,6 +1126,72 @@ static bool _compute_psr2_sdp_prior_scanline_indication(struct intel_dp *intel_d
 	return true;
 }
 
+/*
+ * See Bspec: 71632 for the table
+ *
+ * Silence_period = tSilence,Min + ((tSilence,Max - tSilence,Min) / 2)
+ *
+ * Half cycle duration:
+ *
+ * Link rates 1.62 - 4.32 and tLFPS = 70 ns
+ * FLOOR( (Link Rate * tLFPS_Cycle) / (2 * 10) )
+ *
+ * Link rates 5.4 - 8.1
+ * FLOOR( LFPS Period in Symbol clocks /
+ * (2 * PORT_ALPM_LFPS_CTL[ LFPS Cycle Count ]) )
+ */
+static bool _lnl_get_silence_period_and_lfps_half_cycle(int link_rate,
+							int *silence_period,
+							int *lfps_half_cycle)
+{
+	switch (link_rate) {
+	case 162000:
+		*silence_period = 20;
+		*lfps_half_cycle = 5;
+		break;
+	case 216000:
+		*silence_period = 27;
+		*lfps_half_cycle = 7;
+		break;
+	case 243000:
+		*silence_period = 31;
+		*lfps_half_cycle = 8;
+		break;
+	case 270000:
+		*silence_period = 34;
+		*lfps_half_cycle = 9;
+		break;
+	case 324000:
+		*silence_period = 41;
+		*lfps_half_cycle = 11;
+		break;
+	case 432000:
+		*silence_period = 56;
+		*lfps_half_cycle = 15;
+		break;
+	case 540000:
+		*silence_period = 69;
+		*lfps_half_cycle = 12;
+		break;
+	case 648000:
+		*silence_period = 84;
+		*lfps_half_cycle = 15;
+		break;
+	case 675000:
+		*silence_period = 87;
+		*lfps_half_cycle = 15;
+		break;
+	case 810000:
+		*silence_period = 104;
+		*lfps_half_cycle = 19;
+		break;
+	default:
+		*silence_period = *lfps_half_cycle = -1;
+		return false;
+	}
+	return true;
+}
+
 /*
  * AUX-Less Wake Time = CEILING( ((PHY P2 to P0) + tLFPS_Period, Max+
  * tSilence, Max+ tPHY Establishment + tCDS) / tline)
@@ -1170,7 +1236,8 @@ static int _lnl_compute_aux_less_alpm_params(struct intel_dp *intel_dp,
 					     struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
-	int aux_less_wake_time, aux_less_wake_lines, switch_to_active_lines;
+	int aux_less_wake_time, aux_less_wake_lines, switch_to_active_lines,
+		silence_period, lfps_half_cycle;
 
 	aux_less_wake_time =
 		_lnl_compute_aux_less_wake_time(crtc_state->port_clock / 1000);
@@ -1182,7 +1249,11 @@ static int _lnl_compute_aux_less_alpm_params(struct intel_dp *intel_dp,
 			&crtc_state->hw.adjusted_mode,
 			_lnl_compute_switch_to_active_time(crtc_state->port_clock / 1000));
 
-	if (aux_less_wake_lines > 32 || switch_to_active_lines > 32)
+	if (aux_less_wake_lines > 32 || switch_to_active_lines > 32 ||
+	    silence_period > 256 || silence_period < 0 ||
+	    !_lnl_get_silence_period_and_lfps_half_cycle(intel_dp->link_rate,
+							 &silence_period,
+							 &lfps_half_cycle))
 		return false;
 
 	if (i915->display.params.psr_safest_params) {
@@ -1192,6 +1263,8 @@ static int _lnl_compute_aux_less_alpm_params(struct intel_dp *intel_dp,
 
 	intel_dp->psr.alpm_parameters.aux_less_wake_lines = aux_less_wake_lines;
 	intel_dp->psr.alpm_parameters.switch_to_active_lines = switch_to_active_lines;
+	intel_dp->psr.alpm_parameters.silence_period_sym_clocks = silence_period;
+	intel_dp->psr.alpm_parameters.lfps_half_cycle_num_of_syms = lfps_half_cycle;
 
 	return true;
 }
-- 
2.34.1

