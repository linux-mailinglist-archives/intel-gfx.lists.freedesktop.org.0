Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D0C02923B6
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Oct 2020 10:35:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BB566E8EF;
	Mon, 19 Oct 2020 08:34:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 714A46E8EF
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Oct 2020 08:34:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22753732-1500050 
 for multiple; Mon, 19 Oct 2020 09:34:45 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 19 Oct 2020 09:34:44 +0100
Message-Id: <20201019083444.1286-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Onion unwind for scratch page
 allocation failure
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
Cc: Matthew Auld <matthew.auld@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In switching to using objects for our ppGTT scratch pages, care was not
taken to avoid trying to unref NULL objects on failure. And for gen6
ppGTT, it appears we forgot entirely to unwind after a partial allocation
failure.

Fixes: 89351925a477 ("drm/i915/gt: Switch to object allocations for page directories")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/gen6_ppgtt.c | 18 ++++++++++++------
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c |  3 ++-
 2 files changed, 14 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
index c0d17f87b00f..680bd9442eb0 100644
--- a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
@@ -239,18 +239,24 @@ static int gen6_ppgtt_init_scratch(struct gen6_ppgtt *ppgtt)
 			       I915_CACHE_NONE, PTE_READ_ONLY);
 
 	vm->scratch[1] = vm->alloc_pt_dma(vm, I915_GTT_PAGE_SIZE_4K);
-	if (IS_ERR(vm->scratch[1]))
-		return PTR_ERR(vm->scratch[1]);
+	if (IS_ERR(vm->scratch[1])) {
+		ret = PTR_ERR(vm->scratch[1]);
+		goto err_scratch0;
+	}
 
 	ret = pin_pt_dma(vm, vm->scratch[1]);
-	if (ret) {
-		i915_gem_object_put(vm->scratch[1]);
-		return ret;
-	}
+	if (ret)
+		goto err_scratch1;
 
 	fill32_px(vm->scratch[1], vm->scratch[0]->encode);
 
 	return 0;
+
+err_scratch1:
+	i915_gem_object_put(vm->scratch[1]);
+err_scratch0:
+	i915_gem_object_put(vm->scratch[0]);
+	return ret;
 }
 
 static void gen6_ppgtt_free_pd(struct gen6_ppgtt *ppgtt)
diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
index b236aa046f91..a37c968ef8f7 100644
--- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
@@ -607,7 +607,8 @@ static int gen8_init_scratch(struct i915_address_space *vm)
 	return 0;
 
 free_scratch:
-	free_scratch(vm);
+	while (i--)
+		i915_gem_object_put(vm->scratch[i]);
 	return -ENOMEM;
 }
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
