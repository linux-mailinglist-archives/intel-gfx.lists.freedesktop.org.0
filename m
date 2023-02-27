Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1505D6A3F90
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Feb 2023 11:39:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD2EB10E3B5;
	Mon, 27 Feb 2023 10:39:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2AAD10E3B3;
 Mon, 27 Feb 2023 10:39:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677494385; x=1709030385;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=c9JShkbeXsGqI+FCQ5jJngwWgfMokdVgB7wEl3qk1Mw=;
 b=FG6FmP4nsw5eHoNakTQEcMj3UM2uzOiicN7eNCQrEAOZmnvHwinjDqRj
 LWPximeW6TKx5zrN2j4bTkxgDFV10Mwp+XUWgBNQKVlzDvWyNDVZduzQT
 +7TuxNfpcQ9rp9kgfXBCwbXEhMVnGDUPDJfGouPO8KzLRtPHOGMgNJYXF
 2ZKoiHfYN01+5CfMh0SSZqFfjxbDJHEFz03166bUDC92q1onf/3z9wla3
 rPJb8foE6YURHaRcS9BDV0wA2i2KCBZJKtcyceVw0JtGc7iAdgwd7sbPt
 MSvvgl0/OOc4KIZDu2ZdHOB8BaJcA6AHBFCX0tthfz4fobreZJasujCcg w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10633"; a="332552107"
X-IronPort-AV: E=Sophos;i="5.97,331,1669104000"; d="scan'208";a="332552107"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2023 02:39:45 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10633"; a="651162012"
X-IronPort-AV: E=Sophos;i="5.97,331,1669104000"; d="scan'208";a="651162012"
Received: from clanggaa-mobl1.ger.corp.intel.com (HELO
 thellstr-mobl1.intel.com) ([10.249.254.79])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2023 02:39:42 -0800
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: dri-devel@lists.sourceforge.net
Date: Mon, 27 Feb 2023 11:38:53 +0100
Message-Id: <20230227103853.12666-1-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/tests: Suballocator test
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, Christian Koenig <christian.koenig@amd.com>,
 intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add a suballocator test to get some test coverage for the new drm
suballocator, and perform some basic timing (elapsed time).

Signed-off-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
---
 drivers/gpu/drm/Kconfig                   |   1 +
 drivers/gpu/drm/tests/Makefile            |   3 +-
 drivers/gpu/drm/tests/drm_suballoc_test.c | 356 ++++++++++++++++++++++
 3 files changed, 359 insertions(+), 1 deletion(-)
 create mode 100644 drivers/gpu/drm/tests/drm_suballoc_test.c

diff --git a/drivers/gpu/drm/Kconfig b/drivers/gpu/drm/Kconfig
index 8fbe57407c60..dced53723721 100644
--- a/drivers/gpu/drm/Kconfig
+++ b/drivers/gpu/drm/Kconfig
@@ -78,6 +78,7 @@ config DRM_KUNIT_TEST
 	select DRM_LIB_RANDOM
 	select DRM_KMS_HELPER
 	select DRM_BUDDY
+	select DRM_SUBALLOC_HELPER
 	select DRM_EXPORT_FOR_TESTS if m
 	select DRM_KUNIT_TEST_HELPERS
 	default KUNIT_ALL_TESTS
diff --git a/drivers/gpu/drm/tests/Makefile b/drivers/gpu/drm/tests/Makefile
index bca726a8f483..c664944a48ab 100644
--- a/drivers/gpu/drm/tests/Makefile
+++ b/drivers/gpu/drm/tests/Makefile
@@ -17,6 +17,7 @@ obj-$(CONFIG_DRM_KUNIT_TEST) += \
 	drm_modes_test.o \
 	drm_plane_helper_test.o \
 	drm_probe_helper_test.o \
-	drm_rect_test.o
+	drm_rect_test.o \
+	drm_suballoc_test.o
 
 CFLAGS_drm_mm_test.o := $(DISABLE_STRUCTLEAK_PLUGIN)
diff --git a/drivers/gpu/drm/tests/drm_suballoc_test.c b/drivers/gpu/drm/tests/drm_suballoc_test.c
new file mode 100644
index 000000000000..e7303a5505a0
--- /dev/null
+++ b/drivers/gpu/drm/tests/drm_suballoc_test.c
@@ -0,0 +1,356 @@
+// SPDX-License-Identifier: GPL-2.0 OR MIT
+/*
+ * Test case for the drm_suballoc suballocator manager
+ * Copyright 2023 Intel Corporation.
+ */
+
+#include <kunit/test.h>
+
+#include <linux/dma-fence.h>
+#include <linux/ktime.h>
+#include <linux/hrtimer.h>
+#include <linux/sizes.h>
+#include <linux/slab.h>
+#include <linux/spinlock.h>
+#include <linux/delay.h>
+#include <drm/drm_suballoc.h>
+
+#define SA_ITERATIONS 10000
+#define SA_SIZE SZ_1M
+#define SA_DEFAULT_ALIGN SZ_4K
+
+static bool intr = true;
+static bool from_reclaim;
+static bool pre_throttle;
+static unsigned int num_rings = 4;
+static unsigned int iterations = SA_ITERATIONS;
+
+static atomic64_t free_space;
+
+static atomic_t other_id;
+
+struct suballoc_fence;
+
+/**
+ * struct suballoc_ring - fake gpu engine.
+ * @list: List of fences to signal.
+ * @signal_time: Accumulated fence signal execution time.
+ * @lock: Protects the suballoc ring members. hardirq safe.
+ * @hrtimer: Fake execution time timer.
+ * @active: The currently active fence for which we have pending work or a
+ *          timer running.
+ * @seqno: Fence submissin seqno.
+ * @idx: Index for calculation of fake execution time.
+ * @work: Work struct used solely to move the timer start to a different
+ *        processor than that used for submission.
+ */
+struct suballoc_ring {
+	ktime_t signal_time;
+	struct list_head list;
+	/* Protect the ring processing. */
+	spinlock_t lock;
+	struct hrtimer hrtimer;
+	struct suballoc_fence *active;
+	atomic64_t seqno;
+	u32 idx;
+	struct work_struct work;
+};
+
+/**
+ * struct suballoc_fence - Hrtimer-driven fence.
+ * @fence: The base class fence struct.
+ * @link: Link for the ring's fence list.
+ * @size: The size of the suballocator range associated with this fence.
+ * @id: Cpu id likely used by the submission thread for suballoc allocation.
+ */
+struct suballoc_fence {
+	struct dma_fence fence;
+	struct list_head link;
+	size_t size;
+	unsigned int id;
+};
+
+/* A varying but repeatable fake execution time */
+static ktime_t ring_next_delay(struct suballoc_ring *ring)
+{
+	return ns_to_ktime((u64)(++ring->idx % 8) * 200 * NSEC_PER_USEC);
+}
+
+/*
+ * Launch from a work item to decrease the likelyhood of the timer expiry
+ * callback getting called from the allocating cpu.
+ * We want to trigger cache-line bouncing between allocating and signalling
+ * cpus.
+ */
+static void ring_launch_timer_work(struct work_struct *work)
+{
+	struct suballoc_ring *ring =
+		container_of(work, typeof(*ring), work);
+
+	spin_lock_irq(&ring->lock);
+	if (ring->active)
+		hrtimer_start_range_ns(&ring->hrtimer, ring_next_delay(ring),
+				       100ULL * NSEC_PER_USEC,
+				       HRTIMER_MODE_REL_PINNED);
+
+	spin_unlock_irq(&ring->lock);
+}
+
+/*
+ * Signal an active fence and pull the next off the list if any and make it
+ * active.
+ */
+static enum hrtimer_restart ring_hrtimer_expired(struct hrtimer *hrtimer)
+{
+	struct suballoc_ring *ring =
+		container_of(hrtimer, typeof(*ring), hrtimer);
+	struct suballoc_fence *sfence;
+	ktime_t now, then;
+	unsigned long irqflags;
+
+	spin_lock_irqsave(&ring->lock, irqflags);
+	sfence = ring->active;
+
+	if (sfence) {
+		struct dma_fence *fence = &sfence->fence;
+
+		if (sfence->id != get_cpu())
+			atomic_inc(&other_id);
+		put_cpu();
+
+		then = ktime_get();
+		dma_fence_signal(fence);
+		now = ktime_get();
+		dma_fence_put(fence);
+		ring->signal_time = ktime_add(ring->signal_time,
+					      ktime_sub(now, then));
+		ring->active = NULL;
+		atomic64_add(sfence->size, &free_space);
+	}
+
+	sfence = list_first_entry_or_null(&ring->list, typeof(*sfence), link);
+	if (sfence) {
+		list_del_init(&sfence->link);
+		ring->active = sfence;
+		spin_unlock_irqrestore(&ring->lock, irqflags);
+		hrtimer_forward_now(&ring->hrtimer, ring_next_delay(ring));
+		return HRTIMER_RESTART;
+	}
+	spin_unlock_irqrestore(&ring->lock, irqflags);
+
+	return HRTIMER_NORESTART;
+}
+
+/*
+ * Queue a fence on a ring and if it's the first fence, make it active.
+ */
+static void ring_add_fence(struct suballoc_ring *ring,
+			   struct suballoc_fence *sfence)
+{
+	spin_lock_irq(&ring->lock);
+	if (!ring->active) {
+		ring->active = sfence;
+		queue_work(system_unbound_wq, &ring->work);
+	} else {
+		list_add_tail(&sfence->link, &ring->list);
+	}
+	spin_unlock_irq(&ring->lock);
+}
+
+static void ring_init(struct suballoc_ring *ring)
+{
+	memset(ring, 0, sizeof(*ring));
+	INIT_LIST_HEAD(&ring->list);
+	spin_lock_init(&ring->lock);
+	hrtimer_init(&ring->hrtimer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
+	ring->hrtimer.function = ring_hrtimer_expired;
+	INIT_WORK(&ring->work, ring_launch_timer_work);
+}
+
+static bool ring_idle(struct suballoc_ring *ring)
+{
+	bool tmp;
+
+	spin_lock_irq(&ring->lock);
+	tmp = !ring->active;
+	spin_unlock_irq(&ring->lock);
+
+	return tmp;
+}
+
+static const char *dma_fence_get_suballoc_name(struct dma_fence *fence)
+{
+	return "suballoc";
+}
+
+static const struct dma_fence_ops dma_fence_suballoc_ops = {
+	.get_driver_name = dma_fence_get_suballoc_name,
+	.get_timeline_name = dma_fence_get_suballoc_name,
+};
+
+static DEFINE_SPINLOCK(sa_fence_lock);
+static ktime_t alloctime, freetime;
+
+static void drm_test_suballoc(struct kunit *test)
+{
+	struct suballoc_ring *rings;
+	struct drm_suballoc_manager sa_manager;
+	struct drm_suballoc *sa;
+	struct suballoc_fence *sfence;
+	struct dma_fence *fence;
+	ktime_t then, now, signaltime;
+	int i, ring, iter_tot = 0;
+	size_t size;
+	unsigned int align;
+	unsigned long long soffset;
+	gfp_t gfp;
+
+	rings = kvmalloc_array(num_rings, sizeof(*rings), GFP_KERNEL);
+	if (!rings) {
+		KUNIT_FAIL(test, "Failed allocating %u rings.\n");
+		return;
+	}
+
+	for (i = 0; i < num_rings; ++i)
+		ring_init(rings + i);
+
+	atomic64_set(&free_space, SA_SIZE);
+	drm_suballoc_manager_init(&sa_manager, SA_SIZE, SA_DEFAULT_ALIGN);
+
+	if (from_reclaim)
+		gfp = GFP_NOWAIT | __GFP_NOWARN;
+	else
+		gfp = GFP_KERNEL;
+
+	for (i = 0; i < iterations; ++i) {
+		ring = i % num_rings;
+		size = (ring + 1) * SZ_4K;
+		align = 1 << (ring % const_ilog2(SA_DEFAULT_ALIGN));
+
+		if (pre_throttle)
+			while (atomic64_read(&free_space) < SA_SIZE / 2)
+				cpu_relax();
+
+		if (from_reclaim)
+			fs_reclaim_acquire(GFP_KERNEL);
+
+		then = ktime_get();
+		sa = drm_suballoc_new(&sa_manager, size, gfp, intr, align);
+		now = ktime_get();
+		if (from_reclaim)
+			fs_reclaim_release(GFP_KERNEL);
+
+		alloctime = ktime_add(alloctime, ktime_sub(now, then));
+
+		iter_tot++;
+		if (IS_ERR(sa)) {
+			if (from_reclaim) {
+				iter_tot--;
+				continue;
+			}
+
+			KUNIT_FAIL(test, "drm_suballoc_new() returned %pe\n",
+				   sa);
+			break;
+		}
+
+		atomic64_sub(size, &free_space);
+		soffset = drm_suballoc_soffset(sa);
+		if (!IS_ALIGNED(soffset, align)) {
+			drm_suballoc_free(sa, NULL);
+			KUNIT_FAIL(test, "Incorrect alignment: offset %llu align %u rem %llu\n",
+				   soffset, align, soffset & (align - 1));
+			break;
+		}
+
+		if (drm_suballoc_eoffset(sa) > SA_SIZE) {
+			drm_suballoc_free(sa, NULL);
+			KUNIT_FAIL(test, "Allocation beyond end.\n");
+			break;
+		}
+
+		if (drm_suballoc_size(sa) < size ||
+		    drm_suballoc_size(sa) >= size + align) {
+			drm_suballoc_free(sa, NULL);
+			KUNIT_FAIL(test, "Incorrect size.\n");
+			break;
+		}
+
+		sfence = kmalloc(sizeof(*sfence), GFP_KERNEL);
+		if (unlikely(!sfence)) {
+			drm_suballoc_free(sa, NULL);
+			KUNIT_FAIL(test, "Fence allocation failed.\n");
+			break;
+		}
+		fence = &sfence->fence;
+		dma_fence_init(fence, &dma_fence_suballoc_ops, &sa_fence_lock,
+			       ring + 1,
+			       atomic64_inc_return(&rings[ring].seqno));
+		sfence->size = size;
+		sfence->id = get_cpu();
+		put_cpu();
+
+		ring_add_fence(rings + ring, sfence);
+
+		then = ktime_get();
+		drm_suballoc_free(sa, fence);
+		now = ktime_get();
+		freetime = ktime_add(freetime, ktime_sub(now, then));
+	}
+
+	signaltime = ktime_set(0, 0);
+	for (i = 0; i < num_rings; ++i) {
+		struct suballoc_ring *sring = &rings[i];
+
+		flush_work(&sring->work);
+		while (!ring_idle(sring))
+			schedule();
+		signaltime = ktime_add(signaltime, sring->signal_time);
+	}
+
+	kvfree(rings);
+
+	kunit_info(test, "signals on different processor: %d of %d\n",
+		   atomic_read(&other_id), iter_tot);
+	drm_suballoc_manager_fini(&sa_manager);
+	kunit_info(test, "Alloc time was %llu ns.\n", (unsigned long long)
+		   ktime_to_ns(alloctime) / iter_tot);
+	kunit_info(test, "Free time was %llu ns.\n", (unsigned long long)
+		   ktime_to_ns(freetime) / iter_tot);
+	kunit_info(test, "Signal time was %llu ns.\n", (unsigned long long)
+		   ktime_to_ns(signaltime) / iter_tot);
+
+	if (atomic64_read(&free_space) != SA_SIZE) {
+		kunit_warn(test, "Test sanity check failed.\n");
+		kunit_warn(test, "Space left at exit is %lld of %d\n",
+			   (long long)atomic64_read(&free_space), SA_SIZE);
+	}
+}
+
+module_param(intr, bool, 0400);
+MODULE_PARM_DESC(intr, "Whether to wait interruptible for space.");
+module_param(from_reclaim, bool, 0400);
+MODULE_PARM_DESC(from_reclaim, "Whether to suballocate from reclaim context.");
+module_param(pre_throttle, bool, 0400);
+MODULE_PARM_DESC(pre_throttle, "Whether to have the test throttle for space "
+		 "before allocations.");
+module_param(num_rings, uint, 0400);
+MODULE_PARM_DESC(num_rings, "Number of rings signalling fences in order.\n");
+module_param(iterations, uint, 0400);
+MODULE_PARM_DESC(iterations, "Number of allocations to perform.\n");
+
+static struct kunit_case drm_suballoc_tests[] = {
+	KUNIT_CASE(drm_test_suballoc),
+	{}
+};
+
+static struct kunit_suite drm_suballoc_test_suite = {
+	.name = "drm_suballoc",
+	.test_cases = drm_suballoc_tests,
+};
+
+kunit_test_suite(drm_suballoc_test_suite);
+
+MODULE_AUTHOR("Intel Corporation");
+MODULE_DESCRIPTION("DRM suballocator Kunit test");
+MODULE_LICENSE("Dual MIT/GPL");
-- 
2.34.1

