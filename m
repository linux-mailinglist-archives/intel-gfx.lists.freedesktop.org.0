Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 137511462C0
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 08:41:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 629266F9BA;
	Thu, 23 Jan 2020 07:40:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D111B6F9BA
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jan 2020 07:40:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19978082-1500050 
 for multiple; Thu, 23 Jan 2020 07:40:41 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Jan 2020 07:40:40 +0000
Message-Id: <20200123074040.1212192-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200122210216.912207-1-chris@chris-wilson.co.uk>
References: <20200122210216.912207-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Poison GTT scratch pages
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

Using a clear page for scratch means that we have relatively benign
errors in case it is accidentally used, but that can be rather too
benign for debugging. If we poison the scratch, ideally it quickly
results in an obvious error.

Suggested-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 .../drm/i915/gem/selftests/i915_gem_context.c | 30 ++++++++++++++++++-
 drivers/gpu/drm/i915/gt/intel_gtt.c           | 19 ++++++++++++
 2 files changed, 48 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
index 7fc46861a54d..62c2babf2bd3 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
@@ -1686,6 +1686,24 @@ static int read_from_scratch(struct i915_gem_context *ctx,
 	return err;
 }
 
+static int check_scratch_page(struct i915_gem_context *ctx, u32 *out)
+{
+	struct page *page = ctx_vm(ctx)->scratch[0].base.page;
+	unsigned long size = 1ul << (ctx_vm(ctx)->scratch_order + PAGE_SHIFT);
+	u32 *vaddr;
+	int err = 0;
+
+	vaddr = kmap(page);
+	memcpy(out, vaddr, sizeof(*out));
+	if (memchr_inv(vaddr, *out, size)) {
+		pr_err("Inconsistent initial state of scratch page!\n");
+		err = -EINVAL;
+	}
+	kunmap(page);
+
+	return err;
+}
+
 static int igt_vm_isolation(void *arg)
 {
 	struct drm_i915_private *i915 = arg;
@@ -1696,6 +1714,7 @@ static int igt_vm_isolation(void *arg)
 	I915_RND_STATE(prng);
 	struct file *file;
 	u64 vm_total;
+	u32 expected;
 	int err;
 
 	if (INTEL_GEN(i915) < 7)
@@ -1720,12 +1739,21 @@ static int igt_vm_isolation(void *arg)
 		goto out_file;
 	}
 
+	/* Read the initial state of the scratch page */
+	err = check_scratch_page(ctx_a, &expected);
+	if (err)
+		goto out_file;
+
 	ctx_b = live_context(i915, file);
 	if (IS_ERR(ctx_b)) {
 		err = PTR_ERR(ctx_b);
 		goto out_file;
 	}
 
+	err = check_scratch_page(ctx_b, &expected);
+	if (err)
+		goto out_file;
+
 	/* We can only test vm isolation, if the vm are distinct */
 	if (ctx_vm(ctx_a) == ctx_vm(ctx_b))
 		goto out_file;
@@ -1760,7 +1788,7 @@ static int igt_vm_isolation(void *arg)
 			if (err)
 				goto out_file;
 
-			if (value) {
+			if (value != expected) {
 				pr_err("%s: Read %08x from scratch (offset 0x%08x_%08x), after %lu reads!\n",
 				       engine->name, value,
 				       upper_32_bits(offset),
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
index 45d8e0019a8e..804da478d8f9 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
@@ -299,6 +299,14 @@ fill_page_dma(const struct i915_page_dma *p, const u64 val, unsigned int count)
 	kunmap_atomic(memset64(kmap_atomic(p->page), val, count));
 }
 
+static void poison_scratch_page(struct page *page, unsigned long size)
+{
+	if (!IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
+		return;
+
+	kunmap_atomic(memset(kmap_atomic(page), POISON_FREE, size));
+}
+
 int setup_scratch_page(struct i915_address_space *vm, gfp_t gfp)
 {
 	unsigned long size;
@@ -331,6 +339,17 @@ int setup_scratch_page(struct i915_address_space *vm, gfp_t gfp)
 		if (unlikely(!page))
 			goto skip;
 
+		/*
+		 * Use a non-zero scratch page for debugging.
+		 *
+		 * We want a value that should be reasonably obvious
+		 * to spot in the error state, while also causing a GPU hang
+		 * if executed. We prefer using a clear page in production, so
+		 * should it ever be accidentally used, the effect should be
+		 * fairly benign.
+		 */
+		poison_scratch_page(page, size);
+
 		addr = dma_map_page_attrs(vm->dma,
 					  page, 0, size,
 					  PCI_DMA_BIDIRECTIONAL,
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
