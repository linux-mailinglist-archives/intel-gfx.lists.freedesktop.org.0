Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OCFcGDGL5mlRyAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 22:23:13 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB437433A6C
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 22:23:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9034310E756;
	Mon, 20 Apr 2026 20:23:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="arbW45Pw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1ABA810E754;
 Mon, 20 Apr 2026 20:23:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776716589; x=1808252589;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iZtQbX+N8CKfOCTMHvGn2eatb73YsWEnyLLefAxmMvU=;
 b=arbW45PwML979ZUIVgL8Xw8O131Dkernnq90pPAAuqBrThXE1b+KIKrb
 +mmiffdF97j5l5fPIt5fLzOq9mD8iMPs4e8Fe4S+WE8qFLQ3eA11wAsT8
 WRNpbQ6vKeR6bemvnXxIu0OeITf5rsWne9Fr5RYEPoyPp6qy2qbyn0tey
 jWsvDqXBKypBbe+xKqlU9ZCGicir1OJ2Mi6fh6x/q9sODTViYVnI5WA20
 5pv28BwmwYsRq2F8ypuIITSILs1KtZeLim2VRhIdLG+mjcoHdzQXW6d6w
 UpyOuJtNdQUygzZ1rw2NCsMBMWzEVJXXJ/PuVERejuuNWtytIA/jawgrX w==;
X-CSE-ConnectionGUID: V1qMHr0ZRNmYmnhplH1j9g==
X-CSE-MsgGUID: TJfzWFOQRYe6YbIeX4TTnQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11762"; a="77765249"
X-IronPort-AV: E=Sophos;i="6.23,190,1770624000"; d="scan'208";a="77765249"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2026 13:23:09 -0700
X-CSE-ConnectionGUID: PYn3kGtVSvqf2K688gEnMQ==
X-CSE-MsgGUID: 38Y0zaYVTnKlc7GX4YTXOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,190,1770624000"; d="scan'208";a="231736558"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.244.229])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2026 13:23:06 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH v4 1/8] drm/i915: move SKL clock gating init to display
Date: Mon, 20 Apr 2026 23:22:09 +0300
Message-ID: <20260420202252.3846880-2-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260420202252.3846880-1-luciano.coelho@intel.com>
References: <20260420202252.3846880-1-luciano.coelho@intel.com>
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
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[luciano.coelho@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: EB437433A6C
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
index fa632f4e505c..07802a7f4ce5 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -256,6 +256,7 @@ i915-y += \
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
index 515f83c82abc..ad28ceee012b 100644
--- a/drivers/gpu/drm/i915/intel_clock_gating.c
+++ b/drivers/gpu/drm/i915/intel_clock_gating.c
@@ -32,9 +32,9 @@
 
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

