Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CEC4829AFF
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jan 2024 14:13:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B25D710E794;
	Wed, 10 Jan 2024 13:13:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B7A010E79D
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jan 2024 13:13:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704892424; x=1736428424;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=H6RTM5GmgbD3nNZBLp8MOKwSIptiWOdHPuXjDxq8RIE=;
 b=kiqQ2HtYsRODqfV4R6+i9zRNLPQ1EbbPllcjOTCI4H2dJRiVImMgbw7N
 BK5n94k5OM3mGDTGlIOSgOqMik0MXEIJMgsZQZ3EU82GbkWnpUw3vFH2B
 dNniQJPErqO4OVmABw0QyIqrZopMe2vJLPUctaNo8ZRB6WBSMm37iGpBT
 M/f0V2Ahy/dYr1JYQB35y2dyFCeNvKmDdGKkHsSGmPZ7bD654uP1iNE7B
 D5h2IAx7MYT2lbrZpviLKcxS4op77r8VRhzCl10+Uu6Z94Y8JrPpA0xRs
 iShJ9zWWXocZLGDjt8whVjwg+F/r/aCVce+6Y2m05U/TfzqJJkVGYe8uQ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10948"; a="464914043"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="464914043"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 05:13:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10948"; a="816347123"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="816347123"
Received: from vsovraso-mobl.ccr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.211.202])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 05:13:42 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 10/13] drm/i915/psr: Split intel_psr2_config_valid for
 panel replay
Date: Wed, 10 Jan 2024 15:13:01 +0200
Message-Id: <20240110131304.2470006-11-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240110131304.2470006-1-jouni.hogander@intel.com>
References: <20240110131304.2470006-1-jouni.hogander@intel.com>
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

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 60 +++++++++++++++---------
 1 file changed, 38 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 03e41f10873f..68da1f284fae 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1286,12 +1286,6 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
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
@@ -1342,30 +1336,52 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
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
+	if (crtc_state->has_psr && !intel_psr2_config_valid(intel_dp, crtc_state))
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
@@ -1435,7 +1451,7 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 	if (!(crtc_state->has_panel_replay || crtc_state->has_psr))
 		return;
 
-	crtc_state->has_sel_update = intel_psr2_config_valid(intel_dp, crtc_state);
+	crtc_state->has_sel_update = intel_sel_update_config_valid(intel_dp, crtc_state);
 }
 
 void intel_psr_get_config(struct intel_encoder *encoder,
-- 
2.34.1

