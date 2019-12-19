Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E81DC1260C5
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2019 12:25:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C41966EB48;
	Thu, 19 Dec 2019 11:25:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 064776EB48
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2019 11:25:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19631847-1500050 for multiple; Thu, 19 Dec 2019 11:24:55 +0000
MIME-Version: 1.0
To: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191219112122.4892-1-abdiel.janulgue@linux.intel.com>
References: <20191219112122.4892-1-abdiel.janulgue@linux.intel.com>
Message-ID: <157675469244.6469.8676811282094758231@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 19 Dec 2019 11:24:52 +0000
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: allow prefaulting
 discontiguous objects in remap_io_mapping()
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

Quoting Abdiel Janulgue (2019-12-19 11:21:20)
> Provide a way to set the PTE of the physical address of kernel memory in
> addition to just incrementing the pfn for a page range.
> 
> Signed-off-by: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_mman.c |  1 +
>  drivers/gpu/drm/i915/i915_drv.h          |  4 +++-
>  drivers/gpu/drm/i915/i915_mm.c           | 17 ++++++++++++++---
>  3 files changed, 18 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> index 879fff8adc48..aa5d6623d86c 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> @@ -360,6 +360,7 @@ static vm_fault_t vm_fault_gtt(struct vm_fault *vmf)
>                                area->vm_start + (vma->ggtt_view.partial.offset << PAGE_SHIFT),
>                                (ggtt->gmadr.start + vma->node.start) >> PAGE_SHIFT,
>                                min_t(u64, vma->size, area->vm_end - area->vm_start),
> +                              NULL,
>                                &ggtt->iomap);
>         if (ret)
>                 goto err_fence;
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 0781b6326b8c..5ee0fe4d492b 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -2015,9 +2015,11 @@ int i915_reg_read_ioctl(struct drm_device *dev, void *data,
>         intel_de_wait_for_register((dev_priv_), (reg_), (mask_), 0, (timeout_))
>  
>  /* i915_mm.c */
> +typedef unsigned long (*io_pfn_t)(struct drm_i915_gem_object *obj,
> +                                 unsigned long n);
>  int remap_io_mapping(struct vm_area_struct *vma,
>                      unsigned long addr, unsigned long pfn, unsigned long size,
> -                    struct io_mapping *iomap);
> +                    io_pfn_t fn, struct io_mapping *iomap);
>  
>  static inline int intel_hws_csb_write_index(struct drm_i915_private *i915)
>  {
> diff --git a/drivers/gpu/drm/i915/i915_mm.c b/drivers/gpu/drm/i915/i915_mm.c
> index 318562ce64c0..86a73444bed4 100644
> --- a/drivers/gpu/drm/i915/i915_mm.c
> +++ b/drivers/gpu/drm/i915/i915_mm.c
> @@ -32,7 +32,11 @@
>  struct remap_pfn {
>         struct mm_struct *mm;
>         unsigned long pfn;
> +       unsigned long start_pfn;
>         pgprot_t prot;
> +
> +       io_pfn_t fn;
> +       struct drm_i915_gem_object *obj;
>  };
>  
>  static int remap_pfn(pte_t *pte, unsigned long addr, void *data)
> @@ -41,7 +45,10 @@ static int remap_pfn(pte_t *pte, unsigned long addr, void *data)
>  
>         /* Special PTE are not associated with any struct page */
>         set_pte_at(r->mm, addr, pte, pte_mkspecial(pfn_pte(r->pfn, r->prot)));
> -       r->pfn++;
> +       if (r->fn)
> +               r->pfn = r->fn(r->obj, r->start_pfn++);

Just say no to a vfunc for every pte. retrampolines are not your friend.

I was anticipating a second remap_io_sg() that knew how to increment
onto the next sg at dma boundaries within this setter.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
