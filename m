Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DFAEE2C84EF
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Nov 2020 14:19:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 470376E4B0;
	Mon, 30 Nov 2020 13:19:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E31836E4AA
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Nov 2020 13:19:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23162376-1500050 
 for multiple; Mon, 30 Nov 2020 13:19:09 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Nov 2020 13:19:06 +0000
Message-Id: <20201130131910.9412-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/5] drm/i915/gt: Add an insert_entry for
 gen8_ppgtt
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

In the next patch, we will want to write a PTE for an explicit
dma address, outside of the usual vma.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
index a37c968ef8f7..1600a654baa8 100644
--- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
@@ -556,6 +556,25 @@ static void gen8_ppgtt_insert(struct i915_address_space *vm,
 	}
 }
 
+static void gen8_ppgtt_insert_entry(struct i915_address_space *vm,
+				    dma_addr_t addr,
+				    u64 offset,
+				    enum i915_cache_level level,
+				    u32 flags)
+{
+	u64 idx = offset >> GEN8_PTE_SHIFT;
+	struct i915_page_directory * const pdp =
+		gen8_pdp_for_page_index(vm, idx);
+	struct i915_page_directory *pd =
+		i915_pd_entry(pdp, gen8_pd_index(idx, 2));
+	gen8_pte_t *vaddr;
+
+	vaddr = kmap_atomic_px(i915_pt_entry(pd, gen8_pd_index(idx, 1)));
+	vaddr[gen8_pd_index(idx, 0)] = gen8_pte_encode(addr, level, flags);
+	clflush_cache_range(&vaddr[gen8_pd_index(idx, 0)], sizeof(*vaddr));
+	kunmap_atomic(vaddr);
+}
+
 static int gen8_init_scratch(struct i915_address_space *vm)
 {
 	int ret;
@@ -728,6 +747,7 @@ struct i915_ppgtt *gen8_ppgtt_create(struct intel_gt *gt)
 
 	ppgtt->vm.bind_async_flags = I915_VMA_LOCAL_BIND;
 	ppgtt->vm.insert_entries = gen8_ppgtt_insert;
+	ppgtt->vm.insert_page = gen8_ppgtt_insert_entry;
 	ppgtt->vm.allocate_va_range = gen8_ppgtt_alloc;
 	ppgtt->vm.clear_range = gen8_ppgtt_clear;
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
