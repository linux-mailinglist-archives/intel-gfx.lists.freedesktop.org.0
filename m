Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F12B2FCE22
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Jan 2021 11:52:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FC0689BD5;
	Wed, 20 Jan 2021 10:52:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7223F89BD5
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Jan 2021 10:51:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23648084-1500050 for multiple; Wed, 20 Jan 2021 10:51:56 +0000
MIME-Version: 1.0
In-Reply-To: <20210120104714.112812-1-matthew.auld@intel.com>
References: <20210120104714.112812-1-matthew.auld@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
Date: Wed, 20 Jan 2021 10:51:56 +0000
Message-ID: <161113991615.24677.1589749725354420811@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915/region: don't leak the object on
 error
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

Quoting Matthew Auld (2021-01-20 10:47:14)
> Sanity check the object size before allocating a new gem object.
> 
> Fixes: 97d553963250 ("drm/i915/region: convert object_create into object_init")
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_region.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_region.c b/drivers/gpu/drm/i915/gem/i915_gem_region.c
> index 4834a0b272f4..3e3dad22a683 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_region.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_region.c
> @@ -161,10 +161,6 @@ i915_gem_object_create_region(struct intel_memory_region *mem,
>         GEM_BUG_ON(!size);
>         GEM_BUG_ON(!IS_ALIGNED(size, I915_GTT_MIN_ALIGNMENT));
>  
> -       obj = i915_gem_object_alloc();
> -       if (!obj)
> -               return ERR_PTR(-ENOMEM);
> -
>         /*
>          * XXX: There is a prevalence of the assumption that we fit the
>          * object's page count inside a 32bit _signed_ variable. Let's document
> @@ -178,6 +174,10 @@ i915_gem_object_create_region(struct intel_memory_region *mem,
>         if (overflows_type(size, obj->base.size))
>                 return ERR_PTR(-E2BIG);
>  
> +       obj = i915_gem_object_alloc();
> +       if (!obj)
> +               return ERR_PTR(-ENOMEM);

My bad, I should have checked. It does remind me we really should drop
the INT_MAX << PAGE_SHIFT rejection at some point.

Ok, that was the only slip all the others have their parameter checking
before the alloc, with the few error paths that are after the alloc
doing cleanup.

Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
