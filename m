Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6D7C473096
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Dec 2021 16:32:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91A0410E6E8;
	Mon, 13 Dec 2021 15:32:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FB5310E6E8;
 Mon, 13 Dec 2021 15:32:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639409559; x=1670945559;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=4Ua42EQnxA56Z/a2GpfiVQuU8/auKMo51LYtVxZZKsg=;
 b=Qoo62F/+iPfJeT68uKNjjetNRLsnmbuKw1zxEJSbBN/9xBJLZ+Z5mR/+
 Gh1t7J565Z7oTr/9Ry/u57gup6Fo9yrSlSIAKJTG5co5fBqcSo6m86Ifs
 WvoCdq4wgydgwIhjRlNGa7D1OZhwlT9Jq7ED+q4vVXMdJxUgYFsEsip/f
 EVRtFF7dzuWf2JR0RrbTZ0h3QXiKvK9btKA5yvWE08ag9Jp/fxRoDH5o+
 MnrQ48dPFqeAaSq7yMu11kEJitt/1EUnfW94K9RsWaYkaNM70lllqwenS
 kt+iRsqLPy26PDqJsirCktHE45ymeSjQdGJ17+0Fp7WSEepA+RBiYz6KZ A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10196"; a="226033189"
X-IronPort-AV: E=Sophos;i="5.88,202,1635231600"; d="scan'208";a="226033189"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2021 07:32:23 -0800
X-IronPort-AV: E=Sophos;i="5.88,202,1635231600"; d="scan'208";a="752301302"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.203.144.108])
 by fmsmga006-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Dec 2021 07:32:22 -0800
Date: Mon, 13 Dec 2021 21:02:07 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Matthew Auld <matthew.auld@intel.com>
Message-ID: <20211213153207.GA29559@intel.com>
References: <20211206133140.3166205-1-matthew.auld@intel.com>
 <20211206133140.3166205-6-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211206133140.3166205-6-matthew.auld@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v3 5/8] drm/i915/gtt: allow overriding the
 pt alignment
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
Cc: Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2021-12-06 at 13:31:37 +0000, Matthew Auld wrote:
> On some platforms we have alignment restrictions when accessing LMEM
> from the GTT. In the next patch few patches we need to be able to modify
probably extra "patch"

Apart from that looks good to me

Reviewed-by : Ramalingam C <ramalingam.c@intel.com>

> the page-tables directly via the GTT itself.
> 
> Suggested-by: Ramalingam C <ramalingam.c@intel.com>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> Cc: Ramalingam C <ramalingam.c@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gtt.h   | 10 +++++++++-
>  drivers/gpu/drm/i915/gt/intel_ppgtt.c | 16 ++++++++++++----
>  2 files changed, 21 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
> index cbc0b5266cb4..a00d278d8175 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gtt.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
> @@ -196,6 +196,14 @@ void *__px_vaddr(struct drm_i915_gem_object *p);
>  struct i915_vm_pt_stash {
>  	/* preallocated chains of page tables/directories */
>  	struct i915_page_table *pt[2];
> +	/*
> +	 * Optionally override the alignment/size of the physical page that
> +	 * contains each PT. If not set defaults back to the usual
> +	 * I915_GTT_PAGE_SIZE_4K. This does not influence the other paging
> +	 * structures. MUST be a power-of-two. ONLY applicable on discrete
> +	 * platforms.
> +	 */
> +	int pt_sz;
>  };
>  
>  struct i915_vma_ops {
> @@ -583,7 +591,7 @@ void free_scratch(struct i915_address_space *vm);
>  
>  struct drm_i915_gem_object *alloc_pt_dma(struct i915_address_space *vm, int sz);
>  struct drm_i915_gem_object *alloc_pt_lmem(struct i915_address_space *vm, int sz);
> -struct i915_page_table *alloc_pt(struct i915_address_space *vm);
> +struct i915_page_table *alloc_pt(struct i915_address_space *vm, int sz);
>  struct i915_page_directory *alloc_pd(struct i915_address_space *vm);
>  struct i915_page_directory *__alloc_pd(int npde);
>  
> diff --git a/drivers/gpu/drm/i915/gt/intel_ppgtt.c b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
> index b8238f5bc8b1..3c90aea25072 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ppgtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
> @@ -12,7 +12,7 @@
>  #include "gen6_ppgtt.h"
>  #include "gen8_ppgtt.h"
>  
> -struct i915_page_table *alloc_pt(struct i915_address_space *vm)
> +struct i915_page_table *alloc_pt(struct i915_address_space *vm, int sz)
>  {
>  	struct i915_page_table *pt;
>  
> @@ -20,7 +20,7 @@ struct i915_page_table *alloc_pt(struct i915_address_space *vm)
>  	if (unlikely(!pt))
>  		return ERR_PTR(-ENOMEM);
>  
> -	pt->base = vm->alloc_pt_dma(vm, I915_GTT_PAGE_SIZE_4K);
> +	pt->base = vm->alloc_pt_dma(vm, sz);
>  	if (IS_ERR(pt->base)) {
>  		kfree(pt);
>  		return ERR_PTR(-ENOMEM);
> @@ -219,17 +219,25 @@ int i915_vm_alloc_pt_stash(struct i915_address_space *vm,
>  			   u64 size)
>  {
>  	unsigned long count;
> -	int shift, n;
> +	int shift, n, pt_sz;
>  
>  	shift = vm->pd_shift;
>  	if (!shift)
>  		return 0;
>  
> +	pt_sz = stash->pt_sz;
> +	if (!pt_sz)
> +		pt_sz = I915_GTT_PAGE_SIZE_4K;
> +	else
> +		GEM_BUG_ON(!IS_DGFX(vm->i915));
> +
> +	GEM_BUG_ON(!is_power_of_2(pt_sz));
> +
>  	count = pd_count(size, shift);
>  	while (count--) {
>  		struct i915_page_table *pt;
>  
> -		pt = alloc_pt(vm);
> +		pt = alloc_pt(vm, pt_sz);
>  		if (IS_ERR(pt)) {
>  			i915_vm_free_pt_stash(vm, stash);
>  			return PTR_ERR(pt);
> -- 
> 2.31.1
> 
