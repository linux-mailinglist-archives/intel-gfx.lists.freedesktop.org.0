Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B477A2FB58E
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jan 2021 12:08:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 047C46E841;
	Tue, 19 Jan 2021 11:08:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA1D56E841
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jan 2021 11:08:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23637622-1500050 
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jan 2021 11:08:03 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Jan 2021 11:08:00 +0000
Message-Id: <20210119110802.22228-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210119110802.22228-1-chris@chris-wilson.co.uk>
References: <20210119110802.22228-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 4/6] drm/i915/gt: Disable the ring before resetting
 HEAD/TAIL
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

During the reset of ring submission, we first stop the engine by
clearing the HEAD/TAIL and marking the ring as disabled. However, it
would be safer to disable the ring (after emptying) before resetting the
HEAD/TAIL.

Suggested-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_ring_submission.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 44159595d909..8a5314b97b04 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -301,13 +301,17 @@ static void xcs_sanitize(struct intel_engine_cs *engine)
 
 static bool stop_ring(struct intel_engine_cs *engine)
 {
+	/* Empty the ring by skipping to the end */
 	ENGINE_WRITE_FW(engine, RING_HEAD, ENGINE_READ_FW(engine, RING_TAIL));
-
-	ENGINE_WRITE_FW(engine, RING_HEAD, 0);
-	ENGINE_WRITE_FW(engine, RING_TAIL, 0);
+	ENGINE_POSTING_READ(engine, RING_HEAD);
 
 	/* The ring must be empty before it is disabled */
 	ENGINE_WRITE_FW(engine, RING_CTL, 0);
+	ENGINE_POSTING_READ(engine, RING_CTL);
+
+	/* Then reset the disabled ring */
+	ENGINE_WRITE_FW(engine, RING_HEAD, 0);
+	ENGINE_WRITE_FW(engine, RING_TAIL, 0);
 
 	return (ENGINE_READ_FW(engine, RING_HEAD) & HEAD_ADDR) == 0;
 }
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
