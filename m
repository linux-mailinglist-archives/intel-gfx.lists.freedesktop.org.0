Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D15E12EC95
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jan 2020 23:20:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37661895B2;
	Thu,  2 Jan 2020 22:19:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A28E1895B2
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jan 2020 22:19:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19754033-1500050 
 for multiple; Thu, 02 Jan 2020 22:19:49 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Jan 2020 22:19:49 +0000
Message-Id: <20200102221949.1656194-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0.rc0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftest: Move igt_atomic_section[]
 out of the header
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move the definition of the igt_atomic_section[] into a C file, leaving
the declaration in the header so as not to upset headertest!

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/Makefile               |  1 +
 drivers/gpu/drm/i915/selftests/igt_atomic.c | 42 +++++++++++++++++++++
 drivers/gpu/drm/i915/selftests/igt_atomic.h | 41 +-------------------
 3 files changed, 44 insertions(+), 40 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/selftests/igt_atomic.c

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 1a2fad832a4d..5992ef800534 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -252,6 +252,7 @@ i915-$(CONFIG_DRM_I915_SELFTEST) += \
 	gem/selftests/igt_gem_utils.o \
 	selftests/i915_random.o \
 	selftests/i915_selftest.o \
+	selftests/igt_atomic.o \
 	selftests/igt_flush_test.o \
 	selftests/igt_live_test.o \
 	selftests/igt_mmap.o \
diff --git a/drivers/gpu/drm/i915/selftests/igt_atomic.c b/drivers/gpu/drm/i915/selftests/igt_atomic.c
new file mode 100644
index 000000000000..1cacb45ef290
--- /dev/null
+++ b/drivers/gpu/drm/i915/selftests/igt_atomic.c
@@ -0,0 +1,42 @@
+#include <linux/preempt.h>
+#include <linux/bottom_half.h>
+#include <linux/irqflags.h>
+
+#include "igt_atomic.h"
+
+static void __preempt_begin(void)
+{
+	preempt_disable();
+}
+
+static void __preempt_end(void)
+{
+	preempt_enable();
+}
+
+static void __softirq_begin(void)
+{
+	local_bh_disable();
+}
+
+static void __softirq_end(void)
+{
+	local_bh_enable();
+}
+
+static void __hardirq_begin(void)
+{
+	local_irq_disable();
+}
+
+static void __hardirq_end(void)
+{
+	local_irq_enable();
+}
+
+const struct igt_atomic_section igt_atomic_phases[] = {
+	{ "preempt", __preempt_begin, __preempt_end },
+	{ "softirq", __softirq_begin, __softirq_end },
+	{ "hardirq", __hardirq_begin, __hardirq_end },
+	{ }
+};
diff --git a/drivers/gpu/drm/i915/selftests/igt_atomic.h b/drivers/gpu/drm/i915/selftests/igt_atomic.h
index 93ec89f487ec..1991798abf4b 100644
--- a/drivers/gpu/drm/i915/selftests/igt_atomic.h
+++ b/drivers/gpu/drm/i915/selftests/igt_atomic.h
@@ -6,51 +6,12 @@
 #ifndef IGT_ATOMIC_H
 #define IGT_ATOMIC_H
 
-#include <linux/preempt.h>
-#include <linux/bottom_half.h>
-#include <linux/irqflags.h>
-
-static void __preempt_begin(void)
-{
-	preempt_disable();
-}
-
-static void __preempt_end(void)
-{
-	preempt_enable();
-}
-
-static void __softirq_begin(void)
-{
-	local_bh_disable();
-}
-
-static void __softirq_end(void)
-{
-	local_bh_enable();
-}
-
-static void __hardirq_begin(void)
-{
-	local_irq_disable();
-}
-
-static void __hardirq_end(void)
-{
-	local_irq_enable();
-}
-
 struct igt_atomic_section {
 	const char *name;
 	void (*critical_section_begin)(void);
 	void (*critical_section_end)(void);
 };
 
-static const struct igt_atomic_section igt_atomic_phases[] = {
-	{ "preempt", __preempt_begin, __preempt_end },
-	{ "softirq", __softirq_begin, __softirq_end },
-	{ "hardirq", __hardirq_begin, __hardirq_end },
-	{ }
-};
+extern const struct igt_atomic_section igt_atomic_phases[];
 
 #endif /* IGT_ATOMIC_H */
-- 
2.25.0.rc0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
