Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E97FE8C7328
	for <lists+intel-gfx@lfdr.de>; Thu, 16 May 2024 10:50:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B86CF10E966;
	Thu, 16 May 2024 08:50:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OVZdExDP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F31F710E893
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 May 2024 08:50:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715849420; x=1747385420;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HODAxKWpBbmgNbgOm3nSMYibydolYnAfbuOkMNRBuXQ=;
 b=OVZdExDPh/zK0/LznNtOPeVCayFlcfJ6lslR4HCmLq95Ue5ReFATO0Fc
 sqqZZtxuHRKOKVpnQpB7WXEGKU5bqjbKfklWUskx8cNMmZVDqDwE6ASz3
 Q8oeoVN7lVHXKjhDyWhmavWSZr8hf2WNeNI1gaT5QWA+WI3W89pK0a+Cv
 Cu1wJmwKiv9FW4902nJH83gwjDAJGoK9BMEwocVS68d3ephyTVYq/rJV1
 ++EOzMdqDukS+6kzhUieTy7mM9eMsW9kYJmJRAM+LouEQnesvFgiuzqNw
 CqL0zLYI/lqBiOit2qYSK/GAy3HlrlEOJMOUX0lJMG5n8N16NXWeHHOaK w==;
X-CSE-ConnectionGUID: BqeC9cM3SBWNsVEPEMe/7w==
X-CSE-MsgGUID: LHtUmNK1SciDvqJuFCiN6A==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="11756051"
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="11756051"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2024 01:50:20 -0700
X-CSE-ConnectionGUID: Al2zJjj3QPW+Ex20uK9IrA==
X-CSE-MsgGUID: t1mqqs2rQBiuBWt7T+tIUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="31398139"
Received: from tlonnber-mobl3.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.211.12])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2024 01:50:18 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 06/17] drm/i915/psr: Add Panel Replay support to
 intel_psr2_config_et_valid
Date: Thu, 16 May 2024 11:49:46 +0300
Message-Id: <20240516084957.1557028-7-jouni.hogander@intel.com>
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

Early Transport is possible and in our HW mandatory on eDP Panel
Replay. Add parameter to intel_psr2_config_et_valid to differentiate
validity check for Panel Replay.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 21 ++++++++++++---------
 1 file changed, 12 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 49ad83641e12..bc200fc043f0 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -672,16 +672,17 @@ static void hsw_psr_setup_aux(struct intel_dp *intel_dp)
 		       aux_ctl);
 }
 
-static bool psr2_su_region_et_valid(struct intel_dp *intel_dp)
+static bool psr2_su_region_et_valid(struct intel_dp *intel_dp, bool panel_replay)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 
-	if (DISPLAY_VER(i915) >= 20 &&
-	    intel_dp->psr_dpcd[0] == DP_PSR2_WITH_Y_COORD_ET_SUPPORTED &&
-	    !(intel_dp->psr.debug & I915_PSR_DEBUG_SU_REGION_ET_DISABLE))
-		return true;
+	if (DISPLAY_VER(i915) < 20 || !intel_dp_is_edp(intel_dp) ||
+	    intel_dp->psr.debug & I915_PSR_DEBUG_SU_REGION_ET_DISABLE)
+		return false;
 
-	return false;
+	return panel_replay ?
+		intel_dp->pr_dpcd & DP_PANEL_REPLAY_EARLY_TRANSPORT_SUPPORT :
+		intel_dp->psr_dpcd[0] != DP_PSR2_WITH_Y_COORD_ET_SUPPORTED;
 }
 
 static unsigned int intel_psr_get_enable_sink_offset(struct intel_dp *intel_dp)
@@ -708,7 +709,8 @@ void intel_psr_enable_sink(struct intel_dp *intel_dp,
 					   DP_ALPM_ENABLE |
 					   DP_ALPM_LOCK_ERROR_IRQ_HPD_ENABLE);
 
-			if (psr2_su_region_et_valid(intel_dp))
+			if (psr2_su_region_et_valid(intel_dp,
+						    intel_dp->psr.panel_replay_enabled))
 				dpcd_val |= DP_PSR_ENABLE_SU_REGION_ET;
 		}
 
@@ -975,7 +977,8 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
 			       PSR2_MAN_TRK_CTL(dev_priv, cpu_transcoder), 0);
 	}
 
-	if (psr2_su_region_et_valid(intel_dp))
+	if (psr2_su_region_et_valid(intel_dp,
+				    intel_dp->psr.panel_replay_enabled))
 		val |= LNL_EDP_PSR2_SU_REGION_ET_ENABLE;
 
 	/*
@@ -1583,7 +1586,7 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 
 	tgl_dc3co_exitline_compute_config(intel_dp, crtc_state);
 
-	if (psr2_su_region_et_valid(intel_dp))
+	if (psr2_su_region_et_valid(intel_dp, false))
 		crtc_state->enable_psr2_su_region_et = true;
 
 	return true;
-- 
2.34.1

