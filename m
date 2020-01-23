Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C031146F7F
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 18:21:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF3586E0FE;
	Thu, 23 Jan 2020 17:21:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B84F6FA2F
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jan 2020 17:21:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19985662-1500050 
 for multiple; Thu, 23 Jan 2020 17:20:58 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Jan 2020 17:20:56 +0000
Message-Id: <20200123172056.1443495-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Check activity on i915_vma after
 confirming pin_count==0
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

Only assert that the i915_vma is now idle if and only if no other pins
are present. If another user has the i915_vma pinned, they may submit
more work to the i915_vma skipping the vm->mutex used to serialise the
unbind. We need to wait again, if we want to continue and unbind this
vma.

However, if we own the i915_vma (we hold the vm->mutex for the unbind
and the pin_count is 0), we can assert that the vma remains idle as we
unbind.

Fixes: 2850748ef876 ("drm/i915: Pull i915_vma_pin under the vm->mutex")
Closes: https://gitlab.freedesktop.org/drm/intel/issues/530
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/i915_vma.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 306b951831fe..08b91e88c229 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -1202,13 +1202,12 @@ int __i915_vma_unbind(struct i915_vma *vma)
 	if (ret)
 		return ret;
 
-	GEM_BUG_ON(i915_vma_is_active(vma));
 	if (i915_vma_is_pinned(vma)) {
 		vma_print_allocator(vma, "is pinned");
 		return -EAGAIN;
 	}
-
 	GEM_BUG_ON(i915_vma_is_active(vma));
+
 	if (!drm_mm_node_allocated(&vma->node))
 		return 0;
 
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
