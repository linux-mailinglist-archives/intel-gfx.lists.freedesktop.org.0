Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA63E152A1E
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2020 12:43:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65AD089A9B;
	Wed,  5 Feb 2020 11:43:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95D3D89A9B
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Feb 2020 11:43:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20123316-1500050 for multiple; Wed, 05 Feb 2020 11:43:37 +0000
MIME-Version: 1.0
To: Ramalingam C <ramalingam.c@intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200205114019.10900-1-ramalingam.c@intel.com>
References: <20200205114019.10900-1-ramalingam.c@intel.com>
Message-ID: <158090301517.3271.5811178288757995505@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 05 Feb 2020 11:43:35 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: align dumb buffer stride to
 page_sz of the region
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

Quoting Ramalingam C (2020-02-05 11:40:19)
> If stride of the dumb buffer requested is greater than the primary
> plane's max stride, then we align the stride to the page size. But the
> page size was hard coded for 4096.
> 
> With the lmem addition, lets align the stride to the page size of the
> memory region that will be used for dumb buffer.
> 
> Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
> cc: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/i915_gem.c | 20 +++++++++-----------
>  1 file changed, 9 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
> index a712e60b016a..0f01396ca24e 100644
> --- a/drivers/gpu/drm/i915/i915_gem.c
> +++ b/drivers/gpu/drm/i915/i915_gem.c
> @@ -239,8 +239,9 @@ i915_gem_dumb_create(struct drm_file *file,
>                      struct drm_device *dev,
>                      struct drm_mode_create_dumb *args)
>  {
> -       enum intel_memory_type mem_type;
>         int cpp = DIV_ROUND_UP(args->bpp, 8);
> +       enum intel_memory_type mem_type;
> +       struct intel_memory_region *mr;
>         u32 format;
>  
>         switch (cpp) {
> @@ -260,24 +261,21 @@ i915_gem_dumb_create(struct drm_file *file,
>         /* have to work out size/pitch and return them */
>         args->pitch = ALIGN(args->width * cpp, 64);
>  
> +       mem_type = INTEL_MEMORY_SYSTEM;
> +       if (HAS_LMEM(to_i915(dev)))
> +               mem_type = INTEL_MEMORY_LOCAL;
> +       mr = intel_memory_region_by_type(to_i915(dev), mem_type);
> +
>         /* align stride to page size so that we can remap */
>         if (args->pitch > intel_plane_fb_max_stride(to_i915(dev), format,
>                                                     DRM_FORMAT_MOD_LINEAR))
> -               args->pitch = ALIGN(args->pitch, 4096);
> +               args->pitch = ALIGN(args->pitch, mr->min_page_size);

That should be ggtt-page size, different semantics, right?
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
