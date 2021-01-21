Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 253422FF811
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jan 2021 23:39:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B3B56E933;
	Thu, 21 Jan 2021 22:39:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49AC76E933
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jan 2021 22:39:10 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23666021-1500050 
 for multiple; Thu, 21 Jan 2021 22:39:02 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 21 Jan 2021 22:39:02 +0000
Message-Id: <20210121223902.7890-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Only print an error if the resume
 fails after the reset
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

If we fail to stop the ring before the reset, we try the reset anyway.
Then we only report a failure if the engine fails to resume after the
reset, therefore we don't need to print a premature error message during
the prepare.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_ring_submission.c | 15 ++-------------
 1 file changed, 2 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index e4db4318f634..2d497ecdd433 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -333,8 +333,8 @@ static void reset_prepare(struct intel_engine_cs *engine)
 	ENGINE_TRACE(engine, "\n");
 	intel_engine_stop_cs(engine);
 
-	if (!stop_ring(engine)) {
-		/* G45 ring initialization often fails to reset head to zero */
+	/* G45 ring initialization often fails to reset head to zero */
+	if (!stop_ring(engine) && !stop_ring(engine))
 		ENGINE_TRACE(engine,
 			     "HEAD not reset to zero, "
 			     "{ CTL:%08x, HEAD:%08x, TAIL:%08x, START:%08x }\n",
@@ -342,17 +342,6 @@ static void reset_prepare(struct intel_engine_cs *engine)
 			     ENGINE_READ_FW(engine, RING_HEAD),
 			     ENGINE_READ_FW(engine, RING_TAIL),
 			     ENGINE_READ_FW(engine, RING_START));
-		if (!stop_ring(engine)) {
-			drm_err(&engine->i915->drm,
-				"failed to set %s head to zero "
-				"ctl %08x head %08x tail %08x start %08x\n",
-				engine->name,
-				ENGINE_READ_FW(engine, RING_CTL),
-				ENGINE_READ_FW(engine, RING_HEAD),
-				ENGINE_READ_FW(engine, RING_TAIL),
-				ENGINE_READ_FW(engine, RING_START));
-		}
-	}
 }
 
 static void reset_rewind(struct intel_engine_cs *engine, bool stalled)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
