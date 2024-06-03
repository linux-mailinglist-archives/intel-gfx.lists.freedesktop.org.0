Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FF4F8D832F
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jun 2024 15:01:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A124710E398;
	Mon,  3 Jun 2024 13:01:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KjfLpLcg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED5CB10E396
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Jun 2024 13:01:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717419673; x=1748955673;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BKVCxuHRT6pp1OOKFgBQKRbnC3eY7ZqG114+tXT56lQ=;
 b=KjfLpLcg/GxmI8/H+yVNSith4QGa4V0Ie1F7IINMO52P9aWtCqhRJAdU
 rJVpSm63PipmIp1GvPn640ejQgdbpqXPA7TtPBggudz8MPBTk3RwO/l+X
 BnrS/VthwMvrwtBCfq39xRwSCOavA1nL4pLj0QWTnOcilBCugn6nU0GTx
 /odF4YyjqgZ/ZY+Y73ORAsvsogDqISrnviBO+0aHuQgx814X9GPPVLrZK
 83sBHFgR2ndrHON9aT7BKp+xtjIHAfzFMUdWW8hZJHcjrZiey2Ii+Ewyy
 cB14A7cVKxDofVsWVCmKSXbnk7oPMdA5ybE10T2UftRI1YoPI9Vw+rvbU A==;
X-CSE-ConnectionGUID: L12l55W5QTmCpNTkRF6s9w==
X-CSE-MsgGUID: J3GqbPQJRe2TRaSM141sDA==
X-IronPort-AV: E=McAfee;i="6600,9927,11092"; a="13774475"
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="13774475"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 06:01:11 -0700
X-CSE-ConnectionGUID: TSr9hWbAQNijNP1I0PE60A==
X-CSE-MsgGUID: fJpyF5p0SjmhovDPSkvtTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="41291810"
Received: from jgulati-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.251.212.183])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 06:01:09 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v5 08/19] drm/i915/psr: Use intel_alpm_aux_wake_supported
 instead of local variable
Date: Mon,  3 Jun 2024 16:00:32 +0300
Message-Id: <20240603130043.2615716-9-jouni.hogander@intel.com>
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

We have now intel_alpm_aux_wake_supported. Use that instead of local
variable.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 14 ++------------
 1 file changed, 2 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index a9d82ef37d27..5becf0960c94 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -446,16 +446,6 @@ void intel_psr_irq_handler(struct intel_dp *intel_dp, u32 psr_iir)
 	}
 }
 
-static bool intel_dp_get_alpm_status(struct intel_dp *intel_dp)
-{
-	u8 alpm_caps = 0;
-
-	if (drm_dp_dpcd_readb(&intel_dp->aux, DP_RECEIVER_ALPM_CAP,
-			      &alpm_caps) != 1)
-		return false;
-	return alpm_caps & DP_ALPM_CAP;
-}
-
 static u8 intel_dp_get_sink_sync_latency(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
@@ -607,7 +597,6 @@ static void _psr_init_dpcd(struct intel_dp *intel_dp)
 	    intel_dp->psr_dpcd[0] >= DP_PSR2_WITH_Y_COORD_IS_SUPPORTED) {
 		bool y_req = intel_dp->psr_dpcd[1] &
 			     DP_PSR2_SU_Y_COORDINATE_REQUIRED;
-		bool alpm = intel_dp_get_alpm_status(intel_dp);
 
 		/*
 		 * All panels that supports PSR version 03h (PSR2 +
@@ -620,7 +609,8 @@ static void _psr_init_dpcd(struct intel_dp *intel_dp)
 		 * Y-coordinate requirement panels we would need to enable
 		 * GTC first.
 		 */
-		intel_dp->psr.sink_psr2_support = y_req && alpm;
+		intel_dp->psr.sink_psr2_support = y_req &&
+			intel_alpm_aux_wake_supported(intel_dp);
 		drm_dbg_kms(&i915->drm, "PSR2 %ssupported\n",
 			    intel_dp->psr.sink_psr2_support ? "" : "not ");
 	}
-- 
2.34.1

