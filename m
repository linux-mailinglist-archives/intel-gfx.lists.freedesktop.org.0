Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B27B8A565CB
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Mar 2025 11:52:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F304810EB55;
	Fri,  7 Mar 2025 10:52:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aqs1Nyqf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6EA710EB4F;
 Fri,  7 Mar 2025 10:52:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741344776; x=1772880776;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2BC5w8fax8/sRN3SXg7xVNiJG0r4bv3wvx/1T8E6fcU=;
 b=aqs1NyqfBR5OU5qd5ZJn6tL3smBmwIYG0IoFDVSCegWEfbtfnt9ENZmI
 hcdHKBKjJK2qW3taUsq6BRp4WyQE1nqVB0B6xDOCoXWeFbIGqmYaJOohi
 IJpF1k/F69ebbAjP/VQ92sQUhaPmCnS8lOxAn/PggwZqUzHqdu7DMhiX3
 zDPS236Tuy7GJd7mG1qz71VUSa22DKdoqUrUyOQBr+1th0bYtIVik9R75
 L9NxzSFyxyOGmzHVG9CAOjLe6HygE9HP5RgZ2jG7Y0Qab2+sGtC0OZVt2
 PBud01AvCH0zdRlARDKUoeJyhhi5Zkagg31w6kwCZj7NtNBBjnRiP3oaX g==;
X-CSE-ConnectionGUID: gaKgottrTyOLRISRu2SQCg==
X-CSE-MsgGUID: gJGZVTG5RbmZYN284XKH9w==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="42301651"
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="42301651"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 02:52:56 -0800
X-CSE-ConnectionGUID: tqDkxyU6QyOxB/q0zYD8qw==
X-CSE-MsgGUID: 3gpJW2tBT0KhkhGHZekiWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="123481588"
Received: from mlehtone-mobl.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.100])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 02:52:55 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [RFC PATCH 05/11] drm/i915/psr: Write PIPEDMC_BLOCK_PKGC_SW when
 enabling PSR
Date: Fri,  7 Mar 2025 12:52:31 +0200
Message-ID: <20250307105237.2909849-6-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250307105237.2909849-1-jouni.hogander@intel.com>
References: <20250307105237.2909849-1-jouni.hogander@intel.com>
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

Write PIPEDMC_BLOCK_PKGC_SW when enabling PSR as described in workaround
for underrun on idle PSR HW issue (Wa_16025596647).

Bspec: 74151

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 1415e1e7aaf2..a3946eef44f0 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -37,6 +37,7 @@
 #include "intel_de.h"
 #include "intel_display_irq.h"
 #include "intel_display_types.h"
+#include "intel_dmc_regs.h"
 #include "intel_dp.h"
 #include "intel_dp_aux.h"
 #include "intel_frontbuffer.h"
@@ -1961,6 +1962,13 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 			intel_de_rmw(display, CLKGATE_DIS_MISC, 0,
 				     CLKGATE_DIS_MISC_DMASC_GATING_DIS);
 	}
+
+	/* Wa_16025596647 */
+	if ((DISPLAY_VER(display) == 20 ||
+	     IS_DISPLAY_VERx100_STEP(display, 3000, STEP_A0, STEP_B0)) &&
+	    !intel_dp->psr.panel_replay_enabled)
+		intel_de_rmw(display, PIPEDMC_BLOCK_PKGC_SW(intel_dp->psr.pipe), 0,
+			     PIPEDMC_BLOCK_PKGC_SW_BLOCK_PKGC_ALWAYS);
 }
 
 static bool psr_interrupt_error_check(struct intel_dp *intel_dp)
@@ -2186,6 +2194,13 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 					   DP_RECEIVER_ALPM_CONFIG, 0);
 	}
 
+	/* Wa_16025596647 */
+	if ((DISPLAY_VER(display) == 20 ||
+	     IS_DISPLAY_VERx100_STEP(display, 3000, STEP_A0, STEP_B0)) &&
+	    !intel_dp->psr.panel_replay_enabled)
+		intel_de_rmw(display, PIPEDMC_BLOCK_PKGC_SW(intel_dp->psr.pipe),
+			     PIPEDMC_BLOCK_PKGC_SW_BLOCK_PKGC_ALWAYS, 0);
+
 	intel_dp->psr.enabled = false;
 	intel_dp->psr.panel_replay_enabled = false;
 	intel_dp->psr.sel_update_enabled = false;
-- 
2.43.0

