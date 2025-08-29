Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26FE4B3B2A0
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Aug 2025 07:39:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6378F10EB32;
	Fri, 29 Aug 2025 05:39:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CF0Ib3Vl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69C3710E1FB;
 Fri, 29 Aug 2025 05:39:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756445989; x=1787981989;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=o56HhLHmDO6HluIN96WZbfpbJgO4FI4E28j7XQbVn5g=;
 b=CF0Ib3VlrsO+gvc1mXc118pLGxM6LtmRwucBs9kGXPxPnnVvq3MwDz6E
 uZk0TArqycI06Hsd28PP1Cj5XAKv7ZHYUDOpxnqby14w7W3qRjucf6zFh
 cuNEx3RjPcB6hkiE4BY/8NEaiHNUhiyucRhE0awlLIf6k1gtVm9NKlLbf
 4FDO6xrzGLfny28rMk5OJgrCPF14lPrzk7TtDpsz6vmmkxKmK80N1X65a
 8+avHzr/HrxiCAqdCw05tIm3HPmFw+5zQsH3WIt4aNBprhY/o45QX+k+V
 Vo18alaZECEBy6e+HTnu2NiU/vuU5coaQ4Nvq+bGdJu8ou6FEPrbnb6Hm w==;
X-CSE-ConnectionGUID: TMYl3y+0TnqVBnY7GiAR+g==
X-CSE-MsgGUID: uVUV1/5MQSeh+V/4lTz2Gg==
X-IronPort-AV: E=McAfee;i="6800,10657,11536"; a="58874495"
X-IronPort-AV: E=Sophos;i="6.18,221,1751266800"; d="scan'208";a="58874495"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 22:39:49 -0700
X-CSE-ConnectionGUID: fEhAEX8wQUWYiEiZufm8Ag==
X-CSE-MsgGUID: 5kjgV9sJTnyB8blg9GB8bA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,221,1751266800"; d="scan'208";a="193963830"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.172])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 22:39:48 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 3/4] drm/i915/alpm: Replace hardcoded LFPS cycle with
 proper calculation
Date: Fri, 29 Aug 2025 08:39:27 +0300
Message-ID: <20250829053929.3585636-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250829053929.3585636-1-jouni.hogander@intel.com>
References: <20250829053929.3585636-1-jouni.hogander@intel.com>
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

Currently LFPS is hadcoded for different port clocks. Replace this with
proper calculation.

v2: replace hardcoded 20 with 2 * LFPS_CYCLE_COUNT

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c | 90 ++++++++++-------------
 1 file changed, 38 insertions(+), 52 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index ae556a885c2a..b061f7165bba 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -58,58 +58,43 @@ static int get_silence_period_symbols(const struct intel_crtc_state *crtc_state)
 		1000 / 1000;
 }
 
-/*
- * See Bspec: 71632 for the table
- *
- * Half cycle duration:
- *
- * Link rates 1.62 - 4.32 and tLFPS_Cycle = 70 ns
- * FLOOR( (Link Rate * tLFPS_Cycle) / (2 * 10) )
- *
- * Link rates 5.4 - 8.1
- * PORT_ALPM_LFPS_CTL[ LFPS Cycle Count ] = 10
- * LFPS Period chosen is the mid-point of the min:max values from the table
- * FLOOR( LFPS Period in Symbol clocks /
- * (2 * PORT_ALPM_LFPS_CTL[ LFPS Cycle Count ]) )
- */
-static bool _lnl_get_lfps_half_cycle(int link_rate, int *lfps_half_cycle)
+static int get_lfps_cycle_min_max_time(const struct intel_crtc_state *crtc_state,
+				       int *min, int *max)
 {
-	switch (link_rate) {
-	case 162000:
-		*lfps_half_cycle = 5;
-		break;
-	case 216000:
-		*lfps_half_cycle = 7;
-		break;
-	case 243000:
-		*lfps_half_cycle = 8;
-		break;
-	case 270000:
-		*lfps_half_cycle = 9;
-		break;
-	case 324000:
-		*lfps_half_cycle = 11;
-		break;
-	case 432000:
-		*lfps_half_cycle = 15;
-		break;
-	case 540000:
-		*lfps_half_cycle = 12;
-		break;
-	case 648000:
-		*lfps_half_cycle = 15;
-		break;
-	case 675000:
-		*lfps_half_cycle = 15;
-		break;
-	case 810000:
-		*lfps_half_cycle = 19;
-		break;
-	default:
-		*lfps_half_cycle = -1;
-		return false;
+	if (crtc_state->port_clock < 540000) {
+		*min = 65 * LFPS_CYCLE_COUNT;
+		*max = 75 * LFPS_CYCLE_COUNT;
+	} else if (crtc_state->port_clock <= 810000) {
+		*min = 140;
+		*max = 800;
+	} else {
+		*min = *max = -1;
+		return -1;
 	}
-	return true;
+
+	return 0;
+}
+
+static int get_lfps_cycle_time(const struct intel_crtc_state *crtc_state)
+{
+	int tlfps_cycle_min, tlfps_cycle_max, ret;
+
+	ret = get_lfps_cycle_min_max_time(crtc_state, &tlfps_cycle_min,
+					  &tlfps_cycle_max);
+	if (ret)
+		return ret;
+
+	return tlfps_cycle_min +  (tlfps_cycle_max - tlfps_cycle_min) / 2;
+}
+
+static int get_lfps_half_cycle_clocks(const struct intel_crtc_state *crtc_state)
+{
+	int lfps_cycle_time = get_lfps_cycle_time(crtc_state);
+
+	if (lfps_cycle_time < 0)
+		return -1;
+
+	return lfps_cycle_time * crtc_state->port_clock / 1000 / 1000 / (2 * LFPS_CYCLE_COUNT);
 }
 
 /*
@@ -161,8 +146,9 @@ _lnl_compute_aux_less_alpm_params(struct intel_dp *intel_dp,
 	aux_less_wake_lines = intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode,
 						       aux_less_wake_time);
 	silence_period = get_silence_period_symbols(crtc_state);
-	if (!_lnl_get_lfps_half_cycle(crtc_state->port_clock,
-				      &lfps_half_cycle))
+
+	lfps_half_cycle = get_lfps_half_cycle_clocks(crtc_state);
+	if (lfps_half_cycle < 0)
 		return false;
 
 	if (aux_less_wake_lines > ALPM_CTL_AUX_LESS_WAKE_TIME_MASK ||
-- 
2.43.0

