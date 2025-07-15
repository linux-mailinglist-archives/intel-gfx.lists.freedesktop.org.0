Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EFC5B05833
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jul 2025 12:55:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7588B10E36D;
	Tue, 15 Jul 2025 10:55:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NOJepBjp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 182EC10E209;
 Tue, 15 Jul 2025 10:55:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752576936; x=1784112936;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8Za4gYPlq3L3QJUefL4g11SiPRDoUl7M495gy8Fd/wM=;
 b=NOJepBjpMkECowWEt0y5yM6J7e85OWdYr+8RmHzdKRriQ7UJKSOQUCiJ
 p5/lP3AmXANco3vnr199zzMMLDcZN6EsF5Sh0mF2ypMnCdgP18ACUj12H
 UNpXt+/y1st5AE3wI3+lQmVCdZ32t/x1FAxEYOUAH2V2sigO5f0Y8/phT
 B3f2QqHobaIqImws52PYzSIR8xSY0l1looUWsQW++b794HFcCRyrTyV4n
 4yzDu/Z+omE4cSxSCaPViENuh7F5wWld24J6vO1fH/CyBIGijiUZmsmZc
 7AhndO/Oc8loD/MeNyGVdbd11ZNNTkcbDM9r5uW1sM0ukm7xyyhYIzStb w==;
X-CSE-ConnectionGUID: markfrxMQWa3CaTF8gKIFQ==
X-CSE-MsgGUID: W4Siv7YcQXSpymGXMIxfaQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11491"; a="58598569"
X-IronPort-AV: E=Sophos;i="6.16,313,1744095600"; d="scan'208";a="58598569"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2025 03:55:36 -0700
X-CSE-ConnectionGUID: PmaowEDaRHeksrU1y6Woqw==
X-CSE-MsgGUID: x4iLdbrfQpGH428Lf7zo3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,313,1744095600"; d="scan'208";a="161509174"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.221])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2025 03:55:34 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v4 1/3] drm/i915/psr: Do not disable Early Transport when
 enable_psr is set
Date: Tue, 15 Jul 2025 13:55:07 +0300
Message-ID: <20250715105509.4146806-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250715105509.4146806-1-jouni.hogander@intel.com>
References: <20250715105509.4146806-1-jouni.hogander@intel.com>
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

Current approach is that Early Transport is disabled in case enable_psr
module parameter is set. Let's ignore enable_psr parameter when choosing if
Early Transport can be used.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 13 +------------
 1 file changed, 1 insertion(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index ae9053919211..a2b5688f0c82 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -265,16 +265,6 @@ static bool psr2_global_enabled(struct intel_dp *intel_dp)
 	}
 }
 
-static bool psr2_su_region_et_global_enabled(struct intel_dp *intel_dp)
-{
-	struct intel_display *display = to_intel_display(intel_dp);
-
-	if (display->params.enable_psr != -1)
-		return false;
-
-	return true;
-}
-
 static bool panel_replay_global_enabled(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
@@ -742,8 +732,7 @@ static bool psr2_su_region_et_valid(struct intel_dp *intel_dp, bool panel_replay
 	return panel_replay ?
 		intel_dp->pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_SUPPORT)] &
 		DP_PANEL_REPLAY_EARLY_TRANSPORT_SUPPORT :
-		intel_dp->psr_dpcd[0] == DP_PSR2_WITH_Y_COORD_ET_SUPPORTED &&
-		psr2_su_region_et_global_enabled(intel_dp);
+		intel_dp->psr_dpcd[0] == DP_PSR2_WITH_Y_COORD_ET_SUPPORTED;
 }
 
 static void _panel_replay_enable_sink(struct intel_dp *intel_dp,
-- 
2.43.0

