Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FCCB83276B
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jan 2024 11:11:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C035510E9E6;
	Fri, 19 Jan 2024 10:11:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0A3C10E9E0
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jan 2024 10:11:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705659076; x=1737195076;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nQczSd/oEziMK8oupnZyMlkKDwVnKEGqRPuPGq+uqkQ=;
 b=mtE+jthAjpmN5c+18SMmoPbwDl51Be83RB8WF5qcEhYlo2lR+P6q1rlD
 XdxJARMrJADsUKiDQt0kVBwHGeO6zWdUpC5Wn8+4dyZkNhzYWeuiwNvIq
 JNLuH1tjmW2eWnPzG8iIJluALTycHsX9QObcgA1Vsd+XVqD5vF7pMhQee
 XSVQW3po55MiU6IQIIC5a6iYbLokh0WOyc3wJ/E9z1O/cFuHecT/7mPoV
 MbQTkeGTLyuP385iGQLXtnUm7FhQArkKRKlOWZSQ8zxdDdsZjloP3+Zw1
 YcJ//iscIdp6CKLt0Bvk2R72j6r/ElN1xJpsUW/ZJr4n2xVeuvE9G9Zmp w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="14070864"
X-IronPort-AV: E=Sophos;i="6.05,204,1701158400"; d="scan'208";a="14070864"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2024 02:11:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,204,1701158400"; 
   d="scan'208";a="563368"
Received: from randiapp-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.39.12])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2024 02:11:15 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v3 16/21] drm/i915/psr: Ensure early transport is not enabled
 for panel replay
Date: Fri, 19 Jan 2024 12:10:19 +0200
Message-Id: <20240119101024.1060812-17-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240119101024.1060812-1-jouni.hogander@intel.com>
References: <20240119101024.1060812-1-jouni.hogander@intel.com>
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

Early transport is not supported by DP2.0. Ensure early transport is kept
disabled for panel replay selective update.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../gpu/drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_psr.c          | 15 +++++++++++----
 2 files changed, 12 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 1c870ff8b27e..82767751c674 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1706,6 +1706,7 @@ struct intel_psr {
 	bool sink_psr2_support;
 	bool link_standby;
 	bool sel_update_enabled;
+	bool sel_update_et_enabled;
 	bool psr2_sel_fetch_enabled;
 	bool psr2_sel_fetch_cff_enabled;
 	bool req_psr2_sdp_prior_scanline;
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index b8367fb8b3d4..617ffd1854dc 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -677,15 +677,20 @@ static void hsw_psr_setup_aux(struct intel_dp *intel_dp)
 		       aux_ctl);
 }
 
-static bool psr2_su_region_et_valid(struct intel_dp *intel_dp)
+static bool psr2_su_region_et_valid(struct intel_dp *intel_dp,
+				    const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 
+	if (crtc_state->has_panel_replay)
+		goto unsupported;
+
 	if (DISPLAY_VER(i915) >= 20 &&
 	    intel_dp->psr_dpcd[0] == DP_PSR2_WITH_Y_COORD_ET_SUPPORTED &&
 	    !(intel_dp->psr.debug & I915_PSR_DEBUG_SU_REGION_ET_DISABLE))
 		return true;
 
+unsupported:
 	return false;
 }
 
@@ -714,7 +719,7 @@ void intel_psr_enable_sink(struct intel_dp *intel_dp,
 					   DP_ALPM_LOCK_ERROR_IRQ_HPD_ENABLE);
 
 		dpcd_val |= DP_PSR_ENABLE_PSR2 | DP_PSR_IRQ_HPD_WITH_CRC_ERRORS;
-		if (psr2_su_region_et_valid(intel_dp))
+		if (crtc_state->enable_psr2_su_region_et)
 			dpcd_val |= DP_PSR_ENABLE_SU_REGION_ET;
 	} else {
 		if (intel_dp->psr.link_standby)
@@ -973,7 +978,7 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
 		intel_de_write(dev_priv, PSR2_MAN_TRK_CTL(cpu_transcoder), 0);
 	}
 
-	if (psr2_su_region_et_valid(intel_dp))
+	if (intel_dp->psr.sel_update_et_enabled)
 		val |= LNL_EDP_PSR2_SU_REGION_ET_ENABLE;
 
 	/*
@@ -1138,7 +1143,7 @@ static bool intel_psr2_sel_fetch_config_valid(struct intel_dp *intel_dp,
 		return false;
 	}
 
-	if (psr2_su_region_et_valid(intel_dp))
+	if (psr2_su_region_et_valid(intel_dp, crtc_state))
 		crtc_state->enable_psr2_su_region_et = true;
 
 	return crtc_state->enable_psr2_sel_fetch = true;
@@ -1746,6 +1751,7 @@ static void intel_psr_enable_locked(struct intel_dp *intel_dp,
 	drm_WARN_ON(&dev_priv->drm, intel_dp->psr.enabled);
 
 	intel_dp->psr.sel_update_enabled = crtc_state->has_sel_update;
+	intel_dp->psr.sel_update_et_enabled = crtc_state->enable_psr2_su_region_et;
 	intel_dp->psr.panel_replay_enabled = crtc_state->has_panel_replay;
 	intel_dp->psr.busy_frontbuffer_bits = 0;
 	intel_dp->psr.pipe = to_intel_crtc(crtc_state->uapi.crtc)->pipe;
@@ -1896,6 +1902,7 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 	intel_dp->psr.enabled = false;
 	intel_dp->psr.panel_replay_enabled = false;
 	intel_dp->psr.sel_update_enabled = false;
+	intel_dp->psr.sel_update_et_enabled = false;
 	intel_dp->psr.psr2_sel_fetch_enabled = false;
 	intel_dp->psr.psr2_sel_fetch_cff_enabled = false;
 }
-- 
2.34.1

