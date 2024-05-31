Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C51038D5EDA
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2024 11:50:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02F1810E506;
	Fri, 31 May 2024 09:50:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P1hNmwf2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52AB210E5F0
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 May 2024 09:50:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717149036; x=1748685036;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=I9EJ8ctntqUvDKUXFvqHfIEj9pwalH9JzRb9Rm5IM+4=;
 b=P1hNmwf2KBFE1P9fQoguZ9qwJhZKm9UjhlrV1kz3X3ZK7sAj1oaM12ZD
 AiO6/SegfSjIQX/fYRDyJRPtMHIe97WD4SgP4/NRGPLaJSXs3aYwOjoJt
 M/x6ShELYuOCNiyrRxPGSahfS3W785iHjowOxrLJYpOB5B4e7Ta5jgww/
 2a8IAXTBLV62smwNBKOoKq7AphxCbqGKWnpqRZ/E40SEl0lt64ZngqCZC
 exsSJjaj97/RlPXbYwpbF31ZAmeuLR2gJPGKoNuK6FjMSdlbX7L7Z/3eh
 Y/u0MMfcvFfLPOjL7k2Gt1vcnSomLWCMwvtEZfmwkEUVrvp06OPNQUQ1m g==;
X-CSE-ConnectionGUID: LPxHE3O+QDqkN3A5dK85gA==
X-CSE-MsgGUID: LwfNjoHbQYy8JImxWa4tKA==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="13446575"
X-IronPort-AV: E=Sophos;i="6.08,203,1712646000"; d="scan'208";a="13446575"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 02:50:36 -0700
X-CSE-ConnectionGUID: h+13pXreSLqn4hbPlaxCjQ==
X-CSE-MsgGUID: eGA4QWWaQ9WBTTXh05opFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,203,1712646000"; d="scan'208";a="41189252"
Received: from romanove-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.36.204])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 02:50:34 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v4 12/19] drm/i915/psr: Perfrom psr2 checks related to ALPM
 for Panel Replay
Date: Fri, 31 May 2024 12:49:46 +0300
Message-Id: <20240531094953.1797508-13-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240531094953.1797508-1-jouni.hogander@intel.com>
References: <20240531094953.1797508-1-jouni.hogander@intel.com>
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
index 1e503612bd25..25080f2a3806 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1357,27 +1357,6 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
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
@@ -1416,6 +1395,30 @@ static bool intel_sel_update_config_valid(struct intel_dp *intel_dp,
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

