Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB9C315C5FD
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2020 17:11:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30A686E348;
	Thu, 13 Feb 2020 16:11:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DF9B6E33F
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Feb 2020 16:11:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20213931-1500050 
 for multiple; Thu, 13 Feb 2020 16:11:24 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 13 Feb 2020 16:11:21 +0000
Message-Id: <20200213161122.3689609-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/gt: Ensure 'ENABLE_BOOT_FETCH' is
 enabled before ppGTT
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

Cryptic notes in bspec say that "The MBC Driver Boot Enable bit in MBCTL
register must be set before this register is written to upon boot up
(including S3 exit)."

We tried adding it to our list of verified workarounds, but our
self checks spot that the bit does not stick. It's only meant to be
cleared after a FLR. As it fails our verification, just blindly apply
the bit prior to loading the ppGTT.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_ring_submission.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index f70b903a98bc..ab58694c3320 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -642,6 +642,9 @@ static void set_pp_dir(struct intel_engine_cs *engine)
 	if (vm) {
 		struct i915_ppgtt *ppgtt = i915_vm_to_ppgtt(vm);
 
+		intel_uncore_rmw(engine->uncore, GEN6_MBCTL,
+				 0, GEN6_MBCTL_ENABLE_BOOT_FETCH);
+
 		ENGINE_WRITE(engine, RING_PP_DIR_DCLV, PP_DIR_DCLV_2G);
 		ENGINE_WRITE(engine, RING_PP_DIR_BASE,
 			     px_base(ppgtt->pd)->ggtt_offset << 10);
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
