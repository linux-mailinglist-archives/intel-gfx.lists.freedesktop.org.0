Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4759A304277
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jan 2021 16:26:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B214289C28;
	Tue, 26 Jan 2021 15:26:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D440D89BF8
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Jan 2021 15:26:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23705075-1500050 for multiple; Tue, 26 Jan 2021 15:26:43 +0000
MIME-Version: 1.0
In-Reply-To: <20210126151259.253885-2-matthew.auld@intel.com>
References: <20210126151259.253885-1-matthew.auld@intel.com>
 <20210126151259.253885-2-matthew.auld@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
Date: Tue, 26 Jan 2021 15:26:45 +0000
Message-ID: <161167480557.2943.15902429448733919158@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH v2 2/8] drm/i915: setup the LMEM region
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Matthew Auld (2021-01-26 15:12:53)
> Hook up the LMEM region. Addresses will start from zero, and for CPU
> access we get LMEM_BAR which is just a 1:1 mapping of said region.
> 
> Based on a patch from Michel Thierry.
> 
> v2 by Jani:
> - use intel_uncore_read/intel_uncore_write
> - remove trailing blank line
> 
> v3: s/drm_info/drm_dbg for info which in non-pertinent for the user
> 
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt.c          | 12 ++++++--
>  drivers/gpu/drm/i915/gt/intel_region_lmem.c | 32 +++++++++++++++++++++
>  drivers/gpu/drm/i915/gt/intel_region_lmem.h |  2 ++
>  3 files changed, 44 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
> index 989cd2106b09..78866e766989 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -42,7 +42,7 @@ void intel_gt_init_early(struct intel_gt *gt, struct drm_i915_private *i915)
>  int intel_gt_probe_lmem(struct intel_gt *gt)
>  {
>         struct drm_i915_private *i915 = gt->i915;
> -       struct intel_memory_region *mem;
> +       struct intel_memory_region *mem = ERR_PTR(-ENODEV);
>         int id;
>         int err;
>  
> @@ -50,7 +50,15 @@ int intel_gt_probe_lmem(struct intel_gt *gt)
>         if (!HAS_REGION(i915, id))
>                 return 0;
>  
> -       mem = intel_gt_setup_fake_lmem(gt);
> +#if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
> +       if (IS_ENABLED(CONFIG_DRM_I915_UNSTABLE_FAKE_LMEM)) {
> +               if (INTEL_GEN(i915) >= 9 && i915_selftest.live < 0 &&
> +                   i915->params.fake_lmem_start)
> +                       mem = intel_gt_setup_fake_lmem(gt);
> +       }
> +#endif
> +       if (IS_ERR(mem))
> +               mem = intel_gt_setup_lmem(gt);

You would rather have fake lmem over real. (Not that two should be able
to co-exist.) Just the semantics of the ordering looks odd.

I would have gone

	mem = intel_gt_setup_lmem(gt);
	if (mem == PTR_ERR(-ENODEV))
		mem = intel_gt_setup_fake_lmem(gt);

>         if (IS_ERR(mem)) {
>                 err = PTR_ERR(mem);
>                 drm_err(&i915->drm,
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
