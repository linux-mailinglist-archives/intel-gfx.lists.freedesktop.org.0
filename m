Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4049C16FB12
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 10:43:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75CA26E405;
	Wed, 26 Feb 2020 09:43:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8A786E3EF
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 09:43:25 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20354697-1500050 
 for multiple; Wed, 26 Feb 2020 09:43:14 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Feb 2020 09:42:58 +0000
Message-Id: <20200226094314.1500667-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 01/17] drm/i915/gt: Reset queue_priority_hint
 after wedging
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

An odd and highly unlikely path caught us out. On delayed submission
(due to an asynchronous reset handler), we poked the priority_hint and
kicked the tasklet. However, we had already marked the device as wedged
and swapped out the tasklet for a no-op. The result was that we never
cleared the priority hint and became upset when we later checked.

<0> [574.303565] i915_sel-6278    2.... 481822445us : __i915_subtests: Running intel_execlists_live_selftests/live_error_interrupt
<0> [574.303565] i915_sel-6278    2.... 481822472us : __engine_unpark: 0000:00:02.0 rcs0:
<0> [574.303565] i915_sel-6278    2.... 481822491us : __gt_unpark: 0000:00:02.0
<0> [574.303565] i915_sel-6278    2.... 481823220us : execlists_context_reset: 0000:00:02.0 rcs0: context:f4ee reset
<0> [574.303565] i915_sel-6278    2.... 481824830us : __intel_context_active: 0000:00:02.0 rcs0: context:f51b active
<0> [574.303565] i915_sel-6278    2.... 481825258us : __intel_context_do_pin: 0000:00:02.0 rcs0: context:f51b pin ring:{start:00006000, head:0000, tail:0000}
<0> [574.303565] i915_sel-6278    2.... 481825311us : __i915_request_commit: 0000:00:02.0 rcs0: fence f51b:2, current 0
<0> [574.303565] i915_sel-6278    2d..1 481825347us : __i915_request_submit: 0000:00:02.0 rcs0: fence f51b:2, current 0
<0> [574.303565] i915_sel-6278    2d..1 481825363us : trace_ports: 0000:00:02.0 rcs0: submit { f51b:2, 0:0 }
<0> [574.303565] i915_sel-6278    2.... 481826809us : __intel_context_active: 0000:00:02.0 rcs0: context:f51c active
<0> [574.303565]   <idle>-0       7d.h2 481827326us : cs_irq_handler: 0000:00:02.0 rcs0: CS error: 1
<0> [574.303565]   <idle>-0       7..s1 481827377us : process_csb: 0000:00:02.0 rcs0: cs-irq head=3, tail=4
<0> [574.303565]   <idle>-0       7..s1 481827379us : process_csb: 0000:00:02.0 rcs0: csb[4]: status=0x10000001:0x00000000
<0> [574.305593]   <idle>-0       7..s1 481827385us : trace_ports: 0000:00:02.0 rcs0: promote { f51b:2*, 0:0 }
<0> [574.305611]   <idle>-0       7..s1 481828179us : execlists_reset: 0000:00:02.0 rcs0: reset for CS error
<0> [574.305611] i915_sel-6278    2.... 481828284us : __intel_context_do_pin: 0000:00:02.0 rcs0: context:f51c pin ring:{start:00007000, head:0000, tail:0000}
<0> [574.305611] i915_sel-6278    2.... 481828345us : __i915_request_commit: 0000:00:02.0 rcs0: fence f51c:2, current 0
<0> [574.305611]   <idle>-0       7dNs2 481847823us : __i915_request_unsubmit: 0000:00:02.0 rcs0: fence f51b:2, current 1
<0> [574.305611]   <idle>-0       7dNs2 481847857us : execlists_hold: 0000:00:02.0 rcs0: fence f51b:2, current 1 on hold
<0> [574.305611]   <idle>-0       7.Ns1 481847863us : intel_engine_reset: 0000:00:02.0 rcs0: flags=4
<0> [574.305611]   <idle>-0       7.Ns1 481847945us : execlists_reset_prepare: 0000:00:02.0 rcs0: depth<-1
<0> [574.305611]   <idle>-0       7.Ns1 481847946us : intel_engine_stop_cs: 0000:00:02.0 rcs0:
<0> [574.305611]   <idle>-0       7.Ns1 538584284us : intel_engine_stop_cs: 0000:00:02.0 rcs0: timed out on STOP_RING -> IDLE
<0> [574.305611]   <idle>-0       7.Ns1 538584347us : __intel_gt_reset: 0000:00:02.0 engine_mask=1
<0> [574.305611]   <idle>-0       7.Ns1 538584406us : execlists_reset_rewind: 0000:00:02.0 rcs0:
<0> [574.305611]   <idle>-0       7dNs2 538585050us : __i915_request_reset: 0000:00:02.0 rcs0: fence f51b:2, current 1 guilty? yes
<0> [574.305611]   <idle>-0       7dNs2 538585063us : __execlists_reset: 0000:00:02.0 rcs0: replay {head:0000, tail:0068}
<0> [574.306565]   <idle>-0       7.Ns1 538588457us : intel_engine_cancel_stop_cs: 0000:00:02.0 rcs0:
<0> [574.306565]   <idle>-0       7dNs2 538588462us : __i915_request_submit: 0000:00:02.0 rcs0: fence f51c:2, current 0
<0> [574.306565]   <idle>-0       7dNs2 538588471us : trace_ports: 0000:00:02.0 rcs0: submit { f51c:2, 0:0 }
<0> [574.306565]   <idle>-0       7.Ns1 538588474us : execlists_reset_finish: 0000:00:02.0 rcs0: depth->1
<0> [574.306565] kworker/-202     2.... 538588755us : i915_request_retire: 0000:00:02.0 rcs0: fence f51c:2, current 2
<0> [574.306565] ksoftirq-46      7..s. 538588773us : process_csb: 0000:00:02.0 rcs0: cs-irq head=11, tail=1
<0> [574.306565] ksoftirq-46      7..s. 538588774us : process_csb: 0000:00:02.0 rcs0: csb[0]: status=0x10000001:0x00000000
<0> [574.306565] ksoftirq-46      7..s. 538588776us : trace_ports: 0000:00:02.0 rcs0: promote { f51c:2!, 0:0 }
<0> [574.306565] ksoftirq-46      7..s. 538588778us : process_csb: 0000:00:02.0 rcs0: csb[1]: status=0x10000018:0x00000020
<0> [574.306565] ksoftirq-46      7..s. 538588779us : trace_ports: 0000:00:02.0 rcs0: completed { f51c:2!, 0:0 }
<0> [574.306565] kworker/-202     2.... 538588826us : intel_context_unpin: 0000:00:02.0 rcs0: context:f51c unpin
<0> [574.306565] i915_sel-6278    6.... 538589663us : __intel_gt_set_wedged.part.32: 0000:00:02.0 start
<0> [574.306565] i915_sel-6278    6.... 538589667us : execlists_reset_prepare: 0000:00:02.0 rcs0: depth<-0
<0> [574.306565] i915_sel-6278    6.... 538589710us : intel_engine_stop_cs: 0000:00:02.0 rcs0:
<0> [574.306565] i915_sel-6278    6.... 538589732us : execlists_reset_prepare: 0000:00:02.0 bcs0: depth<-0
<0> [574.307591] i915_sel-6278    6.... 538589733us : intel_engine_stop_cs: 0000:00:02.0 bcs0:
<0> [574.307591] i915_sel-6278    6.... 538589757us : execlists_reset_prepare: 0000:00:02.0 vcs0: depth<-0
<0> [574.307591] i915_sel-6278    6.... 538589758us : intel_engine_stop_cs: 0000:00:02.0 vcs0:
<0> [574.307591] i915_sel-6278    6.... 538589771us : execlists_reset_prepare: 0000:00:02.0 vcs1: depth<-0
<0> [574.307591] i915_sel-6278    6.... 538589772us : intel_engine_stop_cs: 0000:00:02.0 vcs1:
<0> [574.307591] i915_sel-6278    6.... 538589778us : execlists_reset_prepare: 0000:00:02.0 vecs0: depth<-0
<0> [574.307591] i915_sel-6278    6.... 538589780us : intel_engine_stop_cs: 0000:00:02.0 vecs0:
<0> [574.307591] i915_sel-6278    6.... 538589786us : __intel_gt_reset: 0000:00:02.0 engine_mask=ff
<0> [574.307591] i915_sel-6278    6.... 538591175us : execlists_reset_cancel: 0000:00:02.0 rcs0:
<0> [574.307591] i915_sel-6278    6.... 538591970us : execlists_reset_cancel: 0000:00:02.0 bcs0:
<0> [574.307591] i915_sel-6278    6.... 538591982us : execlists_reset_cancel: 0000:00:02.0 vcs0:
<0> [574.307591] i915_sel-6278    6.... 538591996us : execlists_reset_cancel: 0000:00:02.0 vcs1:
<0> [574.307591] i915_sel-6278    6.... 538592759us : execlists_reset_cancel: 0000:00:02.0 vecs0:
<0> [574.307591] i915_sel-6278    6.... 538592977us : execlists_reset_finish: 0000:00:02.0 rcs0: depth->0
<0> [574.307591] i915_sel-6278    6.N.. 538592996us : execlists_reset_finish: 0000:00:02.0 bcs0: depth->0
<0> [574.307591] i915_sel-6278    6.N.. 538593023us : execlists_reset_finish: 0000:00:02.0 vcs0: depth->0
<0> [574.307591] i915_sel-6278    6.N.. 538593037us : execlists_reset_finish: 0000:00:02.0 vcs1: depth->0
<0> [574.307591] i915_sel-6278    6.N.. 538593051us : execlists_reset_finish: 0000:00:02.0 vecs0: depth->0
<0> [574.307591] i915_sel-6278    6.... 538593407us : __intel_gt_set_wedged.part.32: 0000:00:02.0 end
<0> [574.307591] kworker/-210     7d..1 551958381us : execlists_unhold: 0000:00:02.0 rcs0: fence f51b:2, current 2 hold release
<0> [574.307591] i915_sel-6278    0.... 559490788us : i915_request_retire: 0000:00:02.0 rcs0: fence f51b:2, current 2
<0> [574.307591] i915_sel-6278    0.... 559490793us : intel_context_unpin: 0000:00:02.0 rcs0: context:f51b unpin
<0> [574.307591] i915_sel-6278    0.... 559490798us : __engine_park: 0000:00:02.0 rcs0: parked
<0> [574.307591] i915_sel-6278    0.... 559490982us : __intel_context_retire: 0000:00:02.0 rcs0: context:f51c retire runtime: { total:30004ns, avg:30004ns }
<0> [574.307591] i915_sel-6278    0.... 559491372us : __engine_park: __engine_park:261 GEM_BUG_ON(engine->execlists.queue_priority_hint != (-((int)(~0U >> 1)) - 1))

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 39b0125b7143..35c5cf786726 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -3724,7 +3724,10 @@ static void execlists_reset_rewind(struct intel_engine_cs *engine, bool stalled)
 
 static void nop_submission_tasklet(unsigned long data)
 {
+	struct intel_engine_cs * const engine = (struct intel_engine_cs *)data;
+
 	/* The driver is wedged; don't process any more events. */
+	WRITE_ONCE(engine->execlists.queue_priority_hint, INT_MIN);
 }
 
 static void execlists_reset_cancel(struct intel_engine_cs *engine)
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
