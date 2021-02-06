Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EFBE311818
	for <lists+intel-gfx@lfdr.de>; Sat,  6 Feb 2021 02:20:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 623FF6F548;
	Sat,  6 Feb 2021 01:20:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B42686F542
 for <intel-gfx@lists.freedesktop.org>; Sat,  6 Feb 2021 01:20:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from build.alporthouse.com (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23803963-1500050 
 for <intel-gfx@lists.freedesktop.org>; Sat, 06 Feb 2021 01:20:20 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  6 Feb 2021 01:20:19 +0000
Message-Id: <20210206012019.27451-5-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210206012019.27451-1-chris@chris-wilson.co.uk>
References: <20210206012019.27451-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 5/5] drm/i915/gt: Only kick the scheduler on
 timeslice/preemption change
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

Kick the scheduler to allow it to see the timeslice duration change,
don't peek into execlists.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/sysfs_engines.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/sysfs_engines.c b/drivers/gpu/drm/i915/gt/sysfs_engines.c
index 57ef5383dd4e..70506f43d6be 100644
--- a/drivers/gpu/drm/i915/gt/sysfs_engines.c
+++ b/drivers/gpu/drm/i915/gt/sysfs_engines.c
@@ -222,9 +222,7 @@ timeslice_store(struct kobject *kobj, struct kobj_attribute *attr,
 		return -EINVAL;
 
 	WRITE_ONCE(engine->props.timeslice_duration_ms, duration);
-
-	if (execlists_active(&engine->execlists))
-		set_timer_ms(&engine->execlists.timer, duration);
+	intel_engine_kick_scheduler(engine);
 
 	return count;
 }
@@ -326,9 +324,7 @@ preempt_timeout_store(struct kobject *kobj, struct kobj_attribute *attr,
 		return -EINVAL;
 
 	WRITE_ONCE(engine->props.preempt_timeout_ms, timeout);
-
-	if (READ_ONCE(engine->execlists.pending[0]))
-		set_timer_ms(&engine->execlists.preempt, timeout);
+	intel_engine_kick_scheduler(engine);
 
 	return count;
 }
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
