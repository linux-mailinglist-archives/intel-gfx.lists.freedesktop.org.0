Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59E2C28F110
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Oct 2020 13:27:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 505EF6EC88;
	Thu, 15 Oct 2020 11:26:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 909826EC72
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Oct 2020 11:26:36 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 15 Oct 2020 13:25:44 +0200
Message-Id: <20201015112627.1142745-21-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201015112627.1142745-1-maarten.lankhorst@linux.intel.com>
References: <20201015112627.1142745-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 20/63] drm/i915: Rework clflush to work
 correctly without obj->mm.lock.
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

Pin in the caller, not in the work itself. This should also
work better for dma-fence annotations.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_clflush.c | 15 +++++++--------
 1 file changed, 7 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_clflush.c b/drivers/gpu/drm/i915/gem/i915_gem_clflush.c
index bc0223716906..daf9284ef1f5 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_clflush.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_clflush.c
@@ -27,15 +27,8 @@ static void __do_clflush(struct drm_i915_gem_object *obj)
 static int clflush_work(struct dma_fence_work *base)
 {
 	struct clflush *clflush = container_of(base, typeof(*clflush), base);
-	struct drm_i915_gem_object *obj = clflush->obj;
-	int err;
 
-	err = i915_gem_object_pin_pages(obj);
-	if (err)
-		return err;
-
-	__do_clflush(obj);
-	i915_gem_object_unpin_pages(obj);
+	__do_clflush(clflush->obj);
 
 	return 0;
 }
@@ -44,6 +37,7 @@ static void clflush_release(struct dma_fence_work *base)
 {
 	struct clflush *clflush = container_of(base, typeof(*clflush), base);
 
+	i915_gem_object_unpin_pages(clflush->obj);
 	i915_gem_object_put(clflush->obj);
 }
 
@@ -63,6 +57,11 @@ static struct clflush *clflush_work_create(struct drm_i915_gem_object *obj)
 	if (!clflush)
 		return NULL;
 
+	if (__i915_gem_object_get_pages(obj) < 0) {
+		kfree(clflush);
+		return NULL;
+	}
+
 	dma_fence_work_init(&clflush->base, &clflush_ops);
 	clflush->obj = i915_gem_object_get(obj); /* obj <-> clflush cycle */
 
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
