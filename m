Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EE5BA205095
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2020 13:22:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49F136E3A0;
	Tue, 23 Jun 2020 11:22:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from pio-pvt-msa3.bahnhof.se (pio-pvt-msa3.bahnhof.se [79.136.2.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73F7F6E398
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jun 2020 11:22:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by pio-pvt-msa3.bahnhof.se (Postfix) with ESMTP id 35EB13F509;
 Tue, 23 Jun 2020 13:22:19 +0200 (CEST)
Authentication-Results: pio-pvt-msa3.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=fFeRRgge; 
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.099
X-Spam-Level: 
X-Spam-Status: No, score=-2.099 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, URIBL_BLOCKED=0.001]
 autolearn=ham autolearn_force=no
Received: from pio-pvt-msa3.bahnhof.se ([127.0.0.1])
 by localhost (pio-pvt-msa3.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vOf0mqvB_g8h; Tue, 23 Jun 2020 13:22:17 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by pio-pvt-msa3.bahnhof.se (Postfix) with ESMTPA id 44CCE3F401;
 Tue, 23 Jun 2020 13:22:16 +0200 (CEST)
Received: from localhost.localdomain (unknown [134.134.139.83])
 by mail1.shipmail.org (Postfix) with ESMTPSA id 55235362166;
 Tue, 23 Jun 2020 13:22:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1592911336; bh=WImQPOjdodCf4bAucpElYWa7X3fioJNO9Oq9HgKWgPU=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=fFeRRggeg5vaaCIef/hpuWHkB1E8OSqqZhVPNbN9lQZXpWEGPa/2+qr/87WPdaNpX
 TwB9wTFaI/+isAMCOnnI3dJZohP7uLFJkpu+TZsJH08k9YFId6S8oPOzCDvSlue5EX
 70fRTejC1poj0r2hHi0bCaPVPx2dFqCClIjIuwC8=
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200622095921.15530-1-chris@chris-wilson.co.uk>
 <20200622095921.15530-7-chris@chris-wilson.co.uk>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <1712fc5b-9b1e-0632-13c0-e0bc2c1d889d@shipmail.org>
Date: Tue, 23 Jun 2020 13:22:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200622095921.15530-7-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 7/7] drm/i915/gem: Acquire all vma/objects
 under reservation_ww_class
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi, Chris,

On 6/22/20 11:59 AM, Chris Wilson wrote:
> In order to actually handle eviction and what not, we need to process
> all the objects together under a common lock, reservation_ww_class. As
> such, do a memory reservation pass after looking up the object/vma,
> which then feeds into the rest of execbuf [relocation, cmdparsing,
> flushing and ofc execution].
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 91 ++++++++++++++-----
>   1 file changed, 70 insertions(+), 21 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index 46fcbdf8161c..8db2e013465f 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -53,10 +53,9 @@ struct eb_vma_array {
>   
>   #define __EXEC_OBJECT_HAS_PIN		BIT(31)
>   #define __EXEC_OBJECT_HAS_FENCE		BIT(30)
> -#define __EXEC_OBJECT_HAS_PAGES		BIT(29)
> -#define __EXEC_OBJECT_NEEDS_MAP		BIT(28)
> -#define __EXEC_OBJECT_NEEDS_BIAS	BIT(27)
> -#define __EXEC_OBJECT_INTERNAL_FLAGS	(~0u << 27) /* all of the above */
> +#define __EXEC_OBJECT_NEEDS_MAP		BIT(29)
> +#define __EXEC_OBJECT_NEEDS_BIAS	BIT(28)
> +#define __EXEC_OBJECT_INTERNAL_FLAGS	(~0u << 28) /* all of the above */
>   
>   #define __EXEC_HAS_RELOC	BIT(31)
>   #define __EXEC_INTERNAL_FLAGS	(~0u << 31)
> @@ -241,6 +240,8 @@ struct i915_execbuffer {
>   	struct intel_context *context; /* logical state for the request */
>   	struct i915_gem_context *gem_context; /** caller's context */
>   
> +	struct dma_fence *mm_fence;
> +
>   	struct i915_request *request; /** our request to build */
>   	struct eb_vma *batch; /** identity of the batch obj/vma */
>   	struct i915_vma *trampoline; /** trampoline used for chaining */
> @@ -331,12 +332,7 @@ static inline void eb_unreserve_vma(struct eb_vma *ev)
>   	if (ev->flags & __EXEC_OBJECT_HAS_PIN)
>   		__i915_vma_unpin(vma);
>   
> -	if (ev->flags & __EXEC_OBJECT_HAS_PAGES)
> -		i915_gem_object_unpin_pages(vma->obj);
> -
> -	ev->flags &= ~(__EXEC_OBJECT_HAS_PIN |
> -		       __EXEC_OBJECT_HAS_FENCE |
> -		       __EXEC_OBJECT_HAS_PAGES);
> +	ev->flags &= ~(__EXEC_OBJECT_HAS_PIN | __EXEC_OBJECT_HAS_FENCE);
>   }
>   
>   static void eb_vma_array_destroy(struct kref *kref)
> @@ -667,6 +663,55 @@ eb_add_vma(struct i915_execbuffer *eb,
>   	list_add_tail(&ev->lock_link, &eb->lock);
>   }
>   
> +static int eb_vma_get_pages(struct i915_execbuffer *eb,
> +			    struct eb_vma *ev,
> +			    u64 idx)
> +{
> +	struct i915_vma *vma = ev->vma;
> +	int err;
> +
> +	/* XXX also preallocate PD for vma */
> +
> +	err = ____i915_gem_object_get_pages_async(vma->obj);
> +	if (err)
> +		return err;
> +
> +	return i915_active_ref(&vma->obj->mm.active, idx, eb->mm_fence);
> +}
> +
> +static int eb_reserve_mm(struct i915_execbuffer *eb)
> +{
> +	const u64 idx = eb->context->timeline->fence_context;
> +	struct ww_acquire_ctx acquire;
> +	struct eb_vma *ev;
> +	int err;
> +
> +	eb->mm_fence = __dma_fence_create_proxy(0, 0);
> +	if (!eb->mm_fence)
> +		return -ENOMEM;

Question: eb is local to this thread, right, so eb->mm_fence is not 
considered "published" yet?

> +
> +	ww_acquire_init(&acquire, &reservation_ww_class);
> +
> +	err = eb_lock_vma(eb, &acquire);
> +	if (err)
> +		goto out;
> +
> +	ww_acquire_done(&acquire);
> +
> +	list_for_each_entry(ev, &eb->lock, lock_link) {
> +		struct i915_vma *vma = ev->vma;
> +
> +		if (err == 0)
> +			err = eb_vma_get_pages(eb, ev, idx);

I figure this is where you publish the proxy fence? If so, the fence 
signaling critical path starts with this loop, and that means any code 
we call between here and submission complete (including spawned work we 
need to wait for before submission) may not lock the 
reservation_ww_class nor (still being discussed) allocate memory. It 
looks like i915_pin_vma takes a reservation_ww_class. And all memory 
pinning seems to be in the fence critical path as well?

/Thomas


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
