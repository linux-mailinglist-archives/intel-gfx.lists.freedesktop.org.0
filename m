Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BF6390C31B
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2024 07:31:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFA2F10E575;
	Tue, 18 Jun 2024 05:31:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Zt46iayG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5A1310E0D1
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2024 05:30:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718688656; x=1750224656;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QZVxvdkgU1IrxkqLEZeOwzNEIVYZ/7/NVYHhxSdYzY8=;
 b=Zt46iayGlVllq42cQbMnpWkJYCFVx/1ahqXZIXt8/MJMUo7rObG4wEwk
 Vz9tOH92Rk/dz2RE7VJ4AWlzboDDYV3NekIkV+yI57xJXmTiF0qmP3/no
 1+ZSEAiZc65oIF17uVlnUA91vD+WAQjlZyzDGRJPA+qwTLuqMFqlgT2vU
 f40IbeJZsuqaC5tR89IJNxDEJrJCs5SUNHkub8J8TlOlciUuJ8WaZCGuF
 ueCPbjfpi7i0GkdlAgrdNpXVWE7Gt3yemsnbfZeELuGDb4oxjkRsNxq+d
 1NpL2/ECyZL6fDL9Jj7dCUT0eXIRf4V02Lr9c9o4iKZ170BPv2NwUtbjW w==;
X-CSE-ConnectionGUID: LpMTnUT4QsGKzjbub/2PFg==
X-CSE-MsgGUID: 3CI5a4YaTUKx10EFJgLm/g==
X-IronPort-AV: E=McAfee;i="6700,10204,11106"; a="33077715"
X-IronPort-AV: E=Sophos;i="6.08,246,1712646000"; d="scan'208";a="33077715"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2024 22:30:55 -0700
X-CSE-ConnectionGUID: DKrSPOQ7Rm+Hhc0wa+6rmw==
X-CSE-MsgGUID: XY99/0nJRMmJFiydvLHOqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,246,1712646000"; d="scan'208";a="41365151"
Received: from opintica-mobl1 (HELO jhogande-mobl1..) ([10.245.245.27])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2024 22:30:47 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 6/9] drm/i915/psr: Disable PSR/Panel Replay on sink side for
 PSR only
Date: Tue, 18 Jun 2024 08:30:23 +0300
Message-Id: <20240618053026.3268759-7-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240618053026.3268759-1-jouni.hogander@intel.com>
References: <20240618053026.3268759-1-jouni.hogander@intel.com>
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

Enabling/disabling Panel Replay on sink side has to be done before link
training. We can't disable it in sink side on PSR disable.

Fixes: 88ae6c65ecdb ("drm/i915/psr: Unify panel replay enable/disable sink")
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 800cfeabc139..595097353ceb 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1974,13 +1974,13 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 	}
 
 	/* Disable PSR on Sink */
-	drm_dp_dpcd_writeb(&intel_dp->aux,
-			   intel_dp->psr.panel_replay_enabled ?
-			   PANEL_REPLAY_CONFIG : DP_PSR_EN_CFG, 0);
+	if (!intel_dp->psr.panel_replay_enabled) {
+		drm_dp_dpcd_writeb(&intel_dp->aux, DP_PSR_EN_CFG, 0);
 
-	if (!intel_dp->psr.panel_replay_enabled &&
-	    intel_dp->psr.sel_update_enabled)
-		drm_dp_dpcd_writeb(&intel_dp->aux, DP_RECEIVER_ALPM_CONFIG, 0);
+		if (intel_dp->psr.sel_update_enabled)
+			drm_dp_dpcd_writeb(&intel_dp->aux,
+					   DP_RECEIVER_ALPM_CONFIG, 0);
+	}
 
 	intel_dp->psr.enabled = false;
 	intel_dp->psr.panel_replay_enabled = false;
-- 
2.34.1

