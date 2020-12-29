Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DE032E706B
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Dec 2020 13:03:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74CD98989F;
	Tue, 29 Dec 2020 12:03:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8ADD189023
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Dec 2020 12:02:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23455194-1500050 
 for multiple; Tue, 29 Dec 2020 12:01:52 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Dec 2020 12:01:26 +0000
Message-Id: <20201229120145.26045-37-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201229120145.26045-1-chris@chris-wilson.co.uk>
References: <20201229120145.26045-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 37/56] drm/i915/gt: Specify a deadline for the
 heartbeat
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

As we know when we expect the heartbeat to be checked for completion,
pass this information along as its deadline. We still do not complain if
the deadline is missed, at least until we have tried a few times, but it
will allow for quicker hang detection on systems where deadlines are
adhered to.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
index 495e8d5e2bf4..0eb4a07b29b0 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
@@ -66,6 +66,16 @@ static void heartbeat_commit(struct i915_request *rq,
 	__i915_request_queue(rq, attr);
 }
 
+static void set_heartbeat_deadline(struct intel_engine_cs *engine,
+				   struct i915_request *rq)
+{
+	unsigned long interval;
+
+	interval = READ_ONCE(engine->props.heartbeat_interval_ms);
+	if (interval)
+		i915_request_set_deadline(rq, ktime_get() + (interval << 20));
+}
+
 static void show_heartbeat(const struct i915_request *rq,
 			   struct intel_engine_cs *engine)
 {
@@ -131,6 +141,8 @@ static void heartbeat(struct work_struct *wrk)
 
 			local_bh_disable();
 			i915_request_set_priority(rq, attr.priority);
+			if (attr.priority == I915_PRIORITY_BARRIER)
+				i915_request_set_deadline(rq, 0);
 			local_bh_enable();
 		} else {
 			if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
@@ -162,6 +174,7 @@ static void heartbeat(struct work_struct *wrk)
 	if (IS_ERR(rq))
 		goto unlock;
 
+	set_heartbeat_deadline(engine, rq);
 	heartbeat_commit(rq, &attr);
 
 unlock:
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
