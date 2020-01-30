Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EB5914E0A8
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2020 19:17:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2F526FA18;
	Thu, 30 Jan 2020 18:17:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A20296FA18
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jan 2020 18:17:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20063786-1500050 
 for multiple; Thu, 30 Jan 2020 18:17:12 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 30 Jan 2020 18:17:08 +0000
Message-Id: <20200130181710.2030251-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/gt: Skip global serialisation of
 clear_range for bxt vtd
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

VT'd on Broxton and on Braswell require serialisation of GGTT updates.
However, it seems to only be required for insertion, so drop the
complication and heavyweight stop_machine() for clears. The range will
be serialised again before use.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_ggtt.c | 27 ---------------------------
 1 file changed, 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index fdfed921402b..f83070b5e6ed 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -350,31 +350,6 @@ static void bxt_vtd_ggtt_insert_entries__BKL(struct i915_address_space *vm,
 	stop_machine(bxt_vtd_ggtt_insert_entries__cb, &arg, NULL);
 }
 
-struct clear_range {
-	struct i915_address_space *vm;
-	u64 start;
-	u64 length;
-};
-
-static int bxt_vtd_ggtt_clear_range__cb(void *_arg)
-{
-	struct clear_range *arg = _arg;
-
-	gen8_ggtt_clear_range(arg->vm, arg->start, arg->length);
-	bxt_vtd_ggtt_wa(arg->vm);
-
-	return 0;
-}
-
-static void bxt_vtd_ggtt_clear_range__BKL(struct i915_address_space *vm,
-					  u64 start,
-					  u64 length)
-{
-	struct clear_range arg = { vm, start, length };
-
-	stop_machine(bxt_vtd_ggtt_clear_range__cb, &arg, NULL);
-}
-
 static void gen6_ggtt_clear_range(struct i915_address_space *vm,
 				  u64 start, u64 length)
 {
@@ -881,8 +856,6 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
 	    IS_CHERRYVIEW(i915) /* fails with concurrent use/update */) {
 		ggtt->vm.insert_entries = bxt_vtd_ggtt_insert_entries__BKL;
 		ggtt->vm.insert_page    = bxt_vtd_ggtt_insert_page__BKL;
-		if (ggtt->vm.clear_range != nop_clear_range)
-			ggtt->vm.clear_range = bxt_vtd_ggtt_clear_range__BKL;
 	}
 
 	ggtt->invalidate = gen8_ggtt_invalidate;
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
