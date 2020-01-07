Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7404B132916
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jan 2020 15:38:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBD156E0C8;
	Tue,  7 Jan 2020 14:38:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3CB26E0C8
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jan 2020 14:38:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19796961-1500050 
 for multiple; Tue, 07 Jan 2020 14:38:28 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Jan 2020 14:38:26 +0000
Message-Id: <20200107143826.3298401-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0.rc1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Drop a defunct timeline assertion
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

intel_timeline_enter() has been decoupled from intel_timeline_pin() and
both enter/exit & pin/unpin are allowed [read expected] to run
concurrently with one another. The assertion that they had better not is
stale.

Closes: https://gitlab.freedesktop.org/drm/intel/issues/940
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_timeline.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_timeline.c b/drivers/gpu/drm/i915/gt/intel_timeline.c
index ee5dc4fbdeb9..87716529cd2f 100644
--- a/drivers/gpu/drm/i915/gt/intel_timeline.c
+++ b/drivers/gpu/drm/i915/gt/intel_timeline.c
@@ -348,7 +348,6 @@ void intel_timeline_enter(struct intel_timeline *tl)
 	 * use atomic to manipulate tl->active_count.
 	 */
 	lockdep_assert_held(&tl->mutex);
-	GEM_BUG_ON(!atomic_read(&tl->pin_count));
 
 	if (atomic_add_unless(&tl->active_count, 1, 0))
 		return;
-- 
2.25.0.rc1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
