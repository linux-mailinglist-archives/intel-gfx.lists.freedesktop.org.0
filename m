Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E191B8E7C
	for <lists+intel-gfx@lfdr.de>; Sun, 26 Apr 2020 11:43:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65DF46E03B;
	Sun, 26 Apr 2020 09:43:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFAC36E03B
 for <intel-gfx@lists.freedesktop.org>; Sun, 26 Apr 2020 09:43:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21024705-1500050 
 for multiple; Sun, 26 Apr 2020 10:42:32 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 26 Apr 2020 10:42:31 +0100
Message-Id: <20200426094231.21995-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/execlists: Check preempt-timeout
 target before submit_ports
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

We evaluate *active, which is a pointer into execlists->inflight[]
during dequeue to decide how long a preempt-timeout we need to apply.
However, as soon as we do the submit_ports, the HW may send its ACK
interrupt causing us to promote execlists->pending[] tp
execlists->inflight[], overwriting the value of *active. We know *active
is only stable until we submit (as we only submit when there is no
pending promotion).

[   16.102328] BUG: KCSAN: data-race in execlists_dequeue+0x1449/0x1600 [i915]
[   16.102356]
[   16.102375] race at unknown origin, with read to 0xffff8881e9500488 of 8 bytes by task 429 on cpu 1:
[   16.102780]  execlists_dequeue+0x1449/0x1600 [i915]
[   16.103160]  __execlists_submission_tasklet+0x48/0x60 [i915]
[   16.103540]  execlists_submit_request+0x38e/0x3c0 [i915]
[   16.103940]  submit_notify+0x8f/0xc0 [i915]
[   16.104308]  __i915_sw_fence_complete+0x61/0x420 [i915]
[   16.104683]  i915_sw_fence_complete+0x58/0x80 [i915]
[   16.105054]  i915_sw_fence_commit+0x16/0x20 [i915]
[   16.105457]  __i915_request_queue+0x60/0x70 [i915]
[   16.105843]  i915_gem_do_execbuffer+0x2d6b/0x4230 [i915]
[   16.106227]  i915_gem_execbuffer2_ioctl+0x2b0/0x580 [i915]
[   16.106257]  drm_ioctl_kernel+0xe9/0x130
[   16.106279]  drm_ioctl+0x27d/0x45e
[   16.106311]  ksys_ioctl+0x89/0xb0
[   16.106336]  __x64_sys_ioctl+0x42/0x60
[   16.106370]  do_syscall_64+0x6e/0x2c0
[   16.106397]  entry_SYSCALL_64_after_hwframe+0x44/0xa9

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index c8014c265ffb..cbd04b74ae2a 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -2438,8 +2438,8 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 		clear_ports(port + 1, last_port - port);
 
 		WRITE_ONCE(execlists->yield, -1);
-		execlists_submit_ports(engine);
 		set_preempt_timeout(engine, *active);
+		execlists_submit_ports(engine);
 	} else {
 skip_submit:
 		ring_set_paused(engine, 0);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
