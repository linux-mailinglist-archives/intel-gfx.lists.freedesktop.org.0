Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B3731257A9
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2019 00:21:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D0556EAA0;
	Wed, 18 Dec 2019 23:21:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE7256EAA0
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Dec 2019 23:21:33 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19626717-1500050 
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Dec 2019 23:21:30 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Dec 2019 23:21:29 +0000
Message-Id: <20191218232129.4065243-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915/gt: Schedule request retirement when
 signaler idles
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

Very similar to commit 4f88f8747fa4 ("drm/i915/gt: Schedule request
retirement when timeline idles"), but this time instead of coupling into
the execlists CS event interrupt, we couple into the breadcrumb
interrupt and queue a timeline's retirement when the last signaler is
completed. This should allow us to more rapidly park ringbuffer
submission, and so help reduce power consumption on older systems.

References: 4f88f8747fa4 ("drm/i915/gt: Schedule request retirement when timeline idles")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Reviewed-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_breadcrumbs.c | 6 +++++-
 drivers/gpu/drm/i915/gt/intel_lrc.c         | 2 +-
 2 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
index 5fa4d621528e..4f491791b4ba 100644
--- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
+++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
@@ -29,6 +29,7 @@
 #include "i915_drv.h"
 #include "i915_trace.h"
 #include "intel_gt_pm.h"
+#include "intel_gt_requests.h"
 
 static void irq_enable(struct intel_engine_cs *engine)
 {
@@ -179,8 +180,11 @@ static void signal_irq_work(struct irq_work *work)
 		if (!list_is_first(pos, &ce->signals)) {
 			/* Advance the list to the first incomplete request */
 			__list_del_many(&ce->signals, pos);
-			if (&ce->signals == pos) /* now empty */
+			if (&ce->signals == pos) { /* now empty */
 				list_del_init(&ce->signal_link);
+				intel_engine_add_retire(ce->engine,
+							ce->timeline);
+			}
 		}
 	}
 
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 4db54fd6a2fe..56cf71d8bbda 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -4511,8 +4511,8 @@ intel_execlists_create_virtual(struct i915_gem_context *ctx,
 
 	intel_engine_init_active(&ve->base, ENGINE_VIRTUAL);
 	intel_engine_init_breadcrumbs(&ve->base);
-
 	intel_engine_init_execlists(&ve->base);
+	intel_engine_init_retire(&ve->base);
 
 	ve->base.cops = &virtual_context_ops;
 	ve->base.request_alloc = execlists_request_alloc;
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
