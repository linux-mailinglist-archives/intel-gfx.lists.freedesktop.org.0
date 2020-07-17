Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE50C223C4E
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jul 2020 15:23:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B529F6EC69;
	Fri, 17 Jul 2020 13:23:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E563C6EC69
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jul 2020 13:23:25 +0000 (UTC)
IronPort-SDR: JGSD0WiEpQ40Bp9puZVPcQh/InZviG9aGblTjRyca9Nad96QBxek87QB8qDMTtEnpDXb9vbHg6
 JW8qrZgze15w==
X-IronPort-AV: E=McAfee;i="6000,8403,9684"; a="147568555"
X-IronPort-AV: E=Sophos;i="5.75,362,1589266800"; d="scan'208";a="147568555"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2020 06:23:25 -0700
IronPort-SDR: E1x4befntIXD+bVPrpYlat9E1RJ6uxsBDcO5PdrNOZxiEN3Eh7+TNvEs+k577Cus+5pHTRnaGp
 6DGZGxy5BJHA==
X-IronPort-AV: E=Sophos;i="5.75,362,1589266800"; d="scan'208";a="460845889"
Received: from gpanagop-mobl.ger.corp.intel.com (HELO [10.249.33.238])
 ([10.249.33.238])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2020 06:23:24 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
 <20200715115147.11866-9-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <fd62e818-2f60-3c34-afed-27d9226e3c65@linux.intel.com>
Date: Fri, 17 Jul 2020 14:23:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200715115147.11866-9-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 09/66] drm/i915: Provide a fastpath for
 waiting on vma bindings
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


On 15/07/2020 12:50, Chris Wilson wrote:
> Before we can execute a request, we must wait for all of its vma to be
> bound. This is a frequent operation for which we can optimise away a
> few atomic operations (notably a cmpxchg) in lieu of the RCU protection.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/i915_active.h | 15 +++++++++++++++
>   drivers/gpu/drm/i915/i915_vma.c    |  9 +++++++--
>   2 files changed, 22 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_active.h b/drivers/gpu/drm/i915/i915_active.h
> index b9e0394e2975..fb165d3f01cf 100644
> --- a/drivers/gpu/drm/i915/i915_active.h
> +++ b/drivers/gpu/drm/i915/i915_active.h
> @@ -231,4 +231,19 @@ struct i915_active *i915_active_create(void);
>   struct i915_active *i915_active_get(struct i915_active *ref);
>   void i915_active_put(struct i915_active *ref);
>   
> +static inline int __i915_request_await_exclusive(struct i915_request *rq,
> +						 struct i915_active *active)
> +{
> +	struct dma_fence *fence;
> +	int err = 0;
> +
> +	fence = i915_active_fence_get(&active->excl);
> +	if (fence) {
> +		err = i915_request_await_dma_fence(rq, fence);
> +		dma_fence_put(fence);
> +	}
> +
> +	return err;
> +}
> +
>   #endif /* _I915_ACTIVE_H_ */
> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
> index bc64f773dcdb..cd12047c7791 100644
> --- a/drivers/gpu/drm/i915/i915_vma.c
> +++ b/drivers/gpu/drm/i915/i915_vma.c
> @@ -1167,6 +1167,12 @@ void i915_vma_revoke_mmap(struct i915_vma *vma)
>   		list_del(&vma->obj->userfault_link);
>   }
>   
> +static int
> +__i915_request_await_bind(struct i915_request *rq, struct i915_vma *vma)
> +{
> +	return __i915_request_await_exclusive(rq, &vma->active);
> +}
> +
>   int __i915_vma_move_to_active(struct i915_vma *vma, struct i915_request *rq)
>   {
>   	int err;
> @@ -1174,8 +1180,7 @@ int __i915_vma_move_to_active(struct i915_vma *vma, struct i915_request *rq)
>   	GEM_BUG_ON(!i915_vma_is_pinned(vma));
>   
>   	/* Wait for the vma to be bound before we start! */
> -	err = i915_request_await_active(rq, &vma->active,
> -					I915_ACTIVE_AWAIT_EXCL);
> +	err = __i915_request_await_bind(rq, vma);
>   	if (err)
>   		return err;
>   
> 

Looks like for like, apart from missing i915_active_acquire_if_busy 
across the operation. Remind me please what is acquire/release 
protecting against? :)

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
