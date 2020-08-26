Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 75252252FD4
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Aug 2020 15:29:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD9926EA75;
	Wed, 26 Aug 2020 13:28:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5C3C6EA69
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Aug 2020 13:28:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22244734-1500050 
 for multiple; Wed, 26 Aug 2020 14:28:14 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Aug 2020 14:27:42 +0100
Message-Id: <20200826132811.17577-10-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200826132811.17577-1-chris@chris-wilson.co.uk>
References: <20200826132811.17577-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/39] drm/i915: Cancel outstanding work after
 disabling heartbeats on an engine
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
Cc: stable@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We only allow persistent requests to remain on the GPU past the closure
of their containing context (and process) so long as they are continuously
checked for hangs or allow other requests to preempt them, as we need to
ensure forward progress of the system. If we allow persistent contexts
to remain on the system after the the hangcheck mechanism is disabled,
the system may grind to a halt. On disabling the mechanism, we sent a
pulse along the engine to remove all executing contexts from the engine
which would check for hung contexts -- but we did not prevent those
contexts from being resubmitted if they survived the final hangcheck.

Fixes: 9a40bddd47ca ("drm/i915/gt: Expose heartbeat interval via sysfs")
Testcase: igt/gem_ctx_persistence/heartbeat-stop
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: <stable@vger.kernel.org> # v5.7+
---
 drivers/gpu/drm/i915/gt/intel_engine.h | 9 +++++++++
 drivers/gpu/drm/i915/i915_request.c    | 5 +++++
 2 files changed, 14 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
index 08e2c000dcc3..7c3a1012e702 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine.h
@@ -337,4 +337,13 @@ intel_engine_has_preempt_reset(const struct intel_engine_cs *engine)
 	return intel_engine_has_preemption(engine);
 }
 
+static inline bool
+intel_engine_has_heartbeat(const struct intel_engine_cs *engine)
+{
+	if (!IS_ACTIVE(CONFIG_DRM_I915_HEARTBEAT_INTERVAL))
+		return false;
+
+	return READ_ONCE(engine->props.heartbeat_interval_ms);
+}
+
 #endif /* _INTEL_RINGBUFFER_H_ */
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index a931b8b571d1..c187e1ec0278 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -542,8 +542,13 @@ bool __i915_request_submit(struct i915_request *request)
 	if (i915_request_completed(request))
 		goto xfer;
 
+	if (unlikely(intel_context_is_closed(request->context) &&
+		     !intel_engine_has_heartbeat(engine)))
+		intel_context_set_banned(request->context);
+
 	if (unlikely(intel_context_is_banned(request->context)))
 		i915_request_set_error_once(request, -EIO);
+
 	if (unlikely(fatal_error(request->fence.error)))
 		__i915_request_skip(request);
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
