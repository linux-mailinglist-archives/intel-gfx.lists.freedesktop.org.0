Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3186F1B5ACB
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2020 13:54:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 226636E433;
	Thu, 23 Apr 2020 11:54:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96D426E433
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Apr 2020 11:53:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20995198-1500050 
 for multiple; Thu, 23 Apr 2020 12:53:17 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Apr 2020 12:53:15 +0100
Message-Id: <20200423115315.26825-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Carefully order
 virtual_submission_tasklet
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

During the virtual engine's submission tasklet, we take the request and
insert into the submission queue on each of our siblings. This seems
quite simply, and so no problems with ordering. However, the sibling
execlists' submission tasklets may run concurrently with the virtual
engine's tasklet, submitting the request to HW before the virtual
finishes its task of telling all the siblings. If this happens, the
sibling tasklet may *reorder* the ve->sibling[] array that the virtual
engine tasklet is processing. This can *only* reorder within the
elements already processed by the virtual engine, nevertheless the
race is detected by KCSAN:

[  185.580014] BUG: KCSAN: data-race in execlists_dequeue [i915] / virtual_submission_tasklet [i915]
[  185.580054]
[  185.580076] write to 0xffff8881f1919860 of 8 bytes by interrupt on cpu 2:
[  185.580553]  execlists_dequeue+0x6ad/0x1600 [i915]
[  185.581044]  __execlists_submission_tasklet+0x48/0x60 [i915]
[  185.581517]  execlists_submission_tasklet+0xd3/0x170 [i915]
[  185.581554]  tasklet_action_common.isra.0+0x42/0x90
[  185.581585]  __do_softirq+0xc8/0x206
[  185.581613]  run_ksoftirqd+0x15/0x20
[  185.581641]  smpboot_thread_fn+0x15a/0x270
[  185.581669]  kthread+0x19a/0x1e0
[  185.581695]  ret_from_fork+0x1f/0x30
[  185.581717]
[  185.581736] read to 0xffff8881f1919860 of 8 bytes by interrupt on cpu 0:
[  185.582231]  virtual_submission_tasklet+0x10e/0x5c0 [i915]
[  185.582265]  tasklet_action_common.isra.0+0x42/0x90
[  185.582291]  __do_softirq+0xc8/0x206
[  185.582315]  run_ksoftirqd+0x15/0x20
[  185.582340]  smpboot_thread_fn+0x15a/0x270
[  185.582368]  kthread+0x19a/0x1e0
[  185.582395]  ret_from_fork+0x1f/0x30
[  185.582417]

We can prevent this race by checking for the ve->request after looking
up the sibling array.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index fba774a0abbf..dead24aaf45d 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -5092,12 +5092,15 @@ static void virtual_submission_tasklet(unsigned long data)
 		return;
 
 	local_irq_disable();
-	for (n = 0; READ_ONCE(ve->request) && n < ve->num_siblings; n++) {
-		struct intel_engine_cs *sibling = ve->siblings[n];
+	for (n = 0; n < ve->num_siblings; n++) {
+		struct intel_engine_cs *sibling = READ_ONCE(ve->siblings[n]);
 		struct ve_node * const node = &ve->nodes[sibling->id];
 		struct rb_node **parent, *rb;
 		bool first;
 
+		if (!READ_ONCE(ve->request))
+			break; /* already handled by a sibling's tasklet */
+
 		if (unlikely(!(mask & sibling->mask))) {
 			if (!RB_EMPTY_NODE(&node->rb)) {
 				spin_lock(&sibling->active.lock);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
