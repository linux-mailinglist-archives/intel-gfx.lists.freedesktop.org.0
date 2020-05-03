Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B0791C2BA0
	for <lists+intel-gfx@lfdr.de>; Sun,  3 May 2020 13:22:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D7626E203;
	Sun,  3 May 2020 11:21:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A77D66E192
 for <intel-gfx@lists.freedesktop.org>; Sun,  3 May 2020 11:21:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21097484-1500050 
 for multiple; Sun, 03 May 2020 12:21:35 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  3 May 2020 12:21:19 +0100
Message-Id: <20200503112132.17899-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 01/14] drm/i915/gem: Specify address type for
 chained reloc batches
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
Cc: Chris Wilson <ickle@x201s.alporthouse.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Chris Wilson <ickle@x201s.alporthouse.com>

It is required that a chained batch be in the same address domain as its
parent, and also that must be specified in the command for earlier gen
as it is not inferred from the chaining until gen6.

Fixes: 964a9b0f611e ("drm/i915/gem: Use chained reloc batches")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index cce7df231cb9..ab0d4df13c0b 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -1004,14 +1004,14 @@ static int reloc_gpu_chain(struct reloc_cache *cache)
 	GEM_BUG_ON(cache->rq_size + RELOC_TAIL > PAGE_SIZE  / sizeof(u32));
 	cmd = cache->rq_cmd + cache->rq_size;
 	*cmd++ = MI_ARB_CHECK;
-	if (cache->gen >= 8) {
+	if (cache->gen >= 8)
 		*cmd++ = MI_BATCH_BUFFER_START_GEN8;
-		*cmd++ = lower_32_bits(batch->node.start);
-		*cmd++ = upper_32_bits(batch->node.start);
-	} else {
+	else if (cache->gen >= 6)
 		*cmd++ = MI_BATCH_BUFFER_START;
-		*cmd++ = lower_32_bits(batch->node.start);
-	}
+	else
+		*cmd++ = MI_BATCH_BUFFER_START | MI_BATCH_GTT;
+	*cmd++ = lower_32_bits(batch->node.start);
+	*cmd++ = upper_32_bits(batch->node.start);
 	i915_gem_object_flush_map(cache->rq_vma->obj);
 	i915_gem_object_unpin_map(cache->rq_vma->obj);
 	cache->rq_vma = NULL;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
