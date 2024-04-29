Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 576558B5772
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2024 14:08:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B3F0112BE3;
	Mon, 29 Apr 2024 12:08:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jsruty4a";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E6B2112B95
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Apr 2024 12:08:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714392509; x=1745928509;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1hl4VtmoAcX3CCWaJsivkQAlB5NeooHj7RGTxtTFaU0=;
 b=jsruty4aqcedAbmd2q50iOByQyP910VYX1fX05lxLFg2+EsxQYxYZsAs
 CqSSLW8HFoG40EY0HVqDIr5vl28wnZnNzhc+sVxuVHeWTv/sMGwVvcio6
 wdkzld7Ns16WqZPa3ZS0iDsFFQIiT+GUfxMy8E3uywf1w4dfHpFcoa3zk
 qsQqG8udhHtOeoi4MnoDyeQQZOsB3bLQght2qnT1zTYno4s2jBwWgaRi0
 PQ6YOV1yaKjiolLlZBOF/5HQT+jCxBWk4Kly8dqg9esnBPER3QM/bAEPt
 NB7EX/UOT9oI3sfeIkAuuhWnKP4N1e0Q2XbZwdNSIDTqakujLHFlJI0nP w==;
X-CSE-ConnectionGUID: d5zM3ZkdTaa+9pw45ESmaA==
X-CSE-MsgGUID: QHXxwXP2SzeBp6AEs69STA==
X-IronPort-AV: E=McAfee;i="6600,9927,11057"; a="21455455"
X-IronPort-AV: E=Sophos;i="6.07,239,1708416000"; d="scan'208";a="21455455"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2024 05:08:29 -0700
X-CSE-ConnectionGUID: qgubZEqbQie/oSv5cQa2LQ==
X-CSE-MsgGUID: C1ShhmnnTJiHXkfT+qLPRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,239,1708416000"; d="scan'208";a="26074528"
Received: from domelchx-mobl2.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.208.96])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2024 05:08:28 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v8 10/11] drm/i915/psr: Split intel_psr2_config_valid for
 panel replay
Date: Mon, 29 Apr 2024 15:07:54 +0300
Message-Id: <20240429120755.3990652-11-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240429120755.3990652-1-jouni.hogander@intel.com>
References: <20240429120755.3990652-1-jouni.hogander@intel.com>
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

Part of intel_psr2_config_valid is valid for panel replay. rename it as
intel_sel_update_config_valid. Split psr2 specific part and name it as
intel_psr2_config_valid.

v3:
  - move early transport check to psr2 specific check
  - check intel_psr2_config_valid only for non-Panel Replay case
v2:
  - use psr2_global_enabled for panel replay as well
  - goto unsupported instead of return when global enabled check fails

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 76 ++++++++++++++----------
 1 file changed, 46 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index ad97d58decb6..3197491349cc 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1142,9 +1142,6 @@ static bool intel_psr2_sel_fetch_config_valid(struct intel_dp *intel_dp,
 		return false;
 	}
 
-	if (psr2_su_region_et_valid(intel_dp))
-		crtc_state->enable_psr2_su_region_et = true;
-
 	return crtc_state->enable_psr2_sel_fetch = true;
 }
 
@@ -1515,11 +1512,6 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 		return false;
 	}
 
-	if (!psr2_global_enabled(intel_dp)) {
-		drm_dbg_kms(&dev_priv->drm, "PSR2 disabled by flag\n");
-		return false;
-	}
-
 	/*
 	 * DSC and PSR2 cannot be enabled simultaneously. If a requested
 	 * resolution requires DSC to be enabled, priority is given to DSC
@@ -1532,12 +1524,6 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 		return false;
 	}
 
-	if (crtc_state->crc_enabled) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "PSR2 not enabled because it would inhibit pipe CRC calculation\n");
-		return false;
-	}
-
 	if (DISPLAY_VER(dev_priv) >= 12) {
 		psr_max_h = 5120;
 		psr_max_v = 3200;
@@ -1588,30 +1574,60 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 		return false;
 	}
 
-	if (HAS_PSR2_SEL_FETCH(dev_priv)) {
-		if (!intel_psr2_sel_fetch_config_valid(intel_dp, crtc_state) &&
-		    !HAS_PSR_HW_TRACKING(dev_priv)) {
-			drm_dbg_kms(&dev_priv->drm,
-				    "PSR2 not enabled, selective fetch not valid and no HW tracking available\n");
-			return false;
-		}
-	}
-
-	if (!psr2_granularity_check(intel_dp, crtc_state)) {
-		drm_dbg_kms(&dev_priv->drm, "PSR2 not enabled, SU granularity not compatible\n");
-		goto unsupported;
-	}
-
 	if (!crtc_state->enable_psr2_sel_fetch &&
 	    (crtc_hdisplay > psr_max_h || crtc_vdisplay > psr_max_v)) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "PSR2 not enabled, resolution %dx%d > max supported %dx%d\n",
 			    crtc_hdisplay, crtc_vdisplay,
 			    psr_max_h, psr_max_v);
-		goto unsupported;
+		return false;
 	}
 
 	tgl_dc3co_exitline_compute_config(intel_dp, crtc_state);
+
+	if (psr2_su_region_et_valid(intel_dp))
+		crtc_state->enable_psr2_su_region_et = true;
+
+	return true;
+}
+
+static bool intel_sel_update_config_valid(struct intel_dp *intel_dp,
+					  struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+
+	if (HAS_PSR2_SEL_FETCH(dev_priv) &&
+	    !intel_psr2_sel_fetch_config_valid(intel_dp, crtc_state) &&
+	    !HAS_PSR_HW_TRACKING(dev_priv)) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "Selective update not enabled, selective fetch not valid and no HW tracking available\n");
+		goto unsupported;
+	}
+
+	if (!psr2_global_enabled(intel_dp)) {
+		drm_dbg_kms(&dev_priv->drm, "Selective update disabled by flag\n");
+		goto unsupported;
+	}
+
+	if (!crtc_state->has_panel_replay && !intel_psr2_config_valid(intel_dp, crtc_state))
+		goto unsupported;
+
+	if (crtc_state->has_panel_replay && (DISPLAY_VER(dev_priv) < 14 ||
+					     !intel_dp->psr.sink_panel_replay_su_support))
+		goto unsupported;
+
+	if (crtc_state->crc_enabled) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "Selective update not enabled because it would inhibit pipe CRC calculation\n");
+		goto unsupported;
+	}
+
+	if (!psr2_granularity_check(intel_dp, crtc_state)) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "Selective update not enabled, SU granularity not compatible\n");
+		goto unsupported;
+	}
+
 	return true;
 
 unsupported:
@@ -1693,7 +1709,7 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 	if (!crtc_state->has_psr)
 		return;
 
-	crtc_state->has_sel_update = intel_psr2_config_valid(intel_dp, crtc_state);
+	crtc_state->has_sel_update = intel_sel_update_config_valid(intel_dp, crtc_state);
 }
 
 void intel_psr_get_config(struct intel_encoder *encoder,
-- 
2.34.1

