Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 515818CAA48
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2024 10:47:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE71C10E763;
	Tue, 21 May 2024 08:47:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XwEtfceG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 351D010E742
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 May 2024 08:47:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716281238; x=1747817238;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JQ6Exl7Zd17kV25PVtLWaRbnl0bP1dva4y4CnXKFxXo=;
 b=XwEtfceGXXZdIoWwwHT3/m4JtCXAT718pYAj3SlRl+P2lWfJ0aO4MAFk
 mpXA4yhg8rv6gylSjWypmM08bApkDrAcL3t1wZ3BAlGEW8nHS2PDqcGKq
 x3McWp6P0+s8M/JZz8fPGEr8WDM3TzgjFeHCmaBG8yyjQ3wVCvprKILAK
 nzfptQ9YWFtC4gRTVt9J5ys9Rrd8I8AvZ9jZoUwLyk/RhtmSTwfTIiRjy
 uFw7pWk6TxTdCAQxpwlyNMMvreebs0DUyhE1yiTf9NjIXGH08iURlulis
 ypO4m34Q3RFXOXOri/Bc90AGPVDt85MZHjsvGzvSEi5VsK/CdWkS96LOf w==;
X-CSE-ConnectionGUID: qWIRSlCCR86IqHtKJS/VmA==
X-CSE-MsgGUID: 3U7r/kD3TDuBty0S1oSchw==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="12297812"
X-IronPort-AV: E=Sophos;i="6.08,177,1712646000"; d="scan'208";a="12297812"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 01:47:18 -0700
X-CSE-ConnectionGUID: btGSJV07T1OqmfB7tvWR5g==
X-CSE-MsgGUID: ptMAH4OHRvOWwqmyi4giEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,177,1712646000"; d="scan'208";a="33272505"
Received: from mathiasj-mobl.amr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.211.157])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 01:47:17 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 06/17] drm/i915/psr: Add Panel Replay support to
 intel_psr2_config_et_valid
Date: Tue, 21 May 2024 11:46:37 +0300
Message-Id: <20240521084648.1987837-7-jouni.hogander@intel.com>
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

Early Transport is possible and in our HW mandatory on eDP Panel
Replay. Add parameter to intel_psr2_config_et_valid to differentiate
validity check for Panel Replay.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 21 ++++++++++++---------
 1 file changed, 12 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 3884d88e1594..24d832dc26c7 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -673,16 +673,17 @@ static void hsw_psr_setup_aux(struct intel_dp *intel_dp)
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
@@ -709,7 +710,8 @@ void intel_psr_enable_sink(struct intel_dp *intel_dp,
 					   DP_ALPM_ENABLE |
 					   DP_ALPM_LOCK_ERROR_IRQ_HPD_ENABLE);
 
-			if (psr2_su_region_et_valid(intel_dp))
+			if (psr2_su_region_et_valid(intel_dp,
+						    intel_dp->psr.panel_replay_enabled))
 				dpcd_val |= DP_PSR_ENABLE_SU_REGION_ET;
 		}
 
@@ -978,7 +980,8 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
 			       PSR2_MAN_TRK_CTL(dev_priv, cpu_transcoder), 0);
 	}
 
-	if (psr2_su_region_et_valid(intel_dp))
+	if (psr2_su_region_et_valid(intel_dp,
+				    intel_dp->psr.panel_replay_enabled))
 		val |= LNL_EDP_PSR2_SU_REGION_ET_ENABLE;
 
 	/*
@@ -1587,7 +1590,7 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 
 	tgl_dc3co_exitline_compute_config(intel_dp, crtc_state);
 
-	if (psr2_su_region_et_valid(intel_dp))
+	if (psr2_su_region_et_valid(intel_dp, false))
 		crtc_state->enable_psr2_su_region_et = true;
 
 	return true;
-- 
2.34.1

