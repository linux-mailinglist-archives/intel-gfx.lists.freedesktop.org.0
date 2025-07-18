Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87577B098F8
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Jul 2025 02:38:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F13AB10E03D;
	Fri, 18 Jul 2025 00:38:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="tmPs7/6Y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A690010E03D
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Jul 2025 00:38:52 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 6C5A45C6B54;
 Fri, 18 Jul 2025 00:38:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4EB79C4CEE3;
 Fri, 18 Jul 2025 00:38:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1752799130;
 bh=fnto0Mow41Y58kyY7yJXrksooinT71waDFDcpPJMGKw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tmPs7/6YtxWGXhH3JJ+Hwo2j+bFbHn7OaIpryM9pRNJ8hSupJqbnN+Xdqv7wMyege
 PLlyDjZjSaPh4RKur09qsAWBBkj+mMvxrCoXQmz5THBkEtX4KOdObr8GhzBPJYVOmE
 DAkw39lwE8+jZaG75NtVTG5eCx2I6BWldWBUflMiTesz200KymPfELLoor9IymhDwn
 Uzfer7Bmjkk5iDWmRhH+14i+YHgSFoWYqOuHPBR6qzABCZeZQ8xooI3KDVAxSC1uae
 xXYVv11Vgnb3pmEnB4xLSXU4VVeYORwo4JKJN9s63+ng9qo9vZ4yAqr2dxHpJvEoxG
 mM9YQO9iulbdA==
Date: Fri, 18 Jul 2025 02:38:47 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Cc: intel-gfx@lists.freedesktop.org, krzysztof.karas@intel.com, 
 andi.shyti@linux.intel.com
Subject: Re: [PATCH v2 1/3] drm/i915: Improve readability of eb_relocate_vma
Message-ID: <hc3tiztdphxiyqpb4xcumpojsuwfwetlosagk44vloenj5ysqc@d5icgfgtwnft>
References: <20250717123824.676605-1-sebastian.brzezinka@intel.com>
 <20250717123824.676605-2-sebastian.brzezinka@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250717123824.676605-2-sebastian.brzezinka@intel.com>
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

On Thu, Jul 17, 2025 at 12:38:39PM +0000, Sebastian Brzezinka wrote:
> Refactored eb_relocate_vma to simplify stack access and loop structure.
> No functional changes; this is a readability and clarity improvement only.

There is no limit for a commit log. You need to list all the
changes you did, a generic "refactor" is not enough.

Bonus: please use the imperative form, "Refactor", not
"Refactored". Imperative is always clearer.

> Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
> ---
> v1 -> v2:
> 	- Revert changes in error handling.
> 	- Restore the original formatting of the comments.
> 	- Reword commit message.
> ---
>  .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 84 ++++++++++---------
>  1 file changed, 44 insertions(+), 40 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index ca7e9216934a..ea4793e73ea5 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -1529,6 +1529,7 @@ static int eb_relocate_vma(struct i915_execbuffer *eb, struct eb_vma *ev)
>  	struct drm_i915_gem_relocation_entry __user *urelocs =
>  		u64_to_user_ptr(entry->relocs_ptr);
>  	unsigned long remain = entry->relocation_count;
> +	int ret = 0;
>  
>  	if (unlikely(remain > N_RELOC(INT_MAX)))
>  		return -EINVAL;
> @@ -1541,11 +1542,10 @@ static int eb_relocate_vma(struct i915_execbuffer *eb, struct eb_vma *ev)
>  	if (unlikely(!access_ok(urelocs, remain * sizeof(*urelocs))))
>  		return -EFAULT;
>  
> -	do {
> -		struct drm_i915_gem_relocation_entry *r = stack;
> -		unsigned int count =
> -			min_t(unsigned long, remain, ARRAY_SIZE(stack));
> +	while (remain > 0) {

what's the problem with the "do ... while()"?

> +		unsigned int count = min_t(unsigned long, remain, ARRAY_SIZE(stack));
>  		unsigned int copied;
> +		unsigned int i;
>  
>  		/*
>  		 * This is the fast path and we cannot handle a pagefault
> @@ -1556,53 +1556,57 @@ static int eb_relocate_vma(struct i915_execbuffer *eb, struct eb_vma *ev)
>  		 * this is bad and so lockdep complains vehemently.
>  		 */
>  		pagefault_disable();
> -		copied = __copy_from_user_inatomic(r, urelocs, count * sizeof(r[0]));
> +		copied = __copy_from_user_inatomic(stack, urelocs, count * sizeof(stack[0]));

What is the improvement here?

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
> +		for (i = 0; i < count; ++i) {

what's wrong with the "do ... while()".

Generally speaking, personal preference is not a valid reason for
sending a patch. Changing a clear do/while with a clear while or
for does not improve anything.

> +			struct drm_i915_gem_relocation_entry *r = &stack[i];
>  			u64 offset = eb_relocate_entry(eb, ev, r);
>  
> -			if (likely(offset == 0)) {
> -			} else if ((s64)offset < 0) {
> -				remain = (int)offset;
> +			if (likely(offset == 0))
> +				continue;
> +
> +			if (unlikely((s64)offset < 0)) {
> +				ret = (int)offset;

This change here is at the limit between readability and personal
preference. Still acceptable, though because it looks nicer.

BTW, the cast is not necessary.

>  				goto out;
> -			} else {
> -				/*
> -				 * Note that reporting an error now
> -				 * leaves everything in an inconsistent
> -				 * state as we have *already* changed
> -				 * the relocation value inside the
> -				 * object. As we have not changed the
> -				 * reloc.presumed_offset or will not
> -				 * change the execobject.offset, on the
> -				 * call we may not rewrite the value
> -				 * inside the object, leaving it
> -				 * dangling and causing a GPU hang. Unless
> -				 * userspace dynamically rebuilds the
> -				 * relocations on each execbuf rather than
> -				 * presume a static tree.
> -				 *
> -				 * We did previously check if the relocations
> -				 * were writable (access_ok), an error now
> -				 * would be a strange race with mprotect,
> -				 * having already demonstrated that we
> -				 * can read from this userspace address.
> -				 */
> -				offset = gen8_canonical_addr(offset & ~UPDATE);
> -				__put_user(offset,
> -					   &urelocs[r - stack].presumed_offset);
>  			}
> -		} while (r++, --count);
> -		urelocs += ARRAY_SIZE(stack);
> -	} while (remain);
> +			/*
> +			 * Note that reporting an error now
> +			 * leaves everything in an inconsistent
> +			 * state as we have *already* changed
> +			 * the relocation value inside the
> +			 * object. As we have not changed the
> +			 * reloc.presumed_offset or will not
> +			 * change the execobject.offset, on the
> +			 * call we may not rewrite the value
> +			 * inside the object, leaving it
> +			 * dangling and causing a GPU hang. Unless
> +			 * userspace dynamically rebuilds the
> +			 * relocations on each execbuf rather than
> +			 * presume a static tree.
> +			 *
> +			 * We did previously check if the relocations
> +			 * were writable (access_ok), an error now
> +			 * would be a strange race with mprotect,
> +			 * having already demonstrated that we
> +			 * can read from this userspace address.
> +			 */
> +			offset = gen8_canonical_addr(offset &  ~UPDATE);
> +			__put_user(offset, &urelocs[i].presumed_offset);
> +		}
> +
> +		remain -= count;
> +		urelocs += count;
> +	}
> +
>  out:
>  	reloc_cache_reset(&eb->reloc_cache, eb);
> -	return remain;
> +	return ret;

Using ret instead of remain is not a bad change, still at the
limit of the personal preference. It's OK because:

1. it avoids mistake from code glancers like myself in v1.
2. it avoids some useless casts and alligns the types.

So, overall, I see only two parts that can stay in this patch:

1. the if/else re-arrangement you did above
2. the use of ret.

They should be sent in two different patches.

The rest looks to me just personal preference and it wouldn't
make sense to push it through.

Andi

>  }
>  
>  static int
> -- 
> 2.34.1
> 
