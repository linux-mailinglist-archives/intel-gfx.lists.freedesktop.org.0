Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 419A812546D
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 22:14:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06B766E153;
	Wed, 18 Dec 2019 21:14:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F03986E153
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Dec 2019 21:14:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19626060-1500050 
 for multiple; Wed, 18 Dec 2019 21:14:40 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Dec 2019 21:14:38 +0000
Message-Id: <20191218211438.4009490-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Schedule request retirement when
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
---
 drivers/gpu/drm/i915/gt/intel_breadcrumbs.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

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
 
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
