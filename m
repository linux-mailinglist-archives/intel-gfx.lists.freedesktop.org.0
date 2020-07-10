Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0733721B494
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 14:01:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 513026EC21;
	Fri, 10 Jul 2020 12:01:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EB8C6EC21
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2020 12:01:24 +0000 (UTC)
IronPort-SDR: RJOvgYuX7wj7RzcqPPBPy2P+5uZ3ZQgEdKd17J7WxuBzER7vO4I9u/1WevGbJQ+KUq3cEFRtNe
 pdHhSPzXv4gQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="127777168"
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="127777168"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 05:01:23 -0700
IronPort-SDR: jtrfEILbQAZxi/SGXUFVDOLz4skvumm8c0k/thDgpF3uTWVGbAWBJLoesoOCqfO1FIxmMy7Sbs
 0oVck5lONlLg==
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="458258330"
Received: from nmartino-mobl1.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.255.207.224])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 05:01:22 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jul 2020 12:57:48 +0100
Message-Id: <20200710115757.290984-52-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200710115757.290984-1-matthew.auld@intel.com>
References: <20200710115757.290984-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 51/60] drm/i915/lmem: support optional CPU
 clearing for special internal use
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

For some internal device local-memory objects it would be useful to have
an option to CPU clear the pages upon gathering the backing store. Note
that this might be before the blitter is useable, which is the case for
some internal GuC objects.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_object_types.h  |  8 +-
 drivers/gpu/drm/i915/gem/i915_gem_region.c    | 20 +++++
 .../drm/i915/selftests/intel_memory_region.c  | 83 +++++++++++++++++++
 3 files changed, 108 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
index 848ac102b788..0ae33c7a9239 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
@@ -148,9 +148,11 @@ struct drm_i915_gem_object {
 	unsigned long flags;
 #define I915_BO_ALLOC_CONTIGUOUS BIT(0)
 #define I915_BO_ALLOC_VOLATILE   BIT(1)
-#define I915_BO_ALLOC_FLAGS (I915_BO_ALLOC_CONTIGUOUS | I915_BO_ALLOC_VOLATILE)
-#define I915_BO_READONLY         BIT(2)
-
+#define I915_BO_ALLOC_CPU_CLEAR  BIT(2)
+#define I915_BO_ALLOC_FLAGS (I915_BO_ALLOC_CONTIGUOUS | \
+			     I915_BO_ALLOC_VOLATILE | \
+			     I915_BO_ALLOC_CPU_CLEAR)
+#define I915_BO_READONLY         BIT(3)
 	/*
 	 * Is the object to be mapped as read-only to the GPU
 	 * Only honoured if hardware has relevant pte bit
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_region.c b/drivers/gpu/drm/i915/gem/i915_gem_region.c
index cc8116e63808..88860169d340 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_region.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_region.c
@@ -95,6 +95,26 @@ i915_gem_object_get_pages_buddy(struct drm_i915_gem_object *obj)
 	sg_mark_end(sg);
 	i915_sg_trim(st);
 
+	/* Intended for kernel internal use only */
+	if (obj->flags & I915_BO_ALLOC_CPU_CLEAR) {
+		struct scatterlist *sg;
+		unsigned long i;
+
+		for_each_sg(st->sgl, sg, st->nents, i) {
+			unsigned int length;
+			void __iomem *vaddr;
+			dma_addr_t daddr;
+
+			daddr = sg_dma_address(sg);
+			daddr -= mem->region.start;
+			length = sg_dma_len(sg);
+
+			vaddr = io_mapping_map_wc(&mem->iomap, daddr, length);
+			memset64(vaddr, 0, length / sizeof(u64));
+			io_mapping_unmap(vaddr);
+		}
+	}
+
 	__i915_gem_object_set_pages(obj, st, sg_page_sizes);
 
 	return 0;
diff --git a/drivers/gpu/drm/i915/selftests/intel_memory_region.c b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
index 6e80d99048e4..d10f5b52b677 100644
--- a/drivers/gpu/drm/i915/selftests/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
@@ -396,6 +396,88 @@ static int igt_lmem_create(void *arg)
 	return err;
 }
 
+static int igt_lmem_create_cleared_cpu(void *arg)
+{
+	struct drm_i915_private *i915 = arg;
+	I915_RND_STATE(prng);
+	IGT_TIMEOUT(end_time);
+	u32 size, val, i;
+	int err;
+
+	i915_gem_drain_freed_objects(i915);
+
+	size = max_t(u32, PAGE_SIZE, i915_prandom_u32_max_state(SZ_32M, &prng));
+	size = round_up(size, PAGE_SIZE);
+	i = 0;
+
+	do {
+		struct drm_i915_gem_object *obj;
+		void __iomem *vaddr;
+		unsigned int flags;
+		unsigned long n;
+		u32 dword;
+
+		/*
+		 * Alternate between cleared and uncleared allocations, while
+		 * also dirtying the pages each time to check that they either
+		 * remain dirty or are indeed cleared. Allocations should be
+		 * deterministic.
+		 */
+
+		flags = I915_BO_ALLOC_CPU_CLEAR;
+		if (i & 1)
+			flags = 0;
+		else
+			val = 0;
+
+		obj = i915_gem_object_create_lmem(i915, size, flags);
+		if (IS_ERR(obj))
+			return PTR_ERR(obj);
+
+		err = i915_gem_object_pin_pages(obj);
+		if (err)
+			goto out_put;
+
+		dword = i915_prandom_u32_max_state(PAGE_SIZE / sizeof(u32),
+						   &prng);
+
+		err = igt_cpu_check(obj, dword, val);
+		if (err) {
+			pr_err("%s failed with size=%u, flags=%u\n",
+			       __func__, size, flags);
+			goto out_unpin;
+		}
+
+		vaddr = i915_gem_object_pin_map(obj, I915_MAP_WC);
+		if (IS_ERR(vaddr)) {
+			err = PTR_ERR(vaddr);
+			goto out_unpin;
+		}
+
+		val = prandom_u32_state(&prng);
+
+		for (n = 0; n < obj->base.size >> PAGE_SHIFT; ++n) {
+			memset32(vaddr + n * PAGE_SIZE, val,
+				 PAGE_SIZE / sizeof(u32));
+		}
+
+		i915_gem_object_unpin_map(obj);
+out_unpin:
+		i915_gem_object_unpin_pages(obj);
+		__i915_gem_object_put_pages(obj);
+out_put:
+		i915_gem_object_put(obj);
+
+		if (err)
+			break;
+		++i;
+	} while (!__igt_timeout(end_time, NULL));
+
+	pr_info("%s completed (%u) iterations\n", __func__, i);
+
+	return err;
+}
+
 static int igt_lmem_write_gpu(void *arg)
 {
 	struct drm_i915_private *i915 = arg;
@@ -799,6 +881,7 @@ int intel_memory_region_live_selftests(struct drm_i915_private *i915)
 {
 	static const struct i915_subtest tests[] = {
 		SUBTEST(igt_lmem_create),
+		SUBTEST(igt_lmem_create_cleared_cpu),
 		SUBTEST(igt_lmem_write_cpu),
 		SUBTEST(igt_lmem_write_gpu),
 	};
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
