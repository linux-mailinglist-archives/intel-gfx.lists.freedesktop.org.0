Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 560BD19A9F6
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Apr 2020 13:04:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D051C6E90F;
	Wed,  1 Apr 2020 11:04:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3C9A6E914
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Apr 2020 11:04:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20762758-1500050 
 for multiple; Wed, 01 Apr 2020 12:04:36 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Apr 2020 12:04:35 +0100
Message-Id: <20200401110435.30389-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200401110435.30389-1-chris@chris-wilson.co.uk>
References: <20200401110435.30389-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/execlists: Record the active CCID
 from before reset
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

If we cannot trust the reset will flush out the CS event queue such that
process_csb() reports an accurate view of HW, we will need to search the
active and pending contexts to determine which was actually running at
the time we issued the reset.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_engine_types.h | 5 +++++
 drivers/gpu/drm/i915/gt/intel_lrc.c          | 4 +++-
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index 80cdde712842..4804587442e7 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -166,6 +166,11 @@ struct intel_engine_execlists {
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
index f028114714cd..55bf3cdf3b38 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -3724,6 +3724,8 @@ static void execlists_reset_prepare(struct intel_engine_cs *engine)
 	 */
 	ring_set_paused(engine, 1);
 	intel_engine_stop_cs(engine);
+
+	engine->execlists.reset_ccid = active_ccid(engine);
 }
 
 static void reset_csb_pointers(struct intel_engine_cs *engine)
@@ -3798,7 +3800,7 @@ static void __execlists_reset(struct intel_engine_cs *engine, bool stalled)
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
