Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1FB78FC912
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2024 12:27:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D5C210E628;
	Wed,  5 Jun 2024 10:27:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PnPvBc8o";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B106A10E754
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jun 2024 10:26:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717583216; x=1749119216;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jLT7G1J96p1wWwRuE44PE2JzhiT9GfvveIDq1uij+Z8=;
 b=PnPvBc8om3U0pMNoyempX6aoyZeC+LeoPF5zX4LJkW0b3RHvekODuU2m
 gC4W8xWC/DzSCbpREU39JIixfbMnKbp8NbjL0bjBN0GbgeDUGtoMJ4cAD
 qzZDhaufTRSx6duq5c3vu7zQ2TEg5Rpb4wWYLP13TOBqyn3T3gYphOYkq
 mvSNKRkJDA1iZeWkcuPHZo1IJZV3tZ+8htxbyeAWiKEwLXXohbIkn73gV
 Ctvd7eGA8SxzRfJsqePtuRL1jkK+m06ErCys7QCDOexX0s1ZvY8gbnOg7
 Utujr7GabVRAohY58f431uBxG9HmFRKYQif2/jixW1Tjl93pEpwjs9MTU w==;
X-CSE-ConnectionGUID: iG1eDEtERxuHUTuUxEVSQA==
X-CSE-MsgGUID: v0Ru1/S9TkKB7njwcUUkiw==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="14136158"
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="14136158"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 03:26:56 -0700
X-CSE-ConnectionGUID: xj4lcY4hTtKhjUuWM4ZQKg==
X-CSE-MsgGUID: mJmvLTWBTLOxY71wTft8mg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="68686303"
Received: from amokrov-mobl1.ccr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.37.49])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 03:26:55 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v6 21/26] drm/i915/psr: 128b/132b Panel Replay is not
 supported on eDP
Date: Wed,  5 Jun 2024 13:25:48 +0300
Message-Id: <20240605102553.187309-22-jouni.hogander@intel.com>
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

Take into account that 128b/132b Panel Replay is not supported on eDP.

Bspec: 68920

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 8c881a7cad3f..01bc5b76d398 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1495,11 +1495,22 @@ static bool _psr_compute_config(struct intel_dp *intel_dp,
 	return true;
 }
 
-static bool _panel_replay_compute_config(struct intel_dp *intel_dp)
+static bool
+_panel_replay_compute_config(struct intel_dp *intel_dp,
+			     const struct intel_crtc_state *crtc_state)
 {
 	if (!CAN_PANEL_REPLAY(intel_dp))
 		return false;
 
+	if (!intel_dp_is_edp(intel_dp))
+		return true;
+
+	/* Remaining checks are for eDP only */
+
+	/* 128b/132b Panel Replay is not supported on eDP */
+	if (intel_dp_is_uhbr(crtc_state))
+		return false;
+
 	return true;
 }
 
@@ -1538,7 +1549,8 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 		return;
 	}
 
-	crtc_state->has_panel_replay = _panel_replay_compute_config(intel_dp);
+	crtc_state->has_panel_replay = _panel_replay_compute_config(intel_dp,
+								    crtc_state);
 
 	crtc_state->has_psr = crtc_state->has_panel_replay ? true :
 		_psr_compute_config(intel_dp, crtc_state);
-- 
2.34.1

