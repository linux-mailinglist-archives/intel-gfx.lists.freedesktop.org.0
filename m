Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F270E2E9452
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Jan 2021 12:52:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53CA789D57;
	Mon,  4 Jan 2021 11:52:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D07A89C2C
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Jan 2021 11:52:06 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23495865-1500050 
 for multiple; Mon, 04 Jan 2021 11:51:51 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  4 Jan 2021 11:51:40 +0000
Message-Id: <20210104115145.24460-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/6] drm/i915/selftests: Set error returns
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

A few missed PTR_ERR() upon create_gang() errors.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/selftest_execlists.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_execlists.c b/drivers/gpu/drm/i915/gt/selftest_execlists.c
index 080b63000a4e..3854da5a4e65 100644
--- a/drivers/gpu/drm/i915/gt/selftest_execlists.c
+++ b/drivers/gpu/drm/i915/gt/selftest_execlists.c
@@ -2658,8 +2658,10 @@ static int create_gang(struct intel_engine_cs *engine,
 		goto err_obj;
 
 	cs = i915_gem_object_pin_map(obj, I915_MAP_WC);
-	if (IS_ERR(cs))
+	if (IS_ERR(cs)) {
+		err = PTR_ERR(cs);
 		goto err_obj;
+	}
 
 	/* Semaphore target: spin until zero */
 	*cs++ = MI_ARB_ON_OFF | MI_ARB_ENABLE;
@@ -2686,8 +2688,10 @@ static int create_gang(struct intel_engine_cs *engine,
 	i915_gem_object_unpin_map(obj);
 
 	rq = intel_context_create_request(ce);
-	if (IS_ERR(rq))
+	if (IS_ERR(rq)) {
+		err = PTR_ERR(rq);
 		goto err_obj;
+	}
 
 	rq->batch = i915_vma_get(vma);
 	i915_request_get(rq);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
