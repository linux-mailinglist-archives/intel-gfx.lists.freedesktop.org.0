Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FFA011A99E
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 12:04:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC7066EB0C;
	Wed, 11 Dec 2019 11:04:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BACA6EB0C
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 11:04:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19539187-1500050 
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 11:04:36 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Dec 2019 11:04:36 +0000
Message-Id: <20191211110437.4082687-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191211110437.4082687-1-chris@chris-wilson.co.uk>
References: <20191211110437.4082687-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 4/5] drm/i915/gem: Tidy up error handling for
 eb_parse()
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

As the caller no longer uses the i915_vma result, stop returning it and
just return the error code instead.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 39 +++++++++----------
 1 file changed, 18 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 796ed5340741..13f88fc536c7 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -1982,19 +1982,24 @@ shadow_batch_pin(struct i915_execbuffer *eb, struct drm_i915_gem_object *obj)
 	return vma;
 }
 
-static struct i915_vma *eb_parse(struct i915_execbuffer *eb)
+static int eb_parse(struct i915_execbuffer *eb)
 {
 	struct intel_engine_pool_node *pool;
 	struct i915_vma *vma;
 	int err;
 
+	if (!eb_use_cmdparser(eb))
+		return 0;
+
 	pool = intel_engine_get_pool(eb->engine, eb->batch_len);
 	if (IS_ERR(pool))
-		return ERR_CAST(pool);
+		return PTR_ERR(pool);
 
 	vma = shadow_batch_pin(eb, pool->obj);
-	if (IS_ERR(vma))
+	if (IS_ERR(vma)) {
+		err = PTR_ERR(vma);
 		goto err;
+	}
 
 	err = intel_engine_cmd_parser(eb->engine,
 				      eb->batch,
@@ -2002,8 +2007,6 @@ static struct i915_vma *eb_parse(struct i915_execbuffer *eb)
 				      eb->batch_len,
 				      vma);
 	if (err) {
-		i915_vma_unpin(vma);
-
 		/*
 		 * Unsafe GGTT-backed buffers can still be submitted safely
 		 * as non-secure.
@@ -2011,11 +2014,9 @@ static struct i915_vma *eb_parse(struct i915_execbuffer *eb)
 		 * reject unsafe buffers
 		 */
 		if (i915_vma_is_ggtt(vma) && err == -EACCES)
-			/* Execute original buffer non-secure */
-			vma = NULL;
-		else
-			vma = ERR_PTR(err);
-		goto err;
+			err = 0;
+
+		goto err_unpin;
 	}
 
 	eb->vma[eb->buffer_count] = i915_vma_get(vma);
@@ -2033,11 +2034,13 @@ static struct i915_vma *eb_parse(struct i915_execbuffer *eb)
 	/* eb->batch_len unchanged */
 
 	vma->private = pool;
-	return vma;
+	return 0;
 
+err_unpin:
+	i915_vma_unpin(vma);
 err:
 	intel_engine_pool_put(pool);
-	return vma;
+	return err;
 }
 
 static void
@@ -2558,15 +2561,9 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	if (eb.batch_len == 0)
 		eb.batch_len = eb.batch->size - eb.batch_start_offset;
 
-	if (eb_use_cmdparser(&eb)) {
-		struct i915_vma *vma;
-
-		vma = eb_parse(&eb);
-		if (IS_ERR(vma)) {
-			err = PTR_ERR(vma);
-			goto err_vma;
-		}
-	}
+	err = eb_parse(&eb);
+	if (err)
+		goto err_vma;
 
 	/*
 	 * snb/ivb/vlv conflate the "batch in ppgtt" bit with the "non-secure
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
