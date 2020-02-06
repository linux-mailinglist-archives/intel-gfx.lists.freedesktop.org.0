Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E17F15418D
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2020 11:07:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C63B96FA17;
	Thu,  6 Feb 2020 10:06:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0713A6EA17;
 Thu,  6 Feb 2020 10:06:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20133631-1500050 
 for multiple; Thu, 06 Feb 2020 10:06:41 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  6 Feb 2020 10:06:38 +0000
Message-Id: <20200206100639.2386558-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 1/2] lib/i915: for_each_mmap_offset_type()
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Pull the increasingly replicated for loop over the possible mmap offset
types into a library helper.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Antonio Argenziano <antonio.argenziano@intel.com>
Cc: Dixit Ashutosh <ashutosh.dixit@intel.com>
---
 lib/i915/gem_mman.c          |  8 ++++++++
 lib/i915/gem_mman.h          | 11 +++++++++++
 tests/i915/gem_exec_params.c | 18 ------------------
 tests/i915/gem_madvise.c     | 18 ------------------
 tests/i915/gem_mmap_offset.c | 17 -----------------
 5 files changed, 19 insertions(+), 53 deletions(-)

diff --git a/lib/i915/gem_mman.c b/lib/i915/gem_mman.c
index c034f3173..08ae67696 100644
--- a/lib/i915/gem_mman.c
+++ b/lib/i915/gem_mman.c
@@ -538,3 +538,11 @@ void gem_require_mappable_ggtt(int i915)
 	igt_require_f(gem_has_mappable_ggtt(i915),
 		      "HW & kernel support for indirect detiling aperture\n");
 }
+
+const struct mmap_offset mmap_offset_types[] = {
+	{ "gtt", I915_MMAP_OFFSET_GTT, I915_GEM_DOMAIN_GTT },
+	{ "wb", I915_MMAP_OFFSET_WB, I915_GEM_DOMAIN_CPU },
+	{ "wc", I915_MMAP_OFFSET_WC, I915_GEM_DOMAIN_WC },
+	{ "uc", I915_MMAP_OFFSET_UC, I915_GEM_DOMAIN_WC },
+	{},
+};
diff --git a/lib/i915/gem_mman.h b/lib/i915/gem_mman.h
index 2730295ea..4fc6a0186 100644
--- a/lib/i915/gem_mman.h
+++ b/lib/i915/gem_mman.h
@@ -95,5 +95,16 @@ int gem_munmap(void *ptr, uint64_t size);
  */
 #define gem_require_mmap_offset_wc(fd) igt_require(gem_mmap_offset__has_wc(fd))
 
+extern const struct mmap_offset {
+	const char *name;
+	unsigned int type;
+	unsigned int domain;
+} mmap_offset_types[];
+
+#define for_each_mmap_offset_type(__t) \
+	for (const struct mmap_offset *__t = mmap_offset_types; \
+	     (__t)->name; \
+	     (__t)++)
+
 #endif /* GEM_MMAN_H */
 
diff --git a/tests/i915/gem_exec_params.c b/tests/i915/gem_exec_params.c
index f916f6acf..e2912685b 100644
--- a/tests/i915/gem_exec_params.c
+++ b/tests/i915/gem_exec_params.c
@@ -52,24 +52,6 @@
 #define LOCAL_I915_EXEC_BATCH_FIRST (1 << 18)
 #define LOCAL_I915_EXEC_FENCE_ARRAY (1 << 19)
 
-static const struct mmap_offset {
-	const char *name;
-	unsigned int type;
-	unsigned int domain;
-} mmap_offset_types[] = {
-	{ "gtt", I915_MMAP_OFFSET_GTT, I915_GEM_DOMAIN_GTT },
-	{ "wb", I915_MMAP_OFFSET_WB, I915_GEM_DOMAIN_CPU },
-	{ "wc", I915_MMAP_OFFSET_WC, I915_GEM_DOMAIN_WC },
-	{ "uc", I915_MMAP_OFFSET_UC, I915_GEM_DOMAIN_WC },
-	{},
-};
-
-#define for_each_mmap_offset_type(__t) \
-	for (const struct mmap_offset *__t = mmap_offset_types; \
-	     (__t)->name; \
-	     (__t)++)
-
-
 static bool has_ring(int fd, unsigned ring_exec_flags)
 {
 	switch (ring_exec_flags & I915_EXEC_RING_MASK) {
diff --git a/tests/i915/gem_madvise.c b/tests/i915/gem_madvise.c
index 8baef0d94..e8716a891 100644
--- a/tests/i915/gem_madvise.c
+++ b/tests/i915/gem_madvise.c
@@ -48,24 +48,6 @@ IGT_TEST_DESCRIPTION("Checks that the kernel reports EFAULT when trying to use"
  *
  */
 
-static const struct mmap_offset {
-	const char *name;
-	unsigned int type;
-	unsigned int domain;
-} mmap_offset_types[] = {
-	{ "gtt", I915_MMAP_OFFSET_GTT, I915_GEM_DOMAIN_GTT },
-	{ "wb", I915_MMAP_OFFSET_WB, I915_GEM_DOMAIN_CPU },
-	{ "wc", I915_MMAP_OFFSET_WC, I915_GEM_DOMAIN_WC },
-	{ "uc", I915_MMAP_OFFSET_UC, I915_GEM_DOMAIN_WC },
-	{},
-};
-
-#define for_each_mmap_offset_type(__t) \
-	for (const struct mmap_offset *__t = mmap_offset_types; \
-	     (__t)->name; \
-	     (__t)++)
-
-
 static jmp_buf jmp;
 
 static void __attribute__((noreturn)) sigtrap(int sig)
diff --git a/tests/i915/gem_mmap_offset.c b/tests/i915/gem_mmap_offset.c
index 83e9890a5..f49d18e63 100644
--- a/tests/i915/gem_mmap_offset.c
+++ b/tests/i915/gem_mmap_offset.c
@@ -33,23 +33,6 @@
 
 IGT_TEST_DESCRIPTION("Basic MMAP_OFFSET IOCTL tests for mem regions\n");
 
-static const struct mmap_offset {
-	const char *name;
-	unsigned int type;
-	unsigned int domain;
-} mmap_offset_types[] = {
-	{ "gtt", I915_MMAP_OFFSET_GTT, I915_GEM_DOMAIN_GTT },
-	{ "wb", I915_MMAP_OFFSET_WB, I915_GEM_DOMAIN_CPU },
-	{ "wc", I915_MMAP_OFFSET_WC, I915_GEM_DOMAIN_WC },
-	{ "uc", I915_MMAP_OFFSET_UC, I915_GEM_DOMAIN_WC },
-	{},
-};
-
-#define for_each_mmap_offset_type(__t) \
-	for (const struct mmap_offset *__t = mmap_offset_types; \
-	     (__t)->name; \
-	     (__t)++)
-
 static int mmap_offset_ioctl(int i915, struct drm_i915_gem_mmap_offset *arg)
 {
 	int err = 0;
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
