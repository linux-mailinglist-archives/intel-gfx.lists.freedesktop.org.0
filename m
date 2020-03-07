Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5275C17CE22
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Mar 2020 13:24:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 432D86E1F5;
	Sat,  7 Mar 2020 12:24:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62F036E1F5
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 Mar 2020 12:24:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20478538-1500050 
 for multiple; Sat, 07 Mar 2020 12:24:24 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  7 Mar 2020 12:24:25 +0000
Message-Id: <20200307122425.29114-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Wait for the wa batch to be pinned
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

Be sure to wait for the vma to be in place before we tell the GPU to
execute from the wa batch. Since initialisation is mostly synchronous
(or rather at some point during start up we will need to sync anyway),
we can affort to do an explicit i915_vma_sync() during wa batch
construction rather than check for a required await on every context
switch. (We don't expect to change the wa bb at run time so paying the
cost once up front seems preferrable.)

Fixes: ee2413eeed76 ("drm/i915: Add mechanism to submit a context WA on ring submission")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_ring_submission.c    | 4 ++++
 drivers/gpu/drm/i915/gt/selftest_ring_submission.c | 6 ++++++
 2 files changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 6881317a747e..1424582e4a9b 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -2015,6 +2015,10 @@ static int gen7_ctx_switch_bb_init(struct intel_engine_cs *engine)
 	if (err)
 		goto err_private;
 
+	err = i915_vma_sync(vma);
+	if (err)
+		goto err_unpin;
+
 	err = gen7_ctx_switch_bb_setup(engine, vma);
 	if (err)
 		goto err_unpin;
diff --git a/drivers/gpu/drm/i915/gt/selftest_ring_submission.c b/drivers/gpu/drm/i915/gt/selftest_ring_submission.c
index fcfddcd2a63d..9995faadd7e8 100644
--- a/drivers/gpu/drm/i915/gt/selftest_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/selftest_ring_submission.c
@@ -29,6 +29,12 @@ static struct i915_vma *create_wally(struct intel_engine_cs *engine)
 		return ERR_PTR(err);
 	}
 
+	err = i915_vma_sync(vma);
+	if (err) {
+		i915_gem_object_put(obj);
+		return ERR_PTR(err);
+	}
+
 	cs = i915_gem_object_pin_map(obj, I915_MAP_WC);
 	if (IS_ERR(cs)) {
 		i915_gem_object_put(obj);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
