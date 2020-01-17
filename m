Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 44D4C1408F7
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 12:33:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5D896F518;
	Fri, 17 Jan 2020 11:33:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 203766F518
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2020 11:33:38 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19914919-1500050 
 for multiple; Fri, 17 Jan 2020 11:33:01 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Jan 2020 11:32:59 +0000
Message-Id: <20200117113259.3023890-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200117101314.2897102-1-chris@chris-wilson.co.uk>
References: <20200117101314.2897102-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Report the currently active
 execlists request
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

Since commit 22b7a426bbe1 ("drm/i915/execlists: Preempt-to-busy"), we
prune the engine->active.requests list prior to preemption, thus
removing the trace of the currently executing request. If that request
hangs rather than be preempted, we conclude that no active request was
on the GPU. Fortunately, this only impacts our debugging, and not our
means of hang detection or recovery.

v2: Use from to check the current iterator before continuing, and report
active as NULL if the current request is already completed.

References: 22b7a426bbe1 ("drm/i915/execlists: Preempt-to-busy")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 06ff7695fa29..2d0ef5fc6748 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1657,6 +1657,23 @@ intel_engine_find_active_request(struct intel_engine_cs *engine)
 	 * we only care about the snapshot of this moment.
 	 */
 	lockdep_assert_held(&engine->active.lock);
+
+	rcu_read_lock();
+	request = execlists_active(&engine->execlists);
+	if (request) {
+		struct intel_timeline *tl = request->context->timeline;
+
+		list_for_each_entry_from_reverse(request, &tl->requests, link) {
+			if (i915_request_completed(request))
+				break;
+
+			active = request;
+		}
+	}
+	rcu_read_unlock();
+	if (active)
+		return active;
+
 	list_for_each_entry(request, &engine->active.requests, sched.link) {
 		if (i915_request_completed(request))
 			continue;
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
