Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A37D11916F2
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2020 17:52:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FE7A6E4E6;
	Tue, 24 Mar 2020 16:51:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8344A6E4DD
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Mar 2020 16:51:52 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Mar 2020 17:51:38 +0100
Message-Id: <20200324165146.1032624-13-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200324165146.1032624-1-maarten.lankhorst@linux.intel.com>
References: <20200324165146.1032624-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 13/21] drm/i915: Kill last user of
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
index e96cc7fa0936..d866f5903554 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1744,6 +1744,7 @@ static int engine_wa_list_verify(struct intel_context *ce,
 	const struct i915_wa *wa;
 	struct i915_request *rq;
 	struct i915_vma *vma;
+	struct i915_gem_ww_ctx ww;
 	unsigned int i;
 	u32 *results;
 	int err;
@@ -1756,29 +1757,34 @@ static int engine_wa_list_verify(struct intel_context *ce,
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
@@ -1803,7 +1809,16 @@ static int engine_wa_list_verify(struct intel_context *ce,
 
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
