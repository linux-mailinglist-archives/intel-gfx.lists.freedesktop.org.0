Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3209B403260
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Sep 2021 03:49:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 145CD6E0F1;
	Wed,  8 Sep 2021 01:49:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8561E6E0F1
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Sep 2021 01:49:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10100"; a="199888789"
X-IronPort-AV: E=Sophos;i="5.85,276,1624345200"; d="scan'208";a="199888789"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2021 18:49:04 -0700
X-IronPort-AV: E=Sophos;i="5.85,276,1624345200"; d="scan'208";a="605536914"
Received: from nvishwa1-desk.sc.intel.com (HELO nvishwa1-DESK) ([172.25.29.76])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2021 18:49:04 -0700
Date: Tue, 7 Sep 2021 18:49:30 -0700
From: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <20210908014930.GP11424@nvishwa1-DESK>
References: <20210830121006.2978297-1-maarten.lankhorst@linux.intel.com>
 <20210830121006.2978297-4-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20210830121006.2978297-4-maarten.lankhorst@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 03/19] drm/i915: Slightly rework
 EXEC_OBJECT_CAPTURE handling
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Aug 30, 2021 at 02:09:50PM +0200, Maarten Lankhorst wrote:
>Use a single null-terminated array for simplicity instead of a linked
>list. This might slightly speed up execbuf when many vma's may be marked
>as capture, but definitely removes an allocation from a signaling path.
>
>We are not allowed to allocate memory in eb_move_to_gpu, but we can't
>enforce it yet through annotations.
>
>Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

Looks good to me.
Reviewed-by: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>

>---
> .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 26 ++++++++++++-------
> drivers/gpu/drm/i915/i915_gpu_error.c         |  9 ++++---
> drivers/gpu/drm/i915/i915_request.c           |  9 ++-----
> drivers/gpu/drm/i915/i915_request.h           |  7 +----
> 4 files changed, 24 insertions(+), 27 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>index 8290bdadd167..4f10a81befd1 100644
>--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>@@ -255,6 +255,9 @@ struct i915_execbuffer {
> 	/** actual size of execobj[] as we may extend it for the cmdparser */
> 	unsigned int buffer_count;
>
>+	/* Number of objects with EXEC_OBJECT_CAPTURE set */
>+	unsigned int capture_count;
>+
> 	/** list of vma not yet bound during reservation phase */
> 	struct list_head unbound;
>
>@@ -859,6 +862,9 @@ static int eb_lookup_vmas(struct i915_execbuffer *eb)
> 			goto err;
> 		}
>
>+		if (eb->exec[i].flags & EXEC_OBJECT_CAPTURE)
>+			eb->capture_count++;
>+
> 		err = eb_validate_vma(eb, &eb->exec[i], vma);
> 		if (unlikely(err)) {
> 			i915_vma_put(vma);
>@@ -1890,16 +1896,8 @@ static int eb_move_to_gpu(struct i915_execbuffer *eb)
>
> 		assert_vma_held(vma);
>
>-		if (flags & EXEC_OBJECT_CAPTURE) {
>-			struct i915_capture_list *capture;
>-
>-			capture = kmalloc(sizeof(*capture), GFP_KERNEL);
>-			if (capture) {
>-				capture->next = eb->request->capture_list;
>-				capture->vma = vma;
>-				eb->request->capture_list = capture;
>-			}
>-		}
>+		if (flags & EXEC_OBJECT_CAPTURE && eb->request->capture_list)
>+			eb->request->capture_list[--eb->capture_count] = vma;
>
> 		/*
> 		 * If the GPU is not _reading_ through the CPU cache, we need
>@@ -2828,6 +2826,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
>
> 	eb.fences = NULL;
> 	eb.num_fences = 0;
>+	eb.capture_count = 0;
>
> 	eb.batch_flags = 0;
> 	if (args->flags & I915_EXEC_SECURE) {
>@@ -2956,6 +2955,13 @@ i915_gem_do_execbuffer(struct drm_device *dev,
> 		}
> 	}
>
>+	if (eb.capture_count) {
>+		eb.request->capture_list =
>+			kvcalloc(eb.capture_count + 1,
>+				 sizeof(*eb.request->capture_list),
>+				 GFP_KERNEL | __GFP_NOWARN);
>+	}
>+
> 	/*
> 	 * Whilst this request exists, batch_obj will be on the
> 	 * active_list, and so will hold the active reference. Only when this
>diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
>index b9f66dbd46bb..44d07923c8d6 100644
>--- a/drivers/gpu/drm/i915/i915_gpu_error.c
>+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
>@@ -1355,10 +1355,10 @@ capture_user(struct intel_engine_capture_vma *capture,
> 	     const struct i915_request *rq,
> 	     gfp_t gfp)
> {
>-	struct i915_capture_list *c;
>+	int i;
>
>-	for (c = rq->capture_list; c; c = c->next)
>-		capture = capture_vma(capture, c->vma, "user", gfp);
>+	for (i = 0; rq->capture_list[i]; i++)
>+		capture = capture_vma(capture, rq->capture_list[i], "user", gfp);
>
> 	return capture;
> }
>@@ -1406,7 +1406,8 @@ intel_engine_coredump_add_request(struct intel_engine_coredump *ee,
> 	 * by userspace.
> 	 */
> 	vma = capture_vma(vma, rq->batch, "batch", gfp);
>-	vma = capture_user(vma, rq, gfp);
>+	if (rq->capture_list)
>+		vma = capture_user(vma, rq, gfp);
> 	vma = capture_vma(vma, rq->ring->vma, "ring", gfp);
> 	vma = capture_vma(vma, rq->context->state, "HW context", gfp);
>
>diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
>index ce446716d092..4fca2722891c 100644
>--- a/drivers/gpu/drm/i915/i915_request.c
>+++ b/drivers/gpu/drm/i915/i915_request.c
>@@ -188,15 +188,10 @@ void i915_request_notify_execute_cb_imm(struct i915_request *rq)
>
> static void free_capture_list(struct i915_request *request)
> {
>-	struct i915_capture_list *capture;
>+	struct i915_vma **capture;
>
> 	capture = fetch_and_zero(&request->capture_list);
>-	while (capture) {
>-		struct i915_capture_list *next = capture->next;
>-
>-		kfree(capture);
>-		capture = next;
>-	}
>+	kvfree(capture);
> }
>
> static void __i915_request_fill(struct i915_request *rq, u8 val)
>diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
>index 1bc1349ba3c2..e7c8cacefcca 100644
>--- a/drivers/gpu/drm/i915/i915_request.h
>+++ b/drivers/gpu/drm/i915/i915_request.h
>@@ -48,11 +48,6 @@ struct drm_i915_gem_object;
> struct drm_printer;
> struct i915_request;
>
>-struct i915_capture_list {
>-	struct i915_capture_list *next;
>-	struct i915_vma *vma;
>-};
>-
> #define RQ_TRACE(rq, fmt, ...) do {					\
> 	const struct i915_request *rq__ = (rq);				\
> 	ENGINE_TRACE(rq__->engine, "fence %llx:%lld, current %d " fmt,	\
>@@ -271,7 +266,7 @@ struct i915_request {
> 	 * active reference - all objects on this list must also be
> 	 * on the active_list (of their final request).
> 	 */
>-	struct i915_capture_list *capture_list;
>+	struct i915_vma **capture_list;
>
> 	/** Time at which this request was emitted, in jiffies. */
> 	unsigned long emitted_jiffies;
>-- 
>2.32.0
>
