Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCCE4AA6D3B
	for <lists+intel-gfx@lfdr.de>; Fri,  2 May 2025 10:59:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 370C010E8D3;
	Fri,  2 May 2025 08:59:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kLJOh1b1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DDED10E8D3;
 Fri,  2 May 2025 08:59:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746176380; x=1777712380;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=k36njRo1ey2qcIR6dy0F/QCOqIoDHEVwupbvkOHCxmA=;
 b=kLJOh1b1wrdccjZ7C47WMRAKGR7O4LP8JQUptjb5S6hRKgXvM3TERUo0
 pBwtMDkW2klu2IV4AufOiS/rut+rhLRr2TCTN7sn7WL5uMVakbtkDBnMS
 68g5WCcd+eoAa6mgau23U42JWMDaKzmcMiFz2NLc2saOzFb12vKhfVMxX
 z71tATmHxJ1W9r/ooDAtT5RDx7xIVHIZGshc4JaOuBFm0AUqpO2nM+nlR
 cuSeUydCM5BHS0ewJ5cIXYcpJqqrtFdZQ7rX7jBfl0pYnSkJ2IXonq+zQ
 IuGL5W5OqupdsrQS+pnbQP7RzoGziT1Q6GiiwyHv/C1cK+WSxJmkHhxVT g==;
X-CSE-ConnectionGUID: NpMQzK9RS9KoNn4t8y1N3g==
X-CSE-MsgGUID: 7gfAQBECRgu5w54QCBAeWA==
X-IronPort-AV: E=McAfee;i="6700,10204,11420"; a="47943204"
X-IronPort-AV: E=Sophos;i="6.15,256,1739865600"; d="scan'208";a="47943204"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2025 01:59:40 -0700
X-CSE-ConnectionGUID: dOVX7KJpQ7CwnT5nrExfJA==
X-CSE-MsgGUID: 87rcAvR1SKOiB0HIULsnFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,256,1739865600"; d="scan'208";a="134346765"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.55])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2025 01:59:38 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 11/11] drm/i915/psr: Do not disable Panel Replay in case VRR
 is enabled
Date: Fri,  2 May 2025 11:59:02 +0300
Message-ID: <20250502085902.154740-12-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250502085902.154740-1-jouni.hogander@intel.com>
References: <20250502085902.154740-1-jouni.hogander@intel.com>
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

This patch is allowing Panel Replay with VRR. All VRR modes are supposed to
work with Panel Replay.

Bspec: 68920, 68925
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 8d8fe1c34479d..3657dd5800f9a 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1572,6 +1572,12 @@ static bool _psr_compute_config(struct intel_dp *intel_dp,
 	if (!CAN_PSR(intel_dp))
 		return false;
 
+	/*
+	 * Currently PSR doesn't work reliably with VRR enabled.
+	 */
+	if (crtc_state->vrr.enable)
+		return false;
+
 	entry_setup_frames = intel_psr_entry_setup_frames(intel_dp, adjusted_mode);
 
 	if (entry_setup_frames >= 0) {
@@ -1689,12 +1695,6 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 		return;
 	}
 
-	/*
-	 * Currently PSR/PR doesn't work reliably with VRR enabled.
-	 */
-	if (crtc_state->vrr.enable)
-		return;
-
 	crtc_state->has_panel_replay = _panel_replay_compute_config(intel_dp,
 								    crtc_state,
 								    conn_state);
-- 
2.43.0

