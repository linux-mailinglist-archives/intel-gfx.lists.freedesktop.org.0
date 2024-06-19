Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3593F90E35E
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2024 08:22:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D64E710E8EC;
	Wed, 19 Jun 2024 06:22:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D2sGGKxm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0658810E8B8
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2024 06:22:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718778133; x=1750314133;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=L5fNonGOY3fzclpT8+RG67cCf4c+iaCqkfONgz8H5Yc=;
 b=D2sGGKxmldc8Q8ykBh9NhVYp72KrI8pD2VYQ1S6qIo9hVLkvudtJg9WL
 MNoOqoUHrzibuq8Wt+AM9JQ6DlJCfUmqN52ape//ESl7Q1WQizeuwZTr2
 HUWHY/IY5/C3pzkL3dwkr0uvL0cMq1RUEaVyiltsoGPwW/F5sfBHaPAWD
 bCo/DJnIDsRH3QZljCYvCsn884mcwE0ZS4CQ0g0zZ6u/ID4me84JJd3u3
 zScSvuNNQiKYvzH7tI1qbv9zOzW3Q4W/bcHiWJIU248NFQeIezU12a3fk
 LbjH/17Ptb0Y2Dko4A8I/TGg3AsxUfLO4zaZvw7/0nUpPogxyLM60Gw+2 A==;
X-CSE-ConnectionGUID: mwhSFsuPRTmVsrnEQzuPTQ==
X-CSE-MsgGUID: 3rz6lJrITU+WVNB5xXsXwQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11107"; a="26377389"
X-IronPort-AV: E=Sophos;i="6.08,249,1712646000"; d="scan'208";a="26377389"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 23:22:13 -0700
X-CSE-ConnectionGUID: Kb5srHanSIyxyeVKt5vvRA==
X-CSE-MsgGUID: JCGaMWauRxifgMCHqvtrVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,249,1712646000"; d="scan'208";a="41906013"
Received: from unknown (HELO jhogande-mobl1..) ([10.245.245.109])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 23:22:11 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v9 08/11] drm/i915/psr: Perform psr2 checks related to ALPM
 for Panel Replay
Date: Wed, 19 Jun 2024 09:21:28 +0300
Message-Id: <20240619062131.4021196-9-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240619062131.4021196-1-jouni.hogander@intel.com>
References: <20240619062131.4021196-1-jouni.hogander@intel.com>
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

eDP1.5 support ALPM with Panel Replay as well. We need to check ALPM
related things for Panel Replay as well.

Bspec: 68920

v5:
  - instead of using crtc_state->has_panel_replay provide aux_less flag
v4:
  - do not move _compute_psr2_sdp_prior_scanline_indication
  - move ALPM related checks to separate function
v3: move vblank check as well
v2: do not move Vblank >= PSR2_CTL Block Count Number maximum line count
    check
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 41 ++++++++++++++++--------
 1 file changed, 28 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index cd9755b7b550..ae1728d2a15c 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1303,14 +1303,15 @@ static int intel_psr_entry_setup_frames(struct intel_dp *intel_dp,
 }
 
 static bool wake_lines_fit_into_vblank(struct intel_dp *intel_dp,
-				       const struct intel_crtc_state *crtc_state)
+				       const struct intel_crtc_state *crtc_state,
+				       bool aux_less)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	int vblank = crtc_state->hw.adjusted_mode.crtc_vblank_end -
 		crtc_state->hw.adjusted_mode.crtc_vblank_start;
 	int wake_lines;
 
-	if (crtc_state->has_panel_replay)
+	if (aux_less)
 		wake_lines = intel_dp->alpm_parameters.aux_less_wake_lines;
 	else
 		wake_lines = DISPLAY_VER(i915) < 20 ?
@@ -1327,6 +1328,27 @@ static bool wake_lines_fit_into_vblank(struct intel_dp *intel_dp,
 	return true;
 }
 
+static bool alpm_config_valid(struct intel_dp *intel_dp,
+			      const struct intel_crtc_state *crtc_state,
+			      bool aux_less)
+{
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+
+	if (!intel_alpm_compute_params(intel_dp, crtc_state)) {
+		drm_dbg_kms(&i915->drm,
+			    "PSR2/Panel Replay  not enabled, Unable to use long enough wake times\n");
+		return false;
+	}
+
+	if (!wake_lines_fit_into_vblank(intel_dp, crtc_state, aux_less)) {
+		drm_dbg_kms(&i915->drm,
+			    "PSR2/Panel Replay not enabled, too short vblank time\n");
+		return false;
+	}
+
+	return true;
+}
+
 static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 				    struct intel_crtc_state *crtc_state)
 {
@@ -1410,18 +1432,8 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 		return false;
 	}
 
-	if (!intel_alpm_compute_params(intel_dp, crtc_state)) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "PSR2 not enabled, Unable to use long enough wake times\n");
+	if (!alpm_config_valid(intel_dp, crtc_state, false))
 		return false;
-	}
-
-	/* Vblank >= PSR2_CTL Block Count Number maximum line count */
-	if (!wake_lines_fit_into_vblank(intel_dp, crtc_state)) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "PSR2 not enabled, too short vblank time\n");
-		return false;
-	}
 
 	if (!crtc_state->enable_psr2_sel_fetch &&
 	    (crtc_hdisplay > psr_max_h || crtc_vdisplay > psr_max_v)) {
@@ -1555,6 +1567,9 @@ _panel_replay_compute_config(struct intel_dp *intel_dp,
 		return false;
 	}
 
+	if (!alpm_config_valid(intel_dp, crtc_state, true))
+		return false;
+
 	return true;
 }
 
-- 
2.34.1

