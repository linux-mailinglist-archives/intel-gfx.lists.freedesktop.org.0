Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F2809068D2
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2024 11:33:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A8D510E9DC;
	Thu, 13 Jun 2024 09:33:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y3vcu2k5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B7CE10E9D6
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jun 2024 09:33:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718271183; x=1749807183;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CWfTgGYrUY/gvlPR6TTlrWUe3EfJ8ujytzl2BlFnBsc=;
 b=Y3vcu2k5BvcjuIB8+Rn85k8uDE52+aUk0Zf6QAvPW0qwJuJThwsCpets
 eek0Jb9KxgSZiuJbblQMPVoBx8jzjIWN7In2scHGQp+q8EitvCH2CFMx5
 K+tmQCllhMb+dCYFKcgfO6p5KQJBE/GGBihcym02kzvJtX17jSYGqwgos
 Lqo/ZWnFSlre8H8XdFR16tf/MLy6JhdNMN+P335XYW0GcMmAXqabr/YNw
 x8XBJ78FvbUwKo7naF8wOYkviM8o/CDF/3o5tau8qJhXzehMx0wo1nsLn
 4ufah8mJhEXZFNjL1/8i4CCqi3hB1EjysicYP6rt97YGKGAkI104DLpHZ A==;
X-CSE-ConnectionGUID: 3e1M1IPYSUOX1dHCMALDBg==
X-CSE-MsgGUID: mRN9IBWyT3iB/VjyoBiQDA==
X-IronPort-AV: E=McAfee;i="6700,10204,11101"; a="14802490"
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="14802490"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2024 02:33:03 -0700
X-CSE-ConnectionGUID: H9a9SJXPRPisYhvTbj30bw==
X-CSE-MsgGUID: Ywdx1t2ZT9KF7rQok7nlCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="44523383"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.31])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2024 02:33:01 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v8 07/20] drm/i915/psr: Disable PSR/Panel Replay on sink side
 for PSR only
Date: Thu, 13 Jun 2024 12:32:26 +0300
Message-Id: <20240613093239.1293629-8-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240613093239.1293629-1-jouni.hogander@intel.com>
References: <20240613093239.1293629-1-jouni.hogander@intel.com>
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
---
 drivers/gpu/drm/i915/display/intel_psr.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 27cf330d13e2..7300d04806cd 100644
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

