Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DE1C886A4A
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Mar 2024 11:30:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 150CB10F2B2;
	Fri, 22 Mar 2024 10:30:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G3zIUEfA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F010110F2B2
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Mar 2024 10:30:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711103426; x=1742639426;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xZI89EwsT3hjN4sZuspUOWFOQIfuzrAjPn2OPm47Ggg=;
 b=G3zIUEfAhc1BBX2+qUcXHlLL4FUySoQTYSIvhX2vroDHE/4nGu7KP2L1
 WrrcjV1HKakHgYFpVROIULqWueCf+Pww0OdxFP34dJhPrWfkcIaC6RSyb
 dNwV4oW4aZjm5RY30gRHp/eyIbqUsYNUwMT4XBHfJQE82MGB6HMeYItpu
 HjoRiiaxySei6StxIJ9N+7RG9KROGjo6qVewCbyYrQglz19tBNpNCNcCC
 qPRgxUALy0QZvvKPSKK1OxxqBtel7C6bESNXaRPAJvED2tytUI51Ij5sd
 eZIkh4VXSqlj+CeAjHdbTgB2nMDoEzOwWEsVeIwNks2AnV8DvC1qgQEeb w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11020"; a="17292854"
X-IronPort-AV: E=Sophos;i="6.07,145,1708416000"; d="scan'208";a="17292854"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2024 03:30:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,145,1708416000"; d="scan'208";a="19559329"
Received: from opopa-mobl1.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.252.37.152])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2024 03:30:24 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Animesh Manna <animesh.manna@intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v5 3/5] drm/i915/psr: Silence period and lfps half cycle
Date: Fri, 22 Mar 2024 12:29:58 +0200
Message-Id: <20240322103000.103332-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240322103000.103332-1-jouni.hogander@intel.com>
References: <20240322103000.103332-1-jouni.hogander@intel.com>
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

v3:
  - use PORT_ALPM_CTL_SILENCE_PERIOD_MASK instead of value 255
  - use PORT_ALPM_LFPS_CTL_LAST_LFPS_HALF_CYCLE_DURATION_MASK instead of
    value 31
v2:
  - fix some checks
  - add some more comments

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  2 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 82 ++++++++++++++++++-
 2 files changed, 82 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 8a35fb6b2ade..c2ce80bd3cb9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1743,6 +1743,8 @@ struct intel_psr {
 
 		/* LNL and beyond */
 		u8 check_entry_lines;
+		u8 silence_period_sym_clocks;
+		u8 lfps_half_cycle_num_of_syms;
 	} alpm_parameters;
 
 	ktime_t last_entry_attempt;
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index bfe320bcefef..9be8bf3fe651 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1126,6 +1126,74 @@ static bool _compute_psr2_sdp_prior_scanline_indication(struct intel_dp *intel_d
 	return true;
 }
 
+/*
+ * See Bspec: 71632 for the table
+ *
+ * Silence_period = tSilence,Min + ((tSilence,Max - tSilence,Min) / 2)
+ *
+ * Half cycle duration:
+ *
+ * Link rates 1.62 - 4.32 and tLFPS_Cycle = 70 ns
+ * FLOOR( (Link Rate * tLFPS_Cycle) / (2 * 10) )
+ *
+ * Link rates 5.4 - 8.1
+ * PORT_ALPM_LFPS_CTL[ LFPS Cycle Count ] = 10
+ * LFPS Period chosen is the mid-point of the min:max values from the table
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
@@ -1165,20 +1233,30 @@ static int _lnl_compute_aux_less_alpm_params(struct intel_dp *intel_dp,
 					     struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
-	int aux_less_wake_time, aux_less_wake_lines;
+	int aux_less_wake_time, aux_less_wake_lines, silence_period,
+		lfps_half_cycle;
 
 	aux_less_wake_time =
 		_lnl_compute_aux_less_wake_time(crtc_state->port_clock);
 	aux_less_wake_lines = intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode,
 						       aux_less_wake_time);
 
-	if (aux_less_wake_lines > ALPM_CTL_AUX_LESS_WAKE_TIME_MASK)
+	if (!_lnl_get_silence_period_and_lfps_half_cycle(intel_dp->link_rate,
+							 &silence_period,
+							 &lfps_half_cycle))
+		return false;
+
+	if (aux_less_wake_lines > ALPM_CTL_AUX_LESS_WAKE_TIME_MASK ||
+	    silence_period > PORT_ALPM_CTL_SILENCE_PERIOD_MASK ||
+	    lfps_half_cycle > PORT_ALPM_LFPS_CTL_LAST_LFPS_HALF_CYCLE_DURATION_MASK)
 		return false;
 
 	if (i915->display.params.psr_safest_params)
 		aux_less_wake_lines = ALPM_CTL_AUX_LESS_WAKE_TIME_MASK;
 
 	intel_dp->psr.alpm_parameters.fast_wake_lines = aux_less_wake_lines;
+	intel_dp->psr.alpm_parameters.silence_period_sym_clocks = silence_period;
+	intel_dp->psr.alpm_parameters.lfps_half_cycle_num_of_syms = lfps_half_cycle;
 
 	return true;
 }
-- 
2.34.1

