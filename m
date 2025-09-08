Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2DEAB490E4
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Sep 2025 16:12:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 727D410E536;
	Mon,  8 Sep 2025 14:12:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T9bNW6hK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADDF910E538
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Sep 2025 14:12:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757340730; x=1788876730;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rKshRheBHlvUjxV1C1tSsiRj9GNw/0zliFKDK8MLqic=;
 b=T9bNW6hK1FWRd52GT6lz5QdfTR1ObKCcxlVKH/CD/W8iGi6phx3yi2kt
 r8sXqhMFzNGJBLhYaKbbzlh5x12qkHCoS4KaKdJar4mB66CtLe5zwFxqz
 RmuthfRQ+KfjHG24m9VepmT53cTz4fYHJVOKA/IMzkn75Xk1miDTsQbfy
 Q9CmJSFQafqxAC+kr8MK732a6n2PPjQy2sQmexkY9bleQhDenQ+qre2V5
 UlE0h3a3ksf5rg0OjECTA7Sbiy23hqrmJJYu75cIOk7rVsFozuv6EXiuD
 hOMydCAGU5yVbEDwp7hZM8mKPH+eQ1WFbyi6r54r3cvv/CSVukJA5fkjt w==;
X-CSE-ConnectionGUID: UWcjhkxOSEGfp3ZBOER6oQ==
X-CSE-MsgGUID: a/nrryCqQGm+E2qnjqsUgQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11547"; a="63237492"
X-IronPort-AV: E=Sophos;i="6.18,248,1751266800"; d="scan'208";a="63237492"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 07:12:10 -0700
X-CSE-ConnectionGUID: Oe4tDxVtQ+W6YuSPoBMklQ==
X-CSE-MsgGUID: jqIXyQgVRlKiO2z1/EUeag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,248,1751266800"; d="scan'208";a="209952209"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.204])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 07:12:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 3/5] drm/i915: split out i915_timer_util.[ch]
Date: Mon,  8 Sep 2025 17:11:47 +0300
Message-ID: <863f74f4fa30338dc34151b75c28b6841e50c7ee.1757340520.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1757340520.git.jani.nikula@intel.com>
References: <cover.1757340520.git.jani.nikula@intel.com>
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

