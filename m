Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2146FB07759
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Jul 2025 15:49:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8A9710E7B0;
	Wed, 16 Jul 2025 13:49:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="An2OMP6D";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34E8C10E7B0
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Jul 2025 13:49:53 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 326B6614A1;
 Wed, 16 Jul 2025 13:49:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5F55EC4CEE7;
 Wed, 16 Jul 2025 13:49:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1752673791;
 bh=s//iu1ak0woXy2wkdM26kz+S3Mr4SEf6j790WbP1Bi8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=An2OMP6DLMtRheUsIg4l4ak2U4T5A6oi7K7tmRVGrssF1YlZ/cR86rmDYfl8aDsWC
 xCiNAwUZMsFHoEznAKAqVuuHn7dQIs9IUA51o0nKsGkfbbUI5NLdCjAc7/5LCAfm5Q
 SZ11NhQ5FAboGgeogoVQuN3rtEH4gm257fY1HoMvMjaqVCs53u4u7L9OoYW4yT4GRk
 2E1qsVhFSKkMA/GejDdghZbOsfQZPDGhZtyfNBL2aY1212jwWdX+Znsr+6N+Tr3/Ga
 d7DvA7fxLxzpyzGq2x++b6qxcP0idgJQ4pMGrN5aBzatC0G4V9L91ZHXvgB0EyUdi9
 VFFLlPEOYgoHQ==
Date: Wed, 16 Jul 2025 15:49:48 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Cc: intel-gfx@lists.freedesktop.org, andi.shyti@linux.intel.com, 
 krzysztof.karas@intel.com
Subject: Re: [PATCH 1/3] drm/i915: Refactor eb_relocate_vma for clarity
Message-ID: <htvnnxraq3dichhoa22cvvhxh4qzv3wyg7gyxxdwn7i7gye37a@hig3vattgvdh>
References: <20250716093645.432689-1-sebastian.brzezinka@intel.com>
 <20250716093645.432689-2-sebastian.brzezinka@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250716093645.432689-2-sebastian.brzezinka@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Sebastian,

> @@ -1529,80 +1529,89 @@ static int eb_relocate_vma(struct i915_execbuffer *eb, struct eb_vma *ev)
>  	struct drm_i915_gem_relocation_entry __user *urelocs =
>  		u64_to_user_ptr(entry->relocs_ptr);
>  	unsigned long remain = entry->relocation_count;
> +	int ret = 0;
>  
> -	if (unlikely(remain > N_RELOC(INT_MAX)))
> -		return -EINVAL;
> +	if (unlikely(remain > N_RELOC(INT_MAX))) {
> +		ret = -EINVAL;
> +		goto out;
> +	}

Why? This doesn't look clearer to me.

>  
>  	/*
>  	 * We must check that the entire relocation array is safe
>  	 * to read. However, if the array is not writable the user loses
>  	 * the updated relocation values.
>  	 */
> -	if (unlikely(!access_ok(urelocs, remain * sizeof(*urelocs))))
> -		return -EFAULT;
> +	if (unlikely(!access_ok(urelocs, remain * sizeof(*urelocs)))) {
> +		ret = -EFAULT;
> +		goto out;
> +	}

same.

> -	do {
> -		struct drm_i915_gem_relocation_entry *r = stack;
> +	while (remain > 0) {
>  		unsigned int count =
>  			min_t(unsigned long, remain, ARRAY_SIZE(stack));
>  		unsigned int copied;
> -
>  		/*
>  		 * This is the fast path and we cannot handle a pagefault
> -		 * whilst holding the struct mutex lest the user pass in the
> -		 * relocations contained within a mmaped bo. For in such a case
> -		 * we, the page fault handler would call i915_gem_fault() and
> -		 * we would try to acquire the struct mutex again. Obviously
> -		 * this is bad and so lockdep complains vehemently.
> +		 * whilst holding the struct mutex lest the user pass in
> +		 * the relocations contained within a mmaped bo. For in
> +		 * such a case we, the page fault handler would call
> +		 * i915_gem_fault() and we would try to acquire the
> +		 * struct mutex again. Obviously this is bad and so
> +		 * lockdep complains vehemently.
>  		 */

Why have you done this change?

>  		pagefault_disable();
> -		copied = __copy_from_user_inatomic(r, urelocs, count * sizeof(r[0]));
> +		copied = __copy_from_user_inatomic(stack, urelocs,
> +						   count * sizeof(stack[0]));

No need, the maximum allowed by the documentation is 100
characters.

>  		pagefault_enable();
> +
>  		if (unlikely(copied)) {
> -			remain = -EFAULT;
> +			ret = -EFAULT;
>  			goto out;
>  		}
>  
> -		remain -= count;
> -		do {
> +		for (unsigned int i = 0; i < count; ++i) {

Please don't declare variables inside the for loop.

> +			struct drm_i915_gem_relocation_entry *r =
> +				&stack[i];
>  			u64 offset = eb_relocate_entry(eb, ev, r);
>  
> -			if (likely(offset == 0)) {
> -			} else if ((s64)offset < 0) {
> -				remain = (int)offset;
> +			if (likely(offset == 0))
> +				continue;

you can leave a blank line here.

> +			if (unlikely((s64)offset < 0)) {
> +				ret = (int)offset;
>  				goto out;

...

>  out:
>  	reloc_cache_reset(&eb->reloc_cache, eb);
> -	return remain;
> +	return ret;

now, this function is also returning a different value, not the
remaining bytes anymore but 0 on success and -error on failure.
Is this something you wanted?

Overall the patch is not acceptable yet. You mixed several
cleanups while I would rather prefer one cleanup type per patch,
this make is easier to review and trace in the history.

Andi

>  }
>  
>  static int
> -- 
> 2.34.1
> 
