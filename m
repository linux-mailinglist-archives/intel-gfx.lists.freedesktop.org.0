Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 808999068DC
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2024 11:33:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 736D410E9ED;
	Thu, 13 Jun 2024 09:33:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UvBJC6ws";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05C0410E9E0
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jun 2024 09:33:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718271200; x=1749807200;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oVthsvPcGUEfSck3tEZPYx4HMS3RtpJ6KePVSvL/Yvo=;
 b=UvBJC6wsrAvfLwfk7u9jNhD+svnHD5SU8ZtvLNXKYsqXMPH2R4DEN9Go
 55WMiV27dB++MjP80w5mxMwhsw1CUOpjh9h9jRDI+fV/OBV2gm022W2gi
 oHjIKq3tKGT32BYwV0uVa/sVozY6XLfVf7i/6BAbZSgzzyzf6rVwegE5W
 GCX265+7Cv3hEabCqChCDbgZnPAiMChoHizRO8QFS2vgH2/8na/ue/Hhb
 uDFyccJXAhJq6Vzf5x3Bey4MkZzstJKhEINc5vZVle+K5Rdp/05D/+dhe
 UNdOXdkrIPdCAIv6TwmvmyHaK8JxrbNsasrgRg0eeQCok5PHHBePIx8Tn Q==;
X-CSE-ConnectionGUID: /a73v3kySKuTySNS2oUgZQ==
X-CSE-MsgGUID: IL87SA2zTBOvv86Mcke7BA==
X-IronPort-AV: E=McAfee;i="6700,10204,11101"; a="14802524"
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="14802524"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2024 02:33:20 -0700
X-CSE-ConnectionGUID: BM945/0xRtKhKYQ4Gu0wxA==
X-CSE-MsgGUID: Yz0AGmQcS0Gq1F5rGuBOLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="44523477"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.31])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2024 02:33:18 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v8 17/20] drm/i915/psr: Perform psr2 checks related to ALPM
 for Panel Replay
Date: Thu, 13 Jun 2024 12:32:36 +0300
Message-Id: <20240613093239.1293629-18-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240613093239.1293629-1-jouni.hogander@intel.com>
References: <20240613093239.1293629-1-jouni.hogander@intel.com>
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
index b31f4228f4a1..581284b69ef4 100644
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

