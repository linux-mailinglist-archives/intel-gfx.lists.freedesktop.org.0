Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BD75329035E
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Oct 2020 12:45:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F1476EB95;
	Fri, 16 Oct 2020 10:45:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 955886EABE
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Oct 2020 10:44:54 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Oct 2020 12:44:34 +0200
Message-Id: <20201016104444.1492028-52-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201016104444.1492028-1-maarten.lankhorst@linux.intel.com>
References: <20201016104444.1492028-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 51/61] drm/i915/selftests: Prepare hangcheck
 for obj->mm.lock removal
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

Convert a few calls to use the unlocked versions.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
index fb5ebf930ab2..e3027cebab5b 100644
--- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
+++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
@@ -80,15 +80,15 @@ static int hang_init(struct hang *h, struct intel_gt *gt)
 	}
 
 	i915_gem_object_set_cache_coherency(h->hws, I915_CACHE_LLC);
-	vaddr = i915_gem_object_pin_map(h->hws, I915_MAP_WB);
+	vaddr = i915_gem_object_pin_map_unlocked(h->hws, I915_MAP_WB);
 	if (IS_ERR(vaddr)) {
 		err = PTR_ERR(vaddr);
 		goto err_obj;
 	}
 	h->seqno = memset(vaddr, 0xff, PAGE_SIZE);
 
-	vaddr = i915_gem_object_pin_map(h->obj,
-					i915_coherent_map_type(gt->i915));
+	vaddr = i915_gem_object_pin_map_unlocked(h->obj,
+						 i915_coherent_map_type(gt->i915));
 	if (IS_ERR(vaddr)) {
 		err = PTR_ERR(vaddr);
 		goto err_unpin_hws;
@@ -149,7 +149,7 @@ hang_create_request(struct hang *h, struct intel_engine_cs *engine)
 		return ERR_CAST(obj);
 	}
 
-	vaddr = i915_gem_object_pin_map(obj, i915_coherent_map_type(gt->i915));
+	vaddr = i915_gem_object_pin_map_unlocked(obj, i915_coherent_map_type(gt->i915));
 	if (IS_ERR(vaddr)) {
 		i915_gem_object_put(obj);
 		i915_vm_put(vm);
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
