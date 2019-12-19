Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CFE0C127074
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2019 23:13:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E31E86EBA3;
	Thu, 19 Dec 2019 22:13:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 017386EBA3
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2019 22:13:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19639562-1500050 
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2019 22:13:45 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Dec 2019 22:13:44 +0000
Message-Id: <20191219221344.161523-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915/gt: Add breadcrumb retire to physical
 engine
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

Avoid adding the retire workers to the virtual engine so that we don't
end up in the unenviable situation of trying to free the virtual engine
while its worker remains active.

Fixes: dc93c9b69315 ("drm/i915/gt: Schedule request retirement when signaler idles")
Closes: https://gitlab.freedesktop.org/drm/intel/issues/867
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Acked-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_breadcrumbs.c | 11 +++++++++--
 drivers/gpu/drm/i915/gt/intel_lrc.c         |  1 -
 2 files changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
index 4f491791b4ba..2979f0fd9270 100644
--- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
+++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
@@ -131,6 +131,14 @@ __dma_fence_signal__notify(struct dma_fence *fence,
 	}
 }
 
+static void add_retire(struct intel_breadcrumbs *b, struct intel_timeline *tl)
+{
+	struct intel_engine_cs *engine =
+		container_of(b, struct intel_engine_cs, breadcrumbs);
+
+	intel_engine_add_retire(engine, tl);
+}
+
 static void signal_irq_work(struct irq_work *work)
 {
 	struct intel_breadcrumbs *b = container_of(work, typeof(*b), irq_work);
@@ -182,8 +190,7 @@ static void signal_irq_work(struct irq_work *work)
 			__list_del_many(&ce->signals, pos);
 			if (&ce->signals == pos) { /* now empty */
 				list_del_init(&ce->signal_link);
-				intel_engine_add_retire(ce->engine,
-							ce->timeline);
+				add_retire(b, ce->timeline);
 			}
 		}
 	}
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 56cf71d8bbda..31815d5e3b74 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -4512,7 +4512,6 @@ intel_execlists_create_virtual(struct i915_gem_context *ctx,
 	intel_engine_init_active(&ve->base, ENGINE_VIRTUAL);
 	intel_engine_init_breadcrumbs(&ve->base);
 	intel_engine_init_execlists(&ve->base);
-	intel_engine_init_retire(&ve->base);
 
 	ve->base.cops = &virtual_context_ops;
 	ve->base.request_alloc = execlists_request_alloc;
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
