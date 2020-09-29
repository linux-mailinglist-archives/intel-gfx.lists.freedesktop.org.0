Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74E4927BF64
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Sep 2020 10:29:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 272D389E05;
	Tue, 29 Sep 2020 08:29:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36D2D89DFA
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Sep 2020 08:29:06 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22564163-1500050 
 for multiple; Tue, 29 Sep 2020 09:28:56 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Sep 2020 09:28:59 +0100
Message-Id: <20200929082859.26652-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200929082859.26652-1-chris@chris-wilson.co.uk>
References: <20200929082859.26652-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/gt: Retire cancelled requests on
 unload
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

If we manage to hit the intel_gt_set_wedged_on_fini() while active, i.e.
module unload during a stress test, we may cancel the requests but not
clean up. This leads to a very slow module unload as we wait for
something or other to trigger the retirement flushing, or timeout and
unload with a bunch of warnings. Instead if we explicitly cancel then
cleanup on an active unload, it should be instant and quiet.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_reset.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index ac36b67fb46b..4e5e13dc95da 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -19,6 +19,7 @@
 #include "intel_engine_pm.h"
 #include "intel_gt.h"
 #include "intel_gt_pm.h"
+#include "intel_gt_requests.h"
 #include "intel_reset.h"
 
 #include "uc/intel_guc.h"
@@ -1370,6 +1371,7 @@ void intel_gt_set_wedged_on_fini(struct intel_gt *gt)
 {
 	intel_gt_set_wedged(gt);
 	set_bit(I915_WEDGED_ON_FINI, &gt->reset.flags);
+	intel_gt_retire_requests(gt); /* cleanup any wedged requests */
 }
 
 void intel_gt_init_reset(struct intel_gt *gt)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
