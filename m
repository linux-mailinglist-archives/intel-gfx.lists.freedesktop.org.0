Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9092305F90
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 16:28:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F0106E837;
	Wed, 27 Jan 2021 15:28:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56F316E837
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 15:28:26 +0000 (UTC)
IronPort-SDR: PWHsgsdwnzIIZCfA1FD9Mupe+wajhlChg/hdNzuGLegrmU8+XbXhxdE0whc7g38cJxGIg4semS
 gZ76iGUT9jKw==
X-IronPort-AV: E=McAfee;i="6000,8403,9877"; a="244161221"
X-IronPort-AV: E=Sophos;i="5.79,379,1602572400"; d="scan'208";a="244161221"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 07:28:25 -0800
IronPort-SDR: rNmi8YDo7V7dfDB+BriA7FcL02aUp7ublphpHzR1UIwVfaCHgqoMfKHCJu5S3ztKJiPVYLiCbD
 EJJP7n+EXbnw==
X-IronPort-AV: E=Sophos;i="5.79,379,1602572400"; d="scan'208";a="388359174"
Received: from aohana-mobl1.ger.corp.intel.com (HELO [10.214.230.73])
 ([10.214.230.73])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 07:28:23 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210125140136.10494-1-chris@chris-wilson.co.uk>
 <20210125140136.10494-21-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <3c007546-ac60-0c1f-3763-95d00be592c7@linux.intel.com>
Date: Wed, 27 Jan 2021 15:28:20 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210125140136.10494-21-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 21/41] drm/i915: Wrap cmpxchg64 with
 try_cmpxchg64() helper
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
Cc: thomas.hellstrom@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 25/01/2021 14:01, Chris Wilson wrote:
> Wrap cmpxchg64 with a try_cmpxchg()-esque helper. Hiding the old-value
> dance in the helper allows for cleaner code.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/i915_utils.h | 32 +++++++++++++++++++++++++++++++
>   1 file changed, 32 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
> index abd4dcd9f79c..95ead6bb1ba6 100644
> --- a/drivers/gpu/drm/i915/i915_utils.h
> +++ b/drivers/gpu/drm/i915/i915_utils.h
> @@ -461,4 +461,36 @@ static inline bool timer_expired(const struct timer_list *t)
>    */
>   #define IS_ACTIVE(config) ((config) != 0)
>   
> +#ifndef try_cmpxchg64
> +#if IS_ENABLED(CONFIG_64BIT)
> +#define try_cmpxchg64(_ptr, _pold, _new) try_cmpxchg(_ptr, _pold, _new)
> +#else
> +#define try_cmpxchg64(_ptr, _pold, _new)				\
> +({									\
> +	__typeof__(_ptr) _old = (__typeof__(_ptr))(_pold);		\
> +	__typeof__(*(_ptr)) __old = *_old;				\
> +	__typeof__(*(_ptr)) __cur = cmpxchg64(_ptr, __old, _new);	\
> +	bool success = __cur == __old;					\
> +	if (unlikely(!success))						\
> +		*_old = __cur;						\
> +	likely(success);						\
> +})
> +#endif
> +#endif
> +
> +#ifndef xchg64
> +#if IS_ENABLED(CONFIG_64BIT)
> +#define xchg64(_ptr, _new) xchg(_ptr, _new)
> +#else
> +#define xchg64(_ptr, _new)						\
> +({									\
> +	__typeof__(_ptr) __ptr = (_ptr);				\
> +	__typeof__(*(_ptr)) __old = *__ptr;				\
> +	while (!try_cmpxchg64(__ptr, &__old, (_new)))			\
> +		;							\
> +	__old;								\
> +})
> +#endif
> +#endif
> +
>   #endif /* !__I915_UTILS_H */
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
