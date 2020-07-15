Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 81C6A220C2B
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2020 13:52:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 890AC6EAD0;
	Wed, 15 Jul 2020 11:52:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 867E26EACB
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jul 2020 11:52:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21826164-1500050 
 for multiple; Wed, 15 Jul 2020 12:51:59 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Jul 2020 12:51:37 +0100
Message-Id: <20200715115147.11866-56-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200715115147.11866-1-chris@chris-wilson.co.uk>
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 56/66] drm/i915/gt: Specify a deadline for the
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
index 9fdc8223007f..41199254b2b5 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
@@ -54,6 +54,16 @@ static void heartbeat_commit(struct i915_request *rq,
 	local_bh_enable();
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
@@ -119,6 +129,8 @@ static void heartbeat(struct work_struct *wrk)
 
 			local_bh_disable();
 			i915_request_set_priority(rq, attr.priority);
+			if (attr.priority == I915_PRIORITY_BARRIER)
+				i915_request_set_deadline(rq, 0);
 			local_bh_enable();
 		} else {
 			if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
@@ -155,6 +167,7 @@ static void heartbeat(struct work_struct *wrk)
 	if (engine->i915->params.enable_hangcheck)
 		engine->heartbeat.systole = i915_request_get(rq);
 
+	set_heartbeat_deadline(engine, rq);
 	heartbeat_commit(rq, &attr);
 
 unlock:
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
