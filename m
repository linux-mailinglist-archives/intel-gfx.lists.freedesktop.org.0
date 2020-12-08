Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 239DE2D3075
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Dec 2020 18:02:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66F3D6E029;
	Tue,  8 Dec 2020 17:02:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 034886E029;
 Tue,  8 Dec 2020 17:02:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23256724-1500050 
 for multiple; Tue, 08 Dec 2020 17:02:06 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Dec 2020 17:02:05 +0000
Message-Id: <20201208170205.2039137-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_vm_create: Race vm-destroy
 against object free
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
Cc: igt-dev@lists.freedesktop.org, Matthew Auld <matthew.auld@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Matthew postulated that we should be able to hit a race in
__i915_vm_close() between the RCU object free and vma unbind viz

  GEM_BUG_ON(!list_empty(&vm->bound_list));

due to the effect of leaving the vma on the list if we are unable to
obtain the kref to the object. Let's try and find that race.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Matthew Auld <matthew.auld@intel.com>
---
 tests/i915/gem_vm_create.c | 65 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 65 insertions(+)

diff --git a/tests/i915/gem_vm_create.c b/tests/i915/gem_vm_create.c
index 8843b1b3b..8cd168328 100644
--- a/tests/i915/gem_vm_create.c
+++ b/tests/i915/gem_vm_create.c
@@ -24,6 +24,7 @@
 #include "i915/gem.h"
 #include "i915/gem_vm.h"
 #include "igt.h"
+#include "igt_rand.h"
 #include "igt_dummyload.h"
 
 static int vm_create_ioctl(int i915, struct drm_i915_gem_vm_control *ctl)
@@ -386,6 +387,67 @@ static void async_destroy(int i915)
 		igt_spin_free(i915, spin[i]);
 }
 
+static void destroy_race(int i915)
+{
+	const int ncpus = sysconf(_SC_NPROCESSORS_ONLN);
+	uint32_t *vm;
+
+	/* Check we can execute a polling spinner */
+	igt_spin_free(i915, igt_spin_new(i915, .flags = IGT_SPIN_POLL_RUN));
+
+	vm = mmap(NULL, 4096, PROT_WRITE, MAP_SHARED | MAP_ANON, -1, 0);
+	igt_assert(vm != MAP_FAILED);
+
+	for (int child = 0; child < ncpus; child++)
+		vm[child] = gem_vm_create(i915);
+
+	igt_fork(child, ncpus) {
+		uint32_t ctx = gem_context_create(i915);
+		igt_spin_t *spin;
+
+		spin = __igt_spin_new(i915, ctx, .flags = IGT_SPIN_POLL_RUN);
+		while (!READ_ONCE(vm[ncpus])) {
+			struct drm_i915_gem_context_param arg = {
+				.ctx_id = ctx,
+				.param = I915_CONTEXT_PARAM_VM,
+				.value = READ_ONCE(vm[child]),
+			};
+			igt_spin_t *nxt;
+
+			if (__gem_context_set_param(i915, &arg))
+				continue;
+
+			nxt = __igt_spin_new(i915, ctx,
+					     .flags = IGT_SPIN_POLL_RUN);
+
+			igt_spin_end(spin);
+			gem_sync(i915, spin->handle);
+			igt_spin_free(i915, spin);
+
+			usleep(1000 + hars_petruska_f54_1_random_unsafe() % 2000);
+
+			spin = nxt;
+		}
+		igt_spin_free(i915, spin);
+	}
+
+	igt_until_timeout(5) {
+		for (int child = 0; child < ncpus; child++) {
+			gem_vm_destroy(i915, vm[child]);
+			vm[child] = gem_vm_create(i915);
+		}
+		usleep(1000 + hars_petruska_f54_1_random_unsafe() % 2000);
+	}
+
+	vm[ncpus] = 1;
+	igt_waitchildren();
+
+	for (int child = 0; child < ncpus; child++)
+		gem_vm_destroy(i915, vm[child]);
+
+	munmap(vm, 4096);
+}
+
 igt_main
 {
 	int i915 = -1;
@@ -418,6 +480,9 @@ igt_main
 
 		igt_subtest("async-destroy")
 			async_destroy(i915);
+
+		igt_subtest("destroy-race")
+			destroy_race(i915);
 	}
 
 	igt_fixture {
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
