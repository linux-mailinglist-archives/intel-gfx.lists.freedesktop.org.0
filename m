Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC36A8FC90C
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2024 12:27:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A174610E733;
	Wed,  5 Jun 2024 10:27:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kNB/2AiW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAAB510E729
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jun 2024 10:26:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717583214; x=1749119214;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=X0hG33rM5V/6zi4dyO/aACcTKffFcYrOAI1Eay41GRk=;
 b=kNB/2AiWWA2LSOHB1DA3eHZmXQmgfpjep1A2CAJxuauWQTDDu+S3jov0
 1Nva1rKOJg61IZMGQAOTToNu6k7PytQvcYoiM4Z6xW/ZYlx6Uzycghyjn
 Xz+WmNY003Mnom7IaNSGpToz5a1d7F9kDvqWFs3Mvm59L1uEYvY8GKt+o
 oixHzvhh8tkdO8s2ns4/IaqwPf3Of1lqROVMDFffKdaUtBZSo/KLck9lx
 /hJA7Ej5DJL/JYfLBdP7m7sl1wBEOcXhutbpg5/Go4xU23RK7RfJfviDI
 i7PH1mWSNJFYMHDjT+CmgmrXOhWWINWNaTNLK6dSk9doYrKHJTf0i2LtE g==;
X-CSE-ConnectionGUID: xoHXeBWDSR+bxEawtiSDdw==
X-CSE-MsgGUID: LFELbkrfRCG9uWH1L/sWVg==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="14136155"
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="14136155"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 03:26:54 -0700
X-CSE-ConnectionGUID: hHi/0q1PSyGAjvR1vKsxcQ==
X-CSE-MsgGUID: 7K+q1FG5RaOiNLVdpZWgaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="68686299"
Received: from amokrov-mobl1.ccr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.37.49])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 03:26:52 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v6 20/26] drm/i915/psr: Add Panel Replay compute_config helper
Date: Wed,  5 Jun 2024 13:25:47 +0300
Message-Id: <20240605102553.187309-21-jouni.hogander@intel.com>
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

We are about to add more checks for Panel Replay. Due to that it makes
sense to add now Panel Replay compute config helper.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index f8a8f98eb44e..8c881a7cad3f 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1495,6 +1495,14 @@ static bool _psr_compute_config(struct intel_dp *intel_dp,
 	return true;
 }
 
+static bool _panel_replay_compute_config(struct intel_dp *intel_dp)
+{
+	if (!CAN_PANEL_REPLAY(intel_dp))
+		return false;
+
+	return true;
+}
+
 void intel_psr_compute_config(struct intel_dp *intel_dp,
 			      struct intel_crtc_state *crtc_state,
 			      struct drm_connector_state *conn_state)
@@ -1530,8 +1538,7 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 		return;
 	}
 
-	if (CAN_PANEL_REPLAY(intel_dp))
-		crtc_state->has_panel_replay = true;
+	crtc_state->has_panel_replay = _panel_replay_compute_config(intel_dp);
 
 	crtc_state->has_psr = crtc_state->has_panel_replay ? true :
 		_psr_compute_config(intel_dp, crtc_state);
-- 
2.34.1

