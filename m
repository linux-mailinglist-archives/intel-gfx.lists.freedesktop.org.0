Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C972E1BF662
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2020 13:18:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC94D6EB90;
	Thu, 30 Apr 2020 11:18:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E525B6EB8A
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Apr 2020 11:18:37 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21068962-1500050 
 for multiple; Thu, 30 Apr 2020 12:18:22 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 30 Apr 2020 12:18:14 +0100
Message-Id: <20200430111819.10262-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200430111819.10262-1-chris@chris-wilson.co.uk>
References: <20200430111819.10262-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/9] drm/i915/gem: Include PIN_GLOBAL prior to
 using I915_DISPATCH_SECURE
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

For our gpu relocs, on the older gen 4 and 5 devices, we must use a
privileged buffer for MI_STORE_DWORD_IMM. This also presumes that we
operate from the global GTT, for consistency we should tell
i915_vma_pin() that it will be used with the global address. While there
is only the single GTT available for these devices, so it does not change
the actual GTT used for pinning.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 414859fa2673..cc5ccc37be8c 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -1197,6 +1197,7 @@ static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
 	struct intel_gt_buffer_pool_node *pool;
 	struct i915_request *rq;
 	struct i915_vma *batch;
+	u32 flags;
 	u32 *cmd;
 	int err;
 
@@ -1219,7 +1220,11 @@ static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
 		goto err_unmap;
 	}
 
-	err = i915_vma_pin(batch, 0, 0, PIN_USER | PIN_NONBLOCK);
+	flags = PIN_USER | PIN_NOEVICT | PIN_NONBLOCK;
+	if (cache->gen <= 5)
+		flags |= PIN_GLOBAL;
+
+	err = i915_vma_pin(batch, 0, 0, flags);
 	if (err)
 		goto err_unmap;
 
@@ -1239,7 +1244,8 @@ static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
 
 	err = eb->engine->emit_bb_start(rq,
 					batch->node.start, PAGE_SIZE,
-					cache->gen > 5 ? 0 : I915_DISPATCH_SECURE);
+					flags & PIN_GLOBAL ?
+					I915_DISPATCH_SECURE : 0);
 	if (err)
 		goto skip_request;
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
