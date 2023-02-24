Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A697C6A1F94
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Feb 2023 17:26:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8CC410EC87;
	Fri, 24 Feb 2023 16:26:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F05210E132;
 Fri, 24 Feb 2023 16:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677255993; x=1708791993;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=FFUgPWNuEjail52Mg5EAExBxGFOAfX1/frDyd8NTZb0=;
 b=VbX6DjNAys/eIssP8FFHrXLE1iHFgpTZotigmEbnZ8QOhojSRgeET20T
 +QGDP+jrYDWAao5DHUzmavEt7d5W77qSiZVeSmCcOSld/tQZYnCcyUquB
 6FIAdMjIzCPgM6s0ncWw2cRDdrs1cSELamLK41kj3bFyCcXWBHbCIuH30
 W9ssC7plUwXr+aM/W9cSMoI/9XqOwZ8K6KNAK+SxDk0KS6Td+k2uNCk2j
 WwZs0ri7bB9VPuc+Y95bchJUU4e9TLjXqii2Rc5KQZeVk3xeXJ9vuUMzQ
 HK6Qqa3PObMtBkqGFieKNt9Fc7H0j3Zi0YqWabd9P5flT1vXsuyAggXwl w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10631"; a="317273360"
X-IronPort-AV: E=Sophos;i="5.97,325,1669104000"; d="scan'208";a="317273360"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2023 08:26:19 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10631"; a="705321773"
X-IronPort-AV: E=Sophos;i="5.97,325,1669104000"; d="scan'208";a="705321773"
Received: from lab-ah.igk.intel.com ([10.102.42.211])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2023 08:26:15 -0800
From: Andrzej Hajda <andrzej.hajda@intel.com>
Date: Fri, 24 Feb 2023 17:25:40 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20230224-track_gt-v1-1-0222096fcdc6@intel.com>
References: <20230224-track_gt-v1-0-0222096fcdc6@intel.com>
In-Reply-To: <20230224-track_gt-v1-0-0222096fcdc6@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
X-Mailer: b4 0.11.1
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: Separate wakeref tracking
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Chris Wilson <chris.p.wilson@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>, dri-devel@lists.freedesktop.org,
 Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Chris Wilson <chris.p.wilson@intel.com>

Extract the callstack tracking of intel_runtime_pm.c into its own
utility so that that we can reuse it for other online debugging of
scoped wakerefs.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/Kconfig.debug           |   9 +
 drivers/gpu/drm/i915/Makefile                |   4 +
 drivers/gpu/drm/i915/intel_runtime_pm.c      | 244 +++------------------------
 drivers/gpu/drm/i915/intel_runtime_pm.h      |  10 +-
 drivers/gpu/drm/i915/intel_wakeref.h         |   6 +-
 drivers/gpu/drm/i915/intel_wakeref_tracker.c | 234 +++++++++++++++++++++++++
 drivers/gpu/drm/i915/intel_wakeref_tracker.h |  76 +++++++++
 7 files changed, 355 insertions(+), 228 deletions(-)

diff --git a/drivers/gpu/drm/i915/Kconfig.debug b/drivers/gpu/drm/i915/Kconfig.debug
index 93dfb7ed970547..5fde52107e3b44 100644
--- a/drivers/gpu/drm/i915/Kconfig.debug
+++ b/drivers/gpu/drm/i915/Kconfig.debug
@@ -25,6 +25,7 @@ config DRM_I915_DEBUG
 	select PREEMPT_COUNT
 	select I2C_CHARDEV
 	select STACKDEPOT
+	select STACKTRACE
 	select DRM_DP_AUX_CHARDEV
 	select X86_MSR # used by igt/pm_rpm
 	select DRM_VGEM # used by igt/prime_vgem (dmabuf interop checks)
@@ -37,6 +38,7 @@ config DRM_I915_DEBUG
 	select DRM_I915_DEBUG_GEM
 	select DRM_I915_DEBUG_GEM_ONCE
 	select DRM_I915_DEBUG_MMIO
+	select DRM_I915_TRACK_WAKEREF
 	select DRM_I915_DEBUG_RUNTIME_PM
 	select DRM_I915_SW_FENCE_DEBUG_OBJECTS
 	select DRM_I915_SELFTEST
@@ -227,11 +229,18 @@ config DRM_I915_DEBUG_VBLANK_EVADE
 
 	  If in doubt, say "N".
 
+config DRM_I915_TRACK_WAKEREF
+	depends on STACKDEPOT
+	depends on STACKTRACE
+	bool
+
 config DRM_I915_DEBUG_RUNTIME_PM
 	bool "Enable extra state checking for runtime PM"
 	depends on DRM_I915
 	default n
 	select STACKDEPOT
+	select STACKTRACE
+	select DRM_I915_TRACK_WAKEREF
 	help
 	  Choose this option to turn on extra state checking for the
 	  runtime PM functionality. This may introduce overhead during
diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index b2f91a1f826858..42daff6d575a82 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -81,6 +81,10 @@ i915-$(CONFIG_DEBUG_FS) += \
 	i915_debugfs_params.o \
 	display/intel_display_debugfs.o \
 	display/intel_pipe_crc.o
+
+i915-$(CONFIG_DRM_I915_TRACK_WAKEREF) += \
+	intel_wakeref_tracker.o
+
 i915-$(CONFIG_PERF_EVENTS) += i915_pmu.o
 
 # "Graphics Technology" (aka we talk to the gpu)
diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c b/drivers/gpu/drm/i915/intel_runtime_pm.c
index 129746713d072f..72887e2bb03c21 100644
--- a/drivers/gpu/drm/i915/intel_runtime_pm.c
+++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
@@ -52,182 +52,37 @@
 
 #if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
 
-#include <linux/sort.h>
-
-#define STACKDEPTH 8
-
-static noinline depot_stack_handle_t __save_depot_stack(void)
-{
-	unsigned long entries[STACKDEPTH];
-	unsigned int n;
-
-	n = stack_trace_save(entries, ARRAY_SIZE(entries), 1);
-	return stack_depot_save(entries, n, GFP_NOWAIT | __GFP_NOWARN);
-}
-
 static void init_intel_runtime_pm_wakeref(struct intel_runtime_pm *rpm)
 {
-	spin_lock_init(&rpm->debug.lock);
-	stack_depot_init();
+	intel_wakeref_tracker_init(&rpm->debug);
 }
 
-static noinline depot_stack_handle_t
+static intel_wakeref_t
 track_intel_runtime_pm_wakeref(struct intel_runtime_pm *rpm)
 {
-	depot_stack_handle_t stack, *stacks;
-	unsigned long flags;
-
-	if (rpm->no_wakeref_tracking)
-		return -1;
-
-	stack = __save_depot_stack();
-	if (!stack)
+	if (!rpm->available)
 		return -1;
 
-	spin_lock_irqsave(&rpm->debug.lock, flags);
-
-	if (!rpm->debug.count)
-		rpm->debug.last_acquire = stack;
-
-	stacks = krealloc(rpm->debug.owners,
-			  (rpm->debug.count + 1) * sizeof(*stacks),
-			  GFP_NOWAIT | __GFP_NOWARN);
-	if (stacks) {
-		stacks[rpm->debug.count++] = stack;
-		rpm->debug.owners = stacks;
-	} else {
-		stack = -1;
-	}
-
-	spin_unlock_irqrestore(&rpm->debug.lock, flags);
-
-	return stack;
+	return intel_wakeref_tracker_add(&rpm->debug);
 }
 
 static void untrack_intel_runtime_pm_wakeref(struct intel_runtime_pm *rpm,
-					     depot_stack_handle_t stack)
+					     intel_wakeref_t wakeref)
 {
-	struct drm_i915_private *i915 = container_of(rpm,
-						     struct drm_i915_private,
-						     runtime_pm);
-	unsigned long flags, n;
-	bool found = false;
-
-	if (unlikely(stack == -1))
-		return;
-
-	spin_lock_irqsave(&rpm->debug.lock, flags);
-	for (n = rpm->debug.count; n--; ) {
-		if (rpm->debug.owners[n] == stack) {
-			memmove(rpm->debug.owners + n,
-				rpm->debug.owners + n + 1,
-				(--rpm->debug.count - n) * sizeof(stack));
-			found = true;
-			break;
-		}
-	}
-	spin_unlock_irqrestore(&rpm->debug.lock, flags);
-
-	if (drm_WARN(&i915->drm, !found,
-		     "Unmatched wakeref (tracking %lu), count %u\n",
-		     rpm->debug.count, atomic_read(&rpm->wakeref_count))) {
-		char *buf;
-
-		buf = kmalloc(PAGE_SIZE, GFP_NOWAIT | __GFP_NOWARN);
-		if (!buf)
-			return;
-
-		stack_depot_snprint(stack, buf, PAGE_SIZE, 2);
-		DRM_DEBUG_DRIVER("wakeref %x from\n%s", stack, buf);
-
-		stack = READ_ONCE(rpm->debug.last_release);
-		if (stack) {
-			stack_depot_snprint(stack, buf, PAGE_SIZE, 2);
-			DRM_DEBUG_DRIVER("wakeref last released at\n%s", buf);
-		}
-
-		kfree(buf);
-	}
+	intel_wakeref_tracker_remove(&rpm->debug, wakeref);
 }
 
-static int cmphandle(const void *_a, const void *_b)
+static void untrack_all_intel_runtime_pm_wakerefs(struct intel_runtime_pm *rpm)
 {
-	const depot_stack_handle_t * const a = _a, * const b = _b;
+	struct drm_printer p = drm_debug_printer("i915");
 
-	if (*a < *b)
-		return -1;
-	else if (*a > *b)
-		return 1;
-	else
-		return 0;
-}
-
-static void
-__print_intel_runtime_pm_wakeref(struct drm_printer *p,
-				 const struct intel_runtime_pm_debug *dbg)
-{
-	unsigned long i;
-	char *buf;
-
-	buf = kmalloc(PAGE_SIZE, GFP_NOWAIT | __GFP_NOWARN);
-	if (!buf)
-		return;
-
-	if (dbg->last_acquire) {
-		stack_depot_snprint(dbg->last_acquire, buf, PAGE_SIZE, 2);
-		drm_printf(p, "Wakeref last acquired:\n%s", buf);
-	}
-
-	if (dbg->last_release) {
-		stack_depot_snprint(dbg->last_release, buf, PAGE_SIZE, 2);
-		drm_printf(p, "Wakeref last released:\n%s", buf);
-	}
-
-	drm_printf(p, "Wakeref count: %lu\n", dbg->count);
-
-	sort(dbg->owners, dbg->count, sizeof(*dbg->owners), cmphandle, NULL);
-
-	for (i = 0; i < dbg->count; i++) {
-		depot_stack_handle_t stack = dbg->owners[i];
-		unsigned long rep;
-
-		rep = 1;
-		while (i + 1 < dbg->count && dbg->owners[i + 1] == stack)
-			rep++, i++;
-		stack_depot_snprint(stack, buf, PAGE_SIZE, 2);
-		drm_printf(p, "Wakeref x%lu taken at:\n%s", rep, buf);
-	}
-
-	kfree(buf);
-}
-
-static noinline void
-__untrack_all_wakerefs(struct intel_runtime_pm_debug *debug,
-		       struct intel_runtime_pm_debug *saved)
-{
-	*saved = *debug;
-
-	debug->owners = NULL;
-	debug->count = 0;
-	debug->last_release = __save_depot_stack();
-}
-
-static void
-dump_and_free_wakeref_tracking(struct intel_runtime_pm_debug *debug)
-{
-	if (debug->count) {
-		struct drm_printer p = drm_debug_printer("i915");
-
-		__print_intel_runtime_pm_wakeref(&p, debug);
-	}
-
-	kfree(debug->owners);
+	intel_wakeref_tracker_reset(&rpm->debug, &p);
 }
 
 static noinline void
 __intel_wakeref_dec_and_check_tracking(struct intel_runtime_pm *rpm)
 {
-	struct intel_runtime_pm_debug dbg = {};
+	struct intel_wakeref_tracker saved;
 	unsigned long flags;
 
 	if (!atomic_dec_and_lock_irqsave(&rpm->wakeref_count,
@@ -235,60 +90,21 @@ __intel_wakeref_dec_and_check_tracking(struct intel_runtime_pm *rpm)
 					 flags))
 		return;
 
-	__untrack_all_wakerefs(&rpm->debug, &dbg);
+	saved = __intel_wakeref_tracker_reset(&rpm->debug);
 	spin_unlock_irqrestore(&rpm->debug.lock, flags);
 
-	dump_and_free_wakeref_tracking(&dbg);
-}
-
-static noinline void
-untrack_all_intel_runtime_pm_wakerefs(struct intel_runtime_pm *rpm)
-{
-	struct intel_runtime_pm_debug dbg = {};
-	unsigned long flags;
-
-	spin_lock_irqsave(&rpm->debug.lock, flags);
-	__untrack_all_wakerefs(&rpm->debug, &dbg);
-	spin_unlock_irqrestore(&rpm->debug.lock, flags);
+	if (saved.count) {
+		struct drm_printer p = drm_debug_printer("i915");
 
-	dump_and_free_wakeref_tracking(&dbg);
+		__intel_wakeref_tracker_show(&saved, &p);
+		intel_wakeref_tracker_fini(&saved);
+	}
 }
 
 void print_intel_runtime_pm_wakeref(struct intel_runtime_pm *rpm,
 				    struct drm_printer *p)
 {
-	struct intel_runtime_pm_debug dbg = {};
-
-	do {
-		unsigned long alloc = dbg.count;
-		depot_stack_handle_t *s;
-
-		spin_lock_irq(&rpm->debug.lock);
-		dbg.count = rpm->debug.count;
-		if (dbg.count <= alloc) {
-			memcpy(dbg.owners,
-			       rpm->debug.owners,
-			       dbg.count * sizeof(*s));
-		}
-		dbg.last_acquire = rpm->debug.last_acquire;
-		dbg.last_release = rpm->debug.last_release;
-		spin_unlock_irq(&rpm->debug.lock);
-		if (dbg.count <= alloc)
-			break;
-
-		s = krealloc(dbg.owners,
-			     dbg.count * sizeof(*s),
-			     GFP_NOWAIT | __GFP_NOWARN);
-		if (!s)
-			goto out;
-
-		dbg.owners = s;
-	} while (1);
-
-	__print_intel_runtime_pm_wakeref(p, &dbg);
-
-out:
-	kfree(dbg.owners);
+	intel_wakeref_tracker_show(&rpm->debug, p);
 }
 
 #else
@@ -297,14 +113,14 @@ static void init_intel_runtime_pm_wakeref(struct intel_runtime_pm *rpm)
 {
 }
 
-static depot_stack_handle_t
+static intel_wakeref_t
 track_intel_runtime_pm_wakeref(struct intel_runtime_pm *rpm)
 {
 	return -1;
 }
 
 static void untrack_intel_runtime_pm_wakeref(struct intel_runtime_pm *rpm,
-					     intel_wakeref_t wref)
+					     intel_wakeref_t wakeref)
 {
 }
 
@@ -349,9 +165,8 @@ intel_runtime_pm_release(struct intel_runtime_pm *rpm, int wakelock)
 static intel_wakeref_t __intel_runtime_pm_get(struct intel_runtime_pm *rpm,
 					      bool wakelock)
 {
-	struct drm_i915_private *i915 = container_of(rpm,
-						     struct drm_i915_private,
-						     runtime_pm);
+	struct drm_i915_private *i915 =
+		container_of(rpm, struct drm_i915_private, runtime_pm);
 	int ret;
 
 	ret = pm_runtime_get_sync(rpm->kdev);
@@ -556,9 +371,8 @@ void intel_runtime_pm_put(struct intel_runtime_pm *rpm, intel_wakeref_t wref)
  */
 void intel_runtime_pm_enable(struct intel_runtime_pm *rpm)
 {
-	struct drm_i915_private *i915 = container_of(rpm,
-						     struct drm_i915_private,
-						     runtime_pm);
+	struct drm_i915_private *i915 =
+		container_of(rpm, struct drm_i915_private, runtime_pm);
 	struct device *kdev = rpm->kdev;
 
 	/*
@@ -611,9 +425,8 @@ void intel_runtime_pm_enable(struct intel_runtime_pm *rpm)
 
 void intel_runtime_pm_disable(struct intel_runtime_pm *rpm)
 {
-	struct drm_i915_private *i915 = container_of(rpm,
-						     struct drm_i915_private,
-						     runtime_pm);
+	struct drm_i915_private *i915 =
+		container_of(rpm, struct drm_i915_private, runtime_pm);
 	struct device *kdev = rpm->kdev;
 
 	/* Transfer rpm ownership back to core */
@@ -628,9 +441,8 @@ void intel_runtime_pm_disable(struct intel_runtime_pm *rpm)
 
 void intel_runtime_pm_driver_release(struct intel_runtime_pm *rpm)
 {
-	struct drm_i915_private *i915 = container_of(rpm,
-						     struct drm_i915_private,
-						     runtime_pm);
+	struct drm_i915_private *i915 =
+		container_of(rpm, struct drm_i915_private, runtime_pm);
 	int count = atomic_read(&rpm->wakeref_count);
 
 	intel_wakeref_auto_fini(&rpm->userfault_wakeref);
@@ -646,7 +458,7 @@ void intel_runtime_pm_driver_release(struct intel_runtime_pm *rpm)
 void intel_runtime_pm_init_early(struct intel_runtime_pm *rpm)
 {
 	struct drm_i915_private *i915 =
-			container_of(rpm, struct drm_i915_private, runtime_pm);
+		container_of(rpm, struct drm_i915_private, runtime_pm);
 	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
 	struct device *kdev = &pdev->dev;
 
diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.h b/drivers/gpu/drm/i915/intel_runtime_pm.h
index e592e8d6499a1f..a8dc2baf79844f 100644
--- a/drivers/gpu/drm/i915/intel_runtime_pm.h
+++ b/drivers/gpu/drm/i915/intel_runtime_pm.h
@@ -83,15 +83,7 @@ struct intel_runtime_pm {
 	 * paired rpm_put) we can remove corresponding pairs of and keep
 	 * the array trimmed to active wakerefs.
 	 */
-	struct intel_runtime_pm_debug {
-		spinlock_t lock;
-
-		depot_stack_handle_t last_acquire;
-		depot_stack_handle_t last_release;
-
-		depot_stack_handle_t *owners;
-		unsigned long count;
-	} debug;
+	struct intel_wakeref_tracker debug;
 #endif
 };
 
diff --git a/drivers/gpu/drm/i915/intel_wakeref.h b/drivers/gpu/drm/i915/intel_wakeref.h
index 71b8a63f6f104d..20720fbcc28d46 100644
--- a/drivers/gpu/drm/i915/intel_wakeref.h
+++ b/drivers/gpu/drm/i915/intel_wakeref.h
@@ -17,7 +17,9 @@
 #include <linux/timer.h>
 #include <linux/workqueue.h>
 
-#if IS_ENABLED(CONFIG_DRM_I915_DEBUG)
+#include "intel_wakeref_tracker.h"
+
+#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_WAKEREF)
 #define INTEL_WAKEREF_BUG_ON(expr) BUG_ON(expr)
 #else
 #define INTEL_WAKEREF_BUG_ON(expr) BUILD_BUG_ON_INVALID(expr)
@@ -26,8 +28,6 @@
 struct intel_runtime_pm;
 struct intel_wakeref;
 
-typedef depot_stack_handle_t intel_wakeref_t;
-
 struct intel_wakeref_ops {
 	int (*get)(struct intel_wakeref *wf);
 	int (*put)(struct intel_wakeref *wf);
diff --git a/drivers/gpu/drm/i915/intel_wakeref_tracker.c b/drivers/gpu/drm/i915/intel_wakeref_tracker.c
new file mode 100644
index 00000000000000..a0bcef13a1085a
--- /dev/null
+++ b/drivers/gpu/drm/i915/intel_wakeref_tracker.c
@@ -0,0 +1,234 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2021 Intel Corporation
+ */
+
+#include <linux/slab.h>
+#include <linux/stackdepot.h>
+#include <linux/stacktrace.h>
+#include <linux/sort.h>
+
+#include <drm/drm_print.h>
+
+#include "intel_wakeref.h"
+
+#define STACKDEPTH 8
+
+static noinline depot_stack_handle_t __save_depot_stack(void)
+{
+	unsigned long entries[STACKDEPTH];
+	unsigned int n;
+
+	n = stack_trace_save(entries, ARRAY_SIZE(entries), 1);
+	return stack_depot_save(entries, n, GFP_NOWAIT | __GFP_NOWARN);
+}
+
+static void __print_depot_stack(depot_stack_handle_t stack,
+				char *buf, int sz, int indent)
+{
+	unsigned long *entries;
+	unsigned int nr_entries;
+
+	nr_entries = stack_depot_fetch(stack, &entries);
+	stack_trace_snprint(buf, sz, entries, nr_entries, indent);
+}
+
+static int cmphandle(const void *_a, const void *_b)
+{
+	const depot_stack_handle_t * const a = _a, * const b = _b;
+
+	if (*a < *b)
+		return -1;
+	else if (*a > *b)
+		return 1;
+	else
+		return 0;
+}
+
+void
+__intel_wakeref_tracker_show(const struct intel_wakeref_tracker *w,
+			     struct drm_printer *p)
+{
+	unsigned long i;
+	char *buf;
+
+	buf = kmalloc(PAGE_SIZE, GFP_NOWAIT | __GFP_NOWARN);
+	if (!buf)
+		return;
+
+	if (w->last_acquire) {
+		__print_depot_stack(w->last_acquire, buf, PAGE_SIZE, 2);
+		drm_printf(p, "Wakeref last acquired:\n%s", buf);
+	}
+
+	if (w->last_release) {
+		__print_depot_stack(w->last_release, buf, PAGE_SIZE, 2);
+		drm_printf(p, "Wakeref last released:\n%s", buf);
+	}
+
+	drm_printf(p, "Wakeref count: %lu\n", w->count);
+
+	sort(w->owners, w->count, sizeof(*w->owners), cmphandle, NULL);
+
+	for (i = 0; i < w->count; i++) {
+		depot_stack_handle_t stack = w->owners[i];
+		unsigned long rep;
+
+		rep = 1;
+		while (i + 1 < w->count && w->owners[i + 1] == stack)
+			rep++, i++;
+		__print_depot_stack(stack, buf, PAGE_SIZE, 2);
+		drm_printf(p, "Wakeref x%lu taken at:\n%s", rep, buf);
+	}
+
+	kfree(buf);
+}
+
+void intel_wakeref_tracker_show(struct intel_wakeref_tracker *w,
+				struct drm_printer *p)
+{
+	struct intel_wakeref_tracker tmp = {};
+
+	do {
+		unsigned long alloc = tmp.count;
+		depot_stack_handle_t *s;
+
+		spin_lock_irq(&w->lock);
+		tmp.count = w->count;
+		if (tmp.count <= alloc)
+			memcpy(tmp.owners, w->owners, tmp.count * sizeof(*s));
+		tmp.last_acquire = w->last_acquire;
+		tmp.last_release = w->last_release;
+		spin_unlock_irq(&w->lock);
+		if (tmp.count <= alloc)
+			break;
+
+		s = krealloc(tmp.owners,
+			     tmp.count * sizeof(*s),
+			     GFP_NOWAIT | __GFP_NOWARN);
+		if (!s)
+			goto out;
+
+		tmp.owners = s;
+	} while (1);
+
+	__intel_wakeref_tracker_show(&tmp, p);
+
+out:
+	intel_wakeref_tracker_fini(&tmp);
+}
+
+intel_wakeref_t intel_wakeref_tracker_add(struct intel_wakeref_tracker *w)
+{
+	depot_stack_handle_t stack, *stacks;
+	unsigned long flags;
+
+	stack = __save_depot_stack();
+	if (!stack)
+		return -1;
+
+	spin_lock_irqsave(&w->lock, flags);
+
+	if (!w->count)
+		w->last_acquire = stack;
+
+	stacks = krealloc(w->owners,
+			  (w->count + 1) * sizeof(*stacks),
+			  GFP_NOWAIT | __GFP_NOWARN);
+	if (stacks) {
+		stacks[w->count++] = stack;
+		w->owners = stacks;
+	} else {
+		stack = -1;
+	}
+
+	spin_unlock_irqrestore(&w->lock, flags);
+
+	return stack;
+}
+
+void intel_wakeref_tracker_remove(struct intel_wakeref_tracker *w,
+				  intel_wakeref_t stack)
+{
+	unsigned long flags, n;
+	bool found = false;
+
+	if (unlikely(stack == -1))
+		return;
+
+	spin_lock_irqsave(&w->lock, flags);
+	for (n = w->count; n--; ) {
+		if (w->owners[n] == stack) {
+			memmove(w->owners + n,
+				w->owners + n + 1,
+				(--w->count - n) * sizeof(stack));
+			found = true;
+			break;
+		}
+	}
+	spin_unlock_irqrestore(&w->lock, flags);
+
+	if (WARN(!found,
+		 "Unmatched wakeref %x, tracking %lu\n",
+		 stack, w->count)) {
+		char *buf;
+
+		buf = kmalloc(PAGE_SIZE, GFP_NOWAIT | __GFP_NOWARN);
+		if (!buf)
+			return;
+
+		__print_depot_stack(stack, buf, PAGE_SIZE, 2);
+		pr_err("wakeref %x from\n%s", stack, buf);
+
+		stack = READ_ONCE(w->last_release);
+		if (stack && !w->count) {
+			__print_depot_stack(stack, buf, PAGE_SIZE, 2);
+			pr_err("wakeref last released at\n%s", buf);
+		}
+
+		kfree(buf);
+	}
+}
+
+struct intel_wakeref_tracker
+__intel_wakeref_tracker_reset(struct intel_wakeref_tracker *w)
+{
+	struct intel_wakeref_tracker saved;
+
+	lockdep_assert_held(&w->lock);
+
+	saved = *w;
+
+	w->owners = NULL;
+	w->count = 0;
+	w->last_release = __save_depot_stack();
+
+	return saved;
+}
+
+void intel_wakeref_tracker_reset(struct intel_wakeref_tracker *w,
+				 struct drm_printer *p)
+{
+	struct intel_wakeref_tracker tmp;
+
+	spin_lock_irq(&w->lock);
+	tmp = __intel_wakeref_tracker_reset(w);
+	spin_unlock_irq(&w->lock);
+
+	if (tmp.count)
+		__intel_wakeref_tracker_show(&tmp, p);
+
+	intel_wakeref_tracker_fini(&tmp);
+}
+
+void intel_wakeref_tracker_init(struct intel_wakeref_tracker *w)
+{
+	memset(w, 0, sizeof(*w));
+	spin_lock_init(&w->lock);
+	stack_depot_init();
+}
+
+void intel_wakeref_tracker_fini(struct intel_wakeref_tracker *w)
+{
+	kfree(w->owners);
+}
diff --git a/drivers/gpu/drm/i915/intel_wakeref_tracker.h b/drivers/gpu/drm/i915/intel_wakeref_tracker.h
new file mode 100644
index 00000000000000..61df68e28c0fbf
--- /dev/null
+++ b/drivers/gpu/drm/i915/intel_wakeref_tracker.h
@@ -0,0 +1,76 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2019 Intel Corporation
+ */
+
+#ifndef INTEL_WAKEREF_TRACKER_H
+#define INTEL_WAKEREF_TRACKER_H
+
+#include <linux/kconfig.h>
+#include <linux/spinlock.h>
+#include <linux/stackdepot.h>
+
+typedef depot_stack_handle_t intel_wakeref_t;
+
+struct drm_printer;
+
+struct intel_wakeref_tracker {
+	spinlock_t lock;
+
+	depot_stack_handle_t last_acquire;
+	depot_stack_handle_t last_release;
+
+	depot_stack_handle_t *owners;
+	unsigned long count;
+};
+
+#if IS_ENABLED(CONFIG_DRM_I915_TRACK_WAKEREF)
+
+void intel_wakeref_tracker_init(struct intel_wakeref_tracker *w);
+void intel_wakeref_tracker_fini(struct intel_wakeref_tracker *w);
+
+intel_wakeref_t intel_wakeref_tracker_add(struct intel_wakeref_tracker *w);
+void intel_wakeref_tracker_remove(struct intel_wakeref_tracker *w,
+			   intel_wakeref_t handle);
+
+struct intel_wakeref_tracker
+__intel_wakeref_tracker_reset(struct intel_wakeref_tracker *w);
+void intel_wakeref_tracker_reset(struct intel_wakeref_tracker *w,
+				 struct drm_printer *p);
+
+void __intel_wakeref_tracker_show(const struct intel_wakeref_tracker *w,
+				  struct drm_printer *p);
+void intel_wakeref_tracker_show(struct intel_wakeref_tracker *w,
+				struct drm_printer *p);
+
+#else
+
+static inline void intel_wakeref_tracker_init(struct intel_wakeref_tracker *w) {}
+static inline void intel_wakeref_tracker_fini(struct intel_wakeref_tracker *w) {}
+
+static inline intel_wakeref_t
+intel_wakeref_tracker_add(struct intel_wakeref_tracker *w)
+{
+	return -1;
+}
+
+static inline void
+intel_wakeref_untrack_remove(struct intel_wakeref_tracker *w, intel_wakeref_t handle) {}
+
+static inline struct intel_wakeref_tracker
+__intel_wakeref_tracker_reset(struct intel_wakeref_tracker *w)
+{
+	return (struct intel_wakeref_tracker){};
+}
+
+static inline void intel_wakeref_tracker_reset(struct intel_wakeref_tracker *w,
+					       struct drm_printer *p)
+{
+}
+
+static inline void __intel_wakeref_tracker_show(const struct intel_wakeref_tracker *w, struct drm_printer *p) {}
+static inline void intel_wakeref_tracker_show(struct intel_wakeref_tracker *w, struct drm_printer *p) {}
+
+#endif
+
+#endif /* INTEL_WAKEREF_TRACKER_H */

-- 
2.34.1
