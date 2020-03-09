Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1908117DE40
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Mar 2020 12:09:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55C556E05D;
	Mon,  9 Mar 2020 11:09:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABFD06E136
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Mar 2020 11:09:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20493824-1500050 
 for multiple; Mon, 09 Mar 2020 11:09:35 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 Mar 2020 11:09:30 +0000
Message-Id: <20200309110934.868-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/5] drm/i915: Mark up unlocked update of
 i915_request.hwsp_seqno
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

During i915_request_retire() we decouple the i915_request.hwsp_seqno
from the intel_timeline so that it may be freed before the request is
released. However, we need to warn the compiler that the pointer may
update under its nose.

[  171.438899] BUG: KCSAN: data-race in i915_request_await_dma_fence [i915] / i915_request_retire [i915]
[  171.438920]
[  171.438932] write to 0xffff8881e7e28ce0 of 8 bytes by task 148 on cpu 2:
[  171.439174]  i915_request_retire+0x1ea/0x660 [i915]
[  171.439408]  retire_requests+0x7a/0xd0 [i915]
[  171.439640]  engine_retire+0xa1/0xe0 [i915]
[  171.439657]  process_one_work+0x3b1/0x690
[  171.439671]  worker_thread+0x80/0x670
[  171.439685]  kthread+0x19a/0x1e0
[  171.439701]  ret_from_fork+0x1f/0x30
[  171.439721]
[  171.439739] read to 0xffff8881e7e28ce0 of 8 bytes by task 696 on cpu 1:
[  171.439990]  i915_request_await_dma_fence+0x162/0x520 [i915]
[  171.440230]  i915_request_await_object+0x2fe/0x470 [i915]
[  171.440467]  i915_gem_do_execbuffer+0x45dc/0x4c20 [i915]
[  171.440704]  i915_gem_execbuffer2_ioctl+0x2c3/0x580 [i915]
[  171.440722]  drm_ioctl_kernel+0xe4/0x120
[  171.440736]  drm_ioctl+0x297/0x4c7
[  171.440750]  ksys_ioctl+0x89/0xb0
[  171.440766]  __x64_sys_ioctl+0x42/0x60
[  171.440788]  do_syscall_64+0x6e/0x2c0
[  171.440802]  entry_SYSCALL_64_after_hwframe+0x44/0xa9

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_request.h | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
index d4bae16b4785..6020d5b2a3df 100644
--- a/drivers/gpu/drm/i915/i915_request.h
+++ b/drivers/gpu/drm/i915/i915_request.h
@@ -396,7 +396,9 @@ static inline bool i915_seqno_passed(u32 seq1, u32 seq2)
 
 static inline u32 __hwsp_seqno(const struct i915_request *rq)
 {
-	return READ_ONCE(*rq->hwsp_seqno);
+	const u32 *hwsp = READ_ONCE(rq->hwsp_seqno);
+
+	return READ_ONCE(*hwsp);
 }
 
 /**
@@ -510,7 +512,8 @@ static inline bool i915_request_completed(const struct i915_request *rq)
 
 static inline void i915_request_mark_complete(struct i915_request *rq)
 {
-	rq->hwsp_seqno = (u32 *)&rq->fence.seqno; /* decouple from HWSP */
+	WRITE_ONCE(rq->hwsp_seqno, /* decouple from HWSP */
+		   (u32 *)&rq->fence.seqno);
 }
 
 static inline bool i915_request_has_waitboost(const struct i915_request *rq)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
