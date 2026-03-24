Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yHjQDAOhwmm3fQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2026 15:34:43 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D687E30A389
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2026 15:34:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F5CE10E149;
	Tue, 24 Mar 2026 14:34:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OCRdk8qg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A269589CFA;
 Tue, 24 Mar 2026 14:34:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774362878; x=1805898878;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HdYs4wyrOnK9kFdUHNCnB3ObXUV5QrE+sIbUqXGY79w=;
 b=OCRdk8qgU0qZKAKVWjpEKyOpqInNavKYHWJYfUJ2DlhclrxiLi4BvEZm
 sxkNMLlWOKCW7rUmwcWvVwcFvcu/VyzCClP+erJoZS4abYT7uxafZAaKV
 RQZNdziDSRD7MJAUORNRUFd8tV5QKEiFjxoUHEPhVw+8dej3MbrRVTvdb
 O5jHOzHyU09gi1IvLo3rCsmKMXaNxruuxdeE7UWul+1xyZ+dl3kjsEoEV
 X/Uk05NpuIUBDp+cxawVQZryM0kDz9bhGwDZFPW7CAXgIGQkte54w3L7q
 Mbkkgxj3QldZ3n8a24Ts/t460eHuJYc6RSGqcf8Xz/wJ3eEjUqthap1y0 Q==;
X-CSE-ConnectionGUID: sRLQi529TMumooPHxxJAsA==
X-CSE-MsgGUID: Jw/jnr1/Qt6cTCBiDGKrnA==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="75405131"
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="75405131"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 07:34:37 -0700
X-CSE-ConnectionGUID: jm5+11sSRhOaeZqOlTpAaQ==
X-CSE-MsgGUID: 8xA/1MnvRKyhQHWGqSLZMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="228843192"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.244.170])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 07:34:35 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	jani.nikula@linux.intel.com
Subject: [PATCH 1/8] drm/i915: move SKL clock gating init to display
Date: Tue, 24 Mar 2026 16:29:50 +0200
Message-ID: <20260324143420.310800-2-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260324143420.310800-1-luciano.coelho@intel.com>
References: <20260324143420.310800-1-luciano.coelho@intel.com>
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
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: D687E30A389
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
 .../i915/display/intel_display_clock_gating.h | 17 +++++++++++++++++
 drivers/gpu/drm/i915/intel_clock_gating.c     |  8 ++------
 4 files changed, 39 insertions(+), 6 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_clock_gating.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_clock_gating.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index be976a90c5a6..89232873d4b7 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -254,6 +254,7 @@ i915-y += \
 	display/intel_crtc_state_dump.o \
 	display/intel_cursor.o \
 	display/intel_dbuf_bw.o \
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
index 000000000000..c93997417dcb
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_display_clock_gating.h
@@ -0,0 +1,17 @@
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
+#ifdef I915
+void intel_display_skl_init_clock_gating(struct intel_display *display);
+#else
+static inline void intel_display_skl_init_clock_gating(struct intel_display *display) {}
+#endif
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

