Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55B308C732E
	for <lists+intel-gfx@lfdr.de>; Thu, 16 May 2024 10:50:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC6F210EC2A;
	Thu, 16 May 2024 08:50:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Govj71Ec";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6588910EC2D
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 May 2024 08:50:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715849430; x=1747385430;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vPIgjLg27U2dhQRAJuB8wVfIhH+Q4vFWx3YEyXGJ1cM=;
 b=Govj71EcC8bUtW3HLHfXukVaBEGrCaakrla/eZb81/zctH3nnJc3Vuk5
 A8L1HOsCJn7r7m10FuQFlg20Nr9PImyitaexa3mrvStQpI8YXMFFKXxPn
 yZVSQwGXSlMGb3pgki0L8xDlO/PPJirCUcr7jWu3RwCr5E8t5l1LsKdlQ
 KSJQISNHwsz0L7c/vy55pAakT/YnDSoZgSqrEIvJy4nF5thaUERTpXN1c
 oyiWCBdCdpDsfWhuYWYkWg6jChcGlXT/dJGUlHHePynoW0voboQg9yIlC
 /s7J2pRTelgC69lH+hOTOLxGr/qPzPbICf6DIQT4ubA9w6iXRD2sypTxW Q==;
X-CSE-ConnectionGUID: 8JfkZDqZQqG+dOsJFEWGjA==
X-CSE-MsgGUID: mkxk7PToT2C6AV4zKMjjNA==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="11756090"
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="11756090"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2024 01:50:30 -0700
X-CSE-ConnectionGUID: 4VJVnix1RrOju103F8xZEg==
X-CSE-MsgGUID: cL4PxzzhRJm5LEJG0qeNxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="31398207"
Received: from tlonnber-mobl3.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.211.12])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2024 01:50:28 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 13/17] drm/i915/psr: Perfrom psr2 checks related to ALPM for
 Panel Replay
Date: Thu, 16 May 2024 11:49:53 +0300
Message-Id: <20240516084957.1557028-14-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240516084957.1557028-1-jouni.hogander@intel.com>
References: <20240516084957.1557028-1-jouni.hogander@intel.com>
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
index daba46aa1149..4bbb0c05054f 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1590,27 +1590,6 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
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
@@ -1649,6 +1628,30 @@ static bool intel_sel_update_config_valid(struct intel_dp *intel_dp,
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

