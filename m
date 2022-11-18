Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 53D1862F6AF
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Nov 2022 14:58:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DF7510E20E;
	Fri, 18 Nov 2022 13:58:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A412210E74C
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Nov 2022 13:57:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668779870; x=1700315870;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vCsydKQjQBIDz4CB0LSC/u9/F4O4J+zQ69znDJbINtw=;
 b=crgNyAayFT08gmby1ZoBRGwdkbZZ852LAmgKHlpnngqm1rA3mvcj0uxy
 1/pLD+8Libwj/jaZ+9u1OVKdkjG2Vq6JdnjkHeKLcGKUdWKuH92h2DMM4
 9pvRLRe3W1x05t01U4ZvAkGqpFHi9J+KsguvtUP7Xf+X4JrYGf8QfM+dH
 89fQT2G9KP7je0pUa68H2u/lnkrY3xBzA8k+2Jzp1XFoJ3Hpvg/1PQvNl
 JQAZTCdpJCDrc1+Z53ML/TfR9+AzWpS1K6UVnAUkw+KB/vLDYg59kn8dl
 Jc/9/m53MDZBjeLeaKnlnGFArRDBjkrvVm7ekVnbz9qwd4CCNPFpQVPrh g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10535"; a="339978740"
X-IronPort-AV: E=Sophos;i="5.96,174,1665471600"; d="scan'208";a="339978740"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2022 05:57:50 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10535"; a="746012376"
X-IronPort-AV: E=Sophos;i="5.96,174,1665471600"; d="scan'208";a="746012376"
Received: from bbaker-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.1.50])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2022 05:57:49 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Nov 2022 13:57:23 +0000
Message-Id: <20221118135723.621653-2-matthew.auld@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221118135723.621653-1-matthew.auld@intel.com>
References: <20221118135723.621653-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/2] drm/i915/selftests: exercise emit_pte()
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

v2: make spinner_kill() static

References: https://gitlab.freedesktop.org/drm/intel/-/issues/7535
References: https://gitlab.freedesktop.org/drm/intel/-/issues/6889
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Chris Wilson <chris.p.wilson@intel.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Cc: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_migrate.c    |   6 +-
 drivers/gpu/drm/i915/gt/selftest_migrate.c | 152 +++++++++++++++++++++
 2 files changed, 156 insertions(+), 2 deletions(-)

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
index 0dc5309c90a4..edac9e4dec55 100644
--- a/drivers/gpu/drm/i915/gt/selftest_migrate.c
+++ b/drivers/gpu/drm/i915/gt/selftest_migrate.c
@@ -8,6 +8,7 @@
 #include "gem/i915_gem_internal.h"
 #include "gem/i915_gem_lmem.h"
 
+#include "selftests/igt_spinner.h"
 #include "selftests/i915_random.h"
 
 static const unsigned int sizes[] = {
@@ -527,6 +528,156 @@ static int live_migrate_clear(void *arg)
 	return 0;
 }
 
+static int spinner_kill(void *arg)
+{
+	struct igt_spinner *spin = arg;
+
+	msleep(2000); /* Should be plenty */
+	igt_spinner_end(spin);
+	return 0;
+}
+
+static int live_emit_pte_full_ring(void *arg)
+{
+	struct intel_migrate *migrate = arg;
+	struct drm_i915_private *i915 = migrate->context->engine->i915;
+	struct drm_i915_gem_object *obj;
+	struct intel_context *ce;
+	struct i915_request *rq, *prev;
+	struct igt_spinner spin;
+	struct task_struct *tsk = NULL;
+	struct sgt_dma it;
+	int len, sz, err;
+	int status;
+	u32 *cs;
+
+	/*
+	 * Simple regression test to check that we don't trample the
+	 * rq->reserved_space when returning from emit_pte(), if the ring is
+	 * nearly full.
+	 */
+
+	if (igt_spinner_init(&spin, to_gt(i915)))
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
+	rq = igt_spinner_create_request(&spin, ce, MI_ARB_CHECK);
+	if (IS_ERR(rq)) {
+		err = PTR_ERR(rq);
+		goto out_unpin;
+	}
+
+	i915_request_add(rq);
+	if (!igt_wait_for_spinner(&spin, rq)) {
+		err = -EIO;
+		goto out_unpin;
+	}
+
+	/*
+	 * Fill the ring leaving I915_EMIT_PTE_NUM_DWORDS + ring->reserved_space
+	 * at the end. To actually emit the PTEs we require slightly more than
+	 * I915_EMIT_PTE_NUM_DWORDS, since our object size is greater than
+	 * PAGE_SIZE. The correct behaviour is to wait for more ring space in
+	 * emit_pte(), otherwise we trample on the reserved_space resulting in
+	 * crashes when later submitting the rq.
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
+		sz = min_t(u32, sz, SZ_1K / sizeof(u32));
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
+		prev = rq;
+	} while (rq->ring->space > (rq->reserved_space +
+				    I915_EMIT_PTE_NUM_DWORDS * sizeof(u32)));
+
+	it = sg_sgt(obj->mm.pages->sgl);
+
+	tsk = kthread_run(spinner_kill, &spin, "igt-kill-spinner");
+	if (IS_ERR(tsk)) {
+		err = PTR_ERR(tsk);
+		goto out_rq;
+	}
+
+	get_task_struct(tsk);
+
+	msleep(10); /* start all threads before we kthread_stop() */
+
+	/*
+	 * This should wait for the spinner to be killed, otherwise we should go
+	 * down in flames when doing i915_request_add().
+	 */
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
+
+	if (!IS_ERR_OR_NULL(tsk)) {
+		status = kthread_stop(tsk);
+		if (status && !err)
+			err = status;
+
+		put_task_struct(tsk);
+	}
+out_unpin:
+	intel_context_unpin(ce);
+out_put:
+	intel_context_put(ce);
+out_obj:
+	i915_gem_object_put(obj);
+out_spinner:
+	igt_spinner_fini(&spin);
+	return err;
+}
+
 struct threaded_migrate {
 	struct intel_migrate *migrate;
 	struct task_struct *tsk;
@@ -637,6 +788,7 @@ int intel_migrate_live_selftests(struct drm_i915_private *i915)
 	static const struct i915_subtest tests[] = {
 		SUBTEST(live_migrate_copy),
 		SUBTEST(live_migrate_clear),
+		SUBTEST(live_emit_pte_full_ring),
 		SUBTEST(thread_migrate_copy),
 		SUBTEST(thread_migrate_clear),
 		SUBTEST(thread_global_copy),
-- 
2.38.1

