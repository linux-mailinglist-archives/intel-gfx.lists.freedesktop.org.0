Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B9E1E1A0C36
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 12:44:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DE716E828;
	Tue,  7 Apr 2020 10:44:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 410366E828
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 10:44:51 +0000 (UTC)
IronPort-SDR: rpcS3bFUItvh0nMRNaGMGCuWlVyqX4w72+vNUtTlTfN7u/UkHoopJerNK99cJEa/Miu6caQZB+
 E0jROVO/3W7w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 03:44:51 -0700
IronPort-SDR: dU623+Vn1X5vEsbP8soHOtxTTGJG+KZDmxmjrJygBcez6ryYdMEmz98fcHmIhserKw9NGr3sFn
 /Tv2OyGYJArw==
X-IronPort-AV: E=Sophos;i="5.72,353,1580803200"; d="scan'208";a="424706251"
Received: from vkazinx-mobl2.ger.corp.intel.com (HELO [10.251.172.173])
 ([10.251.172.173])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 03:44:48 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200403091300.14734-1-chris@chris-wilson.co.uk>
 <20200403091300.14734-9-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <368ed897-311b-2237-54cb-8c9cf26527c4@linux.intel.com>
Date: Tue, 7 Apr 2020 11:44:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200403091300.14734-9-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 09/10] drm/i915/gem: Allow combining
 submit-fences with syncobj
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


On 03/04/2020 10:12, Chris Wilson wrote:
> Fixes: a88b6e4cbafd ("drm/i915: Allow specification of parallel execbuf")

It looks like new uapi on the technical level, even though from a higher 
level it is just an application of existing uapi across more modes, so 
why fixes and who is the consumer?

Regards,

Tvrtko

> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 10 +++++++---
>   include/uapi/drm/i915_drm.h                    |  7 ++++---
>   2 files changed, 11 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index bf1b5399ffa3..5c1c5a9eced4 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -2299,7 +2299,7 @@ get_fence_array(struct drm_i915_gem_execbuffer2 *args,
>   		BUILD_BUG_ON(~(ARCH_KMALLOC_MINALIGN - 1) &
>   			     ~__I915_EXEC_FENCE_UNKNOWN_FLAGS);
>   
> -		fences[n] = ptr_pack_bits(syncobj, fence.flags, 2);
> +		fences[n] = ptr_pack_bits(syncobj, fence.flags, 3);
>   	}
>   
>   	return fences;
> @@ -2330,7 +2330,7 @@ await_fence_array(struct i915_execbuffer *eb,
>   		struct dma_fence *fence;
>   		unsigned int flags;
>   
> -		syncobj = ptr_unpack_bits(fences[n], &flags, 2);
> +		syncobj = ptr_unpack_bits(fences[n], &flags, 3);
>   		if (!(flags & I915_EXEC_FENCE_WAIT))
>   			continue;
>   
> @@ -2354,7 +2354,11 @@ await_fence_array(struct i915_execbuffer *eb,
>   			spin_unlock(&syncobj->lock);
>   		}
>   
> -		err = i915_request_await_dma_fence(eb->request, fence);
> +		if (flags & I915_EXEC_FENCE_WAIT_SUBMIT)
> +			err = i915_request_await_execution(eb->request, fence,
> +							   eb->engine->bond_execute);
> +		else
> +			err = i915_request_await_dma_fence(eb->request, fence);
>   		dma_fence_put(fence);
>   		if (err < 0)
>   			return err;
> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
> index 14b67cd6b54b..704dd0e3bc1d 100644
> --- a/include/uapi/drm/i915_drm.h
> +++ b/include/uapi/drm/i915_drm.h
> @@ -1040,9 +1040,10 @@ struct drm_i915_gem_exec_fence {
>   	 */
>   	__u32 handle;
>   
> -#define I915_EXEC_FENCE_WAIT            (1<<0)
> -#define I915_EXEC_FENCE_SIGNAL          (1<<1)
> -#define __I915_EXEC_FENCE_UNKNOWN_FLAGS (-(I915_EXEC_FENCE_SIGNAL << 1))
> +#define I915_EXEC_FENCE_WAIT            (1u << 0)
> +#define I915_EXEC_FENCE_SIGNAL          (1u << 1)
> +#define I915_EXEC_FENCE_WAIT_SUBMIT     (1u << 2)
> +#define __I915_EXEC_FENCE_UNKNOWN_FLAGS (-(I915_EXEC_FENCE_WAIT_SUBMIT << 1))
>   	__u32 flags;
>   };
>   
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
