Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45FC228F0FB
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Oct 2020 13:26:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C2016EC98;
	Thu, 15 Oct 2020 11:26:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF39B6EC72
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Oct 2020 11:26:34 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 15 Oct 2020 13:25:43 +0200
Message-Id: <20201015112627.1142745-20-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201015112627.1142745-1-maarten.lankhorst@linux.intel.com>
References: <20201015112627.1142745-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 19/63] drm/i915: Handle ww locking in
 init_status_page
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

Try to pin to ggtt first, and use a full ww loop to handle
eviction correctly.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c | 37 +++++++++++++++--------
 1 file changed, 24 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 1985772152bf..66d87ce764e0 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -615,6 +615,7 @@ static void cleanup_status_page(struct intel_engine_cs *engine)
 }
 
 static int pin_ggtt_status_page(struct intel_engine_cs *engine,
+				struct i915_gem_ww_ctx *ww,
 				struct i915_vma *vma)
 {
 	unsigned int flags;
@@ -635,12 +636,13 @@ static int pin_ggtt_status_page(struct intel_engine_cs *engine,
 	else
 		flags = PIN_HIGH;
 
-	return i915_ggtt_pin(vma, NULL, 0, flags);
+	return i915_ggtt_pin(vma, ww, 0, flags);
 }
 
 static int init_status_page(struct intel_engine_cs *engine)
 {
 	struct drm_i915_gem_object *obj;
+	struct i915_gem_ww_ctx ww;
 	struct i915_vma *vma;
 	void *vaddr;
 	int ret;
@@ -664,30 +666,39 @@ static int init_status_page(struct intel_engine_cs *engine)
 	vma = i915_vma_instance(obj, &engine->gt->ggtt->vm, NULL);
 	if (IS_ERR(vma)) {
 		ret = PTR_ERR(vma);
-		goto err;
+		goto err_put;
 	}
 
+	i915_gem_ww_ctx_init(&ww, true);
+retry:
+	ret = i915_gem_object_lock(obj, &ww);
+	if (!ret && !HWS_NEEDS_PHYSICAL(engine->i915))
+		ret = pin_ggtt_status_page(engine, &ww, vma);
+	if (ret)
+		goto err;
+
 	vaddr = i915_gem_object_pin_map(obj, I915_MAP_WB);
 	if (IS_ERR(vaddr)) {
 		ret = PTR_ERR(vaddr);
-		goto err;
+		goto err_unpin;
 	}
 
 	engine->status_page.addr = memset(vaddr, 0, PAGE_SIZE);
 	engine->status_page.vma = vma;
 
-	if (!HWS_NEEDS_PHYSICAL(engine->i915)) {
-		ret = pin_ggtt_status_page(engine, vma);
-		if (ret)
-			goto err_unpin;
-	}
-
-	return 0;
-
 err_unpin:
-	i915_gem_object_unpin_map(obj);
+	if (ret)
+		i915_vma_unpin(vma);
 err:
-	i915_gem_object_put(obj);
+	if (ret == -EDEADLK) {
+		ret = i915_gem_ww_ctx_backoff(&ww);
+		if (!ret)
+			goto retry;
+	}
+	i915_gem_ww_ctx_fini(&ww);
+err_put:
+	if (ret)
+		i915_gem_object_put(obj);
 	return ret;
 }
 
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
