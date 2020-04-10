Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 420CD1A48AB
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2020 18:52:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CEA56E24E;
	Fri, 10 Apr 2020 16:52:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 703336E1F7
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Apr 2020 16:52:01 +0000 (UTC)
IronPort-SDR: +u5N+LP60FJ1bW+LKVJc1CkMdQxMjOXVf8sb2YrWzwNmirLHUDxn3ErNo8vUmZERMi0bLaWC/K
 +W6Ioe4NmXcw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2020 09:52:01 -0700
IronPort-SDR: 2fArshmj53ab3PlOPUtRQbh61rQisUVEWYmBFA1HqRSolWspJ87C6hxfD8h18tgCWzeuX2B2Sg
 AbVjthFqRkDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,367,1580803200"; d="scan'208";a="362490850"
Received: from linux.fm.intel.com ([10.1.27.42])
 by fmsmga001.fm.intel.com with ESMTP; 10 Apr 2020 09:51:59 -0700
From: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Apr 2020 09:51:58 -0700
Message-Id: <20200410165158.29546-4-venkata.s.dhanalakota@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a983
In-Reply-To: <20200410165158.29546-1-venkata.s.dhanalakota@intel.com>
References: <20200410165158.29546-1-venkata.s.dhanalakota@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/4] drm/selftests: selftest for timeline
 semaphore
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
Cc: chris.p.wilson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

simple tests using drm api for timeline semaphore.

Signed-off-by: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
---
 drivers/gpu/drm/selftests/Makefile            |   2 +-
 .../drm/selftests/drm_timeline_selftests.h    |  16 +
 .../selftests/test-drm_timeline_semaphore.c   | 545 ++++++++++++++++++
 3 files changed, 562 insertions(+), 1 deletion(-)
 create mode 100644 drivers/gpu/drm/selftests/drm_timeline_selftests.h
 create mode 100644 drivers/gpu/drm/selftests/test-drm_timeline_semaphore.c

diff --git a/drivers/gpu/drm/selftests/Makefile b/drivers/gpu/drm/selftests/Makefile
index 0856e4b12f70..5bceef7c9d02 100644
--- a/drivers/gpu/drm/selftests/Makefile
+++ b/drivers/gpu/drm/selftests/Makefile
@@ -4,4 +4,4 @@ test-drm_modeset-y := test-drm_modeset_common.o test-drm_plane_helper.o \
 		      test-drm_damage_helper.o test-drm_dp_mst_helper.o \
 		      test-drm_rect.o
 
-obj-$(CONFIG_DRM_DEBUG_SELFTEST) += test-drm_mm.o test-drm_modeset.o test-drm_cmdline_parser.o
+obj-$(CONFIG_DRM_DEBUG_SELFTEST) += test-drm_mm.o test-drm_modeset.o test-drm_cmdline_parser.o test-drm_timeline_semaphore.o
diff --git a/drivers/gpu/drm/selftests/drm_timeline_selftests.h b/drivers/gpu/drm/selftests/drm_timeline_selftests.h
new file mode 100644
index 000000000000..8922a1eed525
--- /dev/null
+++ b/drivers/gpu/drm/selftests/drm_timeline_selftests.h
@@ -0,0 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* List each unit test as selftest(name, function)
+ *
+ * The name is used as both an enum and expanded as igt__name to create
+ * a module parameter. It must be unique and legal for a C identifier.
+ *
+ * Tests are executed in order by igt/drm_timeline_selftests
+ */
+selftest(sanitycheck, igt_sanitycheck) /* keep first (selfcheck for igt) */
+selftest(chainbasic, igt_chainbasic)
+selftest(waitchain, igt_waitchain)
+selftest(signalseqno, igt_signalseqno)
+selftest(waitseqno, igt_waitseqno)
+selftest(addunorder, igt_addunorder)
+selftest(findseqno, igt_findseqno)
+selftest(igt_forward, igt_forward)
diff --git a/drivers/gpu/drm/selftests/test-drm_timeline_semaphore.c b/drivers/gpu/drm/selftests/test-drm_timeline_semaphore.c
new file mode 100644
index 000000000000..8a964d302e42
--- /dev/null
+++ b/drivers/gpu/drm/selftests/test-drm_timeline_semaphore.c
@@ -0,0 +1,545 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Test cases for the timeline semaphore
+ */
+
+#define pr_fmt(fmt) "drm_tl: " fmt
+
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/slab.h>
+#include <linux/random.h>
+#include <linux/vmalloc.h>
+#include <linux/slab.h>
+#include <linux/mm.h>
+#include <linux/kthread.h>
+#include <linux/sched/signal.h>
+
+#include <drm/drm_syncobj.h>
+#include <linux/dma-fence.h>
+#include <linux/dma-fence-chain.h>
+
+#include "../lib/drm_random.h"
+
+#define TESTS "drm_timeline_selftests.h"
+#include "drm_selftest.h"
+
+#define MAX_TIMELINES 64
+#define MAX_THREADS (2 * MAX_TIMELINES)
+
+static struct kmem_cache *slab_timeline;
+static struct kmem_cache *slab_fence_chain;
+
+struct mock_timeline {
+	struct drm_syncobj *syncobj;
+
+	/* cb when base is signalled */
+	struct dma_fence_cb cb;
+	struct dma_fence base;
+	/* lock for dma_fence */
+	spinlock_t lock;
+	u64 point;
+	u32 flags;
+};
+
+struct fence_chain {
+	struct dma_fence_chain chain;
+	struct dma_fence fence;
+	/* cb when fence is signalled */
+	struct dma_fence_cb cb;
+	atomic_t signalers;
+	spinlock_t lock;
+};
+
+struct chain_info {
+	struct fence_chain **chains;
+	int nchains;
+};
+
+static const char *mock_name(struct dma_fence  *s)
+{
+	return "timeline";
+}
+
+static void mock_release(struct dma_fence *fence)
+{
+	pr_debug("release %lld\n",fence->seqno);
+}
+
+static const struct dma_fence_ops mock_ops = {
+	.get_driver_name = mock_name,
+	.get_timeline_name = mock_name,
+	.release = mock_release,
+};
+
+static void fence_callback(struct dma_fence *f, struct dma_fence_cb *cb)
+{
+	struct fence_chain *t =
+			container_of(cb, struct fence_chain, cb);
+
+	if (atomic_dec_and_test(&t->signalers))
+		dma_fence_signal(&t->fence);
+}
+
+static void timeline_callback(struct dma_fence *f, struct dma_fence_cb *cb)
+{
+	struct mock_timeline *t =
+			container_of(cb, struct mock_timeline, cb);
+	dma_fence_signal(&t->base);
+}
+
+static struct mock_timeline *timeline(u64 point, u32 flags)
+{
+	struct mock_timeline *t;
+
+	t = kmem_cache_alloc(slab_timeline, GFP_KERNEL | __GFP_ZERO);
+	if (!t)
+		return NULL;
+
+	spin_lock_init(&t->lock);
+	dma_fence_init(&t->base, &mock_ops, &t->lock, 0, point);
+	drm_syncobj_create(&t->syncobj, flags, dma_fence_get(&t->base));
+	t->point = point;
+
+	return t;
+}
+
+static struct fence_chain* fence_chain(struct dma_fence *prev,
+				    u64 seqno)
+{
+	struct fence_chain *f;
+
+	f = kmem_cache_alloc(slab_fence_chain, GFP_KERNEL | __GFP_ZERO);
+
+	if (!f)
+		return NULL;
+
+	spin_lock_init(&f->lock);
+	dma_fence_init(&f->fence, &mock_ops,
+			       &f->lock, 0, seqno);
+	dma_fence_chain_init(&f->chain,
+			     prev,
+			     dma_fence_get(&f->fence),
+			     seqno);
+
+	return f;
+}
+
+static void allocate_chains(struct chain_info *ci, int count, int start)
+{
+	struct dma_fence *prev_chain = NULL;
+	struct fence_chain **chains;
+	int i;
+
+	ci->chains = kvmalloc_array(count, sizeof(struct fence_chain *),
+				GFP_KERNEL | __GFP_ZERO);
+	if (!ci->chains)
+		return;
+
+	chains = ci->chains;
+	ci->nchains = count;
+	for (i = 0;i < ci->nchains; i++) {
+		chains[i] = fence_chain(prev_chain, start + i);
+		prev_chain = &chains[i]->chain.base;
+		dma_fence_get(prev_chain);
+	}
+}
+
+static void delete_chains(struct chain_info *ci)
+{
+	int i;
+
+	for (i = 0; i < ci->nchains; i++) {
+		dma_fence_release(&ci->chains[i]->fence.refcount);
+		kmem_cache_free(slab_fence_chain, ci->chains[i]);
+	}
+	kvfree(ci->chains);
+}
+
+static int igt_sanitycheck(void *ignored)
+{
+	struct mock_timeline *t;
+	struct dma_fence *f;
+	int err = 0;
+
+	t = timeline(1, 0);
+
+	if (!t)
+		return -ENOMEM;
+
+	dma_fence_signal(&t->base);
+
+	f = drm_syncobj_fence_get(t->syncobj);
+	if (!dma_fence_is_signaled(f))
+		err = -1;
+
+	dma_fence_put(&t->base);
+	drm_syncobj_put(t->syncobj);
+	kmem_cache_free(slab_timeline, t);
+	return err;
+}
+
+static int igt_chainbasic(void *ignored)
+{
+	struct fence_chain *last, *chain;
+	struct dma_fence *first = NULL;
+	struct chain_info ci;
+	int i, count = 10;
+	int err = 0;
+
+	allocate_chains(&ci, count, 0);
+	if (IS_ERR_OR_NULL(ci.chains))
+		return -ENOMEM;
+
+	chain = ci.chains[0];
+	first = &chain->fence;
+
+	for (i = 1; i < count; i++) {
+		chain = ci.chains[i];
+		dma_fence_signal(&chain->fence);
+		last = chain;
+	}
+	dma_fence_signal(first);
+
+	if (!dma_fence_is_signaled(&last->chain.base))
+		err = -1;
+
+	delete_chains(&ci);
+	return err;
+}
+
+static int igt_findseqno(void *ignored)
+{
+	struct dma_fence *f, *first;
+	struct chain_info ci;
+	int count = 15, start = 3;
+	int err = 0;
+
+	allocate_chains(&ci, count, start);
+	if (IS_ERR_OR_NULL(ci.chains))
+		return -ENOMEM;
+
+	f = &ci.chains[count - 1]->chain.base;
+	first = &ci.chains[0]->chain.base;
+
+	dma_fence_chain_find_seqno(&f, 1);
+	if (f && f != first) {
+		pr_err("Incorrect chain-fence.seqno:%lld reported for completed seqno:1\n",
+			f->seqno);
+		dma_fence_get(f);
+		err = dma_fence_chain_find_seqno(&f, start);
+		dma_fence_put(f);
+		if (err) {
+			pr_err("Reported %d for finding self!\n", err);
+			err = -EINVAL;
+		}
+	}
+
+	delete_chains(&ci);
+	return err;
+}
+
+static int igt_waitchain(void *ignored)
+{
+	struct fence_chain *last;
+	struct chain_info ci;
+	struct mock_timeline *t;
+	struct dma_fence *f;
+	int count = 10, i;
+	int start = 7;
+	int err = 0;
+
+	t = timeline(start, 0x0);
+
+	if (!t)
+		return -ENOMEM;
+
+	allocate_chains(&ci, count, start + 1);
+	if (IS_ERR_OR_NULL(ci.chains))
+		return -ENOMEM;
+
+	last = ci.chains[count - 1];
+	drm_syncobj_replace_fence(t->syncobj, &last->chain.base);
+
+	f = drm_syncobj_fence_get(t->syncobj);
+	if(dma_fence_is_signaled(f)) {
+		 err = -1;
+		 goto err;
+	}
+
+	for (i = 0; i < count; i++)
+		dma_fence_signal(&ci.chains[i]->fence);
+
+	if(!dma_fence_is_signaled(f))
+		 err = -1;
+err:
+	delete_chains(&ci);
+	drm_syncobj_put(t->syncobj);
+	kmem_cache_free(slab_timeline, t);
+	return err;
+}
+
+static int igt_signalseqno(void *ignored)
+{
+	struct fence_chain *wait;
+	struct chain_info ci;
+	struct mock_timeline *t[6];
+	struct dma_fence *f;
+	int i, count = 5;
+	int err = 0;
+
+	allocate_chains(&ci, 1, 0);
+	if (IS_ERR_OR_NULL(ci.chains))
+		return -ENOMEM;
+
+	wait = ci.chains[0];
+
+	for (i = 0;i < count; i++) {
+		t[i] = timeline(i, 0x0);
+		dma_fence_add_callback(&wait->fence,
+				       &t[i]->cb,
+				       timeline_callback);
+	}
+
+	/* wait for available */
+	for (i = 0; i < count; i++) {
+		f = drm_syncobj_fence_get(t[i]->syncobj);
+		if(dma_fence_is_signaled(f)) {
+			 err = -1;
+			 goto err;
+		}
+	}
+
+	dma_fence_signal(&wait->fence);
+	for (i = 0; i < count; i++) {
+		f = drm_syncobj_fence_get(t[i]->syncobj);
+		if(!dma_fence_is_signaled(f))
+			 err = -1;
+	}
+
+err:
+	for (i = 0;i < count; i++) {
+		drm_syncobj_free(&t[i]->syncobj->refcount);
+		kmem_cache_free(slab_timeline, t[i]);
+	}
+
+	delete_chains(&ci);
+	return err;
+}
+
+static int igt_waitseqno(void *ignored)
+{
+	struct fence_chain *signal;
+	struct mock_timeline *t[6];
+	struct chain_info ci;
+	struct dma_fence *f;
+	int i, count = 5;
+	int err = 0;
+
+	allocate_chains(&ci, 1, 0);
+	if (IS_ERR_OR_NULL(ci.chains))
+		return -ENOMEM;
+
+	signal = ci.chains[0];
+	atomic_set(&signal->signalers, count);
+
+	/* wait for submit */
+	for (i = 0;i < count; i++) {
+		t[i] = timeline(i, 0x0);
+		dma_fence_add_callback(t[i]->syncobj->fence,
+				       &signal->cb,
+				       fence_callback);
+	}
+
+	for (i = 0;i < count; i++) {
+		if(dma_fence_is_signaled(&signal->chain.base))
+			 err = -1;
+
+		f = drm_syncobj_fence_get(t[i]->syncobj);
+		dma_fence_signal(f);
+	}
+
+	if(!dma_fence_is_signaled(&signal->chain.base))
+		 err = -1;
+
+	for (i = 0;i < count; i++) {
+		dma_fence_put(t[i]->syncobj->fence);
+		kmem_cache_free(slab_timeline, t[i]);
+	}
+	delete_chains(&ci);
+	return err;
+}
+
+static int igt_addunorder(void *ignored)
+{
+	struct fence_chain *wait;
+	struct chain_info ci;
+	struct mock_timeline *t;
+	struct dma_fence *f;
+	int err = 0;
+
+	t = timeline(6, 0x0);
+	allocate_chains(&ci, 1, 2);
+	wait = ci.chains[0];
+	if (IS_ERR_OR_NULL(ci.chains))
+		return -ENOMEM;
+
+	drm_syncobj_add_point(t->syncobj, &wait->chain, &wait->fence, 2);
+
+	dma_fence_signal(&wait->fence);
+	f = drm_syncobj_fence_get(t->syncobj);
+	if (dma_fence_is_signaled(&wait->chain.base)) {
+		err = -1;
+		goto err;
+	}
+
+	dma_fence_signal(f);
+	if (!dma_fence_is_signaled(&wait->chain.base)) {
+		err = -1;
+		goto err;
+	}
+err:
+	delete_chains(&ci);
+	drm_syncobj_put(t->syncobj);
+	kmem_cache_free(slab_timeline, t);
+	return err;
+}
+
+static int __signal_timeline(void *arg)
+{
+	struct mock_timeline *timeline = arg;
+	struct dma_fence *f;
+
+	f = drm_syncobj_fence_get(timeline->syncobj);
+
+	if (f && dma_fence_wait(f, true)){
+		drm_syncobj_put(timeline->syncobj);
+		return -EIO;
+	}
+
+	return 0;
+}
+
+static int __wait_timeline(void *arg)
+{
+	struct mock_timeline *timeline = arg;
+	struct dma_fence *f;
+
+	f = drm_syncobj_fence_get(timeline->syncobj);
+	dma_fence_signal(f);
+
+	return 0;
+}
+
+static int igt_forward(void *ignored)
+{
+	struct mock_timeline *s[MAX_TIMELINES], *t[MAX_TIMELINES];
+	struct task_struct *tasks[MAX_THREADS], *tsk;
+	struct chain_info ci, c[MAX_TIMELINES];
+	struct fence_chain *chain, *signaler;
+	int i, err = 0, count = 0;
+	struct dma_fence *last;
+
+	//signaler will signal the points in timelines;
+	allocate_chains(&ci, 1, 21);
+	signaler = ci.chains[0];
+
+	dma_fence_get(&signaler->fence);
+	for (i = 0;i < MAX_TIMELINES; i++) {
+		s[i] = timeline(i, 0x0);
+		drm_syncobj_replace_fence(s[i]->syncobj, &signaler->fence);
+		tsk = kthread_run(__signal_timeline, s[i], "signal");
+		if (IS_ERR(tsk)) {
+			err = PTR_ERR(tsk);
+			goto err;
+		}
+		get_task_struct(tsk);
+		yield_to(tsk, true);
+		tasks[count++] = tsk;
+	}
+
+	atomic_set(&signaler->signalers, MAX_TIMELINES);
+	for (i = 0;i < MAX_TIMELINES; i++) {
+
+		allocate_chains(&c[i], 1, i);
+		t[i] = timeline(i, 0x0);
+		chain = c[i].chains[0];
+
+		drm_syncobj_replace_fence(t[i]->syncobj,
+					  dma_fence_get(&chain->fence));
+		last = &chain->chain.base;
+		dma_fence_add_callback(t[i]->syncobj->fence,
+					&signaler->cb,
+					fence_callback);
+		tsk = kthread_run(__wait_timeline, t[i], "wait");
+		if (IS_ERR(tsk)) {
+			err = PTR_ERR(tsk);
+			goto err;
+		}
+		get_task_struct(tsk);
+		yield_to(tsk, true);
+		tasks[count++] = tsk;
+	}
+
+	dma_fence_wait(last, true);
+	dma_fence_wait(&signaler->fence, true);
+	dma_fence_put(&signaler->fence);
+err:
+	for (i = 0;i < count; i++) {
+		int ret;
+
+		ret = kthread_stop(tasks[i]);
+		if (ret && !err)
+			err = ret;
+		put_task_struct(tasks[i]);
+	}
+
+	for (i = 0; i < MAX_TIMELINES; i++) {
+		chain = c[i].chains[0];
+
+		if (!dma_fence_get_status(&chain->chain.base) ||
+		    !dma_fence_get_status(&chain->fence)) {
+			pr_err("Freeing an unsignaled fence\n");
+			err = -1;
+		}
+		delete_chains(&c[i]);
+		kmem_cache_free(slab_timeline, t[i]);
+		kmem_cache_free(slab_timeline, s[i]);
+	}
+	delete_chains(&ci);
+	return err;
+}
+
+#include "drm_selftest.c"
+
+static int __init test_drm_timline_init(void)
+{
+	int err = 0;
+
+	slab_timeline = KMEM_CACHE(mock_timeline,
+				 SLAB_TYPESAFE_BY_RCU |
+				 SLAB_HWCACHE_ALIGN);
+
+	slab_fence_chain = KMEM_CACHE(fence_chain,
+				 SLAB_TYPESAFE_BY_RCU |
+				 SLAB_HWCACHE_ALIGN);
+	if (!slab_timeline)
+		return -ENOMEM;
+
+	pr_info("Testing timeline semaphore\n");
+	err = run_selftests(selftests, ARRAY_SIZE(selftests), NULL);
+
+	return err > 0 ? 0 : err;
+}
+
+static void __exit test_drm_timeline_exit(void)
+{
+	kmem_cache_destroy(slab_timeline);
+	kmem_cache_destroy(slab_fence_chain);
+}
+
+module_init(test_drm_timline_init);
+module_exit(test_drm_timeline_exit);
+
+MODULE_AUTHOR("Intel Corporation");
+MODULE_LICENSE("GPL");
-- 
2.21.0.5.gaeb582a983

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
