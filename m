Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EABA1C50EA
	for <lists+intel-gfx@lfdr.de>; Tue,  5 May 2020 10:47:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E63F86E57E;
	Tue,  5 May 2020 08:46:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 265BC6E57E
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 May 2020 08:46:33 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21115079-1500050 
 for <intel-gfx@lists.freedesktop.org>; Tue, 05 May 2020 09:46:32 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 May 2020 09:46:29 +0100
Message-Id: <20200505084629.31365-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915/execlists: Record the active CCID from
 before reset
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

If we cannot trust the reset will flush out the CS event queue such that
process_csb() reports an accurate view of HW, we will need to search the
active and pending contexts to determine which was actually running at
the time we issued the reset.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_types.h | 5 +++++
 drivers/gpu/drm/i915/gt/intel_lrc.c          | 4 +++-
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index 6c676774dcd9..b1048f039552 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -179,6 +179,11 @@ struct intel_engine_execlists {
 	 */
 	u32 error_interrupt;
 
+	/**
+	 * @reset_ccid: Active CCID [EXECLISTS_STATUS_HI] at the time of reset
+	 */
+	u32 reset_ccid;
+
 	/**
 	 * @no_priolist: priority lists disabled
 	 */
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index c00366387b54..3ff81c89fe01 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -4074,6 +4074,8 @@ static void execlists_reset_prepare(struct intel_engine_cs *engine)
 	 */
 	ring_set_paused(engine, 1);
 	intel_engine_stop_cs(engine);
+
+	engine->execlists.reset_ccid = active_ccid(engine);
 }
 
 static void __reset_stop_ring(u32 *regs, const struct intel_engine_cs *engine)
@@ -4116,7 +4118,7 @@ static void __execlists_reset(struct intel_engine_cs *engine, bool stalled)
 	 * its request, it was still running at the time of the
 	 * reset and will have been clobbered.
 	 */
-	rq = execlists_active(execlists);
+	rq = active_context(engine, engine->execlists.reset_ccid);
 	if (!rq)
 		goto unwind;
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
