Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A2B2B54312
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Sep 2025 08:41:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A372B10EBA9;
	Fri, 12 Sep 2025 06:40:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="irQpLysa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97B0010EBA9;
 Fri, 12 Sep 2025 06:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757659259; x=1789195259;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qXLPzF07mz2N1FMVTjAVEZHzzj7NplFnHd18/2wo3k8=;
 b=irQpLysaaw6wYo6nbL392x3SKbq5RGpTgvyGfymvW28J+pp7itXWRbu9
 vIsYHsmdNJdAmcsREZzfVV5tyHV1KZJci3cWpnPQxNMGLQ9hDgIAvgrVQ
 XkcW9X9K3hgOnekdjwnFw5xgyj9n/CbTVU/DtAerQ1xfU/VZq4OZgYcP3
 5wZhcs5gWl4tJdh+qwb+U/Eft//o8lX/EGhEKDqrX7vhEOAMXrFwWsfU0
 MLoQcf+tHL5KLsu/7WwIcwBZMM1GZaBHSmToDFh/SsedFu0PYn5yBQ2O/
 COTnfrvTWke2CAWore0DiS43XWgrdsd3+5q4C7CtqeaPd98Ot7Eswyw5X A==;
X-CSE-ConnectionGUID: 37gTcj6JTkSn+XOksLU7/Q==
X-CSE-MsgGUID: 4At/iXmBRw66d6u6qjfyMQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11550"; a="59231026"
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="59231026"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2025 23:40:58 -0700
X-CSE-ConnectionGUID: EWOA4PltRL2HuYSOwZUZiA==
X-CSE-MsgGUID: /LZQMIgiTwiz6mlaUzIETA==
X-ExtLoop1: 1
Received: from abityuts-desk.ger.corp.intel.com (HELO jhogande-mobl3..)
 ([10.245.244.72])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2025 23:40:57 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH] drm/i915/alpm: Remove error handling from
 get_lfps_cycle_min_max_time
Date: Fri, 12 Sep 2025 09:40:35 +0300
Message-ID: <20250912064035.335329-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
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

Getter for LFPS cycle min/max times is unnecessarily checking faulty port
clock value. This doesn't make sense as erroneous port clock value would
have been noticed already at this point. Remove this check and use 140/800
ns always when port clock > 540000.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c | 29 +++++++----------------
 1 file changed, 8 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index ed7a7ed486b5..749119cc0b28 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -58,43 +58,32 @@ static int get_silence_period_symbols(const struct intel_crtc_state *crtc_state)
 		1000 / 1000;
 }
 
-static int get_lfps_cycle_min_max_time(const struct intel_crtc_state *crtc_state,
-				       int *min, int *max)
+static void get_lfps_cycle_min_max_time(const struct intel_crtc_state *crtc_state,
+					int *min, int *max)
 {
 	if (crtc_state->port_clock < 540000) {
 		*min = 65 * LFPS_CYCLE_COUNT;
 		*max = 75 * LFPS_CYCLE_COUNT;
-	} else if (crtc_state->port_clock <= 810000) {
+	} else {
 		*min = 140;
 		*max = 800;
-	} else {
-		*min = *max = -1;
-		return -1;
 	}
-
-	return 0;
 }
 
 static int get_lfps_cycle_time(const struct intel_crtc_state *crtc_state)
 {
-	int tlfps_cycle_min, tlfps_cycle_max, ret;
+	int tlfps_cycle_min, tlfps_cycle_max;
 
-	ret = get_lfps_cycle_min_max_time(crtc_state, &tlfps_cycle_min,
-					  &tlfps_cycle_max);
-	if (ret)
-		return ret;
+	get_lfps_cycle_min_max_time(crtc_state, &tlfps_cycle_min,
+				    &tlfps_cycle_max);
 
 	return tlfps_cycle_min +  (tlfps_cycle_max - tlfps_cycle_min) / 2;
 }
 
 static int get_lfps_half_cycle_clocks(const struct intel_crtc_state *crtc_state)
 {
-	int lfps_cycle_time = get_lfps_cycle_time(crtc_state);
-
-	if (lfps_cycle_time < 0)
-		return -1;
-
-	return lfps_cycle_time * crtc_state->port_clock / 1000 / 1000 / (2 * LFPS_CYCLE_COUNT);
+	return get_lfps_cycle_time(crtc_state) * crtc_state->port_clock / 1000 /
+		1000 / (2 * LFPS_CYCLE_COUNT);
 }
 
 /*
@@ -146,8 +135,6 @@ _lnl_compute_aux_less_alpm_params(struct intel_dp *intel_dp,
 	silence_period = get_silence_period_symbols(crtc_state);
 
 	lfps_half_cycle = get_lfps_half_cycle_clocks(crtc_state);
-	if (lfps_half_cycle < 0)
-		return false;
 
 	if (aux_less_wake_lines > ALPM_CTL_AUX_LESS_WAKE_TIME_MASK ||
 	    silence_period > PORT_ALPM_CTL_SILENCE_PERIOD_MASK ||
-- 
2.43.0

