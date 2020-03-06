Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1051517BCBD
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 13:31:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EF406ECF4;
	Fri,  6 Mar 2020 12:31:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9B1789CD7
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Mar 2020 12:30:59 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Mar 2020 13:30:41 +0100
Message-Id: <20200306123046.2797797-12-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200306123046.2797797-1-maarten.lankhorst@linux.intel.com>
References: <20200306123046.2797797-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 12/17] drm/i915: Kill last user of
 intel_context_create_request outside of selftests
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

Instead of using intel_context_create_request(), use intel_context_pin()
and i915_create_request directly.

Now all those calls are gone outside of selftests. :)

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 43 ++++++++++++++-------
 1 file changed, 29 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 7be71a1a5719..bb9f6e586530 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1707,6 +1707,7 @@ static int engine_wa_list_verify(struct intel_context *ce,
 	const struct i915_wa *wa;
 	struct i915_request *rq;
 	struct i915_vma *vma;
+	struct i915_gem_ww_ctx ww;
 	unsigned int i;
 	u32 *results;
 	int err;
@@ -1719,29 +1720,34 @@ static int engine_wa_list_verify(struct intel_context *ce,
 		return PTR_ERR(vma);
 
 	intel_engine_pm_get(ce->engine);
-	rq = intel_context_create_request(ce);
-	intel_engine_pm_put(ce->engine);
+	i915_gem_ww_ctx_init(&ww, false);
+retry:
+	err = i915_gem_object_lock(vma->obj, &ww);
+	if (err == 0)
+		err = intel_context_pin_ww(ce, &ww);
+	if (err)
+		goto err_pm;
+
+	rq = i915_request_create(ce);
 	if (IS_ERR(rq)) {
 		err = PTR_ERR(rq);
-		goto err_vma;
+		goto err_unpin;
 	}
 
-	i915_vma_lock(vma);
 	err = i915_request_await_object(rq, vma->obj, true);
 	if (err == 0)
 		err = i915_vma_move_to_active(vma, rq, EXEC_OBJECT_WRITE);
-	i915_vma_unlock(vma);
-	if (err) {
-		i915_request_add(rq);
-		goto err_vma;
-	}
-
-	err = wa_list_srm(rq, wal, vma);
-	if (err)
-		goto err_vma;
+	if (err == 0)
+		err = wa_list_srm(rq, wal, vma);
 
 	i915_request_get(rq);
+	if (err)
+		i915_request_set_error_once(rq, err);
 	i915_request_add(rq);
+
+	if (err)
+		goto err_rq;
+
 	if (i915_request_wait(rq, 0, HZ / 5) < 0) {
 		err = -ETIME;
 		goto err_rq;
@@ -1766,7 +1772,16 @@ static int engine_wa_list_verify(struct intel_context *ce,
 
 err_rq:
 	i915_request_put(rq);
-err_vma:
+err_unpin:
+	intel_context_unpin(ce);
+err_pm:
+	if (err == -EDEADLK) {
+		err = i915_gem_ww_ctx_backoff(&ww);
+		if (!err)
+			goto retry;
+	}
+	i915_gem_ww_ctx_fini(&ww);
+	intel_engine_pm_put(ce->engine);
 	i915_vma_unpin(vma);
 	i915_vma_put(vma);
 	return err;
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
