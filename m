Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97AB114EB99
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 12:17:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C58D76FB02;
	Fri, 31 Jan 2020 11:17:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 557916FB02
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 11:17:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20070980-1500050 
 for multiple; Fri, 31 Jan 2020 11:17:12 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 31 Jan 2020 11:17:11 +0000
Message-Id: <20200131111711.2546105-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200131081543.2251298-2-chris@chris-wilson.co.uk>
References: <20200131081543.2251298-2-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Also wait for the scratch
 buffer to be bound
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

Since PIN_GLOBAL is no longer guaranteed to be synchronous, we must no
forget to include a wait-for-vma prior to execution.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c    | 10 ++++++++++
 drivers/gpu/drm/i915/gt/selftest_workarounds.c |  9 +++++++++
 2 files changed, 19 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 5a7db279f702..8d7c3191137c 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1612,6 +1612,16 @@ static int engine_wa_list_verify(struct intel_context *ce,
 		goto err_vma;
 	}
 
+	i915_vma_lock(vma);
+	err = i915_request_await_object(rq, vma->obj, true);
+	if (err == 0)
+		err = i915_vma_move_to_active(vma, rq, EXEC_OBJECT_WRITE);
+	i915_vma_unlock(vma);
+	if (err) {
+		i915_request_add(rq);
+		goto err_vma;
+	}
+
 	err = wa_list_srm(rq, wal, vma);
 	if (err)
 		goto err_vma;
diff --git a/drivers/gpu/drm/i915/gt/selftest_workarounds.c b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
index ac1921854cbf..5ed323254ee1 100644
--- a/drivers/gpu/drm/i915/gt/selftest_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
@@ -583,6 +583,15 @@ static int check_dirty_whitelist(struct intel_context *ce)
 		if (err)
 			goto err_request;
 
+		i915_vma_lock(scratch);
+		err = i915_request_await_object(rq, scratch->obj, true);
+		if (err == 0)
+			err = i915_vma_move_to_active(scratch, rq,
+						      EXEC_OBJECT_WRITE);
+		i915_vma_unlock(scratch);
+		if (err)
+			goto err_request;
+
 		err = engine->emit_bb_start(rq,
 					    batch->node.start, PAGE_SIZE,
 					    0);
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
