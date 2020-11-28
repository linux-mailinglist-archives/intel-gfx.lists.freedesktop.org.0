Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AFFA2C7098
	for <lists+intel-gfx@lfdr.de>; Sat, 28 Nov 2020 19:40:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BC546ECE1;
	Sat, 28 Nov 2020 18:40:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB0CB6ECE1
 for <intel-gfx@lists.freedesktop.org>; Sat, 28 Nov 2020 18:40:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23146437-1500050 
 for multiple; Sat, 28 Nov 2020 18:40:41 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 28 Nov 2020 18:40:38 +0000
Message-Id: <20201128184040.20150-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201128184040.20150-1-chris@chris-wilson.co.uk>
References: <20201128184040.20150-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 2/4] drm/i915/gt: Add a routine to iterate over
 the pagetables of a GTT
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In the next patch, we will want to look at the dma addresses of
individual page tables, so add a routine to iterate over them.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c | 49 ++++++++++++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_gtt.h  |  7 ++++
 2 files changed, 56 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
index 1600a654baa8..abf89b0c19da 100644
--- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
@@ -357,6 +357,54 @@ static void gen8_ppgtt_alloc(struct i915_address_space *vm,
 			   &start, start + length, vm->top);
 }
 
+static void __gen8_ppgtt_foreach(struct i915_address_space *vm,
+				 struct i915_page_directory *pd,
+				 u64 *start, u64 end, int lvl,
+				 void (*fn)(struct i915_address_space *vm,
+					    struct i915_page_table *pt,
+					    void *data),
+				 void *data)
+{
+	unsigned int idx, len;
+
+	len = gen8_pd_range(*start, end, lvl--, &idx);
+
+	spin_lock(&pd->lock);
+	do {
+		struct i915_page_table *pt = pd->entry[idx];
+
+		atomic_inc(&pt->used);
+		spin_unlock(&pd->lock);
+
+		if (lvl) {
+			__gen8_ppgtt_foreach(vm, as_pd(pt), start, end, lvl,
+					     fn, data);
+		} else {
+			fn(vm, pt, data);
+			*start += gen8_pt_count(*start, end);
+		}
+
+		spin_lock(&pd->lock);
+		atomic_dec(&pt->used);
+	} while (idx++, --len);
+	spin_unlock(&pd->lock);
+}
+
+static void gen8_ppgtt_foreach(struct i915_address_space *vm,
+			       u64 start, u64 length,
+			       void (*fn)(struct i915_address_space *vm,
+					  struct i915_page_table *pt,
+					  void *data),
+			       void *data)
+{
+	start >>= GEN8_PTE_SHIFT;
+	length >>= GEN8_PTE_SHIFT;
+
+	__gen8_ppgtt_foreach(vm, i915_vm_to_ppgtt(vm)->pd,
+			     &start, start + length, vm->top,
+			     fn, data);
+}
+
 static __always_inline u64
 gen8_ppgtt_insert_pte(struct i915_ppgtt *ppgtt,
 		      struct i915_page_directory *pdp,
@@ -750,6 +798,7 @@ struct i915_ppgtt *gen8_ppgtt_create(struct intel_gt *gt)
 	ppgtt->vm.insert_page = gen8_ppgtt_insert_entry;
 	ppgtt->vm.allocate_va_range = gen8_ppgtt_alloc;
 	ppgtt->vm.clear_range = gen8_ppgtt_clear;
+	ppgtt->vm.foreach = gen8_ppgtt_foreach;
 
 	ppgtt->vm.pte_encode = gen8_pte_encode;
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index 8a33940a71f3..f91ad8442f2e 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -281,6 +281,13 @@ struct i915_address_space {
 			       u32 flags);
 	void (*cleanup)(struct i915_address_space *vm);
 
+	void (*foreach)(struct i915_address_space *vm,
+			u64 start, u64 length,
+			void (*fn)(struct i915_address_space *vm,
+				   struct i915_page_table *pt,
+				   void *data),
+			void *data);
+
 	struct i915_vma_ops vma_ops;
 
 	I915_SELFTEST_DECLARE(struct fault_attr fault_attr);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
