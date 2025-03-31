Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B08DFA762EF
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Mar 2025 11:08:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B37A110E3A2;
	Mon, 31 Mar 2025 09:08:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lFhR4rMu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C28510E3A2;
 Mon, 31 Mar 2025 09:08:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743412083; x=1774948083;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bkGXqUQMtOSS9XiP3IV7oHV+vVyN0B7nzydBigF46Mk=;
 b=lFhR4rMuOIbJr1/uHsLgjgRWpNqQ3U1c9Qxfzrvi+pSdJ9NnAivXrTbM
 vXKioabwg4MLtl1++QfXiCElSTQO+6/bof9NKfppjaarcp/3TQWjOpn0V
 kM0tuJLtD7MjmJH40x/3rDQsJVKMmDvBs3/5UPF88kAnVMDmIaCHEcU0U
 2vFdUXelCx4sE9fWNL9DVemgcxdgbJQ3kfib7yTLeMdhdzINqJy/1gAeB
 /v2D6qT+QtWUDsVxDV+OrAbqVNyjbIM7r2JRV3ODTsZhpZnOV3WtIO8kC
 jzXOR3Bi3Rgl50Z3KoMF7+d3j7M3y688IlCFzH4mUa9PRkA78+OWmlkCN Q==;
X-CSE-ConnectionGUID: oQsHF1sURMaZiHd3F4kQhw==
X-CSE-MsgGUID: z41Qx6GkRnastm4kx3JEAg==
X-IronPort-AV: E=McAfee;i="6700,10204,11389"; a="47416292"
X-IronPort-AV: E=Sophos;i="6.14,290,1736841600"; d="scan'208";a="47416292"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2025 02:08:02 -0700
X-CSE-ConnectionGUID: wlQQwY1qSmica60QNLoMvQ==
X-CSE-MsgGUID: KEyQa5G6TuyijsFJDrPkMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,290,1736841600"; d="scan'208";a="163278132"
Received: from oandoniu-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.176])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2025 02:08:02 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH] drm/i915/psr: Prevent DP Panel Replay as well when CRC is
 enable
Date: Mon, 31 Mar 2025 12:07:47 +0300
Message-ID: <20250331090747.2964028-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
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

We are seeing timeouts in opening CRC fd when testing on setup where DP
Panel Replay can be enabled. Fix these by checking if CRC is enabled for DP
Panel Replay as well.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index c4be3f46511f7..c8cfa27fb043d 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1595,6 +1595,12 @@ _panel_replay_compute_config(struct intel_dp *intel_dp,
 		return false;
 	}
 
+	if (crtc_state->crc_enabled) {
+		drm_dbg_kms(display->drm,
+			    "Panel Replay not enabled because it would inhibit pipe CRC calculation\n");
+		return false;
+	}
+
 	if (!intel_dp_is_edp(intel_dp))
 		return true;
 
@@ -1625,12 +1631,6 @@ _panel_replay_compute_config(struct intel_dp *intel_dp,
 	if (!alpm_config_valid(intel_dp, crtc_state, true))
 		return false;
 
-	if (crtc_state->crc_enabled) {
-		drm_dbg_kms(display->drm,
-			    "Panel Replay not enabled because it would inhibit pipe CRC calculation\n");
-		return false;
-	}
-
 	return true;
 }
 
-- 
2.43.0

