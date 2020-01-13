Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3762813951D
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2020 16:46:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C8A16E0F6;
	Mon, 13 Jan 2020 15:46:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF1ED6E101
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jan 2020 15:46:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19863530-1500050 
 for multiple; Mon, 13 Jan 2020 15:45:57 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 13 Jan 2020 15:45:55 +0000
Message-Id: <20200113154555.1909639-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0.rc2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gem: Take local vma references for the
 parser
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

Take and hold a reference to each of the vma (and their objects) as we
process them with the cmdparser. This stops them being freed during the
work if the GEM execbuf is interrupted and the request we expected to
keep the objects alive is incomplete.

Fixes: 686c7c35abc2 ("drm/i915/gem: Asynchronous cmdparser")
Closes: https://gitlab.freedesktop.org/drm/intel/issues/970
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 37 ++++++++++++++++++-
 1 file changed, 36 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index d5a0f5ae4a8b..60c984e10c4a 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -1981,9 +1981,20 @@ static int __eb_parse(struct dma_fence_work *work)
 				       pw->trampoline);
 }
 
+static void __eb_parse_release(struct dma_fence_work *work)
+{
+	struct eb_parse_work *pw = container_of(work, typeof(*pw), base);
+
+	if (pw->trampoline)
+		i915_active_release(&pw->trampoline->active);
+	i915_active_release(&pw->shadow->active);
+	i915_active_release(&pw->batch->active);
+}
+
 static const struct dma_fence_work_ops eb_parse_ops = {
 	.name = "eb_parse",
 	.work = __eb_parse,
+	.release = __eb_parse_release,
 };
 
 static int eb_parse_pipeline(struct i915_execbuffer *eb,
@@ -1997,6 +2008,20 @@ static int eb_parse_pipeline(struct i915_execbuffer *eb,
 	if (!pw)
 		return -ENOMEM;
 
+	err = i915_active_acquire(&eb->batch->active);
+	if (err)
+		goto err_free;
+
+	err = i915_active_acquire(&shadow->active);
+	if (err)
+		goto err_batch;
+
+	if (trampoline) {
+		err = i915_active_acquire(&trampoline->active);
+		if (err)
+			goto err_shadow;
+	}
+
 	dma_fence_work_init(&pw->base, &eb_parse_ops);
 
 	pw->engine = eb->engine;
@@ -2006,7 +2031,9 @@ static int eb_parse_pipeline(struct i915_execbuffer *eb,
 	pw->shadow = shadow;
 	pw->trampoline = trampoline;
 
-	dma_resv_lock(pw->batch->resv, NULL);
+	err = dma_resv_lock_interruptible(pw->batch->resv, NULL);
+	if (err)
+		goto err_trampoline;
 
 	err = dma_resv_reserve_shared(pw->batch->resv, 1);
 	if (err)
@@ -2034,6 +2061,14 @@ static int eb_parse_pipeline(struct i915_execbuffer *eb,
 
 err_batch_unlock:
 	dma_resv_unlock(pw->batch->resv);
+err_trampoline:
+	if (trampoline)
+		i915_active_release(&trampoline->active);
+err_shadow:
+	i915_active_release(&shadow->active);
+err_batch:
+	i915_active_release(&eb->batch->active);
+err_free:
 	kfree(pw);
 	return err;
 }
-- 
2.25.0.rc2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
