Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DB49A87CDD
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Apr 2025 12:05:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CFDC10E54C;
	Mon, 14 Apr 2025 10:05:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g31Vsa1u";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C02CA10E54B;
 Mon, 14 Apr 2025 10:05:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744625131; x=1776161131;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=o1nstfLDkwDX4C5RYI7cMzQFW8toaTUMW2mL6lVxd9M=;
 b=g31Vsa1unbN5VSVnh/lg/iyWZ1pSYzcfZQn5md3LDTZALit1nfmCTFeJ
 uNGEnL7BIsNJXuQJar9f7hQQsVkJ0UzOw9tcrbD/cvfcMJVSJaKKMooUP
 RpRjpMuVs+QJYdkIJJuu6Z94+o4dvFv66CGVmXcsqs2EckLZxzDpyDdqi
 5SLJOe2naNl5/Pf3oRAn40OyL3HoVGF9zkLII+Gj+DmGHhWzEsGfxnuij
 hkWu9V3cAMZheCItbbHDS0RnDK2PRE6jpI90WjD7C+5nL9PBo7WTj9sBK
 6nQ3M53aZCp8VtEUwaKbnIzMs1n0npRLmNprYUIC+24buz9VzD2CEPIds g==;
X-CSE-ConnectionGUID: r/3TUKF4Rb6iuWmuZIR6rg==
X-CSE-MsgGUID: DKn+ArdLS+6Y9ne2s7w60Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11402"; a="48789117"
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="48789117"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 03:05:31 -0700
X-CSE-ConnectionGUID: my6SaYqgSKi+gpAEPAv1Yg==
X-CSE-MsgGUID: ByuqNswVSOqBZy6VZHgCrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="129743198"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.194])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 03:05:31 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 06/13] drm/i915/psr: Block PKG C-State when enabling PSR
Date: Mon, 14 Apr 2025 13:05:01 +0300
Message-ID: <20250414100508.1208774-7-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250414100508.1208774-1-jouni.hogander@intel.com>
References: <20250414100508.1208774-1-jouni.hogander@intel.com>
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

Block PKG C-State when enabling PSR when enabling PSR as described in
workaround for underrun on idle PSR HW issue (Wa_16025596647).

v2: use intel_dmc_block_pkgc instead of directly writing dmc register

Bspec: 74151
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 20d53292c3b3..44adee087350 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -38,6 +38,7 @@
 #include "intel_display_irq.h"
 #include "intel_display_rpm.h"
 #include "intel_display_types.h"
+#include "intel_dmc.h"
 #include "intel_dp.h"
 #include "intel_dp_aux.h"
 #include "intel_frontbuffer.h"
@@ -1951,6 +1952,12 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 			intel_de_rmw(display, CLKGATE_DIS_MISC, 0,
 				     CLKGATE_DIS_MISC_DMASC_GATING_DIS);
 	}
+
+	/* Wa_16025596647 */
+	if ((DISPLAY_VER(display) == 20 ||
+	     IS_DISPLAY_VERx100_STEP(display, 3000, STEP_A0, STEP_B0)) &&
+	    !intel_dp->psr.panel_replay_enabled)
+		intel_dmc_block_pkgc(display, intel_dp->psr.pipe, true);
 }
 
 static bool psr_interrupt_error_check(struct intel_dp *intel_dp)
@@ -2175,6 +2182,12 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 					   DP_RECEIVER_ALPM_CONFIG, 0);
 	}
 
+	/* Wa_16025596647 */
+	if ((DISPLAY_VER(display) == 20 ||
+	     IS_DISPLAY_VERx100_STEP(display, 3000, STEP_A0, STEP_B0)) &&
+	    !intel_dp->psr.panel_replay_enabled)
+		intel_dmc_block_pkgc(display, intel_dp->psr.pipe, false);
+
 	intel_dp->psr.enabled = false;
 	intel_dp->psr.panel_replay_enabled = false;
 	intel_dp->psr.sel_update_enabled = false;
-- 
2.43.0

