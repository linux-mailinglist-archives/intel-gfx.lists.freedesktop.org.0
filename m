Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 996B523A72A
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Aug 2020 15:04:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC0E96E284;
	Mon,  3 Aug 2020 13:04:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 306 seconds by postgrey-1.36 at gabe;
 Sun, 02 Aug 2020 11:20:45 UTC
Received: from out30-43.freemail.mail.aliyun.com
 (out30-43.freemail.mail.aliyun.com [115.124.30.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C6786E0F2
 for <intel-gfx@lists.freedesktop.org>; Sun,  2 Aug 2020 11:20:44 +0000 (UTC)
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R171e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01f04397;
 MF=tianjia.zhang@linux.alibaba.com; NM=1; PH=DS; RN=14; SR=0;
 TI=SMTPD_---0U4T30D9_1596366934; 
Received: from localhost(mailfrom:tianjia.zhang@linux.alibaba.com
 fp:SMTPD_---0U4T30D9_1596366934) by smtp.aliyun-inc.com(127.0.0.1);
 Sun, 02 Aug 2020 19:15:34 +0800
From: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch,
 chris@chris-wilson.co.uk, matthew.auld@intel.com, tvrtko.ursulin@intel.com,
 mika.kuoppala@linux.intel.com, andi.shyti@intel.com
Date: Sun,  2 Aug 2020 19:15:34 +0800
Message-Id: <20200802111534.5155-1-tianjia.zhang@linux.alibaba.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Approved-At: Mon, 03 Aug 2020 13:04:28 +0000
Subject: [Intel-gfx] [PATCH] drm/i915: Fix wrong return value
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
Cc: tianjia.zhang@alibaba.com, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In function i915_active_acquire_preallocate_barrier(), not all
paths have the return value set correctly, and in case of memory
allocation failure, a negative error code should be returned.

Cc: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>
---
 drivers/gpu/drm/i915/i915_active.c            | 4 ++--
 drivers/gpu/drm/i915/selftests/i915_request.c | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i915_active.c
index d960d0be5bd2..cc017e3cc9c5 100644
--- a/drivers/gpu/drm/i915/i915_active.c
+++ b/drivers/gpu/drm/i915/i915_active.c
@@ -758,7 +758,7 @@ int i915_active_acquire_preallocate_barrier(struct i915_active *ref,
 	intel_engine_mask_t tmp, mask = engine->mask;
 	struct llist_node *first = NULL, *last = NULL;
 	struct intel_gt *gt = engine->gt;
-	int err;
+	int err = 0;
 
 	GEM_BUG_ON(i915_active_is_idle(ref));
 
@@ -782,7 +782,7 @@ int i915_active_acquire_preallocate_barrier(struct i915_active *ref,
 		if (!node) {
 			node = kmem_cache_alloc(global.slab_cache, GFP_KERNEL);
 			if (!node) {
-				err = ENOMEM;
+				err = -ENOMEM;
 				goto unwind;
 			}
 
diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu/drm/i915/selftests/i915_request.c
index 6014e8dfcbb1..dda801a87b8a 100644
--- a/drivers/gpu/drm/i915/selftests/i915_request.c
+++ b/drivers/gpu/drm/i915/selftests/i915_request.c
@@ -326,7 +326,7 @@ static int __igt_breadcrumbs_smoketest(void *arg)
 		if (!wait) {
 			i915_sw_fence_commit(submit);
 			heap_fence_put(submit);
-			err = ENOMEM;
+			err = -ENOMEM;
 			break;
 		}
 
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
