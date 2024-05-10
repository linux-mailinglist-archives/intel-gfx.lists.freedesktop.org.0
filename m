Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EAF38C2124
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2024 11:39:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEEFE10E812;
	Fri, 10 May 2024 09:39:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z9zlDr2E";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1141A10E85B
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 May 2024 09:39:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715333941; x=1746869941;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=67S5jHhRSPmEzOl4zQazAqjlWmCP3w5mkLXnC9Yx+RU=;
 b=Z9zlDr2EGlV+DRN/Y+zvprnPo6qw1qLjoLsspARNGKfzx+kWwMTVfaWz
 dSiCYTm5DOxq29VtDhi/THsl7vXNRyriHX6cr5CfvfvIgqNpRbm8UaGvc
 6/EEwKZZbcnEd9jWsu6dKChg2HAu18VurRuuXVhpWTy4BgS2UHtUlcIGR
 f24r4+xUL01KuBH7WURl8SVFNpF/pnQI0KPbgc6DkyNtmMP4T+lI39Q2T
 hA3cueFrKvSDDQUmVa2Da2D8Tu4J3X/mWsezGqbvrBT++RiN4Ppx4Ni+3
 lpB2AlIus9P3qOvLk84Q26seciESOKQAw9GFCPun2oXejE5m4yQVMp8o9 A==;
X-CSE-ConnectionGUID: B/JiMYkrQ9SttJ7K+Ni2Yw==
X-CSE-MsgGUID: SaiQrRIFQ0i9qgUt0E3MHA==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="36684710"
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="36684710"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 02:39:01 -0700
X-CSE-ConnectionGUID: 5VMWBPSCSnSwhnSnERFL2g==
X-CSE-MsgGUID: Yg3cQjh4SjOYw0jbQQC4Cw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="34075623"
Received: from dlazzaro-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.51.148])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 02:39:00 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v10 11/12] drm/i915/psr: Split intel_psr2_config_valid for
 panel replay
Date: Fri, 10 May 2024 12:38:22 +0300
Message-Id: <20240510093823.3146455-12-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240510093823.3146455-1-jouni.hogander@intel.com>
References: <20240510093823.3146455-1-jouni.hogander@intel.com>
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
Reviewed-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 76 ++++++++++++++----------
 1 file changed, 46 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 0d90c49d2233..12ddf84e8d02 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1147,9 +1147,6 @@ static bool intel_psr2_sel_fetch_config_valid(struct intel_dp *intel_dp,
 		return false;
 	}
 
-	if (psr2_su_region_et_valid(intel_dp))
-		crtc_state->enable_psr2_su_region_et = true;
-
 	return crtc_state->enable_psr2_sel_fetch = true;
 }
 
@@ -1520,11 +1517,6 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
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
@@ -1537,12 +1529,6 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
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
@@ -1593,30 +1579,60 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
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
@@ -1698,7 +1714,7 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 	if (!crtc_state->has_psr)
 		return;
 
-	crtc_state->has_sel_update = intel_psr2_config_valid(intel_dp, crtc_state);
+	crtc_state->has_sel_update = intel_sel_update_config_valid(intel_dp, crtc_state);
 }
 
 void intel_psr_get_config(struct intel_encoder *encoder,
-- 
2.34.1

