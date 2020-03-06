Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2243517BFCB
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 15:01:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73F526ED23;
	Fri,  6 Mar 2020 14:01:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB85F6ED23
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Mar 2020 14:01:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20468079-1500050 
 for multiple; Fri, 06 Mar 2020 14:01:15 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Mar 2020 14:01:15 +0000
Message-Id: <20200306140115.3495686-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Do not poison i915_request.link on
 removal
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

Do not poison the timeline link on the i915_request to allow both
forward/backward list traversal under RCU.

[ 9759.139229] RIP: 0010:active_request+0x2a/0x90 [i915]
[ 9759.139240] Code: 41 56 41 55 41 54 55 48 89 fd 53 48 89 f3 48 83 c5 60 e8 49 de dc e0 48 8b 83 e8 01 00 00 48 39 c5 74 12 48 8d 90 20 fe ff ff <48> 8b 80 50 fe ff ff a8 01 74 11 e8 66 20 dd e0 48 89 d8 5b 5d 41
[ 9759.139251] RSP: 0018:ffffc9000014ce80 EFLAGS: 00010012
[ 9759.139260] RAX: dead000000000122 RBX: ffff888817cac040 RCX: 0000000000022000
[ 9759.139267] RDX: deacffffffffff42 RSI: ffff888817cac040 RDI: ffff888851fee900
[ 9759.139275] RBP: ffff888851fee960 R08: 000000000000001a R09: ffffffffa04702e0
[ 9759.139282] R10: ffffffff82187ea0 R11: 0000000000000002 R12: 0000000000000004
[ 9759.139289] R13: ffffffffa04d5179 R14: ffff8887f994ae40 R15: ffff888857b9a068
[ 9759.139296] FS:  0000000000000000(0000) GS:ffff88885ed80000(0000) knlGS:0000000000000000
[ 9759.139304] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[ 9759.139311] CR2: 00007fff5bdec000 CR3: 00000008534fe001 CR4: 00000000001606e0
[ 9759.139318] Call Trace:
[ 9759.139325]  <IRQ>
[ 9759.139389]  execlists_reset+0x14d/0x310 [i915]
[ 9759.139400]  ? _raw_spin_unlock_irqrestore+0xf/0x30
[ 9759.139445]  ? fwtable_read32+0x90/0x230 [i915]
[ 9759.139499]  execlists_submission_tasklet+0xf6/0x150 [i915]
[ 9759.139508]  tasklet_action_common.isra.17+0x32/0xa0
[ 9759.139516]  __do_softirq+0x114/0x3dc
[ 9759.139525]  ? handle_irq_event_percpu+0x59/0x70
[ 9759.139533]  irq_exit+0xa1/0xc0
[ 9759.139540]  do_IRQ+0x76/0x150
[ 9759.139547]  common_interrupt+0xf/0xf
[ 9759.139554]  </IRQ>

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_request.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 66efd16c4850..5de3989b6c4f 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -290,7 +290,7 @@ bool i915_request_retire(struct i915_request *rq)
 	spin_unlock_irq(&rq->lock);
 
 	remove_from_client(rq);
-	list_del_rcu(&rq->link);
+	__list_del_entry(&rq->link); /* poison neither prev/next (RCU walks) */
 
 	intel_context_exit(rq->context);
 	intel_context_unpin(rq->context);
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
