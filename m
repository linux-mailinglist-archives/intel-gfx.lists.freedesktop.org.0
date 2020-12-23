Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F5952E1C32
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Dec 2020 13:21:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61FCA6E0DB;
	Wed, 23 Dec 2020 12:21:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EF2C6E0DB
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Dec 2020 12:20:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23413170-1500050 
 for multiple; Wed, 23 Dec 2020 12:20:52 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Dec 2020 12:20:50 +0000
Message-Id: <20201223122051.4624-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/gt: Prefer recycling an idle fence
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

If we want to reuse a fence that is in active use by the GPU, we have to
wait an uncertain amount of time, but if we reuse an inactive fence, we
can change it right away. Loop through the list of available fences
twice, ignoring any active fences on the first pass.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c | 22 ++++++++++++++++++--
 1 file changed, 20 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
index 7fb36b12fe7a..a357bb431815 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
@@ -320,13 +320,31 @@ void i915_vma_revoke_fence(struct i915_vma *vma)
 		fence_write(fence);
 }
 
+static bool fence_is_active(const struct i915_fence_reg *fence)
+{
+	return fence->vma && i915_vma_is_active(fence->vma);
+}
+
 static struct i915_fence_reg *fence_find(struct i915_ggtt *ggtt)
 {
-	struct i915_fence_reg *fence;
+	struct i915_fence_reg *active = NULL;
+	struct i915_fence_reg *fence, *fn;
 
-	list_for_each_entry(fence, &ggtt->fence_list, link) {
+	list_for_each_entry_safe(fence, fn, &ggtt->fence_list, link) {
 		GEM_BUG_ON(fence->vma && fence->vma->fence != fence);
 
+		if (fence == active) /* now seen this fence twice */
+			active = ERR_PTR(-EAGAIN);
+
+		/* Prefer idle fences so we do not have to wait on the GPU */
+		if (active != ERR_PTR(-EAGAIN) && fence_is_active(fence)) {
+			if (!active)
+				active = fence;
+
+			list_move_tail(&fence->link, &ggtt->fence_list);
+			continue;
+		}
+
 		if (atomic_read(&fence->pin_count))
 			continue;
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
