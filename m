Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2490C8D8334
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jun 2024 15:01:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD7A510E3A1;
	Mon,  3 Jun 2024 13:01:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SzeQ/zYm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF9AC10E396
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Jun 2024 13:01:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717419678; x=1748955678;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0IB4hs6SQBYsqqMy8k+EDDyupTjXaPKYd0TCFX7oh+A=;
 b=SzeQ/zYmdX5tNjDzPn3Smt/gKeNZqLUK80lDzxBA2XRimLMWZWEn9Xxd
 ph0RnxTV23P2FW2DOAiWzMaOi/h5C351BnUHU4VqifIFXgHbE6hRroidu
 rxZYwgraQyykn8vEYByZfFcAnRskUrpfP7/LZIgbNbLwMAkaJPtB/o0SK
 uZDt1nTOPrwsRBXi1UEB+d6x6P1Jjwk7z4QDax2DRNyWAcRpEYDHfNNVD
 sBrlVTgGGojAOeVDY6PZI3i1SKA1vTKhVnkgAvjVVVpdpxuRNYsxKxoJy
 w5UYTmhYajq5SK6nt2gKu5iv6W6giyUsh21cROR1zXkNQ7O3+MKkrFFwp Q==;
X-CSE-ConnectionGUID: KGIHwRlrSbuofG4VM21bJg==
X-CSE-MsgGUID: llEbO+PdQs2yhZQkEoTAQQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11092"; a="13774486"
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="13774486"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 06:01:18 -0700
X-CSE-ConnectionGUID: elFsYpGySX+GcndWwTy4Zw==
X-CSE-MsgGUID: uLDb/lsHSMSZcQT3OTW6pA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="41291890"
Received: from jgulati-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.251.212.183])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 06:01:16 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v5 12/19] drm/i915/psr: Perfrom psr2 checks related to ALPM
 for Panel Replay
Date: Mon,  3 Jun 2024 16:00:36 +0300
Message-Id: <20240603130043.2615716-13-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240603130043.2615716-1-jouni.hogander@intel.com>
References: <20240603130043.2615716-1-jouni.hogander@intel.com>
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

v2: do not move Vblank >= PSR2_CTL Block Count Number maximum line count
    check

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 29 +++++++++++++-----------
 1 file changed, 16 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 25c0b891daec..84555b21b74a 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1361,24 +1361,12 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
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
 	/* Vblank >= PSR2_CTL Block Count Number maximum line count */
 	if (crtc_state->hw.adjusted_mode.crtc_vblank_end -
 	    crtc_state->hw.adjusted_mode.crtc_vblank_start <
 	    psr2_block_count_lines(intel_dp)) {
 		drm_dbg_kms(&dev_priv->drm,
-			    "PSR2 not enabled, too short vblank time\n");
+			    "Selective update not enabled, too short vblank time\n");
 		return false;
 	}
 
@@ -1420,6 +1408,21 @@ static bool intel_sel_update_config_valid(struct intel_dp *intel_dp,
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
+	}
+
 	if (crtc_state->has_panel_replay && (DISPLAY_VER(dev_priv) < 14 ||
 					     !intel_dp->psr.sink_panel_replay_su_support))
 		goto unsupported;
-- 
2.34.1

