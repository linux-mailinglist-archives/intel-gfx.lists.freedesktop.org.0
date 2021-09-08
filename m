Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECE6A4032ED
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Sep 2021 05:34:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CA326E0F7;
	Wed,  8 Sep 2021 03:34:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E62796E0F7
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Sep 2021 03:34:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10100"; a="207487921"
X-IronPort-AV: E=Sophos;i="5.85,276,1624345200"; d="scan'208";a="207487921"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2021 20:34:34 -0700
X-IronPort-AV: E=Sophos;i="5.85,276,1624345200"; d="scan'208";a="538320534"
Received: from nvishwa1-desk.sc.intel.com (HELO nvishwa1-DESK) ([172.25.29.76])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2021 20:34:34 -0700
Date: Tue, 7 Sep 2021 20:35:00 -0700
From: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <20210908033500.GR11424@nvishwa1-DESK>
References: <20210830121006.2978297-1-maarten.lankhorst@linux.intel.com>
 <20210830121006.2978297-16-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20210830121006.2978297-16-maarten.lankhorst@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 15/19] drm/i915: Remove support for unlocked
 i915_vma unbind
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

On Mon, Aug 30, 2021 at 02:10:02PM +0200, Maarten Lankhorst wrote:
>Now that we require the object lock for all ops, some code handling
>race conditions can be removed.
>
>This is required to not take short-term pins inside execbuf.
>

Ok I get it, as i915_vma_unbind() is now called uner obj lock
we don't need these race handling. But would like someone else
also take a look.

Acked-by: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>

>Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>---
> drivers/gpu/drm/i915/i915_vma.c | 40 +++++----------------------------
> 1 file changed, 5 insertions(+), 35 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
>index da54e6882650..f6dacfc3e840 100644
>--- a/drivers/gpu/drm/i915/i915_vma.c
>+++ b/drivers/gpu/drm/i915/i915_vma.c
>@@ -748,7 +748,6 @@ i915_vma_detach(struct i915_vma *vma)
> static bool try_qad_pin(struct i915_vma *vma, unsigned int flags)
> {
> 	unsigned int bound;
>-	bool pinned = true;
>
> 	bound = atomic_read(&vma->flags);
> 	do {
>@@ -758,34 +757,10 @@ static bool try_qad_pin(struct i915_vma *vma, unsigned int flags)
> 		if (unlikely(bound & (I915_VMA_OVERFLOW | I915_VMA_ERROR)))
> 			return false;
>
>-		if (!(bound & I915_VMA_PIN_MASK))
>-			goto unpinned;
>-
> 		GEM_BUG_ON(((bound + 1) & I915_VMA_PIN_MASK) == 0);
> 	} while (!atomic_try_cmpxchg(&vma->flags, &bound, bound + 1));
>
> 	return true;
>-
>-unpinned:
>-	/*
>-	 * If pin_count==0, but we are bound, check under the lock to avoid
>-	 * racing with a concurrent i915_vma_unbind().
>-	 */
>-	mutex_lock(&vma->vm->mutex);
>-	do {
>-		if (unlikely(bound & (I915_VMA_OVERFLOW | I915_VMA_ERROR))) {
>-			pinned = false;
>-			break;
>-		}
>-
>-		if (unlikely(flags & ~bound)) {
>-			pinned = false;
>-			break;
>-		}
>-	} while (!atomic_try_cmpxchg(&vma->flags, &bound, bound + 1));
>-	mutex_unlock(&vma->vm->mutex);
>-
>-	return pinned;
> }
>
>
>@@ -1085,13 +1060,7 @@ __i915_vma_get_pages(struct i915_vma *vma)
> 			vma->ggtt_view.type, ret);
> 	}
>
>-	pages = xchg(&vma->pages, pages);
>-
>-	/* did we race against a put_pages? */
>-	if (pages && pages != vma->obj->mm.pages) {
>-		sg_free_table(vma->pages);
>-		kfree(vma->pages);
>-	}
>+	vma->pages = pages;
>
> 	return ret;
> }
>@@ -1125,13 +1094,14 @@ I915_SELFTEST_EXPORT int i915_vma_get_pages(struct i915_vma *vma)
> static void __vma_put_pages(struct i915_vma *vma, unsigned int count)
> {
> 	/* We allocate under vma_get_pages, so beware the shrinker */
>-	struct sg_table *pages = READ_ONCE(vma->pages);
>+	struct sg_table *pages = vma->pages;
>
> 	GEM_BUG_ON(atomic_read(&vma->pages_count) < count);
>
> 	if (atomic_sub_return(count, &vma->pages_count) == 0) {
>-		if (pages == cmpxchg(&vma->pages, pages, NULL) &&
>-		    pages != vma->obj->mm.pages) {
>+		vma->pages = NULL;
>+
>+		if (pages != vma->obj->mm.pages) {
> 			sg_free_table(pages);
> 			kfree(pages);
> 		}
>-- 
>2.32.0
>
