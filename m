Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AEF112DC58
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jan 2020 00:50:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 341406E28E;
	Tue, 31 Dec 2019 23:50:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56E126E28E
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Dec 2019 23:50:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19737883-1500050 for multiple; Tue, 31 Dec 2019 23:50:29 +0000
MIME-Version: 1.0
To: Ramalingam C <ramalingam.c@intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191230132351.17487-4-ramalingam.c@intel.com>
References: <20191230132351.17487-1-ramalingam.c@intel.com>
 <20191230132351.17487-4-ramalingam.c@intel.com>
Message-ID: <157783622738.11133.14762984348391872908@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 31 Dec 2019 23:50:27 +0000
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/dumb: return the allocated
 memory size
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

Quoting Ramalingam C (2019-12-30 13:23:51)
> On successful allocation, instead returning the requested size
> return the total size of allocated pages.
> 
> Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_gem.c | 13 +++++++++++--
>  1 file changed, 11 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
> index 7f39df3fab7f..5a53de797852 100644
> --- a/drivers/gpu/drm/i915/i915_gem.c
> +++ b/drivers/gpu/drm/i915/i915_gem.c
> @@ -241,7 +241,9 @@ i915_gem_dumb_create(struct drm_file *file,
>  {
>         enum intel_memory_type mem_type = INTEL_MEMORY_SYSTEM;
>         int cpp = DIV_ROUND_UP(args->bpp, 8);
> +       struct intel_memory_region *mr;
>         u32 format;
> +       int ret;
>  
>         switch (cpp) {
>         case 1:
> @@ -270,8 +272,15 @@ i915_gem_dumb_create(struct drm_file *file,
>         if (HAS_LMEM(to_i915(dev)))
>                 mem_type = INTEL_MEMORY_LOCAL;
>  
> -       return i915_gem_create(file, to_i915(dev), mem_type,
> -                              &args->size, &args->handle);
> +       ret = i915_gem_create(file, to_i915(dev), mem_type,
> +                             &args->size, &args->handle);
> +       if (ret)
> +               goto out;
> +
> +       mr = intel_memory_region_by_type(to_i915(dev), mem_type);
> +       args->size = ALIGN(args->size, mr->min_page_size);

How? How did we create an object that was not a multiple of the minimum
page size?

(Besides you should be using obj->mm.region here rather than assuming,
so more rearrangement if this is the right approach.)
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
