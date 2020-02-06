Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EB58154D85
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2020 21:49:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7A576E3D8;
	Thu,  6 Feb 2020 20:49:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C0CE6FB49
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Feb 2020 20:49:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20141830-1500050 
 for multiple; Thu, 06 Feb 2020 20:49:16 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  6 Feb 2020 20:49:12 +0000
Message-Id: <20200206204915.2636606-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/4] drm/i915/gt: Prevent queuing retire workers
 on the virtual engine
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

Virtual engines are fleeting. They carry a reference count and may be freed
when their last request is retired. This makes them unsuitable for the
task of housing engine->retire.work so assert that it is not used.

Tvrtko tracked down an instance where we did indeed violate this rule.
In virtual_submit_request, we flush a completed request directly with
__i915_request_submit and this causes us to queue that request on the
veng's breadcrumb list and signal it. Leading us down a path where we
should not attach the retire.

Reported-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Fixes: dc93c9b69315 ("drm/i915/gt: Schedule request retirement when signaler idles")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_breadcrumbs.c | 3 +++
 drivers/gpu/drm/i915/gt/intel_gt_requests.c | 3 +++
 2 files changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
index 0ba524a414c6..cbad7fe722ce 100644
--- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
+++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
@@ -136,6 +136,9 @@ static void add_retire(struct intel_breadcrumbs *b, struct intel_timeline *tl)
 	struct intel_engine_cs *engine =
 		container_of(b, struct intel_engine_cs, breadcrumbs);
 
+	if (unlikely(intel_engine_is_virtual(engine)))
+		engine = intel_virtual_engine_get_sibling(engine, 0);
+
 	intel_engine_add_retire(engine, tl);
 }
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_requests.c b/drivers/gpu/drm/i915/gt/intel_gt_requests.c
index 7ef1d37970f6..8a5054f21bf8 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_requests.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_requests.c
@@ -99,6 +99,9 @@ static bool add_retire(struct intel_engine_cs *engine,
 void intel_engine_add_retire(struct intel_engine_cs *engine,
 			     struct intel_timeline *tl)
 {
+	/* We don't deal well with the engine disappearing beneath us */
+	GEM_BUG_ON(intel_engine_is_virtual(engine));
+
 	if (add_retire(engine, tl))
 		schedule_work(&engine->retire_work);
 }
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
