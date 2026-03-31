Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AL/zKR27y2kpKAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 14:16:29 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57039369576
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 14:16:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9DD310E2BB;
	Tue, 31 Mar 2026 12:16:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QfSYpW39";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1D6810E2BB;
 Tue, 31 Mar 2026 12:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774959386; x=1806495386;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=98yzMQg2xvSzjgeqpZUAE0zTxuV4jw13qGfWbbJa1Ds=;
 b=QfSYpW39obXOyxSS7rbLxxujoc03vGMMf2nRLZUnfMatpKJcGUh8mp/c
 i/kGgY6M5KF8iTaHcuRA2944EFMNVwO/oNToCg2qcyQSNihHpqiVnLYE9
 c6ZUdRmg6pNmIfRXk7ZkyU4uyqsFkJ28T8TnFXummDdtzFgJ8DO9Ray3h
 MxvVkRhRuDpwzN6T1uMfV+7/oF8UlhHCcHPDrRZiZCM+p3Jodv/2lmYyv
 1+A53rOzZ/GF5ikm472GiA5JW6L9dSlnoGwnMxfRcZ/bb82UHSCQBMNz6
 MN7Jej5n+rhAGVJwzOem6XSbWR2tAOw2/wGTN0/YUm3zNOIPp08phA02j Q==;
X-CSE-ConnectionGUID: vUbVHlbUTUeKpRAPViLCLg==
X-CSE-MsgGUID: JXzvywOASOSFznzHUc0iNw==
X-IronPort-AV: E=McAfee;i="6800,10657,11744"; a="87361402"
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="87361402"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 05:16:26 -0700
X-CSE-ConnectionGUID: XEqjXuPrQbu+xIJMS9NS4Q==
X-CSE-MsgGUID: kf4QQq7rQWacoEvZagRgBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="223468970"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.245.244])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 05:16:24 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH v2 1/8] drm/i915: move SKL clock gating init to display
Date: Tue, 31 Mar 2026 15:07:12 +0300
Message-ID: <20260331121608.1016333-2-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260331121608.1016333-1-luciano.coelho@intel.com>
References: <20260331121608.1016333-1-luciano.coelho@intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[luciano.coelho@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 57039369576
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Move the SKL-specific display clock gating programming into a new file
inside display.

This removes dependency from intel_clock_gating.c to the display's
intel_pch.h file, so we can remove the include statement.

Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |  1 +
 .../i915/display/intel_display_clock_gating.c | 19 +++++++++++++++++++
 .../i915/display/intel_display_clock_gating.h | 13 +++++++++++++
 drivers/gpu/drm/i915/intel_clock_gating.c     |  8 ++------
 4 files changed, 35 insertions(+), 6 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_clock_gating.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_clock_gating.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index b677720a1c2d..63a9e16826a9 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -255,6 +255,7 @@ i915-y += \
 	display/intel_cursor.o \
 	display/intel_dbuf_bw.o \
 	display/intel_de.o \
+	display/intel_display_clock_gating.o \
 	display/intel_display.o \
 	display/intel_display_conversion.o \
 	display/intel_display_driver.o \
diff --git a/drivers/gpu/drm/i915/display/intel_display_clock_gating.c b/drivers/gpu/drm/i915/display/intel_display_clock_gating.c
new file mode 100644
index 000000000000..4a94593335e0
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_display_clock_gating.c
@@ -0,0 +1,19 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright 2026 Intel Corporation
+ */
+
+#include <drm/intel/intel_gmd_misc_regs.h>
+
+#include "intel_de.h"
+#include "intel_display_clock_gating.h"
+#include "intel_display_regs.h"
+
+void intel_display_skl_init_clock_gating(struct intel_display *display)
+{
+	/*
+	 * WaFbcTurnOffFbcWatermark:skl
+	 * Display WA #0562: skl
+	 */
+	intel_de_rmw(display, DISP_ARB_CTL, 0, DISP_FBC_WM_DIS);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_display_clock_gating.h b/drivers/gpu/drm/i915/display/intel_display_clock_gating.h
new file mode 100644
index 000000000000..00f416db7f47
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_display_clock_gating.h
@@ -0,0 +1,13 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright 2026 Intel Corporation
+ */
+
+#ifndef __INTEL_DISPLAY_CLOCK_GATING_H__
+#define __INTEL_DISPLAY_CLOCK_GATING_H__
+
+struct intel_display;
+
+void intel_display_skl_init_clock_gating(struct intel_display *display);
+
+#endif /* __INTEL_DISPLAY_CLOCK_GATING_H__ */
diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c b/drivers/gpu/drm/i915/intel_clock_gating.c
index ee2489a2fbe7..454334fef5e7 100644
--- a/drivers/gpu/drm/i915/intel_clock_gating.c
+++ b/drivers/gpu/drm/i915/intel_clock_gating.c
@@ -31,9 +31,9 @@
 
 #include "display/i9xx_plane_regs.h"
 #include "display/intel_display.h"
+#include "display/intel_display_clock_gating.h"
 #include "display/intel_display_core.h"
 #include "display/intel_display_regs.h"
-#include "display/intel_pch.h"
 #include "gt/intel_engine_regs.h"
 #include "gt/intel_gt.h"
 #include "gt/intel_gt_mcr.h"
@@ -349,11 +349,7 @@ static void skl_init_clock_gating(struct drm_i915_private *i915)
 	/* WAC6entrylatency:skl */
 	intel_uncore_rmw(&i915->uncore, FBC_LLC_READ_CTRL, 0, FBC_LLC_FULLY_OPEN);
 
-	/*
-	 * WaFbcTurnOffFbcWatermark:skl
-	 * Display WA #0562: skl
-	 */
-	intel_uncore_rmw(&i915->uncore, DISP_ARB_CTL, 0, DISP_FBC_WM_DIS);
+	intel_display_skl_init_clock_gating(i915->display);
 }
 
 static void bdw_init_clock_gating(struct drm_i915_private *i915)
-- 
2.53.0

