Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2434139016
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2020 12:29:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C3AD6E05C;
	Mon, 13 Jan 2020 11:29:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBBF56E05F
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jan 2020 11:29:33 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19860273-1500050 
 for multiple; Mon, 13 Jan 2020 11:29:19 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 13 Jan 2020 11:29:16 +0000
Message-Id: <20200113112917.1789952-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0.rc2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/gt: Sanitize and reset GPU before
 removing powercontext
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

As a final paranoid step (we _should_ have reset the GPU on suspending
the device prior to unload), reset the GPU once more before removing the
powercontext and other related power saving paraphernalia.

A clue that this may not be the case is

<7> [313.203721] __intel_gt_set_wedged rcs'0
<7> [313.203746] __intel_gt_set_wedged 	Awake? 3
<7> [313.203751] __intel_gt_set_wedged 	Barriers?: no
<7> [313.203756] __intel_gt_set_wedged 	Latency: 0us
<7> [313.203762] __intel_gt_set_wedged 	Reset count: 0 (global 0)
<7> [313.203766] __intel_gt_set_wedged 	Requests:
<7> [313.203785] __intel_gt_set_wedged 	MMIO base:  0x00002000
<7> [313.203819] __intel_gt_set_wedged 	RING_START: 0x00000000
<7> [313.203826] __intel_gt_set_wedged 	RING_HEAD:  0x00000000
<7> [313.203833] __intel_gt_set_wedged 	RING_TAIL:  0x00000000
<7> [313.203844] __intel_gt_set_wedged 	RING_CTL:   0x00000000
<7> [313.203854] __intel_gt_set_wedged 	RING_MODE:  0x00000000
<7> [313.203861] __intel_gt_set_wedged 	RING_IMR: fffffefe
<7> [313.203875] __intel_gt_set_wedged 	ACTHD:  0x00000000_00000000
<7> [313.203888] __intel_gt_set_wedged 	BBADDR: 0x00000000_00000000
<7> [313.203901] __intel_gt_set_wedged 	DMA_FADDR: 0x00000000_00000000
<7> [313.203909] __intel_gt_set_wedged 	IPEIR: 0x00000000
<7> [313.203916] __intel_gt_set_wedged 	IPEHR: 0xcccccccc
<7> [313.203921] __intel_gt_set_wedged 	Execlist tasklet queued? no (enabled), preempt? inactive, timeslice? inactive
<7> [313.203932] __intel_gt_set_wedged 	Execlist status: 0x00044032 00000020; CSB read:5, write:0, entries:6
<7> [313.203937] __intel_gt_set_wedged 	Execlist CSB[0]: 0x00000001, context: 0
<7> [313.203952] __intel_gt_set_wedged 		Pending[0] ring:{start:000c4000, hwsp:fedfc000, seqno:00000000}, rq:  402e:2-  prio=2147483647 @ 207ms: [i915]
<7> [313.203983] __intel_gt_set_wedged 		E  402e:2-  prio=2147483647 @ 207ms: [i915]
<7> [313.204006] __intel_gt_set_wedged 		Queue priority hint: 3

during rapid fault-injection reloads. 0xcc is POISON_FREE_INIT which
suggests that the system cleared the pages on initialisation as they are
still being used from the previous module load.

Despite that we also have a couple of GPU resets prior to this...
I have a sneaky suspicion that may be a GuC artifact.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Andi Shyti <andi.shyti@intel.com>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_pm.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
index d1c2f034296a..26241c9c9e38 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
@@ -170,6 +170,7 @@ static void gt_sanitize(struct intel_gt *gt, bool force)
 
 void intel_gt_pm_fini(struct intel_gt *gt)
 {
+	gt_sanitize(gt, false);
 	intel_rc6_fini(&gt->rc6);
 }
 
-- 
2.25.0.rc2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
