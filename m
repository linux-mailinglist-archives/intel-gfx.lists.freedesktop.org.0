Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3973B6403FD
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Dec 2022 11:03:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1901910E6C1;
	Fri,  2 Dec 2022 10:03:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E773310E6B7
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Dec 2022 10:03:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669975396; x=1701511396;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YHXmPEA1TW4h6WQuaPxHib7x7n3ekWW+fQ4CnSGcbVs=;
 b=UGwqQP0Wsy02pYc67e8itVPp3z1DB8JyBRLo886FFNQWlUV8K6+u1Cr1
 GB+nOYMr6XfyxCcnDcpYN2cBrtsD0MfFtCPXEbEP+auJFxFFluCbqGdmN
 6+I0CcVVoEhkE6ug9aJl3JnAL+ytasHgo5QapBACQen1JAT5994HMwVNt
 vdLvJfClL6BAcuqeyI9oIqhKajty3Q4WpNikVDjtFEIRXfl3cErT+o53Q
 aGK/rYsIeG57ksO3+cKtcsrdKtDy3P4Dn0oNIVwHYziObpUlJpZh5HEVO
 av2gnuFJYL+w8fU2QCNqfMZxP4tEqKp2c+8YDGaKSmLnznGIMtnXZ/CMX w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="299290471"
X-IronPort-AV: E=Sophos;i="5.96,212,1665471600"; d="scan'208";a="299290471"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2022 02:03:16 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="677553178"
X-IronPort-AV: E=Sophos;i="5.96,212,1665471600"; d="scan'208";a="677553178"
Received: from ctfarrel-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.18.53])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2022 02:03:15 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Dec 2022 10:02:46 +0000
Message-Id: <20221202100246.406758-3-matthew.auld@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221202100246.406758-1-matthew.auld@intel.com>
References: <20221202100246.406758-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 3/3] drm/i915/selftests: exercise emit_pte()
 with nearly full ring
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Chris Wilson <chris.p.wilson@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Simple regression test to check that we don't trample the
rq->reserved_space when returning from emit_pte(), if the ring is nearly
full.

v2: Make spinner_kill() static
v3: Reduce the ring size further, which should mean we need to execute less
    noops; hopefully this appeases bsw. Also add some debug logging.
v4: Fix the min request construction to account for reserved_space +
    I915_EMIT_PTE_NUM_DWORDS
v5: Use a simple on-stack timer to kill the spinner instead of kthread (Chris)

References: https://gitlab.freedesktop.org/drm/intel/-/issues/7535
References: https://gitlab.freedesktop.org/drm/intel/-/issues/6889
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Chris Wilson <chris.p.wilson@intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Cc: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_migrate.c    |   6 +-
 drivers/gpu/drm/i915/gt/selftest_migrate.c | 145 +++++++++++++++++++++
 2 files changed, 149 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_migrate.c b/drivers/gpu/drm/i915/gt/intel_migrate.c
index 48c3b5168558..6df728b82a73 100644
--- a/drivers/gpu/drm/i915/gt/intel_migrate.c
+++ b/drivers/gpu/drm/i915/gt/intel_migrate.c
@@ -352,6 +352,8 @@ static int max_pte_pkt_size(struct i915_request *rq, int pkt)
        return pkt;
 }
 
+#define I915_EMIT_PTE_NUM_DWORDS 6
+
 static int emit_pte(struct i915_request *rq,
 		    struct sgt_dma *it,
 		    enum i915_cache_level cache_level,
@@ -393,7 +395,7 @@ static int emit_pte(struct i915_request *rq,
 
 	offset += (u64)rq->engine->instance << 32;
 
-	cs = intel_ring_begin(rq, 6);
+	cs = intel_ring_begin(rq, I915_EMIT_PTE_NUM_DWORDS);
 	if (IS_ERR(cs))
 		return PTR_ERR(cs);
 
@@ -416,7 +418,7 @@ static int emit_pte(struct i915_request *rq,
 			intel_ring_advance(rq, cs);
 			intel_ring_update_space(ring);
 
-			cs = intel_ring_begin(rq, 6);
+			cs = intel_ring_begin(rq, I915_EMIT_PTE_NUM_DWORDS);
 			if (IS_ERR(cs))
 				return PTR_ERR(cs);
 
diff --git a/drivers/gpu/drm/i915/gt/selftest_migrate.c b/drivers/gpu/drm/i915/gt/selftest_migrate.c
index 1eab025ac002..e677f2da093d 100644
--- a/drivers/gpu/drm/i915/gt/selftest_migrate.c
+++ b/drivers/gpu/drm/i915/gt/selftest_migrate.c
@@ -8,6 +8,7 @@
 #include "gem/i915_gem_internal.h"
 #include "gem/i915_gem_lmem.h"
 
+#include "selftests/igt_spinner.h"
 #include "selftests/i915_random.h"
 
 static const unsigned int sizes[] = {
@@ -529,6 +530,149 @@ static int live_migrate_clear(void *arg)
 	return 0;
 }
 
+struct spinner_timer {
+	struct timer_list timer;
+	struct igt_spinner spin;
+};
+
+static void spinner_kill(struct timer_list *timer)
+{
+	struct spinner_timer *st = from_timer(st, timer, timer);
+
+	igt_spinner_end(&st->spin);
+	pr_info("%s\n", __func__);
+}
+
+static int live_emit_pte_full_ring(void *arg)
+{
+	struct intel_gt *gt = arg;
+	struct intel_migrate *migrate = &gt->migrate;
+	struct drm_i915_private *i915 = migrate->context->engine->i915;
+	struct drm_i915_gem_object *obj;
+	struct intel_context *ce;
+	struct i915_request *rq, *prev;
+	struct spinner_timer st;
+	struct sgt_dma it;
+	int len, sz, err;
+	u32 *cs;
+
+	/*
+	 * Simple regression test to check that we don't trample the
+	 * rq->reserved_space when returning from emit_pte(), if the ring is
+	 * nearly full.
+	 */
+
+	if (igt_spinner_init(&st.spin, to_gt(i915)))
+		return -ENOMEM;
+
+	obj = i915_gem_object_create_internal(i915, 2 * PAGE_SIZE);
+	if (IS_ERR(obj)) {
+		err = PTR_ERR(obj);
+		goto out_spinner;
+	}
+
+	err = i915_gem_object_pin_pages_unlocked(obj);
+	if (err)
+		goto out_obj;
+
+	ce = intel_migrate_create_context(migrate);
+	if (IS_ERR(ce)) {
+		err = PTR_ERR(ce);
+		goto out_obj;
+	}
+
+	ce->ring_size = SZ_4K; /* Not too big */
+
+	err = intel_context_pin(ce);
+	if (err)
+		goto out_put;
+
+	rq = igt_spinner_create_request(&st.spin, ce, MI_ARB_CHECK);
+	if (IS_ERR(rq)) {
+		err = PTR_ERR(rq);
+		goto out_unpin;
+	}
+
+	i915_request_add(rq);
+	if (!igt_wait_for_spinner(&st.spin, rq)) {
+		err = -EIO;
+		goto out_unpin;
+	}
+
+	/*
+	 * Fill the rest of the ring leaving I915_EMIT_PTE_NUM_DWORDS +
+	 * ring->reserved_space at the end. To actually emit the PTEs we require
+	 * slightly more than I915_EMIT_PTE_NUM_DWORDS, since our object size is
+	 * greater than PAGE_SIZE. The correct behaviour is to wait for more
+	 * ring space in emit_pte(), otherwise we trample on the reserved_space
+	 * resulting in crashes when later submitting the rq.
+	 */
+
+	prev = NULL;
+	do {
+		if (prev)
+			i915_request_add(rq);
+
+		rq = i915_request_create(ce);
+		if (IS_ERR(rq)) {
+			err = PTR_ERR(rq);
+			goto out_unpin;
+		}
+
+		sz = (rq->ring->space - rq->reserved_space) / sizeof(u32) -
+			I915_EMIT_PTE_NUM_DWORDS;
+		sz = min_t(u32, sz, (SZ_1K - rq->reserved_space) / sizeof(u32) -
+			   I915_EMIT_PTE_NUM_DWORDS);
+		cs = intel_ring_begin(rq, sz);
+		if (IS_ERR(cs)) {
+			err = PTR_ERR(cs);
+			goto out_rq;
+		}
+
+		memset32(cs, MI_NOOP, sz);
+		cs += sz;
+		intel_ring_advance(rq, cs);
+
+		pr_info("%s emit=%u sz=%d\n", __func__, rq->ring->emit, sz);
+
+		prev = rq;
+	} while (rq->ring->space > (rq->reserved_space +
+				    I915_EMIT_PTE_NUM_DWORDS * sizeof(u32)));
+
+	timer_setup_on_stack(&st.timer, spinner_kill, 0);
+	mod_timer(&st.timer, jiffies + 2 * HZ);
+
+	/*
+	 * This should wait for the spinner to be killed, otherwise we should go
+	 * down in flames when doing i915_request_add().
+	 */
+	pr_info("%s emite_pte ring space=%u\n", __func__, rq->ring->space);
+	it = sg_sgt(obj->mm.pages->sgl);
+	len = emit_pte(rq, &it, obj->cache_level, false, 0, CHUNK_SZ);
+	if (!len) {
+		err = -EINVAL;
+		goto out_rq;
+	}
+	if (len < 0) {
+		err = len;
+		goto out_rq;
+	}
+
+out_rq:
+	i915_request_add(rq); /* GEM_BUG_ON(rq->reserved_space > ring->space)? */
+	del_timer_sync(&st.timer);
+	destroy_timer_on_stack(&st.timer);
+out_unpin:
+	intel_context_unpin(ce);
+out_put:
+	intel_context_put(ce);
+out_obj:
+	i915_gem_object_put(obj);
+out_spinner:
+	igt_spinner_fini(&st.spin);
+	return err;
+}
+
 struct threaded_migrate {
 	struct intel_migrate *migrate;
 	struct task_struct *tsk;
@@ -651,6 +795,7 @@ int intel_migrate_live_selftests(struct drm_i915_private *i915)
 	static const struct i915_subtest tests[] = {
 		SUBTEST(live_migrate_copy),
 		SUBTEST(live_migrate_clear),
+		SUBTEST(live_emit_pte_full_ring),
 		SUBTEST(thread_migrate_copy),
 		SUBTEST(thread_migrate_clear),
 		SUBTEST(thread_global_copy),
-- 
2.38.1

