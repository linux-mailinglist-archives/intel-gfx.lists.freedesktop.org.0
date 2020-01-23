Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 878F81473FD
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 23:45:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FC0F6FDBB;
	Thu, 23 Jan 2020 22:45:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B8F76FDBB
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jan 2020 22:45:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19988182-1500050 
 for multiple; Thu, 23 Jan 2020 22:45:01 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Jan 2020 22:44:59 +0000
Message-Id: <20200123224459.38128-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200123224459.38128-1-chris@chris-wilson.co.uk>
References: <20200123224459.38128-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Wait on vma activity before
 taking the mutex
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

Optimistically wait for the prior vma activity before taking the mutex
to minimise the mutex hold time while unbinding. We will then verify the
vma is idle with a second wait under the mutex to ensure it is safe to
unbind.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/i915_vma.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 4999882fbceb..84e03da0d5f9 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -1279,16 +1279,21 @@ int i915_vma_unbind(struct i915_vma *vma)
 		/* XXX not always required: nop_clear_range */
 		wakeref = intel_runtime_pm_get(&vm->i915->runtime_pm);
 
+	/* Optimistic wait before taking the mutex */
+	err = i915_vma_sync(vma);
+	if (err)
+		goto out_rpm;
+
 	err = mutex_lock_interruptible(&vm->mutex);
 	if (err)
-		return err;
+		goto out_rpm;
 
 	err = __i915_vma_unbind(vma);
 	mutex_unlock(&vm->mutex);
 
+out_rpm:
 	if (wakeref)
 		intel_runtime_pm_put(&vm->i915->runtime_pm, wakeref);
-
 	return err;
 }
 
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
