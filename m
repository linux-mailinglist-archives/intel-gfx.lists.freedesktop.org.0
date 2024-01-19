Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9BBE832776
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jan 2024 11:11:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EA4A10E9B1;
	Fri, 19 Jan 2024 10:11:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3131310E98F
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jan 2024 10:11:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705659084; x=1737195084;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Hj863OSmiaRwT8Hegq6+d/bbDHcqAFGHmLh2jEXSxG0=;
 b=loC76HowKgacDcTgKlxBsI/A4SMuMmsPGsOcqGc9IzbQs5boJyzHE7gk
 tIgQj77XS7JIje+/T0ii+sAzMkS+sCqmZwp1qApsYNum/NKjVJpIGVAwo
 RlR5aphzu2pYPU/699BsfQpLTiIwQajM2jyvjJUCvvqOInWZl7Xj9o18G
 0moIrdl0+EZs+OvQjaxHLMvp+3cCpTtsdG2ah2kv3WlVnaLzXArbuEnp5
 INQuPZe5LggQvJND3us0zSOSNZFiuS1JlIU8K2B9oVCUUkI1geTAO0fea
 nv1xwxaaXODbszP4cWEP2+Q327l7lcZhA7k+S2F05k0qe0bJ870cZIJfY A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="14070917"
X-IronPort-AV: E=Sophos;i="6.05,204,1701158400"; d="scan'208";a="14070917"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2024 02:11:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,204,1701158400"; 
   d="scan'208";a="563427"
Received: from randiapp-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.39.12])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2024 02:11:22 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v3 20/21] drm/i915/psr: Split intel_psr2_config_valid for
 panel replay
Date: Fri, 19 Jan 2024 12:10:23 +0200
Message-Id: <20240119101024.1060812-21-jouni.hogander@intel.com>
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

Part of intel_psr2_config_valid is valid for panel replay. rename it as
intel_sel_update_config_valid. Split psr2 specific part and name it as
intel_psr2_config_valid.

v2:
  - use psr2_global_enabled for panel replay as well
  - goto unsupported instead of return when global enabled check fails

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 70 +++++++++++++++---------
 1 file changed, 43 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index d28a3a1e945b..40f71a0726fe 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1325,11 +1325,6 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
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
@@ -1342,12 +1337,6 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
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
@@ -1398,30 +1387,57 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
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
+	if (!psr2_global_enabled(intel_dp)) {
+		drm_dbg_kms(&dev_priv->drm, "Selective update disabled by flag\n");
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
@@ -1492,7 +1508,7 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 	if (!crtc_state->has_psr)
 		return;
 
-	crtc_state->has_sel_update = intel_psr2_config_valid(intel_dp, crtc_state);
+	crtc_state->has_sel_update = intel_sel_update_config_valid(intel_dp, crtc_state);
 }
 
 void intel_psr_get_config(struct intel_encoder *encoder,
-- 
2.34.1

