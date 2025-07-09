Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B3AEAFE1AC
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jul 2025 09:58:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8063E10E75A;
	Wed,  9 Jul 2025 07:58:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F7zAzKtP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13D0B10E043;
 Wed,  9 Jul 2025 07:58:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752047891; x=1783583891;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8Za4gYPlq3L3QJUefL4g11SiPRDoUl7M495gy8Fd/wM=;
 b=F7zAzKtPmBP2bnJHBJE9uzW9r1dpmOqFeSda9HnTKM+FRRtdMuHvTbhx
 Keej0VFL4EjX2TM8k6VnJl0naEK8IXRX86VBON9ARkSKPmLxs8ti9bYgt
 BkNdqqsMv2QroLidiM9YeNSHhnEkAHjNhDYVBb70Dpe3R6ohn61SiKfnp
 vIg5cEU7dZ+tj2qVKy8drxDjyHf76QfDtnExnNMNjumV1ImblTdRIcy2v
 kUFaH4boZGXc8jWj1a3NJCNGla/3PH6wuSXN3lfEnxZzxop/uc0j3bGTe
 g7kyXxfm1vtKgz0g0hQcF23dxI2moiN4kg9d7+D6VJcCycFZGf3HZ+EAH w==;
X-CSE-ConnectionGUID: N+M1aI2lSDa+hiv0xjvElw==
X-CSE-MsgGUID: oCPNhN1vRnSFOAGrpEqnTA==
X-IronPort-AV: E=McAfee;i="6800,10657,11487"; a="65649497"
X-IronPort-AV: E=Sophos;i="6.16,298,1744095600"; d="scan'208";a="65649497"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2025 00:58:11 -0700
X-CSE-ConnectionGUID: 7s2AUcXcR0KlGg6NHI8waQ==
X-CSE-MsgGUID: pW59W0+CTCWK5LhZVPLpUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,298,1744095600"; d="scan'208";a="156289391"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.175])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2025 00:58:09 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 1/2] drm/i915/psr: Do not disable Early Transport when
 enable_psr is set
Date: Wed,  9 Jul 2025 10:57:57 +0300
Message-ID: <20250709075758.2510714-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250709075758.2510714-1-jouni.hogander@intel.com>
References: <20250709075758.2510714-1-jouni.hogander@intel.com>
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

