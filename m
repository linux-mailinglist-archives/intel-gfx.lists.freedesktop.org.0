Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CAC3146758
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 12:57:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 779226FC01;
	Thu, 23 Jan 2020 11:57:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 575A56FC01
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jan 2020 11:57:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jan 2020 03:57:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,353,1574150400"; d="scan'208";a="375197541"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga004.jf.intel.com with ESMTP; 23 Jan 2020 03:57:03 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 64E345C1DFB; Thu, 23 Jan 2020 13:56:20 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200123111816.1292582-1-chris@chris-wilson.co.uk>
References: <20200122201822.889250-1-chris@chris-wilson.co.uk>
 <20200123111816.1292582-1-chris@chris-wilson.co.uk>
Date: Thu, 23 Jan 2020 13:56:20 +0200
Message-ID: <87blqucrob.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/gt: Poison GTT scratch pages
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

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Using a clear page for scratch means that we have relatively benign
> errors in case it is accidentally used, but that can be rather too
> benign for debugging. If we poison the scratch, ideally it quickly
> results in an obvious error.
>
> v2: Set each page individually just in case we are using highmem for our
> scratch page.
> v3: Pick a new scratch register as MI_STORE_REGISTER_MEM does not work
> with GPR0 on gen7, unbelievably.
>
> Suggested-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

I have a faint memory...aeons ago..might have.

> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Cc: Matthew Auld <matthew.william.auld@gmail.com>
> ---
>  .../drm/i915/gem/selftests/i915_gem_context.c | 51 ++++++++++++++++---
>  drivers/gpu/drm/i915/gt/intel_gtt.c           | 30 +++++++++++
>  2 files changed, 75 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
> index 7fc46861a54d..00a56a8b309a 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
> @@ -1575,7 +1575,6 @@ static int read_from_scratch(struct i915_gem_context *ctx,
>  	struct drm_i915_private *i915 = ctx->i915;
>  	struct drm_i915_gem_object *obj;
>  	struct i915_address_space *vm;
> -	const u32 RCS_GPR0 = 0x2600; /* not all engines have their own GPR! */
>  	const u32 result = 0x100;
>  	struct i915_request *rq;
>  	struct i915_vma *vma;
> @@ -1596,20 +1595,24 @@ static int read_from_scratch(struct i915_gem_context *ctx,
>  
>  	memset(cmd, POISON_INUSE, PAGE_SIZE);
>  	if (INTEL_GEN(i915) >= 8) {
> +		const u32 GPR0 = engine->mmio_base + 0x600;
> +
>  		*cmd++ = MI_LOAD_REGISTER_MEM_GEN8;
> -		*cmd++ = RCS_GPR0;
> +		*cmd++ = GPR0;
>  		*cmd++ = lower_32_bits(offset);
>  		*cmd++ = upper_32_bits(offset);
>  		*cmd++ = MI_STORE_REGISTER_MEM_GEN8;
> -		*cmd++ = RCS_GPR0;
> +		*cmd++ = GPR0;
>  		*cmd++ = result;
>  		*cmd++ = 0;
>  	} else {
> +		const u32 reg = engine->mmio_base + 0x420;

3d prim end offset? Well should not matter for this selftest
but did you check 0xA198?

How have 0x600 been been working in gen7 previously?

-Mika
> +
>  		*cmd++ = MI_LOAD_REGISTER_MEM;
> -		*cmd++ = RCS_GPR0;
> +		*cmd++ = reg;
>  		*cmd++ = offset;
>  		*cmd++ = MI_STORE_REGISTER_MEM;
> -		*cmd++ = RCS_GPR0;
> +		*cmd++ = reg;
>  		*cmd++ = result;
>  	}
>  	*cmd = MI_BATCH_BUFFER_END;
> @@ -1686,6 +1689,28 @@ static int read_from_scratch(struct i915_gem_context *ctx,
>  	return err;
>  }
>  
> +static int check_scratch_page(struct i915_gem_context *ctx, u32 *out)
> +{
> +	struct page *page = ctx_vm(ctx)->scratch[0].base.page;
> +	u32 *vaddr;
> +	int err = 0;
> +
> +	if (!page) {
> +		pr_err("No scratch page!\n");
> +		return -EINVAL;
> +	}
> +
> +	vaddr = kmap(page);
> +	memcpy(out, vaddr, sizeof(*out));
> +	if (memchr_inv(vaddr, *out, PAGE_SIZE)) {
> +		pr_err("Inconsistent initial state of scratch page!\n");
> +		err = -EINVAL;
> +	}
> +	kunmap(page);
> +
> +	return err;
> +}
> +
>  static int igt_vm_isolation(void *arg)
>  {
>  	struct drm_i915_private *i915 = arg;
> @@ -1696,6 +1721,7 @@ static int igt_vm_isolation(void *arg)
>  	I915_RND_STATE(prng);
>  	struct file *file;
>  	u64 vm_total;
> +	u32 expected;
>  	int err;
>  
>  	if (INTEL_GEN(i915) < 7)
> @@ -1720,12 +1746,21 @@ static int igt_vm_isolation(void *arg)
>  		goto out_file;
>  	}
>  
> +	/* Read the initial state of the scratch page */
> +	err = check_scratch_page(ctx_a, &expected);
> +	if (err)
> +		goto out_file;
> +
>  	ctx_b = live_context(i915, file);
>  	if (IS_ERR(ctx_b)) {
>  		err = PTR_ERR(ctx_b);
>  		goto out_file;
>  	}
>  
> +	err = check_scratch_page(ctx_b, &expected);
> +	if (err)
> +		goto out_file;
> +
>  	/* We can only test vm isolation, if the vm are distinct */
>  	if (ctx_vm(ctx_a) == ctx_vm(ctx_b))
>  		goto out_file;
> @@ -1743,6 +1778,10 @@ static int igt_vm_isolation(void *arg)
>  		if (!intel_engine_can_store_dword(engine))
>  			continue;
>  
> +		/* Not all engines have their own GPR! */
> +		if (INTEL_GEN(i915) < 8 && engine->class != RENDER_CLASS)
> +			continue;
> +
>  		while (!__igt_timeout(end_time, NULL)) {
>  			u32 value = 0xc5c5c5c5;
>  			u64 offset;
> @@ -1760,7 +1799,7 @@ static int igt_vm_isolation(void *arg)
>  			if (err)
>  				goto out_file;
>  
> -			if (value) {
> +			if (value != expected) {
>  				pr_err("%s: Read %08x from scratch (offset 0x%08x_%08x), after %lu reads!\n",
>  				       engine->name, value,
>  				       upper_32_bits(offset),
> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
> index 45d8e0019a8e..bb9a6e638175 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
> @@ -299,6 +299,25 @@ fill_page_dma(const struct i915_page_dma *p, const u64 val, unsigned int count)
>  	kunmap_atomic(memset64(kmap_atomic(p->page), val, count));
>  }
>  
> +static void poison_scratch_page(struct page *page, unsigned long size)
> +{
> +	if (!IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
> +		return;
> +
> +	GEM_BUG_ON(!IS_ALIGNED(size, PAGE_SIZE));
> +
> +	do {
> +		void *vaddr;
> +
> +		vaddr = kmap(page);
> +		memset(vaddr, POISON_FREE, PAGE_SIZE);
> +		kunmap(page);
> +
> +		page = pfn_to_page(page_to_pfn(page) + 1);
> +		size -= PAGE_SIZE;
> +	} while (size);
> +}
> +
>  int setup_scratch_page(struct i915_address_space *vm, gfp_t gfp)
>  {
>  	unsigned long size;
> @@ -331,6 +350,17 @@ int setup_scratch_page(struct i915_address_space *vm, gfp_t gfp)
>  		if (unlikely(!page))
>  			goto skip;
>  
> +		/*
> +		 * Use a non-zero scratch page for debugging.
> +		 *
> +		 * We want a value that should be reasonably obvious
> +		 * to spot in the error state, while also causing a GPU hang
> +		 * if executed. We prefer using a clear page in production, so
> +		 * should it ever be accidentally used, the effect should be
> +		 * fairly benign.
> +		 */
> +		poison_scratch_page(page, size);
> +
>  		addr = dma_map_page_attrs(vm->dma,
>  					  page, 0, size,
>  					  PCI_DMA_BIDIRECTIONAL,
> -- 
> 2.25.0
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
