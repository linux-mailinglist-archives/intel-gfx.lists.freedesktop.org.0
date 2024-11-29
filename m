Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26DC69DE932
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2024 16:18:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE8B710E4F4;
	Fri, 29 Nov 2024 15:18:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K4pN2mDl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E603410E4F3;
 Fri, 29 Nov 2024 15:18:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732893491; x=1764429491;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9NNCwmsaKPKb8xHxsgNM6J8cyDfBndxuhDxmksX2mLo=;
 b=K4pN2mDlXhjK6E8he66wm0xVXxQYdUEtpPhuEf6UGxZmrCUD5p5tmcXG
 S/txrEUjv7nV2jUFLBZIrfwTkWa39EUOgBirwFOJsrICbMhjIm7u1OKEh
 Z/rViL4wMad7qoFwxLqMr0DjVZ8n+taPDdBNRWuQxRUv9aKlqMm6MyNjh
 +H0XE6CsZzMg7dbrETyy+TDtb19GdyMwPml7+VBLf1b6akWIpE7+cL4u9
 mAcjT845VdAYjyoMCTThsywKw0xRyn6bfvoMswKcnVN8c5esPq7E4BQWB
 /GDhe/M9eJ20AwlBMaOg493q+H47Ll2vLcznjoL2hxHUm30UMTI7kkYLD w==;
X-CSE-ConnectionGUID: T/UDj456T2Gsf2SnXfN7pg==
X-CSE-MsgGUID: iqVT7kDlQh2GrCBSyFbUSw==
X-IronPort-AV: E=McAfee;i="6700,10204,11271"; a="44513493"
X-IronPort-AV: E=Sophos;i="6.12,195,1728975600"; d="scan'208";a="44513493"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2024 07:18:10 -0800
X-CSE-ConnectionGUID: 7lm2EG4hTtGC3szTZq2ulw==
X-CSE-MsgGUID: PbM7zDJQSE6rUzHRSBzi6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,195,1728975600"; d="scan'208";a="92395005"
Received: from eamartin-mobl1.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.111.90])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2024 07:18:09 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH 3/3] drm/xe/display: Flush DMC wakelock release work on
 runtime suspend
Date: Fri, 29 Nov 2024 12:17:46 -0300
Message-ID: <20241129151754.22015-4-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241129151754.22015-1-gustavo.sousa@intel.com>
References: <20241129151754.22015-1-gustavo.sousa@intel.com>
MIME-Version: 1.0
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

We currently are not calling display runtime suspend functions when
D3cold is not allowed. Because of that, we endup not disabling dynamic
DC states (and do not go to DC9). With dynamic DC states enabled, we
will also have DMC wakelock enabled. Since we use a delayed work to
release the DMC wakelock, the work might get executed a little too late
(after the PCI device has been put to D3hot) and we get a timeout
warning ("DMC wakelock release timed out") because the MMIO for
releasing the wakelock will be invalid after that point.

To fix that, make sure we flush the release work at the end of
xe_display_pm_runtime_suspend_late(). We can do that unconditionally
because, if there is no pending work, that turns into a no-op.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 2e189abf8d6f..9ae397a09f7b 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -22,6 +22,7 @@
 #include "intel_display_irq.h"
 #include "intel_display_types.h"
 #include "intel_dmc.h"
+#include "intel_dmc_wl.h"
 #include "intel_dp.h"
 #include "intel_encoder.h"
 #include "intel_fbdev.h"
@@ -409,11 +410,20 @@ void xe_display_pm_suspend_late(struct xe_device *xe)
 
 void xe_display_pm_runtime_suspend_late(struct xe_device *xe)
 {
+	struct intel_display *display = &xe->display;
+
 	if (!xe->info.probe_display)
 		return;
 
 	if (xe->d3cold.allowed)
 		xe_display_pm_runtime_suspend_late(xe);
+
+	/*
+	 * If xe_display_pm_suspend_late() is not called, it is likely
+	 * that we will be on dynamic DC states with DMC wakelock enabled. We
+	 * need to flush the release work in that case.
+	 */
+	intel_dmc_wl_flush_release_work(display);
 }
 
 void xe_display_pm_shutdown_late(struct xe_device *xe)
-- 
2.47.0

