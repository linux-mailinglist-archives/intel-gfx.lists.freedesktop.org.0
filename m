Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E94F8C732A
	for <lists+intel-gfx@lfdr.de>; Thu, 16 May 2024 10:50:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64FE810EB06;
	Thu, 16 May 2024 08:50:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SHpVGSwg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62BF810EAB1
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 May 2024 08:50:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715849425; x=1747385425;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=81qDpkTNX6XNLlO3klJv29ngv6/G09VxN4ydcwzXxtY=;
 b=SHpVGSwgPJAZRV99M+YODP0h1UQYaJltgcsdtBCb7kgkQbvogI2uJ0tG
 cPww0wmFsgBIjEvFL99Yteq6zXO+j3H1Fx1cGN0JLtM07/NwyKOYdfIdE
 4KJJIrQJN1lGBWOtOYlCcsOxpSyzc188A6K6q/pywqmhhh7SqsPyFhWpu
 D//MEk03z4FwsR9phIHFsZkx3n4b0l9J9B6uyRXxrhVKuVNUrTOJfAcTR
 Pzm5p+Kjd/19t3AzaPma7ALYi/0Q7maZvLwjKvUL/jRwtZwyaGkZhvT7q
 VmGq3O9yb9/NkUcSaYLowJ4jJ0rUf/bXYeTc4Van+8cSc7+moquK9aNEA w==;
X-CSE-ConnectionGUID: LEeiMc8KTkeYGE91/2qk+g==
X-CSE-MsgGUID: WuMQ+YNrSF6p9zjFiRZKFw==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="11756069"
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="11756069"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2024 01:50:24 -0700
X-CSE-ConnectionGUID: 90xHlU9JTcSwElWUZi9icA==
X-CSE-MsgGUID: WK8v5XSgRxO8QMBjNTaakw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="31398166"
Received: from tlonnber-mobl3.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.211.12])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2024 01:50:23 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 09/17] drm/i915/psr: Check panel ALPM capability for eDP Panel
 Replay
Date: Thu, 16 May 2024 11:49:49 +0300
Message-Id: <20240516084957.1557028-10-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240516084957.1557028-1-jouni.hogander@intel.com>
References: <20240516084957.1557028-1-jouni.hogander@intel.com>
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
index 5d2424c71d4c..3216bce7d62d 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -444,16 +444,6 @@ void intel_psr_irq_handler(struct intel_dp *intel_dp, u32 psr_iir)
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
@@ -555,10 +545,18 @@ static void intel_dp_get_su_granularity(struct intel_dp *intel_dp)
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
@@ -570,7 +568,7 @@ static void _panel_replay_init_dpcd(struct intel_dp *intel_dp)
 		    "selective_update " : "");
 }
 
-static void _psr_init_dpcd(struct intel_dp *intel_dp)
+static void _psr_init_dpcd(struct intel_dp *intel_dp, u8 alpm_caps)
 {
 	struct drm_i915_private *i915 =
 		to_i915(dp_to_dig_port(intel_dp)->base.base.dev);
@@ -598,7 +596,6 @@ static void _psr_init_dpcd(struct intel_dp *intel_dp)
 	    intel_dp->psr_dpcd[0] >= DP_PSR2_WITH_Y_COORD_IS_SUPPORTED) {
 		bool y_req = intel_dp->psr_dpcd[1] &
 			     DP_PSR2_SU_Y_COORDINATE_REQUIRED;
-		bool alpm = intel_dp_get_alpm_status(intel_dp);
 
 		/*
 		 * All panels that supports PSR version 03h (PSR2 +
@@ -611,7 +608,7 @@ static void _psr_init_dpcd(struct intel_dp *intel_dp)
 		 * Y-coordinate requirement panels we would need to enable
 		 * GTC first.
 		 */
-		intel_dp->psr.sink_psr2_support = y_req && alpm;
+		intel_dp->psr.sink_psr2_support = y_req && alpm_caps & DP_ALPM_CAP;
 		drm_dbg_kms(&i915->drm, "PSR2 %ssupported\n",
 			    intel_dp->psr.sink_psr2_support ? "" : "not ");
 	}
@@ -619,16 +616,19 @@ static void _psr_init_dpcd(struct intel_dp *intel_dp)
 
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

