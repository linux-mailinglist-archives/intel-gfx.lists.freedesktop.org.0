Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C7E9230D96
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jul 2020 17:21:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BDD36E33D;
	Tue, 28 Jul 2020 15:21:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3EF96E33D
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jul 2020 15:21:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21959491-1500050 
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jul 2020 16:21:43 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 28 Jul 2020 16:21:44 +0100
Message-Id: <20200728152144.1100-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915: Filter wake_flags passed to
 default_wake_function
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

The flags passed to the wait_entry.func are passed onwards to
try_to_wake_up(), which has a very particular interpretation for its
wake_flags. In particular, beyond the published WF_SYNC, it has a few
internal flags as well. Since we passed the fence->error down the chain
via the flags argument, these ended up in the default_wake_function
confusing the kernel/sched.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2110
Fixes: ef4688497512 ("drm/i915: Propagate fence errors")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: <stable@vger.kernel.org> # v5.4+
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/i915_sw_fence.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_sw_fence.c b/drivers/gpu/drm/i915/i915_sw_fence.c
index 295b9829e2da..4cd2038cbe35 100644
--- a/drivers/gpu/drm/i915/i915_sw_fence.c
+++ b/drivers/gpu/drm/i915/i915_sw_fence.c
@@ -164,9 +164,13 @@ static void __i915_sw_fence_wake_up_all(struct i915_sw_fence *fence,
 
 		do {
 			list_for_each_entry_safe(pos, next, &x->head, entry) {
-				pos->func(pos,
-					  TASK_NORMAL, fence->error,
-					  &extra);
+				int wake_flags;
+
+				wake_flags = fence->error;
+				if (pos->func == autoremove_wake_function)
+					wake_flags = 0;
+
+				pos->func(pos, TASK_NORMAL, wake_flags, &extra);
 			}
 
 			if (list_empty(&extra))
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
