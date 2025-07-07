Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB447AFB194
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Jul 2025 12:47:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 008DA10E441;
	Mon,  7 Jul 2025 10:47:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fYiuu/i2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62AD610E43C;
 Mon,  7 Jul 2025 10:47:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751885267; x=1783421267;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8Za4gYPlq3L3QJUefL4g11SiPRDoUl7M495gy8Fd/wM=;
 b=fYiuu/i2m39yJQBrRzCmZW9LBOufD6ornUN8l2FzkcT3CTH3av3xI9E8
 mVn6M+wb/M8Md5J3r6Luj/nI/gChrG3SU/pop+XsTZ59qdIw0z/FH5Uxx
 QcSy3KNkkAMWfiP9dLSAOZc1SfgANq09VO5Shc0pc5k6xo2utXxH8GU9I
 dDhcPIzXxkA8kZ/FepnjXXvSV0qYfkOedJn4dy8E8JmK5nYNQAEiuzJQO
 twx7YBbEh1dPz7CJ7gmDuhNMm6SgVkFfYW9qPsMqTfgk2wAuTf3uvqGec
 by4Ttj4m3AsivTC/UIAs6QBsMcUKScUeNlVBNGBb+Uq2GLrd/L5EQ6vkD A==;
X-CSE-ConnectionGUID: 8IGZhzcNSoKtBu4ch3y+eA==
X-CSE-MsgGUID: R2u7Xs10Rxyyy0Rg3exC5g==
X-IronPort-AV: E=McAfee;i="6800,10657,11486"; a="76652652"
X-IronPort-AV: E=Sophos;i="6.16,294,1744095600"; d="scan'208";a="76652652"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2025 03:47:47 -0700
X-CSE-ConnectionGUID: kUEWnQh6T8aIuzsm9WeoWQ==
X-CSE-MsgGUID: WYiwpTtSRI+omERZkwzLKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,294,1744095600"; d="scan'208";a="159216954"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.92])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2025 03:47:45 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 1/2] drm/i915/psr: Do not disable Early Transport when
 enable_psr is set
Date: Mon,  7 Jul 2025 13:47:32 +0300
Message-ID: <20250707104733.1874797-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250707104733.1874797-1-jouni.hogander@intel.com>
References: <20250707104733.1874797-1-jouni.hogander@intel.com>
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

