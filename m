Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DDDA300688
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Jan 2021 16:06:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4445D6EA10;
	Fri, 22 Jan 2021 15:06:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 527456EA12
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Jan 2021 15:06:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23672681-1500050 
 for multiple; Fri, 22 Jan 2021 15:06:23 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 22 Jan 2021 15:06:20 +0000
Message-Id: <20210122150622.21088-8-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210122150622.21088-1-chris@chris-wilson.co.uk>
References: <20210122150622.21088-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/10] drm/i915/gt: Replace unnecessary ',' with
 '; '
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

Checkpatch spotted a couple of commas where we can use the more common
';', and so not worry about the subtle implications of sequence points.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/gen6_ppgtt.h        | 4 ++--
 drivers/gpu/drm/i915/gt/intel_region_lmem.c | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/gen6_ppgtt.h b/drivers/gpu/drm/i915/gt/gen6_ppgtt.h
index 3357228f3304..6a61a5c3a85a 100644
--- a/drivers/gpu/drm/i915/gt/gen6_ppgtt.h
+++ b/drivers/gpu/drm/i915/gt/gen6_ppgtt.h
@@ -59,9 +59,9 @@ static inline struct gen6_ppgtt *to_gen6_ppgtt(struct i915_ppgtt *base)
 	for (iter = gen6_pde_index(start);				\
 	     length > 0 && iter < I915_PDES &&				\
 		     (pt = i915_pt_entry(pd, iter), true);		\
-	     ({ u32 temp = ALIGN(start+1, 1 << GEN6_PDE_SHIFT);		\
+	     ({ u32 temp = ALIGN(start + 1, 1 << GEN6_PDE_SHIFT);	\
 		    temp = min(temp - start, length);			\
-		    start += temp, length -= temp; }), ++iter)
+		    start += temp; length -= temp; }), ++iter)
 
 #define gen6_for_all_pdes(pt, pd, iter)					\
 	for (iter = 0;							\
diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
index 60393ce5614d..28a1d5e1fb92 100644
--- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
+++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
@@ -115,7 +115,7 @@ intel_setup_fake_lmem(struct drm_i915_private *i915)
 
 	/* Your mappable aperture belongs to me now! */
 	mappable_end = pci_resource_len(pdev, 2);
-	io_start = pci_resource_start(pdev, 2),
+	io_start = pci_resource_start(pdev, 2);
 	start = i915->params.fake_lmem_start;
 
 	mem = intel_memory_region_create(i915,
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
