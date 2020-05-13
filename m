Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1233C1D0D1B
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2020 11:50:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DB9889F77;
	Wed, 13 May 2020 09:50:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E54E89F77
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 May 2020 09:50:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21184201-1500050 
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 May 2020 10:50:17 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 May 2020 10:50:16 +0100
Message-Id: <20200513095016.10882-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915/gt: Reset execlists registers before HWSP
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

Upon gt resume, we first poison then sanitize the engine. However, our
testing shows that gen9 will very rarely retain the poisoned value from
the HWSP mappings of the execlists status registers. This suggests that
it is reading back from the HWSP, so rejig the register reset.

v2: Maybe RING_CONTEXT_STATUS_PTR is write masked.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Acked-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 19 +++++++++++++------
 1 file changed, 13 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 15716e4d6b76..21db0566dad7 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -3938,6 +3938,14 @@ static void reset_csb_pointers(struct intel_engine_cs *engine)
 
 	ring_set_paused(engine, 0);
 
+	/*
+	 * Sometimes Icelake forgets to reset its pointers on a GPU reset.
+	 * Bludgeon them with a mmio update to be sure.
+	 */
+	ENGINE_WRITE(engine, RING_CONTEXT_STATUS_PTR,
+		     0xffff << 16 | reset_value << 8 | reset_value);
+	ENGINE_POSTING_READ(engine, RING_CONTEXT_STATUS_PTR);
+
 	/*
 	 * After a reset, the HW starts writing into CSB entry [0]. We
 	 * therefore have to set our HEAD pointer back one entry so that
@@ -3951,16 +3959,15 @@ static void reset_csb_pointers(struct intel_engine_cs *engine)
 	WRITE_ONCE(*execlists->csb_write, reset_value);
 	wmb(); /* Make sure this is visible to HW (paranoia?) */
 
-	/*
-	 * Sometimes Icelake forgets to reset its pointers on a GPU reset.
-	 * Bludgeon them with a mmio update to be sure.
-	 */
+	invalidate_csb_entries(&execlists->csb_status[0],
+			       &execlists->csb_status[reset_value]);
+
+	/* Once more for luck and our trusty paranoia */
 	ENGINE_WRITE(engine, RING_CONTEXT_STATUS_PTR,
 		     reset_value << 8 | reset_value);
 	ENGINE_POSTING_READ(engine, RING_CONTEXT_STATUS_PTR);
 
-	invalidate_csb_entries(&execlists->csb_status[0],
-			       &execlists->csb_status[reset_value]);
+	GEM_BUG_ON(READ_ONCE(*execlists->csb_write) != reset_value);
 }
 
 static void execlists_sanitize(struct intel_engine_cs *engine)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
