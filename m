Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1EB289BA19
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Apr 2024 10:23:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 200D5112270;
	Mon,  8 Apr 2024 08:23:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kI1XrCd3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5434311227C
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Apr 2024 08:22:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712564570; x=1744100570;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BLa2dRwyDBwPr/Ih1LeSe7ZFhyo3efnt5jzraZeqJeA=;
 b=kI1XrCd3hspdi8MRdpDcCyNYiotJcCamzx9Qe8FVv1M91lpGU1WEjPIV
 7N5NkYuF3MkXYCy/MG2DVu9tVtdy1vzVbbncVXDxVyvuMqFvg3uM9XReK
 7NOUZG2rxvWDFiTuaGGqb3RbGnsti5mONkWjDlFmWq3mSK8D05FCRs59p
 zdvXZH42cVC1hkZkjos5VwR+0xCpFn8VVyEF8wdWR//7qhp+cqKptZndF
 siv4hxRy7cGD6rVwUtZPtwi16Dyxo8ySWqGohAwqYEqswSD0+OBkRkf6V
 Va5Uo4g9SoORLFucU2Ub4hMmLpQ5/1ANn7iCu90tZ38oH4lnCs6tANVfU Q==;
X-CSE-ConnectionGUID: euwNbRLsRIG5ARgx8VOs+w==
X-CSE-MsgGUID: gANRjhd+S16Ryf+LriWnVA==
X-IronPort-AV: E=McAfee;i="6600,9927,11037"; a="25275794"
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="25275794"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 01:22:50 -0700
X-CSE-ConnectionGUID: nfxDTjUGTByxhbV0KnbmfA==
X-CSE-MsgGUID: ISVjXwjZRXS7ul3PBFUKvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="24444631"
Received: from rkhristx-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.214.154])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 01:22:48 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v6 09/10] drm/i915/psr: Split intel_psr2_config_valid for
 panel replay
Date: Mon,  8 Apr 2024 11:22:11 +0300
Message-Id: <20240408082212.3429193-10-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240408082212.3429193-1-jouni.hogander@intel.com>
References: <20240408082212.3429193-1-jouni.hogander@intel.com>
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
index 3ef0ad984175..50bb3739d197 100644
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
@@ -1682,7 +1698,7 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 	if (!crtc_state->has_psr)
 		return;
 
-	crtc_state->has_sel_update = intel_psr2_config_valid(intel_dp, crtc_state);
+	crtc_state->has_sel_update = intel_sel_update_config_valid(intel_dp, crtc_state);
 }
 
 void intel_psr_get_config(struct intel_encoder *encoder,
-- 
2.34.1

