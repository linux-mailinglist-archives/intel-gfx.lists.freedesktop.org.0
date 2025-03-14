Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C98BA60FBE
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Mar 2025 12:19:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11A0810E9D4;
	Fri, 14 Mar 2025 11:19:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QsUIN1tP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7742310E34C;
 Fri, 14 Mar 2025 11:18:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741951138; x=1773487138;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fkACfwmBEyJI+UIeFgz8GrluPZm9Ck9wXb6VnjwZTYU=;
 b=QsUIN1tPBqSpQfiiz/ncXmbcWP04OFd8SB7kSurgmG7Vnq+jbJeNCG0d
 XKT/iIUbAaZXIQStI/BbpI2FJzIS65S0KZoX6DKDmXsxkIClfuQthyZ0w
 m0w6g2y25ejv824FcoBgdZL4AbbMYaDczQgJOj2D6hFn6INgxzHGBQTrG
 0ZYGqYi1XqbAxmxTuK+u/XJ/Gtc2ll1e7uksXc9mYAcZmWt1je9xIy99R
 6C0SBFu7/NuO+XgNDeuR0ZB1RFgL/LvLGQZF2NNT/uc9DipRNs0vu7lIX
 ZkGebTvMgF8ZLdeuZAM6Anmn4+MNdGOS+2+ZCzL7n5e8g4ZZFrueJ3LeU A==;
X-CSE-ConnectionGUID: zMwxcnZwSwypU4IXhYuCzg==
X-CSE-MsgGUID: /01rPvDgTFq+mUlPuAUj+w==
X-IronPort-AV: E=McAfee;i="6700,10204,11372"; a="68467020"
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="68467020"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2025 04:18:58 -0700
X-CSE-ConnectionGUID: OJTyH9N2Tp+cKY2bb29pcw==
X-CSE-MsgGUID: 110bGFpWQ/670zPCVDAQRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="126289653"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.27])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2025 04:18:56 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 04/11] drm/i915/psr: Write PIPEDMC_BLOCK_PKGC_SW when enabling
 PSR
Date: Fri, 14 Mar 2025 13:18:32 +0200
Message-ID: <20250314111839.1051945-5-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250314111839.1051945-1-jouni.hogander@intel.com>
References: <20250314111839.1051945-1-jouni.hogander@intel.com>
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
index 1415e1e7aaf2c..a3946eef44f0d 100644
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

