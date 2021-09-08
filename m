Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 999B3403209
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Sep 2021 03:03:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9BF66E0EA;
	Wed,  8 Sep 2021 01:03:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87EB46E0EA
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Sep 2021 01:03:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10100"; a="284058886"
X-IronPort-AV: E=Sophos;i="5.85,276,1624345200"; d="scan'208";a="284058886"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2021 18:03:42 -0700
X-IronPort-AV: E=Sophos;i="5.85,276,1624345200"; d="scan'208";a="478943630"
Received: from nvishwa1-desk.sc.intel.com (HELO nvishwa1-DESK) ([172.25.29.76])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2021 18:03:41 -0700
Date: Tue, 7 Sep 2021 18:04:07 -0700
From: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <20210908010407.GL11424@nvishwa1-DESK>
References: <20210830121006.2978297-1-maarten.lankhorst@linux.intel.com>
 <20210830121006.2978297-10-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20210830121006.2978297-10-maarten.lankhorst@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 09/19] drm/i915: Change shrink ordering to
 use locking around unbinding.
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

On Mon, Aug 30, 2021 at 02:09:56PM +0200, Maarten Lankhorst wrote:
>Call drop_pages with the gem object lock held, instead of the other
>way around. This will allow us to drop the vma bindings with the
>gem object lock held.
>
>We plan to require the object lock for unpinning in the future,
>and this is an easy target.
>
>Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

Looks good to me, we need this for upcoming vm_bind as well.
Reviewed-by: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>

>---
> drivers/gpu/drm/i915/gem/i915_gem_shrinker.c | 42 ++++++++++----------
> 1 file changed, 21 insertions(+), 21 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
>index 5ab136ffdeb2..7f7849b6296d 100644
>--- a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
>+++ b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
>@@ -37,8 +37,8 @@ static bool can_release_pages(struct drm_i915_gem_object *obj)
> 	return swap_available() || obj->mm.madv == I915_MADV_DONTNEED;
> }
>
>-static bool unsafe_drop_pages(struct drm_i915_gem_object *obj,
>-			      unsigned long shrink, bool trylock_vm)
>+static int drop_pages(struct drm_i915_gem_object *obj,
>+		       unsigned long shrink, bool trylock_vm)
> {
> 	unsigned long flags;
>
>@@ -209,27 +209,27 @@ i915_gem_shrink(struct i915_gem_ww_ctx *ww,
>
> 			spin_unlock_irqrestore(&i915->mm.obj_lock, flags);
>
>-			err = 0;
>-			if (unsafe_drop_pages(obj, shrink, trylock_vm)) {
>-				/* May arrive from get_pages on another bo */
>-				if (!ww) {
>-					if (!i915_gem_object_trylock(obj))
>-						goto skip;
>-				} else {
>-					err = i915_gem_object_lock(obj, ww);
>-					if (err)
>-						goto skip;
>-				}
>-
>-				if (!__i915_gem_object_put_pages(obj)) {
>-					try_to_writeback(obj, shrink);
>-					count += obj->base.size >> PAGE_SHIFT;
>-				}
>-				if (!ww)
>-					i915_gem_object_unlock(obj);
>+			/* May arrive from get_pages on another bo */
>+			if (!ww) {
>+				if (!i915_gem_object_trylock(obj))
>+					goto skip;
>+			} else {
>+				err = i915_gem_object_lock(obj, ww);
>+				if (err)
>+					goto skip;
> 			}
>
>-			dma_resv_prune(obj->base.resv);
>+			if (drop_pages(obj, shrink, trylock_vm) &&
>+			    !__i915_gem_object_put_pages(obj)) {
>+				try_to_writeback(obj, shrink);
>+				count += obj->base.size >> PAGE_SHIFT;
>+			}
>+
>+			if (dma_resv_test_signaled(obj->base.resv, true))
>+				dma_resv_add_excl_fence(obj->base.resv, NULL);
>+
>+			if (!ww)
>+				i915_gem_object_unlock(obj);
>
> 			scanned += obj->base.size >> PAGE_SHIFT;
> skip:
>-- 
>2.32.0
>
