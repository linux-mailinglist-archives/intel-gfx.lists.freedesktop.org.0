Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DEB22CF07F
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Dec 2020 16:12:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9239F6E1BE;
	Fri,  4 Dec 2020 15:12:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 440BC6E1A5
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Dec 2020 15:12:40 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23216193-1500050 
 for <intel-gfx@lists.freedesktop.org>; Fri, 04 Dec 2020 15:12:35 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Dec 2020 15:12:32 +0000
Message-Id: <20201204151234.19729-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201204151234.19729-1-chris@chris-wilson.co.uk>
References: <20201204151234.19729-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/4] drm/i915/gt: Cancel the preemption timeout on
 responding to it
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

We currently presume that the engine reset is successful, cancelling the
expired preemption timer in the process. However, engine resets can
fail, leaving the timeout still pending and we will then respond to the
timeout again next time the tasklet fires. What we want is for the
failed engine reset to be promoted to a full device reset, which is
kicked by the heartbeat once the engine stops processing events.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/1168
Fixes: 3a7a92aba8fb ("drm/i915/execlists: Force preemption")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: <stable@vger.kernel.org> # v5.5+
Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 1d209a8a95e8..7f25894e41d5 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -3209,8 +3209,10 @@ static void execlists_submission_tasklet(unsigned long data)
 		spin_unlock_irqrestore(&engine->active.lock, flags);
 
 		/* Recheck after serialising with direct-submission */
-		if (unlikely(timeout && preempt_timeout(engine)))
+		if (unlikely(timeout && preempt_timeout(engine))) {
+			cancel_timer(&engine->execlists.preempt);
 			execlists_reset(engine, "preemption time out");
+		}
 	}
 }
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
