Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F8C2A827B6
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Apr 2025 16:25:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9CE710E8F2;
	Wed,  9 Apr 2025 14:25:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Gt1A4Pg0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63B1910E8F2;
 Wed,  9 Apr 2025 14:25:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744208751; x=1775744751;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=15qz6NOaWUSQT2GML6BEdzNB6wVG8f3hPD38/kjbB5o=;
 b=Gt1A4Pg00iJpFI3VWWAQNBmEEyC2iKNEh1KLMWKN8xNL0J3iUf4AVA73
 lEjiOOJ7dC9d/TjOj0X07LtXtdEFhqk4BJhVzqatcJGFkUu72mNnyNwuo
 LYJvr/V0WEzDg0AO8x5QrYygED9ll/dsCdzzFbliVWJ21DW9kY42WLZgR
 SYIKzgGbAMtMhameNKwrcWgp55e3SNKK+lEHfzXAR3rbWmGAalhyRBxjO
 vGHGl6CkQ/QCmR3LECPRqS4iDvzMIeVXRC8CXW1ggtmArCvqFg5skjq/7
 g7nH1GiFWrg1NVfhtKBq+0BOuEBPtVorGpDAKOXAgh1tRQgvkBB56/LJw A==;
X-CSE-ConnectionGUID: TsYW+dm1TyipOiMR6S749w==
X-CSE-MsgGUID: vOmzsAE/TFan0DWhbSVc2w==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="49347760"
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="49347760"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 07:25:51 -0700
X-CSE-ConnectionGUID: vQucHYaITYegIuqVdmlLVw==
X-CSE-MsgGUID: uIj83KCbQ/6UvWTiCWYt+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="132732580"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa003.fm.intel.com with ESMTP; 09 Apr 2025 07:25:49 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, jani.nikula@intel.com, jeevan.b@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v8 1/9] drm/i915/alpm: use variable from intel_crtc_state
 instead of intel_psr
Date: Wed,  9 Apr 2025 19:32:50 +0530
Message-Id: <20250409140258.785834-2-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20250409140258.785834-1-animesh.manna@intel.com>
References: <20250409140258.785834-1-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Jouni Högander <jouni.hogander@intel.com>

Currently code is making assumption that PSR is enabled when
intel_alpm_configure is called. This doesn't work if alpm is configured
before PSR is enabled.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 55f3ae1e68c9..1dbaa8f250aa 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -317,14 +317,14 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
 	u32 alpm_ctl;
 
 	if (DISPLAY_VER(display) < 20 ||
-	    (!intel_dp->psr.sel_update_enabled && !intel_dp_is_edp(intel_dp)))
+	    (!crtc_state->has_sel_update && !intel_dp_is_edp(intel_dp)))
 		return;
 
 	/*
 	 * Panel Replay on eDP is always using ALPM aux less. I.e. no need to
 	 * check panel support at this point.
 	 */
-	if ((intel_dp->psr.panel_replay_enabled && intel_dp_is_edp(intel_dp)) ||
+	if ((crtc_state->has_panel_replay && intel_dp_is_edp(intel_dp)) ||
 	    (crtc_state->has_lobf && intel_alpm_aux_less_wake_supported(intel_dp))) {
 		alpm_ctl = ALPM_CTL_ALPM_ENABLE |
 			ALPM_CTL_ALPM_AUX_LESS_ENABLE |
-- 
2.29.0

