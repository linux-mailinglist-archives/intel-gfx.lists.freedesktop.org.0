Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19F458FC911
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2024 12:27:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02E2210E75E;
	Wed,  5 Jun 2024 10:27:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Gu+V9jFn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A211510E74B
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jun 2024 10:26:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717583212; x=1749119212;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=W8Vo4JqUYzoBapM2TMjseyGtiN3Q4m3I2Z701z1SfTA=;
 b=Gu+V9jFnkh6960KjMsvapJQ5TWpfdhOLlreBvntiUSQSBPjz+YUTnInp
 hcyya839mbqXkVpZoVB3ms8lp/Rhykkr2oqErHPJbBi6WQndLHTD3mMFw
 LKYPOECaiBlf4MLQF7wTB1j4Mw2juXLG1AK03Ao1HdYtu31RGnh2uJeAF
 wqDWK2DHC1iO74GLTGaTUdhz9+DbqJKj1IYsURMxXO5zTn8mrMgOm8l2D
 +pQQpTGAY6JUyPLbB23AgzcF1Aa4ewb989vKBOYRUvTk2OUriLNkVWal3
 CcUcVaonvsUPKjVNHarHyuAg/CnxGqiZ7Sux9xn8zTlQy3wcqM9cp9eLS Q==;
X-CSE-ConnectionGUID: eaiPx5kSQleLzNAqrwQX2Q==
X-CSE-MsgGUID: zIjr0k++Sr6q1b182+d2lw==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="14136152"
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="14136152"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 03:26:51 -0700
X-CSE-ConnectionGUID: P3dXwZEsQv2gR21ECkfyOg==
X-CSE-MsgGUID: RAKdC6P+QPilRIbA2iA92w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="68686288"
Received: from amokrov-mobl1.ccr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.37.49])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 03:26:50 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v6 19/26] drm/i915/psr: Perfrom psr2 checks related to ALPM
 for Panel Replay
Date: Wed,  5 Jun 2024 13:25:46 +0300
Message-Id: <20240605102553.187309-20-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240605102553.187309-1-jouni.hogander@intel.com>
References: <20240605102553.187309-1-jouni.hogander@intel.com>
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

v3: move vblank check as well
v2: do not move Vblank >= PSR2_CTL Block Count Number maximum line count
    check

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 40 +++++++++++++-----------
 1 file changed, 21 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index bc8c822094e7..f8a8f98eb44e 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1383,25 +1383,6 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 		return false;
 	}
 
-	if (!_compute_psr2_sdp_prior_scanline_indication(intel_dp, crtc_state)) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "PSR2 not enabled, PSR2 SDP indication do not fit in hblank\n");
-		return false;
-	}
-
-	if (!intel_alpm_compute_params(intel_dp, crtc_state)) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "PSR2 not enabled, Unable to use long enough wake times\n");
-		return false;
-	}
-
-	/* Vblank >= PSR2_CTL Block Count Number maximum line count */
-	if (!vblank_length_valid(intel_dp, crtc_state)) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "PSR2 not enabled, too short vblank time\n");
-		return false;
-	}
-
 	if (!crtc_state->enable_psr2_sel_fetch &&
 	    (crtc_hdisplay > psr_max_h || crtc_vdisplay > psr_max_v)) {
 		drm_dbg_kms(&dev_priv->drm,
@@ -1440,6 +1421,27 @@ static bool intel_sel_update_config_valid(struct intel_dp *intel_dp,
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
+		if (!intel_alpm_compute_params(intel_dp, crtc_state)) {
+			drm_dbg_kms(&dev_priv->drm,
+				    "Selective update not enabled, Unable to use long enough wake times\n");
+			goto unsupported;
+		}
+
+		if (!vblank_length_valid(intel_dp, crtc_state)) {
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

