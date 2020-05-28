Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 871B11E5AAC
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2020 10:24:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AD316E4F3;
	Thu, 28 May 2020 08:24:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 959D16E4F3
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 May 2020 08:24:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21318662-1500050 
 for multiple; Thu, 28 May 2020 09:24:27 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 May 2020 09:24:26 +0100
Message-Id: <20200528082427.21402-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/gt: Restore both GGTT bindings on
 resume
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

We should be able to skip restoing LOCAL (user) binds within the GGTT on
resume and let them be restored upon demand. However, our consistency
checks demand that the bind flags match the node state, and we cannot
simply clear the flags we need to evict as well. For now, make sure we
restore the bind flags exactly upon resume.

Fixes: 0109a16ef391 ("drm/i915/gt: Clear LOCAL_BIND from shared GGTT on resume")
Fixes: bf0840cdb304 ("drm/i915/gt: Stop cross-polluting PIN_GLOBAL with PIN_USER with no-ppgtt")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_ggtt.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 317172ad5ef3..ffe285b0b3bd 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -1183,13 +1183,11 @@ void i915_ggtt_resume(struct i915_ggtt *ggtt)
 	/* clflush objects bound into the GGTT and rebind them. */
 	list_for_each_entry(vma, &ggtt->vm.bound_list, vm_link) {
 		struct drm_i915_gem_object *obj = vma->obj;
-
-		if (!(clear_bind(vma) & I915_VMA_GLOBAL_BIND))
-			continue;
+		unsigned int was_bound = clear_bind(vma);
 
 		WARN_ON(i915_vma_bind(vma,
 				      obj ? obj->cache_level : 0,
-				      PIN_GLOBAL, NULL));
+				      was_bound, NULL));
 		if (obj) { /* only used during resume => exclusive access */
 			flush |= fetch_and_zero(&obj->write_domain);
 			obj->read_domains |= I915_GEM_DOMAIN_GTT;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
