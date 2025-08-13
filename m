Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98F4EB24228
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Aug 2025 09:06:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FC8810E4BE;
	Wed, 13 Aug 2025 07:06:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EWSi3mTz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25B2610E4BB;
 Wed, 13 Aug 2025 07:06:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755068795; x=1786604795;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ycg9c/JfOf0p/wQ9RPwFdtYXPwwWO3G4z3fnsmv1bwA=;
 b=EWSi3mTzKBawwcEPhFee8lZGLJwcFZBkA9y289MHRk31sb755si3Ic/X
 chl5x4Sj45amjv5H8plkLydo8wyu23L9itfq/iv8zTj3RhKpmj0NwNIEK
 +HC4XAbKPNME81CRjhvtwHL32zX7yho7pwkp3TSfm+PKtDTosnwxKGgJp
 ABbn7CVuVGXXyaVKaKDIKyLZOtU+kROk1CcBgSSIRsBiYZT6yxtC3B7Kl
 TCz2ErbLpX4P84HRLV4rAUFYlcvQHuB+MXZZc8D4tI50hbw5oHspoq+MX
 1fwZ3JEmld//RrMHot3nYBGfk36GShXzBMOs0k8V+srWCAjTa4/iIPq7R g==;
X-CSE-ConnectionGUID: JjiZV1AwQ+6M4WrJgIbepQ==
X-CSE-MsgGUID: 4FrJV/U1R7OSYf2WGZotvA==
X-IronPort-AV: E=McAfee;i="6800,10657,11520"; a="60975106"
X-IronPort-AV: E=Sophos;i="6.17,285,1747724400"; d="scan'208";a="60975106"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2025 00:06:35 -0700
X-CSE-ConnectionGUID: GD2lYP7WSIS+Cjlx5aw6NA==
X-CSE-MsgGUID: 3rIkKY7nRuK0yA2GJ5n8Yg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,285,1747724400"; d="scan'208";a="165578502"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.181])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2025 00:06:33 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 1/4] drm/i915/alpm: Calculate silence period
Date: Wed, 13 Aug 2025 10:06:14 +0300
Message-ID: <20250813070617.480793-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250813070617.480793-1-jouni.hogander@intel.com>
References: <20250813070617.480793-1-jouni.hogander@intel.com>
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

Calculate silence period instead of hardcoding it in switch case.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c | 37 +++++++++++------------
 1 file changed, 17 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index dfdde8e4eabe..e48a4218c163 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -16,6 +16,12 @@
 #include "intel_psr.h"
 #include "intel_psr_regs.h"
 
+#define SILENCE_PERIOD_MIN_TIME	80
+#define SILENCE_PERIOD_MAX_TIME	180
+#define SILENCE_PERIOD_TIME	(SILENCE_PERIOD_MIN_TIME +	\
+				(SILENCE_PERIOD_MAX_TIME -	\
+				 SILENCE_PERIOD_MIN_TIME) / 2)
+
 bool intel_alpm_aux_wake_supported(struct intel_dp *intel_dp)
 {
 	return intel_dp->alpm_dpcd & DP_ALPM_CAP;
@@ -44,11 +50,15 @@ void intel_alpm_init(struct intel_dp *intel_dp)
 	mutex_init(&intel_dp->alpm_parameters.lock);
 }
 
+static int get_silence_period_symbols(const struct intel_crtc_state *crtc_state)
+{
+	return SILENCE_PERIOD_TIME * intel_dp_link_symbol_clock(crtc_state->port_clock) /
+		1000 / 1000;
+}
+
 /*
  * See Bspec: 71632 for the table
  *
- * Silence_period = tSilence,Min + ((tSilence,Max - tSilence,Min) / 2)
- *
  * Half cycle duration:
  *
  * Link rates 1.62 - 4.32 and tLFPS_Cycle = 70 ns
@@ -60,53 +70,41 @@ void intel_alpm_init(struct intel_dp *intel_dp)
  * FLOOR( LFPS Period in Symbol clocks /
  * (2 * PORT_ALPM_LFPS_CTL[ LFPS Cycle Count ]) )
  */
-static bool _lnl_get_silence_period_and_lfps_half_cycle(int link_rate,
-							int *silence_period,
-							int *lfps_half_cycle)
+static bool _lnl_get_lfps_half_cycle(int link_rate, int *lfps_half_cycle)
 {
 	switch (link_rate) {
 	case 162000:
-		*silence_period = 20;
 		*lfps_half_cycle = 5;
 		break;
 	case 216000:
-		*silence_period = 27;
 		*lfps_half_cycle = 7;
 		break;
 	case 243000:
-		*silence_period = 31;
 		*lfps_half_cycle = 8;
 		break;
 	case 270000:
-		*silence_period = 34;
 		*lfps_half_cycle = 9;
 		break;
 	case 324000:
-		*silence_period = 41;
 		*lfps_half_cycle = 11;
 		break;
 	case 432000:
-		*silence_period = 56;
 		*lfps_half_cycle = 15;
 		break;
 	case 540000:
-		*silence_period = 69;
 		*lfps_half_cycle = 12;
 		break;
 	case 648000:
-		*silence_period = 84;
 		*lfps_half_cycle = 15;
 		break;
 	case 675000:
-		*silence_period = 87;
 		*lfps_half_cycle = 15;
 		break;
 	case 810000:
-		*silence_period = 104;
 		*lfps_half_cycle = 19;
 		break;
 	default:
-		*silence_period = *lfps_half_cycle = -1;
+		*lfps_half_cycle = -1;
 		return false;
 	}
 	return true;
@@ -160,10 +158,9 @@ _lnl_compute_aux_less_alpm_params(struct intel_dp *intel_dp,
 		_lnl_compute_aux_less_wake_time(crtc_state->port_clock);
 	aux_less_wake_lines = intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode,
 						       aux_less_wake_time);
-
-	if (!_lnl_get_silence_period_and_lfps_half_cycle(crtc_state->port_clock,
-							 &silence_period,
-							 &lfps_half_cycle))
+	silence_period = get_silence_period_symbols(crtc_state);
+	if (!_lnl_get_lfps_half_cycle(crtc_state->port_clock,
+				      &lfps_half_cycle))
 		return false;
 
 	if (aux_less_wake_lines > ALPM_CTL_AUX_LESS_WAKE_TIME_MASK ||
-- 
2.43.0

