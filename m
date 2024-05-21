Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB0598CAA4B
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2024 10:47:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6C3110E781;
	Tue, 21 May 2024 08:47:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Zn56LV1B";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29A3210E76E
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 May 2024 08:47:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716281250; x=1747817250;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=La0Sw+HKTOey72cY9NzJRfpey7ndOs9Ls9VrfHU0tho=;
 b=Zn56LV1BKEOEkZWSbpNIrS218pOpUcXRuVkwmcgFUnBdUlY55GBq8V2L
 6vdOUw6UEsp6aPMSYSLlHzLC3bOpt2CLQu8+IUCL9QP4HcQX7Bz8vP9+F
 daTWVrauWMc+m0++qupU4S49QMXlf0CnFClOcykAcP/vqJVIZw9QgBdT4
 6eUAyW82s/71kZgiWI497TEa+NV8SZYrO1dgfjXdR+jpr1OqmVziKOs7j
 r9DK/P1LleMgzFhELNNZOYx9TdLGlOO+kd5VftlpV6ArvELAGO3OVTN+F
 ufkt7cBR1z6k5q/jPC/glkChbT6rBfMKSnb+sRVBIKuzrSfu5J8wjM+y8 g==;
X-CSE-ConnectionGUID: Z/t/zsP+Tbm/70sfK/+BQQ==
X-CSE-MsgGUID: r+x/44SwSJefDWh6PuR75A==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="12297822"
X-IronPort-AV: E=Sophos;i="6.08,177,1712646000"; d="scan'208";a="12297822"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 01:47:24 -0700
X-CSE-ConnectionGUID: gayE5l3WQF2G2zfFnxm9jg==
X-CSE-MsgGUID: 5KvXVzZ8QsCw/0mYuxm2GQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,177,1712646000"; d="scan'208";a="33272531"
Received: from mathiasj-mobl.amr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.211.157])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 01:47:23 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 09/17] drm/i915/psr: Check panel ALPM capability for eDP
 Panel Replay
Date: Tue, 21 May 2024 11:46:40 +0300
Message-Id: <20240521084648.1987837-10-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240521084648.1987837-1-jouni.hogander@intel.com>
References: <20240521084648.1987837-1-jouni.hogander@intel.com>
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

Our HW doesn't support Panel Replay without AUX_LESS ALPM on eDP. Check
panel support for this and prevent eDP panel replay if it doesn't exits.

Bspec: 68920

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 32 ++++++++++++------------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index cc2d0143ca2d..b2b230f34721 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -445,16 +445,6 @@ void intel_psr_irq_handler(struct intel_dp *intel_dp, u32 psr_iir)
 	}
 }
 
-static bool intel_dp_get_alpm_status(struct intel_dp *intel_dp)
-{
-	u8 alpm_caps = 0;
-
-	if (drm_dp_dpcd_readb(&intel_dp->aux, DP_RECEIVER_ALPM_CAP,
-			      &alpm_caps) != 1)
-		return false;
-	return alpm_caps & DP_ALPM_CAP;
-}
-
 static u8 intel_dp_get_sink_sync_latency(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
@@ -556,10 +546,18 @@ static void intel_dp_get_su_granularity(struct intel_dp *intel_dp)
 	intel_dp->psr.su_y_granularity = y;
 }
 
-static void _panel_replay_init_dpcd(struct intel_dp *intel_dp)
+static void _panel_replay_init_dpcd(struct intel_dp *intel_dp, u8 alpm_caps)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 
+	if (intel_dp_is_edp(intel_dp) &&
+	    (!(alpm_caps & DP_ALPM_CAP) ||
+	     !(alpm_caps & DP_ALPM_AUX_LESS_CAP))) {
+		drm_dbg_kms(&i915->drm,
+			    "Panel doesn't support AUX-less ALPM, eDP Panel Replay not possible\n");
+		return;
+	}
+
 	intel_dp->psr.sink_panel_replay_support = true;
 
 	if (intel_dp->pr_dpcd & DP_PANEL_REPLAY_SU_SUPPORT)
@@ -571,7 +569,7 @@ static void _panel_replay_init_dpcd(struct intel_dp *intel_dp)
 		    "selective_update " : "");
 }
 
-static void _psr_init_dpcd(struct intel_dp *intel_dp)
+static void _psr_init_dpcd(struct intel_dp *intel_dp, u8 alpm_caps)
 {
 	struct drm_i915_private *i915 =
 		to_i915(dp_to_dig_port(intel_dp)->base.base.dev);
@@ -599,7 +597,6 @@ static void _psr_init_dpcd(struct intel_dp *intel_dp)
 	    intel_dp->psr_dpcd[0] >= DP_PSR2_WITH_Y_COORD_IS_SUPPORTED) {
 		bool y_req = intel_dp->psr_dpcd[1] &
 			     DP_PSR2_SU_Y_COORDINATE_REQUIRED;
-		bool alpm = intel_dp_get_alpm_status(intel_dp);
 
 		/*
 		 * All panels that supports PSR version 03h (PSR2 +
@@ -612,7 +609,7 @@ static void _psr_init_dpcd(struct intel_dp *intel_dp)
 		 * Y-coordinate requirement panels we would need to enable
 		 * GTC first.
 		 */
-		intel_dp->psr.sink_psr2_support = y_req && alpm;
+		intel_dp->psr.sink_psr2_support = y_req && alpm_caps & DP_ALPM_CAP;
 		drm_dbg_kms(&i915->drm, "PSR2 %ssupported\n",
 			    intel_dp->psr.sink_psr2_support ? "" : "not ");
 	}
@@ -620,16 +617,19 @@ static void _psr_init_dpcd(struct intel_dp *intel_dp)
 
 void intel_psr_init_dpcd(struct intel_dp *intel_dp)
 {
+	u8 alpm_caps = 0;
+
 	drm_dp_dpcd_read(&intel_dp->aux, DP_PSR_SUPPORT, intel_dp->psr_dpcd,
 			 sizeof(intel_dp->psr_dpcd));
 	drm_dp_dpcd_readb(&intel_dp->aux, DP_PANEL_REPLAY_CAP,
 			  &intel_dp->pr_dpcd);
+	drm_dp_dpcd_readb(&intel_dp->aux, DP_RECEIVER_ALPM_CAP, &alpm_caps);
 
 	if (intel_dp->pr_dpcd & DP_PANEL_REPLAY_SUPPORT)
-		_panel_replay_init_dpcd(intel_dp);
+		_panel_replay_init_dpcd(intel_dp, alpm_caps);
 
 	if (intel_dp->psr_dpcd[0])
-		_psr_init_dpcd(intel_dp);
+		_psr_init_dpcd(intel_dp, alpm_caps);
 
 	if (intel_dp->psr.sink_psr2_support ||
 	    intel_dp->psr.sink_panel_replay_su_support)
-- 
2.34.1

