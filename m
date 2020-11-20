Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 249272BAB97
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Nov 2020 15:03:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA3DC6E8B6;
	Fri, 20 Nov 2020 14:03:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DA936E8B7
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Nov 2020 14:03:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23055883-1500050 
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Nov 2020 14:03:15 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Nov 2020 14:03:14 +0000
Message-Id: <20201120140314.24749-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201120140314.24749-1-chris@chris-wilson.co.uk>
References: <20201120140314.24749-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 3/3] drm/i915/selftests: Small tweak to put the
 termination conditions together
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

If we run out of ring space, or exceed the desired runtime, we wish to
stop the subtest. Put these checks together, so that we always keep the
requests flushed on completion.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_timeline.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_timeline.c b/drivers/gpu/drm/i915/gt/selftest_timeline.c
index 2edf2b15885f..ef7e3ce8c60c 100644
--- a/drivers/gpu/drm/i915/gt/selftest_timeline.c
+++ b/drivers/gpu/drm/i915/gt/selftest_timeline.c
@@ -1090,12 +1090,6 @@ static int live_hwsp_read(void *arg)
 			}
 			count++;
 
-			if (8 * watcher[1].rq->ring->emit >
-			    3 * watcher[1].rq->ring->size) {
-				i915_request_put(rq);
-				break;
-			}
-
 			/* Flush the timeline before manually wrapping again */
 			if (i915_request_wait(rq,
 					      I915_WAIT_INTERRUPTIBLE,
@@ -1104,9 +1098,13 @@ static int live_hwsp_read(void *arg)
 				i915_request_put(rq);
 				goto out;
 			}
-
 			retire_requests(tl);
 			i915_request_put(rq);
+
+			if (8 * watcher[1].rq->ring->emit >
+			    3 * watcher[1].rq->ring->size)
+				break;
+
 		} while (!__igt_timeout(end_time, NULL));
 		WRITE_ONCE(*(u32 *)tl->hwsp_seqno, 0xdeadbeef);
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
