Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82E222E7037
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Dec 2020 13:02:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C6698928D;
	Tue, 29 Dec 2020 12:02:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F20389023
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Dec 2020 12:01:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23455153-1500050 
 for multiple; Tue, 29 Dec 2020 12:01:47 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Dec 2020 12:00:53 +0000
Message-Id: <20201229120145.26045-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201229120145.26045-1-chris@chris-wilson.co.uk>
References: <20201229120145.26045-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/56] drm/i915/gt: Pull context closure check
 from request submit to schedule-in
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

We only need to evaluate the current status of the context when it is
scheduled in, we will force a reschedule when the context is closed
propagating the change to inflight contexts.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_execlists_submission.c | 4 ++++
 drivers/gpu/drm/i915/i915_request.c                  | 4 ----
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 18b23a332835..537d182f4a6f 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -522,6 +522,10 @@ __execlists_schedule_in(struct i915_request *rq)
 
 	intel_context_get(ce);
 
+	if (unlikely(intel_context_is_closed(ce) &&
+		     !intel_engine_has_heartbeat(engine)))
+		intel_context_set_banned(ce);
+
 	if (unlikely(intel_context_is_banned(ce)))
 		reset_active(rq, engine);
 
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 03ac6eead4db..3290e743ba43 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -546,10 +546,6 @@ bool __i915_request_submit(struct i915_request *request)
 	if (i915_request_completed(request))
 		goto xfer;
 
-	if (unlikely(intel_context_is_closed(request->context) &&
-		     !intel_engine_has_heartbeat(engine)))
-		intel_context_set_banned(request->context);
-
 	if (unlikely(intel_context_is_banned(request->context)))
 		i915_request_set_error_once(request, -EIO);
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
