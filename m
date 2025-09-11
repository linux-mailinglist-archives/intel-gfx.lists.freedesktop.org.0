Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3878BB52CE1
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Sep 2025 11:17:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A13DB10EA5F;
	Thu, 11 Sep 2025 09:17:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LeC5nK3v";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9FE210EA60
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Sep 2025 09:17:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757582275; x=1789118275;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=M4T06IsXPnmysV0XmxN2w4pZushRFDul22IxCC0Ilos=;
 b=LeC5nK3vJ9uhdVEam3hzq9KwXV3T6kO4zSd9jaqryoP7fHrzwjK4GbqQ
 vasRD1JBDnLrVvkYdJdYRi1VgxtNi5Frum8IbU0ZZBu0KKXJczLQgbCle
 7nqTkNi2cahrEsqRbOxQgZ+NQvASADSWpsC14NV/dS/s2y3JS2acTjM72
 Zj9DLNn+TH2TL8+w90EYjV5LgKwwDmpKV6fwVArcmMF0oij9Bt/9fuVd3
 3d+d0rjPbowKAr0hD4y8R/+JPUtFf4yGAI83z5ODBwtOfjIBVnrG+UaxC
 wX48DxsQonNgxVf1x40OII4tQiLct72rQm4cIumrWbaSlt/vVYzcnNwGo Q==;
X-CSE-ConnectionGUID: Po0TpkBWS0GnQxAC2S8fhw==
X-CSE-MsgGUID: LSb3ULdlSxCL8Jx48YQqQA==
X-IronPort-AV: E=McAfee;i="6800,10657,11549"; a="47480511"
X-IronPort-AV: E=Sophos;i="6.18,256,1751266800"; d="scan'208";a="47480511"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2025 02:17:55 -0700
X-CSE-ConnectionGUID: Cyogl5cEQSmtmI9MdGwAlA==
X-CSE-MsgGUID: aQQ8O5AbT0m2uKHgWR/aFg==
X-ExtLoop1: 1
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.136])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2025 02:17:53 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [CI 2/4] drm/i915: split out i915_timer_util.[ch]
Date: Thu, 11 Sep 2025 12:17:38 +0300
Message-ID: <0a83d9489626121dcefcd4c1a05317399b5708f3.1757582214.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1757582214.git.jani.nikula@intel.com>
References: <cover.1757582214.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
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

Move timer related utilities from i915_utils.[ch] to separate new files
i915_timer_util.[ch]. Clean up related includes.

Note: Arguably none of this should exist in i915 in the first place. At
least isolate it better.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |  1 +
 .../drm/i915/gt/intel_execlists_submission.c  |  4 ++-
 drivers/gpu/drm/i915/gt/sysfs_engines.c       |  1 +
 drivers/gpu/drm/i915/i915_timer_util.c        | 36 +++++++++++++++++++
 drivers/gpu/drm/i915/i915_timer_util.h        | 23 ++++++++++++
 drivers/gpu/drm/i915/i915_utils.c             | 30 ----------------
 drivers/gpu/drm/i915/i915_utils.h             | 14 --------
 7 files changed, 64 insertions(+), 45 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/i915_timer_util.c
 create mode 100644 drivers/gpu/drm/i915/i915_timer_util.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index db150a0c33ce..e58c0c158b3a 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -32,6 +32,7 @@ i915-y += \
 	i915_scatterlist.o \
 	i915_switcheroo.o \
 	i915_sysfs.o \
+	i915_timer_util.o \
 	i915_utils.o \
 	intel_clock_gating.o \
 	intel_cpu_info.o \
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 03baa7fa0a27..52c8fddedfce 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -106,14 +106,16 @@
  * preemption, but just sampling the new tail pointer).
  *
  */
+
 #include <linux/interrupt.h>
 #include <linux/string_helpers.h>
 
+#include "gen8_engine_cs.h"
 #include "i915_drv.h"
 #include "i915_reg.h"
+#include "i915_timer_util.h"
 #include "i915_trace.h"
 #include "i915_vgpu.h"
-#include "gen8_engine_cs.h"
 #include "intel_breadcrumbs.h"
 #include "intel_context.h"
 #include "intel_engine_heartbeat.h"
diff --git a/drivers/gpu/drm/i915/gt/sysfs_engines.c b/drivers/gpu/drm/i915/gt/sysfs_engines.c
index aab2759067d2..4a81bc396b21 100644
--- a/drivers/gpu/drm/i915/gt/sysfs_engines.c
+++ b/drivers/gpu/drm/i915/gt/sysfs_engines.c
@@ -7,6 +7,7 @@
 #include <linux/sysfs.h>
 
 #include "i915_drv.h"
+#include "i915_timer_util.h"
 #include "intel_engine.h"
 #include "intel_engine_heartbeat.h"
 #include "sysfs_engines.h"
diff --git a/drivers/gpu/drm/i915/i915_timer_util.c b/drivers/gpu/drm/i915/i915_timer_util.c
new file mode 100644
index 000000000000..ee4cfd8b3c07
--- /dev/null
+++ b/drivers/gpu/drm/i915/i915_timer_util.c
@@ -0,0 +1,36 @@
+// SPDX-License-Identifier: MIT
+/* Copyright © 2025 Intel Corporation */
+
+#include <linux/jiffies.h>
+
+#include "i915_timer_util.h"
+
+void cancel_timer(struct timer_list *t)
+{
+	if (!timer_active(t))
+		return;
+
+	timer_delete(t);
+	WRITE_ONCE(t->expires, 0);
+}
+
+void set_timer_ms(struct timer_list *t, unsigned long timeout)
+{
+	if (!timeout) {
+		cancel_timer(t);
+		return;
+	}
+
+	timeout = msecs_to_jiffies(timeout);
+
+	/*
+	 * Paranoia to make sure the compiler computes the timeout before
+	 * loading 'jiffies' as jiffies is volatile and may be updated in
+	 * the background by a timer tick. All to reduce the complexity
+	 * of the addition and reduce the risk of losing a jiffy.
+	 */
+	barrier();
+
+	/* Keep t->expires = 0 reserved to indicate a canceled timer. */
+	mod_timer(t, jiffies + timeout ?: 1);
+}
diff --git a/drivers/gpu/drm/i915/i915_timer_util.h b/drivers/gpu/drm/i915/i915_timer_util.h
new file mode 100644
index 000000000000..f35ad730820c
--- /dev/null
+++ b/drivers/gpu/drm/i915/i915_timer_util.h
@@ -0,0 +1,23 @@
+/* SPDX-License-Identifier: MIT */
+/* Copyright © 2025 Intel Corporation */
+
+#ifndef __I915_TIMER_UTIL_H__
+#define __I915_TIMER_UTIL_H__
+
+#include <linux/timer.h>
+#include <asm/rwonce.h>
+
+void cancel_timer(struct timer_list *t);
+void set_timer_ms(struct timer_list *t, unsigned long timeout);
+
+static inline bool timer_active(const struct timer_list *t)
+{
+	return READ_ONCE(t->expires);
+}
+
+static inline bool timer_expired(const struct timer_list *t)
+{
+	return timer_active(t) && !timer_pending(t);
+}
+
+#endif /* __I915_TIMER_UTIL_H__ */
diff --git a/drivers/gpu/drm/i915/i915_utils.c b/drivers/gpu/drm/i915/i915_utils.c
index b60c28fbd207..49f7ed413132 100644
--- a/drivers/gpu/drm/i915/i915_utils.c
+++ b/drivers/gpu/drm/i915/i915_utils.c
@@ -47,36 +47,6 @@ bool i915_error_injected(void)
 
 #endif
 
-void cancel_timer(struct timer_list *t)
-{
-	if (!timer_active(t))
-		return;
-
-	timer_delete(t);
-	WRITE_ONCE(t->expires, 0);
-}
-
-void set_timer_ms(struct timer_list *t, unsigned long timeout)
-{
-	if (!timeout) {
-		cancel_timer(t);
-		return;
-	}
-
-	timeout = msecs_to_jiffies(timeout);
-
-	/*
-	 * Paranoia to make sure the compiler computes the timeout before
-	 * loading 'jiffies' as jiffies is volatile and may be updated in
-	 * the background by a timer tick. All to reduce the complexity
-	 * of the addition and reduce the risk of losing a jiffy.
-	 */
-	barrier();
-
-	/* Keep t->expires = 0 reserved to indicate a canceled timer. */
-	mod_timer(t, jiffies + timeout ?: 1);
-}
-
 bool i915_vtd_active(struct drm_i915_private *i915)
 {
 	if (device_iommu_mapped(i915->drm.dev))
diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
index dff02a944a57..6278a74d08c2 100644
--- a/drivers/gpu/drm/i915/i915_utils.h
+++ b/drivers/gpu/drm/i915/i915_utils.h
@@ -38,7 +38,6 @@
 #endif
 
 struct drm_i915_private;
-struct timer_list;
 
 #define MISSING_CASE(x) WARN(1, "Missing case (%s == %ld)\n", \
 			     __stringify(x), (long)(x))
@@ -270,19 +269,6 @@ static inline void __add_taint_for_CI(unsigned int taint)
 	add_taint(taint, LOCKDEP_STILL_OK);
 }
 
-void cancel_timer(struct timer_list *t);
-void set_timer_ms(struct timer_list *t, unsigned long timeout);
-
-static inline bool timer_active(const struct timer_list *t)
-{
-	return READ_ONCE(t->expires);
-}
-
-static inline bool timer_expired(const struct timer_list *t)
-{
-	return timer_active(t) && !timer_pending(t);
-}
-
 static inline bool i915_run_as_guest(void)
 {
 #if IS_ENABLED(CONFIG_X86)
-- 
2.47.3

