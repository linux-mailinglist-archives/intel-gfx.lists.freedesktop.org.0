Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3A6A22B329
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jul 2020 18:09:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22B1D6E18F;
	Thu, 23 Jul 2020 16:09:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from pio-pvt-msa2.bahnhof.se (pio-pvt-msa2.bahnhof.se [79.136.2.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A400E6E18F
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jul 2020 16:09:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by pio-pvt-msa2.bahnhof.se (Postfix) with ESMTP id E382C4039D;
 Thu, 23 Jul 2020 18:09:16 +0200 (CEST)
Authentication-Results: pio-pvt-msa2.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=ntuy0I1G; 
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.1
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, NICE_REPLY_A=-0.001,
 URIBL_BLOCKED=0.001] autolearn=ham autolearn_force=no
Received: from pio-pvt-msa2.bahnhof.se ([127.0.0.1])
 by localhost (pio-pvt-msa2.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0vRIrs0gchg4; Thu, 23 Jul 2020 18:09:16 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by pio-pvt-msa2.bahnhof.se (Postfix) with ESMTPA id 7B05A40342;
 Thu, 23 Jul 2020 18:09:14 +0200 (CEST)
Received: from [192.168.0.100] (h-205-35.A357.priv.bahnhof.se [155.4.205.35])
 by mail1.shipmail.org (Postfix) with ESMTPSA id 418AE36010A;
 Thu, 23 Jul 2020 18:09:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1595520555; bh=abl+38KRPutGxultUp1PVOfLsaJr6drpvEyn0UZnRcQ=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=ntuy0I1GDU5X+eo3Q00/zjqcYVcnGpCnYgEtXEQ8w+j8yNuopeOrP0VXrkjAsHoIT
 BTcNrUAGX+C8Wp56TzMwqqifQ06mwkLISvCXwcw+gB54R6sOM2hhJ5iNffNNNwZvYt
 8jP9TPyZoL/2MYFxJp4ysT5iRAqNpgp9XxA+AmzQ=
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
 <20200715115147.11866-13-chris@chris-wilson.co.uk>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <34a83998-1142-736b-fe6b-00c3cbc230f6@shipmail.org>
Date: Thu, 23 Jul 2020 18:09:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200715115147.11866-13-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 13/66] drm/i915/gem: Don't drop the timeline
 lock during execbuf
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


On 2020-07-15 13:50, Chris Wilson wrote:
> Our timeline lock is our defence against a concurrent execbuf
> interrupting our request construction. we need hold it throughout or,
> for example, a second thread may interject a relocation request in
> between our own relocation request and execution in the ring.
>
> A second, major benefit, is that it allows us to preserve a large chunk
> of the ringbuffer for our exclusive use; which should virtually
> eliminate the threat of hitting a wait_for_space during request
> construction -- although we should have already dropped other
> contentious locks at that point.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 413 +++++++++++-------
>   .../i915/gem/selftests/i915_gem_execbuffer.c  |  24 +-
>   2 files changed, 281 insertions(+), 156 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index 719ba9fe3e85..af3499aafd22 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -259,6 +259,8 @@ struct i915_execbuffer {
>   		bool has_fence : 1;
>   		bool needs_unfenced : 1;
>   
> +		struct intel_context *ce;
> +
>   		struct i915_vma *target;
>   		struct i915_request *rq;
>   		struct i915_vma *rq_vma;
> @@ -639,6 +641,35 @@ static int eb_reserve_vma(const struct i915_execbuffer *eb,
>   	return 0;
>   }
>   
> +static void retire_requests(struct intel_timeline *tl)
> +{
> +	struct i915_request *rq, *rn;
> +
> +	list_for_each_entry_safe(rq, rn, &tl->requests, link)
> +		if (!i915_request_retire(rq))
> +			break;
> +}
> +
> +static int wait_for_timeline(struct intel_timeline *tl)
> +{
> +	do {
> +		struct dma_fence *fence;
> +		int err;
> +
> +		fence = i915_active_fence_get(&tl->last_request);
> +		if (!fence)
> +			return 0;
> +
> +		err = dma_fence_wait(fence, true);
> +		dma_fence_put(fence);
> +		if (err)
> +			return err;
> +
> +		/* Retiring may trigger a barrier, requiring an extra pass */
> +		retire_requests(tl);
> +	} while (1);
> +}
> +
>   static int eb_reserve(struct i915_execbuffer *eb)
>   {
>   	const unsigned int count = eb->buffer_count;
> @@ -646,7 +677,6 @@ static int eb_reserve(struct i915_execbuffer *eb)
>   	struct list_head last;
>   	struct eb_vma *ev;
>   	unsigned int i, pass;
> -	int err = 0;
>   
>   	/*
>   	 * Attempt to pin all of the buffers into the GTT.
> @@ -662,18 +692,37 @@ static int eb_reserve(struct i915_execbuffer *eb)
>   	 * room for the earlier objects *unless* we need to defragment.
>   	 */
>   
> -	if (mutex_lock_interruptible(&eb->i915->drm.struct_mutex))
> -		return -EINTR;
> -
>   	pass = 0;
>   	do {
> +		int err = 0;
> +
> +		/*
> +		 * We need to hold one lock as we bind all the vma so that
> +		 * we have a consistent view of the entire vm and can plan
> +		 * evictions to fill the whole GTT. If we allow a second
> +		 * thread to run as we do this, it will either unbind
> +		 * everything we want pinned, or steal space that we need for
> +		 * ourselves. The closer we are to a full GTT, the more likely
> +		 * such contention will cause us to fail to bind the workload
> +		 * for this batch. Since we know at this point we need to
> +		 * find space for new buffers, we know that extra pressure
> +		 * from contention is likely.
> +		 *
> +		 * In lieu of being able to hold vm->mutex for the entire
> +		 * sequence (it's complicated!), we opt for struct_mutex.
> +		 */
> +		if (mutex_lock_interruptible(&eb->i915->drm.struct_mutex))
> +			return -EINTR;
> +

With TTM, an idea that has been around for a long time is to let the 
reservations resolve this. I don't think that's in place yet, though, 
due to the fact that eviction / unbinding still requires a trylock 
reservation and also because the evictions are not batched but performed 
one by one with the evicted objects' reservations dropped immediately 
after eviction. Having reservations resolve this could perhaps be 
something we could aim for in the long run as well? Unrelated batches 
would then never contend.

In the meantime would it make sense to introduce a new device-wide mutex

to avoid completely unrelated contention with the struct_mutex?


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
