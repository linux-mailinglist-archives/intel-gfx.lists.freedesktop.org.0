Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C4C71D12A4
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2020 14:29:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E62A26E16D;
	Wed, 13 May 2020 12:29:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AD956E16D
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 May 2020 12:28:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21186420-1500050 
 for multiple; Wed, 13 May 2020 13:28:28 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 May 2020 13:28:26 +0100
Message-Id: <20200513122826.27484-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Suspend tasklets before resume
 sanitization
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

It is possible for a residual tasklet to be pending execution as we
resume (whether that's some prior test kicking off the tasklet, or if we
are in a suspend/resume stress test). As such, we do not want that
tasklet to execute in the middle of our sanitization, such that it sees
the poisoned state. For example,

<4>[  449.386553] invalid opcode: 0000 [#1] PREEMPT SMP NOPTI
<4>[  449.386555] CPU: 1 PID: 5115 Comm: i915_selftest Tainted: G     U  W         5.7.0-rc4-CI-CI_DRM_8472+ #1
<4>[  449.386556] Hardware name: Intel Corporation Ice Lake Client Platform/IceLake U DDR4 SODIMM PD RVP TLC, BIOS ICLSFWR1.R00.3183.A00.1905020411 05/02/2019
<4>[  449.386585] RIP: 0010:process_csb+0x6bf/0x830 [i915]
<4>[  449.386588] Code: 00 48 c7 c2 10 bc 4c a0 48 c7 c7 d4 75 34 a0 e8 87 0e e6 e0 bf 01 00 00 00 e8 9d e0 e5 e0 31 f6 bf 09 00 00 00 e8 e1 ba d6 e0 <0f> 0b 8b 87 10 05 00 00 85 c0 0f 85 5f f9 ff ff 48 c7 c1 70 a5 4f
<4>[  449.386591] RSP: 0018:ffffc90000170ea0 EFLAGS: 00010297
<4>[  449.386594] RAX: 0000000080000101 RBX: 0000000000000000 RCX: 0000000000000000
<4>[  449.386596] RDX: ffff88849d5bc040 RSI: 0000000000000000 RDI: 0000000000000009
<4>[  449.386598] RBP: ffffc90000170f00 R08: 0000000000000000 R09: 0000000000000000
<4>[  449.386600] R10: 0000000000000000 R11: 0000000000000000 R12: ffff88843ccea018
<4>[  449.386602] R13: ffff88843ccea658 R14: ffff88843ccea640 R15: ffff88843ccea000
<4>[  449.386605] FS:  00007f826a813300(0000) GS:ffff88849fe80000(0000) knlGS:0000000000000000
<4>[  449.386607] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
<4>[  449.386609] CR2: 0000560366b94280 CR3: 000000048ba02002 CR4: 0000000000760ee0
<4>[  449.386611] PKRU: 55555554
<4>[  449.386613] Call Trace:
<4>[  449.386616]  <IRQ>
<4>[  449.386646]  ? execlists_submission_tasklet+0xcf/0x140 [i915]
<4>[  449.386674]  execlists_submission_tasklet+0x2f/0x140 [i915]
<4>[  449.386679]  tasklet_action_common.isra.16+0x6c/0x1c0
<4>[  449.386684]  __do_softirq+0xdf/0x49e
<4>[  449.386687]  irq_exit+0xba/0xc0
<4>[  449.386690]  smp_apic_timer_interrupt+0xb7/0x280
<4>[  449.386693]  apic_timer_interrupt+0xf/0x20
<4>[  449.386695]  </IRQ>
<4>[  449.386698] RIP: 0010:_raw_spin_unlock_irqrestore+0x49/0x60
<4>[  449.386701] Code: c7 02 75 1f 53 9d e8 26 ab 75 ff bf 01 00 00 00 e8 7c a3 69 ff 65 8b 05 7d 9b 5c 7e 85 c0 74 0c 5b 5d c3 e8 09 aa 75 ff 53 9d <eb> df e8 ca 39 5b ff 5b 5d c3 0f 1f 00 66 2e 0f 1f 84 00 00 00 00
<4>[  449.386703] RSP: 0018:ffffc90000a6b950 EFLAGS: 00000202 ORIG_RAX: ffffffffffffff13
<4>[  449.386706] RAX: 0000000080000001 RBX: 0000000000000202 RCX: 0000000000000000
<4>[  449.386708] RDX: ffff88849d5bc040 RSI: ffff88849d5bc900 RDI: ffffffff82386f12
<4>[  449.386710] RBP: ffff88847d400f00 R08: ffff88849d5bc900 R09: 0000000000000000
<4>[  449.386712] R10: 0000000000000000 R11: 0000000000000000 R12: 00000000ffff0b0b
<4>[  449.386714] R13: 000000000000000c R14: ffff88847d40bf70 R15: ffff88847d40cef8
<4>[  449.386742]  reset_csb_pointers+0x59/0x140 [i915]
<4>[  449.386769]  execlists_sanitize+0x3e/0x60 [i915]
<4>[  449.386797]  gt_sanitize+0xd6/0x260 [i915]

As part of the reset preparation, engine->reset.prepare() prevents the
tasklet from running, so pull the sanitization inside the critical
section for reset.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/1812
Fixes: 23122a4d992b ("drm/i915/gt: Scrub execlists state on resume")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_pm.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
index e59776485457..6bdb434a442d 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
@@ -150,10 +150,6 @@ static void gt_sanitize(struct intel_gt *gt, bool force)
 	if (intel_gt_is_wedged(gt))
 		intel_gt_unset_wedged(gt);
 
-	for_each_engine(engine, gt, id)
-		if (engine->sanitize)
-			engine->sanitize(engine);
-
 	intel_uc_sanitize(&gt->uc);
 
 	for_each_engine(engine, gt, id)
@@ -162,6 +158,10 @@ static void gt_sanitize(struct intel_gt *gt, bool force)
 
 	intel_uc_reset_prepare(&gt->uc);
 
+	for_each_engine(engine, gt, id)
+		if (engine->sanitize)
+			engine->sanitize(engine);
+
 	if (reset_engines(gt) || force) {
 		for_each_engine(engine, gt, id)
 			__intel_engine_reset(engine, false);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
