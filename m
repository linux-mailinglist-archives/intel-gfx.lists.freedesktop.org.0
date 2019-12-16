Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6745120FB8
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 17:40:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19546891E2;
	Mon, 16 Dec 2019 16:40:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C881891E2
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 16:40:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Dec 2019 08:40:18 -0800
X-IronPort-AV: E=Sophos;i="5.69,322,1571727600"; d="scan'208";a="209357954"
Received: from dtriolet-mobl1.ger.corp.intel.com (HELO [10.251.84.191])
 ([10.251.84.191])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 16 Dec 2019 08:40:18 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191212014629.854076-1-chris@chris-wilson.co.uk>
 <20191212014629.854076-3-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <51acf694-2cb2-1044-e761-8ed0c43d4cc4@linux.intel.com>
Date: Mon, 16 Dec 2019 16:40:15 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191212014629.854076-3-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/gt: Eliminate the trylock for
 reading a timeline's hwsp
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


On 12/12/2019 01:46, Chris Wilson wrote:
> As we stash a pointer to the HWSP cacheline on the request, when reading
> it we only need confirm that the cacheline is still valid by checking
> that the request and timeline are still intact.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_timeline.c | 38 ++++++++----------------
>   1 file changed, 13 insertions(+), 25 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_timeline.c b/drivers/gpu/drm/i915/gt/intel_timeline.c
> index 728da39e8ace..566ce19bb0ea 100644
> --- a/drivers/gpu/drm/i915/gt/intel_timeline.c
> +++ b/drivers/gpu/drm/i915/gt/intel_timeline.c
> @@ -515,6 +515,7 @@ int intel_timeline_read_hwsp(struct i915_request *from,
>   			     struct i915_request *to,
>   			     u32 *hwsp)
>   {
> +	struct intel_timeline_cacheline *cl = from->hwsp_cacheline;
>   	struct intel_timeline *tl;
>   	int err;
>   
> @@ -527,33 +528,20 @@ int intel_timeline_read_hwsp(struct i915_request *from,
>   		return 1;
>   
>   	GEM_BUG_ON(rcu_access_pointer(to->timeline) == tl);
> -
> -	err = -EAGAIN;
> -	if (mutex_trylock(&tl->mutex)) {
> -		struct intel_timeline_cacheline *cl = from->hwsp_cacheline;
> -
> -		if (i915_request_completed(from)) {
> -			err = 1;
> -			goto unlock;
> -		}
> -
> -		err = cacheline_ref(cl, to);
> -		if (err)
> -			goto unlock;
> -
> -		if (likely(cl == tl->hwsp_cacheline)) {
> -			*hwsp = tl->hwsp_offset;
> -		} else { /* across a seqno wrap, recover the original offset */
> -			*hwsp = i915_ggtt_offset(cl->hwsp->vma) +
> -				ptr_unmask_bits(cl->vaddr, CACHELINE_BITS) *
> -				CACHELINE_BYTES;
> -		}
> -
> -unlock:
> -		mutex_unlock(&tl->mutex);
> +	err = cacheline_ref(cl, to);
> +	if (err)
> +		goto out;
> +
> +	*hwsp = tl->hwsp_offset;
> +	if (unlikely(cl != READ_ONCE(tl->hwsp_cacheline))) {
> +		/* across a seqno wrap, recover the original offset */
> +		*hwsp = i915_ggtt_offset(cl->hwsp->vma) +
> +			ptr_unmask_bits(cl->vaddr, CACHELINE_BITS) *
> +			CACHELINE_BYTES;

There is some confusion here (for me) which timeline is which. "From" 
timeline is which is unlocked now and cl and tl come from it. And that 
is the signaling request.

It is just RCU which guarantees it is safe to dereference the timeline 
on this request?

Regards,

Tvrtko

>   	}
> -	intel_timeline_put(tl);
>   
> +out:
> +	intel_timeline_put(tl);
>   	return err;
>   }
>   
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
