Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF87D145D70
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2020 22:03:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBBD96F8DA;
	Wed, 22 Jan 2020 21:02:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51B036F8DA
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jan 2020 21:02:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19975789-1500050 
 for multiple; Wed, 22 Jan 2020 21:02:17 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Jan 2020 21:02:16 +0000
Message-Id: <20200122210216.912207-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200122201822.889250-1-chris@chris-wilson.co.uk>
References: <20200122201822.889250-1-chris@chris-wilson.co.uk>
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
 drivers/gpu/drm/i915/gt/intel_gtt.c | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

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
