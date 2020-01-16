Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 557B913F988
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2020 20:31:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B20C66EEA9;
	Thu, 16 Jan 2020 19:31:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBF3C6EEA9
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jan 2020 19:31:33 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19907078-1500050 for multiple; Thu, 16 Jan 2020 19:31:32 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20200116192809.843138-1-matthew.auld@intel.com>
In-Reply-To: <20200116192809.843138-1-matthew.auld@intel.com>
Message-ID: <157920308930.7612.1725245379069718774@skylake-alporthouse-com>
Date: Thu, 16 Jan 2020 19:31:29 +0000
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/userptr: add user_size limit
 check
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

Quoting Matthew Auld (2020-01-16 19:28:08)
> Don't allow a mismatch between obj->base.size/vma->size and the actual
> number of pages for the backing store, which is limited to INT_MAX
> pages.
> 
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_userptr.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
> index e5558af111e2..fef96a303d9d 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
> @@ -768,6 +768,18 @@ i915_gem_userptr_ioctl(struct drm_device *dev,
>         if (args->flags & ~(I915_USERPTR_READ_ONLY |
>                             I915_USERPTR_UNSYNCHRONIZED))
>                 return -EINVAL;
> +       /*
> +        * XXX: There is a prevalence of the assumption that we fit the
> +        * object's page count inside a 32bit _signed_ variable. Let's document
> +        * this and catch if we ever need to fix it. In the meantime, if you do
> +        * spot such a local variable, please consider fixing!
> +        */
> +
> +       if (args->user_size >> PAGE_SHIFT > INT_MAX)
> +               return -E2BIG;

Are we not safe yet?

> +
> +       if (overflows_type(args->user_size, obj->base.size))
> +               return -E2BIG;

Ok.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
