Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED37E9B7616
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2024 09:10:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5E9610E229;
	Thu, 31 Oct 2024 08:10:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZIfRe1+L";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43CA910E229;
 Thu, 31 Oct 2024 08:10:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730362251; x=1761898251;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=g0x/oC9qoRCDbofNFUzTQK4Ce0HfICQ9AD+Je2d4O4U=;
 b=ZIfRe1+LPkbdIL31vnrMsRingrd2Cuf6eKGIT0fwW1B/4BjYGAa6Hrpt
 yftivtZ1VPjSGBhpgCv5Tylywanqaryr7UFn0GB7uECCJ08IfHnG0e7fV
 z+C/MgTOX1TJtf5KmswVLO5xwyrkBvMUDQMhEbhErxQcbK4duCtQDY+LD
 /vCIMqW2AinoHVyQQZTY7ugwtbPmvTRT4pocrMTpMQUAiH1bFoQE5I0rY
 Q9klT+ZR/ysilcjoUwWEPvFaEP5za7GAdCayUI4mUk0c8CwPylB8vZfCT
 yO++Kdno+V3fI1wq76xKCGvlLawXhkn7PPcLfQYEo/c+aOPWBPacX88+2 Q==;
X-CSE-ConnectionGUID: l9Z8OEG6TECtdpnJL3657Q==
X-CSE-MsgGUID: zGN17aKISzWwz2S1pA6kSg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30244612"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30244612"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 01:10:51 -0700
X-CSE-ConnectionGUID: Yz+0m0RHQTasBUxcuaa4HA==
X-CSE-MsgGUID: wuvZ58ltRPWD45A6J4TP5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="82868005"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.110])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 01:10:48 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH] drm/i915/psr: Disable Panel Replay as well if VRR is enabled
Date: Thu, 31 Oct 2024 10:10:25 +0200
Message-Id: <20241031081025.3215966-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
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

Having Panel Replay enabled together with VRR is causing following errors:

xe 0000:00:02.0: [drm] *ERROR* Timed out waiting PSR idle state
xe 0000:00:02.0: [drm] *ERROR* Fault errors on pipe A: 0x00000080
xe 0000:00:02.0: [drm] *ERROR* CPU pipe A FIFO underrun
xe 0000:00:02.0: [drm] *ERROR* Fault errors on pipe A: 0x00040080
xe 0000:00:02.0: [drm] *ERROR* Fault errors on pipe A: 0x00040080

Let's disable Panel Replay as well if VRR is enabled.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 0c8da1701c3a..b527c1cbb14b 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1564,13 +1564,6 @@ static bool _psr_compute_config(struct intel_dp *intel_dp,
 	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 	int entry_setup_frames;
 
-	/*
-	 * Current PSR panels don't work reliably with VRR enabled
-	 * So if VRR is enabled, do not enable PSR.
-	 */
-	if (crtc_state->vrr.enable)
-		return false;
-
 	if (!CAN_PSR(intel_dp))
 		return false;
 
@@ -1679,6 +1672,12 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 		return;
 	}
 
+	/*
+	 * Currently PSR/PR doesn't work reliably with VRR enabled.
+	 */
+	if (crtc_state->vrr.enable)
+		return;
+
 	crtc_state->has_panel_replay = _panel_replay_compute_config(intel_dp,
 								    crtc_state,
 								    conn_state);
-- 
2.34.1

