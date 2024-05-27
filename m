Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53CC68CF9FC
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2024 09:23:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42F2910F903;
	Mon, 27 May 2024 07:23:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h6U/b7oy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18D6010EE5B
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2024 07:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716794579; x=1748330579;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qyfubewv70ONxJotxe1erxl2MHXd00C2xucv7WLmtUQ=;
 b=h6U/b7oyp5VoHqGvWm9lAiqL53G+amWrJXVJ/dnvYIKoF/EwwYt2OYAZ
 N6w7nlv07rNDPIThV7DNVR2W413JPcfvOy8v8Cd4euZBiPGwHAU40+KMe
 IGGq15hHApM4z6b57pP4VnvuPNh4lJmvMVEugNuJDlsxnbJRUKh29IQfX
 oxFT3D4qNf02COOTfXNhYymkO6zErJwO5h4DKtUJbmk6yYzbJmNQseG4y
 /6glanPSOv2xZDLfzIMnrRinBrCw/ol6pCKIQwK094NGCP6dxFSZUAmZW
 Rb7N+cTexj/vj5rpULFLNNHgpYb+M8k3EafjrovEZvUwTKWTetzUKeh8Q Q==;
X-CSE-ConnectionGUID: 9h9Dd3pRRHau4AEMfaPwvw==
X-CSE-MsgGUID: X3zifpBfT7y52dmo5Dkv3Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11084"; a="16930464"
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="16930464"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 00:22:59 -0700
X-CSE-ConnectionGUID: 3E0wtRi8R5yIGYwoHrr6DA==
X-CSE-MsgGUID: lrg/40p5SDOmqkJZZ59bXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="34753462"
Received: from gcusmai-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.249.36.101])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 00:22:58 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 13/20] drm/i915/psr: Perfrom psr2 checks related to ALPM
 for Panel Replay
Date: Mon, 27 May 2024 10:22:13 +0300
Message-Id: <20240527072220.3294769-14-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240527072220.3294769-1-jouni.hogander@intel.com>
References: <20240527072220.3294769-1-jouni.hogander@intel.com>
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

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 45 +++++++++++++-----------
 1 file changed, 24 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index a96e03cd68ea..7c92a63188bc 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1594,27 +1594,6 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 		return false;
 	}
 
-	if (!_compute_psr2_sdp_prior_scanline_indication(intel_dp, crtc_state)) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "PSR2 not enabled, PSR2 SDP indication do not fit in hblank\n");
-		return false;
-	}
-
-	if (!_compute_alpm_params(intel_dp, crtc_state)) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "PSR2 not enabled, Unable to use long enough wake times\n");
-		return false;
-	}
-
-	/* Vblank >= PSR2_CTL Block Count Number maximum line count */
-	if (crtc_state->hw.adjusted_mode.crtc_vblank_end -
-	    crtc_state->hw.adjusted_mode.crtc_vblank_start <
-	    psr2_block_count_lines(intel_dp)) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "PSR2 not enabled, too short vblank time\n");
-		return false;
-	}
-
 	if (!crtc_state->enable_psr2_sel_fetch &&
 	    (crtc_hdisplay > psr_max_h || crtc_vdisplay > psr_max_v)) {
 		drm_dbg_kms(&dev_priv->drm,
@@ -1653,6 +1632,30 @@ static bool intel_sel_update_config_valid(struct intel_dp *intel_dp,
 	if (!crtc_state->has_panel_replay && !intel_psr2_config_valid(intel_dp, crtc_state))
 		goto unsupported;
 
+	if (intel_dp_is_edp(intel_dp)) {
+		if (!_compute_psr2_sdp_prior_scanline_indication(intel_dp,
+								 crtc_state)) {
+			drm_dbg_kms(&dev_priv->drm,
+				    "Selective update not enabled, SDP indication do not fit in hblank\n");
+			goto unsupported;
+		}
+
+		if (!_compute_alpm_params(intel_dp, crtc_state)) {
+			drm_dbg_kms(&dev_priv->drm,
+				    "Selective update not enabled, Unable to use long enough wake times\n");
+			goto unsupported;
+		}
+
+		/* Vblank >= PSR2_CTL Block Count Number maximum line count */
+		if (crtc_state->hw.adjusted_mode.crtc_vblank_end -
+		    crtc_state->hw.adjusted_mode.crtc_vblank_start <
+		    psr2_block_count_lines(intel_dp)) {
+			drm_dbg_kms(&dev_priv->drm,
+				    "Selective update not enabled, too short vblank time\n");
+			goto unsupported;
+		}
+	}
+
 	if (crtc_state->has_panel_replay && (DISPLAY_VER(dev_priv) < 14 ||
 					     !intel_dp->psr.sink_panel_replay_su_support))
 		goto unsupported;
-- 
2.34.1

