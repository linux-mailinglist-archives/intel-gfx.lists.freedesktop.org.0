Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B103C2C24C3
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Nov 2020 12:42:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58DBE6E28B;
	Tue, 24 Nov 2020 11:42:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 035596E233
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Nov 2020 11:42:29 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23090928-1500050 
 for multiple; Tue, 24 Nov 2020 11:42:21 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Nov 2020 11:42:10 +0000
Message-Id: <20201124114219.29020-7-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201124114219.29020-1-chris@chris-wilson.co.uk>
References: <20201124114219.29020-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 07/16] drm/i915/gt: Check for a completed last
 request once
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

Pull the repeated check for the last active request being completed to a
single spot, when deciding whether or not execlist preemption is
required.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 15 ++++-----------
 1 file changed, 4 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index cf11cbac241b..43703efb36d1 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -2141,12 +2141,9 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 	 */
 
 	if ((last = *active)) {
-		if (need_preempt(engine, last, rb)) {
-			if (i915_request_completed(last)) {
-				tasklet_hi_schedule(&execlists->tasklet);
-				return;
-			}
-
+		if (i915_request_completed(last)) {
+			goto check_secondary;
+		} else if (need_preempt(engine, last, rb)) {
 			ENGINE_TRACE(engine,
 				     "preempting last=%llx:%lld, prio=%d, hint=%d\n",
 				     last->fence.context,
@@ -2174,11 +2171,6 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 			last = NULL;
 		} else if (need_timeslice(engine, last, rb) &&
 			   timeslice_expired(execlists, last)) {
-			if (i915_request_completed(last)) {
-				tasklet_hi_schedule(&execlists->tasklet);
-				return;
-			}
-
 			ENGINE_TRACE(engine,
 				     "expired last=%llx:%lld, prio=%d, hint=%d, yield?=%s\n",
 				     last->fence.context,
@@ -2214,6 +2206,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 			 * we hopefully coalesce several updates into a single
 			 * submission.
 			 */
+check_secondary:
 			if (!list_is_last(&last->sched.link,
 					  &engine->active.requests)) {
 				/*
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
