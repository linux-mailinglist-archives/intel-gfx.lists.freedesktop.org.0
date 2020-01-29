Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 570C014CED1
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2020 17:59:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B56FA6F5E4;
	Wed, 29 Jan 2020 16:59:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DFDF6F5E4
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jan 2020 16:59:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20050396-1500050 
 for multiple; Wed, 29 Jan 2020 16:59:35 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Jan 2020 16:59:35 +0000
Message-Id: <20200129165935.1266132-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/execlists: Ignore discrepancies in
 pending[] across resets
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

When we reset the engine, we first remove the guilty request from the
active list. If it so happens that there is a pending preemption event
to process before we handle the reset, when we inspect that event we
find ourselves a little confused as we have bent the rules slightly to
perform the reset.

Just ignore any discrepancies inside reset, we know we'll start again
from scratch afterwards.

<0>[  536.940213]   <idle>-0       6..s1 537441383us : execlists_reset: 0000:00:02.0 vcs0: reset for CS error
<0>[  536.940213] i915_sel-7302    2d..1 537441386us : trace_ports: 0000:00:02.0 vcs0: submit { 10c59:2*, 10c5a:2 }
<0>[  536.940213]   <idle>-0       6d.s2 537471320us : __i915_request_unsubmit: 0000:00:02.0 vcs0: fence 10c59:2, current 1
<0>[  536.940213]   <idle>-0       6d.s2 537471321us : execlists_hold: 0000:00:02.0 vcs0: fence 10c59:2, current 1 on hold
<0>[  536.940213]   <idle>-0       6.Ns1 537471328us : intel_engine_reset: 0000:00:02.0 vcs0: flags=10
<0>[  536.940213]   <idle>-0       6.Ns1 537471421us : execlists_reset_prepare: 0000:00:02.0 vcs0: depth<-1
<0>[  536.940213]   <idle>-0       6.Ns1 537471422us : intel_engine_stop_cs: 0000:00:02.0 vcs0:
<0>[  536.940213]   <idle>-0       6.Ns1 537472424us : intel_engine_stop_cs: 0000:00:02.0 vcs0: timed out on STOP_RING -> IDLE
<0>[  536.940213]   <idle>-0       6.Ns1 537472429us : __intel_gt_reset: 0000:00:02.0 engine_mask=4
<0>[  536.940213]   <idle>-0       6.Ns1 537472442us : execlists_reset_rewind: 0000:00:02.0 vcs0:
<0>[  536.940213]   <idle>-0       6dNs2 537472443us : process_csb: 0000:00:02.0 vcs0: cs-irq head=4, tail=5
<0>[  536.940213]   <idle>-0       6dNs2 537472444us : process_csb: 0000:00:02.0 vcs0: csb[5]: status=0x00008002:0x20000060
<0>[  536.940213]   <idle>-0       6dNs2 537472464us : trace_ports: 0000:00:02.0 vcs0: preempted { 10c59:2*, 0:0 }
<0>[  536.940213]   <idle>-0       6dNs2 537472465us : trace_ports: 0000:00:02.0 vcs0: promote { 10c59:2*, 10c5a:2 }
<0>[  536.940213]   <idle>-0       6dNs2 537472706us : assert_pending_valid: assert_pending_valid:1417 GEM_BUG_ON(!i915_request_is_active(rq))

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index fb112fc463c7..fd68a1c7e62f 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1389,6 +1389,12 @@ trace_ports(const struct intel_engine_execlists *execlists,
 		     ports[1] ? ports[1]->fence.seqno : 0);
 }
 
+static inline bool
+reset_in_progress(const struct intel_engine_execlists *execlists)
+{
+	return unlikely(!__tasklet_is_enabled(&execlists->tasklet));
+}
+
 static __maybe_unused bool
 assert_pending_valid(const struct intel_engine_execlists *execlists,
 		     const char *msg)
@@ -1398,6 +1404,10 @@ assert_pending_valid(const struct intel_engine_execlists *execlists,
 
 	trace_ports(execlists, msg, execlists->pending);
 
+	/* We may be messing around with the lists during reset, lalala */
+	if (reset_in_progress(execlists))
+		return true;
+
 	if (!execlists->pending[0]) {
 		GEM_TRACE_ERR("Nothing pending for promotion!\n");
 		return false;
@@ -2169,12 +2179,6 @@ invalidate_csb_entries(const u32 *first, const u32 *last)
 	clflush((void *)last);
 }
 
-static inline bool
-reset_in_progress(const struct intel_engine_execlists *execlists)
-{
-	return unlikely(!__tasklet_is_enabled(&execlists->tasklet));
-}
-
 /*
  * Starting with Gen12, the status has a new format:
  *
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
