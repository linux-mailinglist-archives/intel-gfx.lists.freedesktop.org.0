Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 88AFC18F36F
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 12:08:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE46D89854;
	Mon, 23 Mar 2020 11:08:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38D7E89854
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 11:08:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20659120-1500050 for multiple; Mon, 23 Mar 2020 11:08:46 +0000
MIME-Version: 1.0
In-Reply-To: <20200323110301.38806-1-matthew.auld@intel.com>
References: <20200323110301.38806-1-matthew.auld@intel.com>
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158496172628.17851.17603065472117720410@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 23 Mar 2020 11:08:46 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests/perf: watch out for
 stolen objects
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

Quoting Matthew Auld (2020-03-23 11:03:01)
> Stolen memory is allocated at creation, returning -ENOSPC if we run out
> space.

Sigh. Eviction was always a planned feature for stolen, for when we
exposed it to userspace. We should have just done that to flesh out the
driver APIs and uAPI.

> Closes: https://gitlab.freedesktop.org/drm/intel/issues/1424
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> ---
>  drivers/gpu/drm/i915/selftests/intel_memory_region.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/selftests/intel_memory_region.c b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
> index 2a1d4ba1f9f3..6e80d99048e4 100644
> --- a/drivers/gpu/drm/i915/selftests/intel_memory_region.c
> +++ b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
> @@ -594,8 +594,11 @@ create_region_for_mapping(struct intel_memory_region *mr, u64 size, u32 type,
>         void *addr;
>  
>         obj = i915_gem_object_create_region(mr, size, 0);
> -       if (IS_ERR(obj))
> +       if (IS_ERR(obj)) {
> +               if (PTR_ERR(obj) == -ENOSPC) /* Stolen memory */
> +                       return ERR_PTR(-ENODEV);

Ok, we can live with this for now.
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
