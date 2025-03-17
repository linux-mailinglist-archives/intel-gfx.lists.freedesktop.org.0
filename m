Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E59BA64507
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Mar 2025 09:19:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A235F10E3B9;
	Mon, 17 Mar 2025 08:19:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EWh2Qokq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E11A310E3B6;
 Mon, 17 Mar 2025 08:19:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742199564; x=1773735564;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fkACfwmBEyJI+UIeFgz8GrluPZm9Ck9wXb6VnjwZTYU=;
 b=EWh2QokqI4jZRktHoUXkunhZiZDkrsqC1EaoNEcK9dzB+Qu/XyStayGv
 6jpzlrDzGLnx3pbndvY/Mcb/1IKAAr6EdiUgtTahhd6vIw1pleA+dL0C5
 aUEQytpXGOgvD/kxBPD4GodH6pxAUBRd5YNhZS7Wm4YlXCZGmEFXGTZLt
 eOHoE6zohYdxnqIW1W+0fRlkjB8poCbe6A7mqC7yXROdKeE6CkuVBopvd
 G1hHbwxwSDDxU0N6e0H5quVGQvQyPLgGnIvtBxkNStBzOyyeiBok1COQy
 7PiWXZcSeNUqxvIOKFyYch5Vt1ZBt6j2Vx2YQhT8SAfz2WROVvLGlEfIw w==;
X-CSE-ConnectionGUID: Jtb5HkpERLCovx7WCEvP1w==
X-CSE-MsgGUID: NJcPtBOXRZ+YUvYXYN7fyg==
X-IronPort-AV: E=McAfee;i="6700,10204,11375"; a="54653504"
X-IronPort-AV: E=Sophos;i="6.14,253,1736841600"; d="scan'208";a="54653504"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2025 01:19:24 -0700
X-CSE-ConnectionGUID: QYivlv8yQY6z8iOwiIV3Ow==
X-CSE-MsgGUID: yAfHgoBhTS2xoiEgLkB5TA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,253,1736841600"; d="scan'208";a="121677153"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.231])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2025 01:19:22 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 05/11] drm/i915/psr: Write PIPEDMC_BLOCK_PKGC_SW when
 enabling PSR
Date: Mon, 17 Mar 2025 10:18:59 +0200
Message-ID: <20250317081905.3683654-6-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250317081905.3683654-1-jouni.hogander@intel.com>
References: <20250317081905.3683654-1-jouni.hogander@intel.com>
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

