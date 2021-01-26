Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 54A40304242
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jan 2021 16:22:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE356899B7;
	Tue, 26 Jan 2021 15:22:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E386F6E069
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Jan 2021 15:22:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23705026-1500050 for multiple; Tue, 26 Jan 2021 15:22:14 +0000
MIME-Version: 1.0
In-Reply-To: <20210126151259.253885-1-matthew.auld@intel.com>
References: <20210126151259.253885-1-matthew.auld@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
Date: Tue, 26 Jan 2021 15:22:15 +0000
Message-ID: <161167453590.2943.5378475316898786010@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH v2 1/8] drm/i915: make local-memory probing
 a GT operation
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

Quoting Matthew Auld (2021-01-26 15:12:52)
> Device local memory is very much a GT thing, therefore it should be the
> responsibility of the GT to setup the device local memory region.
> 
> Suggested-by: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt.c          | 29 +++++++++++++++++++++
>  drivers/gpu/drm/i915/gt/intel_gt.h          |  1 +
>  drivers/gpu/drm/i915/gt/intel_region_lmem.c |  3 ++-
>  drivers/gpu/drm/i915/gt/intel_region_lmem.h |  4 +--
>  drivers/gpu/drm/i915/i915_drv.c             |  4 +++
>  drivers/gpu/drm/i915/intel_memory_region.c  |  5 ++--
>  6 files changed, 40 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
> index d8e1ab412634..989cd2106b09 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -39,6 +39,35 @@ void intel_gt_init_early(struct intel_gt *gt, struct drm_i915_private *i915)
>         intel_uc_init_early(&gt->uc);
>  }
>  
> +int intel_gt_probe_lmem(struct intel_gt *gt)
> +{
> +       struct drm_i915_private *i915 = gt->i915;
> +       struct intel_memory_region *mem;
> +       int id;
> +       int err;
> +
> +       id = INTEL_REGION_LMEM;
> +       if (!HAS_REGION(i915, id))

GEM_WARN_ON() for CI checking?

Feels like something that should only be duplicated by programming
error, so worth the feedback.

> +               return 0;
> +
> +       mem = intel_gt_setup_fake_lmem(gt);
> +       if (IS_ERR(mem)) {
> +               err = PTR_ERR(mem);
> +               drm_err(&i915->drm,
> +                       "Failed to setup region(%d) type=%d\n",
> +                       err, INTEL_MEMORY_LOCAL);
> +               return err;
> +       }
> +
> +       mem->id = id;
> +       mem->type = INTEL_MEMORY_LOCAL;
> +       mem->instance = 0;
> +
> +       i915->mm.regions[id] = mem;
> +
> +       return 0;
> +}

> diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
> index 0037b81d991e..7915d0dc7e16 100644
> --- a/drivers/gpu/drm/i915/i915_drv.c
> +++ b/drivers/gpu/drm/i915/i915_drv.c
> @@ -574,6 +574,10 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
>         if (ret)
>                 goto err_ggtt;
>  
> +       ret = intel_gt_probe_lmem(&dev_priv->gt);
> +       if (ret)
> +               goto err_mem_regions;
> +
>         intel_gt_init_hw_early(&dev_priv->gt, &dev_priv->ggtt);

We also need hw_early first as that sets gt->i915 and friends.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
