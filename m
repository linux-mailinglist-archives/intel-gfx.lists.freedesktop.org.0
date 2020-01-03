Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A97612F6D5
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2020 11:45:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08E9C89971;
	Fri,  3 Jan 2020 10:45:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7B0689971
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jan 2020 10:45:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19758426-1500050 
 for multiple; Fri, 03 Jan 2020 10:45:18 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  3 Jan 2020 10:45:16 +0000
Message-Id: <20200103104516.1757103-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0.rc0
In-Reply-To: <20200103104516.1757103-1-chris@chris-wilson.co.uk>
References: <20200103104516.1757103-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/selftests: Make headers
 self-contained
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

Include the types used by the headers to they can be compiled
standalone.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/Makefile                        | 8 +-------
 drivers/gpu/drm/i915/gem/selftests/huge_gem_object.h | 6 ++++++
 drivers/gpu/drm/i915/gem/selftests/mock_gem_object.h | 2 ++
 drivers/gpu/drm/i915/selftests/i915_live_selftests.h | 8 +++++++-
 drivers/gpu/drm/i915/selftests/i915_mock_selftests.h | 8 +++++++-
 drivers/gpu/drm/i915/selftests/i915_perf_selftests.h | 8 +++++++-
 drivers/gpu/drm/i915/selftests/igt_live_test.h       | 3 ++-
 7 files changed, 32 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 5992ef800534..0b1d8d36a50a 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -275,8 +275,6 @@ obj-$(CONFIG_DRM_I915_GVT_KVMGT) += gvt/kvmgt.o
 # exclude some broken headers from the test coverage
 no-header-test := \
 	display/intel_vbt_defs.h \
-	gem/selftests/huge_gem_object.h \
-	gem/selftests/mock_gem_object.h \
 	gvt/execlist.h \
 	gvt/fb_decoder.h \
 	gvt/gtt.h \
@@ -284,11 +282,7 @@ no-header-test := \
 	gvt/interrupt.h \
 	gvt/mmio_context.h \
 	gvt/mpt.h \
-	gvt/scheduler.h \
-	selftests/i915_live_selftests.h \
-	selftests/i915_mock_selftests.h \
-	selftests/i915_perf_selftests.h \
-	selftests/igt_live_test.h
+	gvt/scheduler.h
 
 extra-$(CONFIG_DRM_I915_WERROR) += \
 	$(patsubst %.h,%.hdrtest, $(filter-out $(no-header-test), \
diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_gem_object.h b/drivers/gpu/drm/i915/gem/selftests/huge_gem_object.h
index 549c1394bcdc..b8cf31b7bf14 100644
--- a/drivers/gpu/drm/i915/gem/selftests/huge_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/selftests/huge_gem_object.h
@@ -7,6 +7,12 @@
 #ifndef __HUGE_GEM_OBJECT_H
 #define __HUGE_GEM_OBJECT_H
 
+#include <linux/types.h>
+
+#include "gem/i915_gem_object_types.h"
+
+struct drm_i915_private;
+
 struct drm_i915_gem_object *
 huge_gem_object(struct drm_i915_private *i915,
 		phys_addr_t phys_size,
diff --git a/drivers/gpu/drm/i915/gem/selftests/mock_gem_object.h b/drivers/gpu/drm/i915/gem/selftests/mock_gem_object.h
index 370360b4a148..688511afa883 100644
--- a/drivers/gpu/drm/i915/gem/selftests/mock_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/selftests/mock_gem_object.h
@@ -7,6 +7,8 @@
 #ifndef __MOCK_GEM_OBJECT_H__
 #define __MOCK_GEM_OBJECT_H__
 
+#include "gem/i915_gem_object_types.h"
+
 struct mock_object {
 	struct drm_i915_gem_object base;
 };
diff --git a/drivers/gpu/drm/i915/selftests/i915_live_selftests.h b/drivers/gpu/drm/i915/selftests/i915_live_selftests.h
index 476fba2ed8bb..34138c7bdd15 100644
--- a/drivers/gpu/drm/i915/selftests/i915_live_selftests.h
+++ b/drivers/gpu/drm/i915/selftests/i915_live_selftests.h
@@ -1,5 +1,11 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* List each unit test as selftest(name, function)
+
+#ifndef selftest
+#define selftest(x, y)
+#endif
+
+/*
+ * List each unit test as selftest(name, function)
  *
  * The name is used as both an enum and expanded as subtest__name to create
  * a module parameter. It must be unique and legal for a C identifier.
diff --git a/drivers/gpu/drm/i915/selftests/i915_mock_selftests.h b/drivers/gpu/drm/i915/selftests/i915_mock_selftests.h
index aa5a0e7f5d9e..5b39bab4da1d 100644
--- a/drivers/gpu/drm/i915/selftests/i915_mock_selftests.h
+++ b/drivers/gpu/drm/i915/selftests/i915_mock_selftests.h
@@ -1,5 +1,11 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* List each unit test as selftest(name, function)
+
+#ifndef selftest
+#define selftest(x, y)
+#endif
+
+/*
+ * List each unit test as selftest(name, function)
  *
  * The name is used as both an enum and expanded as subtest__name to create
  * a module parameter. It must be unique and legal for a C identifier.
diff --git a/drivers/gpu/drm/i915/selftests/i915_perf_selftests.h b/drivers/gpu/drm/i915/selftests/i915_perf_selftests.h
index f7129a243daa..5a577a1332f5 100644
--- a/drivers/gpu/drm/i915/selftests/i915_perf_selftests.h
+++ b/drivers/gpu/drm/i915/selftests/i915_perf_selftests.h
@@ -1,5 +1,11 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* List each unit test as selftest(name, function)
+
+#ifndef selftest
+#define selftest(x, y)
+#endif
+
+/*
+ * List each unit test as selftest(name, function)
  *
  * The name is used as both an enum and expanded as subtest__name to create
  * a module parameter. It must be unique and legal for a C identifier.
diff --git a/drivers/gpu/drm/i915/selftests/igt_live_test.h b/drivers/gpu/drm/i915/selftests/igt_live_test.h
index c0e9f99d50de..7567ea75643a 100644
--- a/drivers/gpu/drm/i915/selftests/igt_live_test.h
+++ b/drivers/gpu/drm/i915/selftests/igt_live_test.h
@@ -7,7 +7,8 @@
 #ifndef IGT_LIVE_TEST_H
 #define IGT_LIVE_TEST_H
 
-#include "../i915_gem.h"
+#include "gt/intel_engine.h"
+#include "i915_gem.h"
 
 struct drm_i915_private;
 
-- 
2.25.0.rc0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
