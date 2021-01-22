Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60E7A300864
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Jan 2021 17:14:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89E3A6E9F6;
	Fri, 22 Jan 2021 16:14:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAC976E9F6
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Jan 2021 16:14:06 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23673445-1500050 for multiple; Fri, 22 Jan 2021 16:14:02 +0000
MIME-Version: 1.0
In-Reply-To: <20210122154547.502685-1-matthew.auld@intel.com>
References: <20210122154547.502685-1-matthew.auld@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
Date: Fri, 22 Jan 2021 16:14:02 +0000
Message-ID: <161133204234.24506.6593943391752381971@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915/buddy: document the unused header
 bits
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

Quoting Matthew Auld (2021-01-22 15:45:46)
> The largest possible order is (63-12), given that our min chunk size is
> 4K. With that we should only need at most 6 bits to represent all
> possible orders, giving us back 4 bits for other potential uses. Include
> a simple selftest to verify this.
> 
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_buddy.c           |  3 ++
>  drivers/gpu/drm/i915/i915_buddy.h           |  7 ++-
>  drivers/gpu/drm/i915/selftests/i915_buddy.c | 47 +++++++++++++++++++++
>  3 files changed, 55 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_buddy.c b/drivers/gpu/drm/i915/i915_buddy.c
> index 20babbdb297d..650613ae2a7b 100644
> --- a/drivers/gpu/drm/i915/i915_buddy.c
> +++ b/drivers/gpu/drm/i915/i915_buddy.c
> @@ -56,6 +56,9 @@ static struct i915_buddy_block *i915_block_alloc(struct i915_buddy_block *parent
>         block->header |= order;
>         block->parent = parent;
>  
> +       GEM_BUG_ON(block->header & I915_BUDDY_HEADER_UNUSED);

Ok...

> +       GEM_BUG_ON(order > I915_BUDDY_MAX_ORDER);

But this is really a contract on the incoming parameter and so should be
at the start of the function.

GEM_BUG_ON(block->header...) is a contract on our output.

> +
>         return block;
>  }
>  
> diff --git a/drivers/gpu/drm/i915/i915_buddy.h b/drivers/gpu/drm/i915/i915_buddy.h
> index ed41f3507cdc..d37e03587637 100644
> --- a/drivers/gpu/drm/i915/i915_buddy.h
> +++ b/drivers/gpu/drm/i915/i915_buddy.h
> @@ -15,7 +15,9 @@ struct i915_buddy_block {
>  #define   I915_BUDDY_ALLOCATED    (1 << 10)
>  #define   I915_BUDDY_FREE         (2 << 10)
>  #define   I915_BUDDY_SPLIT        (3 << 10)
> -#define I915_BUDDY_HEADER_ORDER  GENMASK_ULL(9, 0)
> +/* Free to be used, if needed in the future */
> +#define I915_BUDDY_HEADER_UNUSED GENMASK_ULL(9, 6)
> +#define I915_BUDDY_HEADER_ORDER  GENMASK_ULL(5, 0)
>         u64 header;
>  
>         struct i915_buddy_block *left;
> @@ -34,7 +36,8 @@ struct i915_buddy_block {
>         struct list_head tmp_link;
>  };
>  
> -#define I915_BUDDY_MAX_ORDER  I915_BUDDY_HEADER_ORDER
> +/* Order-zero must be at least PAGE_SIZE */
> +#define I915_BUDDY_MAX_ORDER (63 - 12)

Can we replace 12 with an ilog2() ?

PAGE_SIZE is mentioned as the lower limit, so PAGE_SHIFT?

>  /*
>   * Binary Buddy System.
> diff --git a/drivers/gpu/drm/i915/selftests/i915_buddy.c b/drivers/gpu/drm/i915/selftests/i915_buddy.c
> index 632b912b0bc9..39c470a0e28d 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_buddy.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_buddy.c
> @@ -727,6 +727,52 @@ static int igt_buddy_alloc_range(void *arg)
>         return err;
>  }
>  
> +static int igt_buddy_alloc_limit(void *arg)
> +{
> +       struct i915_buddy_block *block;
> +       struct i915_buddy_mm mm;
> +       const u64 size = U64_MAX;
> +       int err;
> +
> +       err = i915_buddy_init(&mm, size, PAGE_SIZE);

Create the biggest region possible.

> +       if (err)
> +               return err;
> +
> +       if (mm.max_order != I915_BUDDY_MAX_ORDER) {

Check that we made it as big as possible.

> +               pr_err("mm.max_order(%d) != %d\n",
> +                      mm.max_order, I915_BUDDY_MAX_ORDER);
> +               err = -EINVAL;
> +               goto out_fini;
> +       }
> +
> +       block = i915_buddy_alloc(&mm, mm.max_order);

Allocate the largest single block.

> +       if (IS_ERR(block)) {
> +               err = PTR_ERR(block);
> +               goto out_fini;
> +       }
> +
> +       if (i915_buddy_block_order(block) != I915_BUDDY_MAX_ORDER) {

Check that it is as large we tried to allocate... But it should be
mm.max_order to check the actual limits in place.

> +               pr_err("block order(%d) != %d\n",
> +                      i915_buddy_block_order(block), I915_BUDDY_MAX_ORDER);
> +               err = -EINVAL;
> +               goto out_free;
> +       }
> +
> +       if (i915_buddy_block_size(&mm, block) != rounddown_pow_of_two(size)) {

Which is the largest buddy block within the range.

Hmm, this I don't think follows the I915_BUDDY_MAX_ORDER constraint.
What if we reduce the MAX_ORDER to be say 48? Then the buddy block will
correctly be (1<<48). So I think you just want size() == BIT_ULL(mm.max_order)

With those questions addressed however you see fit,
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
