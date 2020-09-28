Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98AA427B756
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Sep 2020 00:00:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E91C89D57;
	Mon, 28 Sep 2020 22:00:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D6C089D57
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Sep 2020 22:00:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22561506-1500050 
 for multiple; Mon, 28 Sep 2020 22:59:45 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Sep 2020 22:59:42 +0100
Message-Id: <20200928215942.31917-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Avoid mixing integer types during
 batch copies
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
Cc: stable@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>,
 "Candelaria, Jared" <jared.candelaria@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Be consistent and use unsigned long throughout the chunk copies to
avoid the inherent clumsiness of mixing integer types of different
widths and signs. Failing to take acount of a wider unsigned type when
using min_t can lead to treating it as a negative, only for it flip back
to a large unsigned value after passing a boundary check.

Fixes: ed13033f0287 ("drm/i915/cmdparser: Only cache the dst vmap")
Testcase: igt/gen9_exec_parse/bb-large
Reported-by: "Candelaria, Jared" <jared.candelaria@intel.com>
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: "Candelaria, Jared" <jared.candelaria@intel.com>
Cc: "Bloomfield, Jon" <jon.bloomfield@intel.com>
Cc: <stable@vger.kernel.org> # v4.9+
---
The alternative would be to use u32 throughout, but that would also mean
keeping the min_t(u32, ...). unsigned long decouples the mechanism from
the API limits, so long as we remember to enforce that the mechanism
copes with the entire range of the API.
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c |  7 +++++--
 drivers/gpu/drm/i915/i915_cmd_parser.c         | 10 +++++-----
 drivers/gpu/drm/i915/i915_drv.h                |  4 ++--
 3 files changed, 12 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 5509946f1a1d..4b09bcd70cf4 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -2267,8 +2267,8 @@ struct eb_parse_work {
 	struct i915_vma *batch;
 	struct i915_vma *shadow;
 	struct i915_vma *trampoline;
-	unsigned int batch_offset;
-	unsigned int batch_length;
+	unsigned long batch_offset;
+	unsigned long batch_length;
 };
 
 static int __eb_parse(struct dma_fence_work *work)
@@ -2338,6 +2338,9 @@ static int eb_parse_pipeline(struct i915_execbuffer *eb,
 	struct eb_parse_work *pw;
 	int err;
 
+	GEM_BUG_ON(overflows_type(eb->batch_start_offset, pw->batch_offset));
+	GEM_BUG_ON(overflows_type(eb->batch_len, pw->batch_length));
+
 	pw = kzalloc(sizeof(*pw), GFP_KERNEL);
 	if (!pw)
 		return -ENOMEM;
diff --git a/drivers/gpu/drm/i915/i915_cmd_parser.c b/drivers/gpu/drm/i915/i915_cmd_parser.c
index 5ac4a999f05a..e88970256e8e 100644
--- a/drivers/gpu/drm/i915/i915_cmd_parser.c
+++ b/drivers/gpu/drm/i915/i915_cmd_parser.c
@@ -1136,7 +1136,7 @@ find_reg(const struct intel_engine_cs *engine, u32 addr)
 /* Returns a vmap'd pointer to dst_obj, which the caller must unmap */
 static u32 *copy_batch(struct drm_i915_gem_object *dst_obj,
 		       struct drm_i915_gem_object *src_obj,
-		       u32 offset, u32 length)
+		       unsigned long offset, unsigned long length)
 {
 	bool needs_clflush;
 	void *dst, *src;
@@ -1166,8 +1166,8 @@ static u32 *copy_batch(struct drm_i915_gem_object *dst_obj,
 		}
 	}
 	if (IS_ERR(src)) {
+		unsigned long x, n;
 		void *ptr;
-		int x, n;
 
 		/*
 		 * We can avoid clflushing partial cachelines before the write
@@ -1184,7 +1184,7 @@ static u32 *copy_batch(struct drm_i915_gem_object *dst_obj,
 		ptr = dst;
 		x = offset_in_page(offset);
 		for (n = offset >> PAGE_SHIFT; length; n++) {
-			int len = min_t(int, length, PAGE_SIZE - x);
+			int len = min(length, PAGE_SIZE - x);
 
 			src = kmap_atomic(i915_gem_object_get_page(src_obj, n));
 			if (needs_clflush)
@@ -1414,8 +1414,8 @@ static bool shadow_needs_clflush(struct drm_i915_gem_object *obj)
  */
 int intel_engine_cmd_parser(struct intel_engine_cs *engine,
 			    struct i915_vma *batch,
-			    u32 batch_offset,
-			    u32 batch_length,
+			    unsigned long batch_offset,
+			    unsigned long batch_length,
 			    struct i915_vma *shadow,
 			    bool trampoline)
 {
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 72a9449b674e..eef9a821c49c 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1949,8 +1949,8 @@ void intel_engine_init_cmd_parser(struct intel_engine_cs *engine);
 void intel_engine_cleanup_cmd_parser(struct intel_engine_cs *engine);
 int intel_engine_cmd_parser(struct intel_engine_cs *engine,
 			    struct i915_vma *batch,
-			    u32 batch_offset,
-			    u32 batch_length,
+			    unsigned long batch_offset,
+			    unsigned long batch_length,
 			    struct i915_vma *shadow,
 			    bool trampoline);
 #define I915_CMD_PARSER_TRAMPOLINE_SIZE 8
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
