Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 346D36482CC
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Dec 2022 14:30:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9240310E231;
	Fri,  9 Dec 2022 13:30:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF86110E231
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Dec 2022 13:30:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670592646; x=1702128646;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=aZNuUAnwD7WAqfIPDzPsyQZm1/pCbcA1Q2bFqKZu050=;
 b=nIwQEGbmvXIMBiFCwFfqYf6dvNNpBbaa71Yizh/xH0ArRuf8Swtx7pWP
 74l3Cz1QiM5T78oayaJ5qW8mx69IljKr16LsGceeWPeRYoxfQkcPY/fRn
 Iw8sTUUcHy4qxTPsx7oaZCInqIBDQdzc2y+/UHE3o3uQUwcTbVdKaB/Td
 2XodgR3mk9Xd9w4p8gM6xhJfsJCWBS+kMn5s5+LZzlmUiP3Wp6tVYjS36
 oHJXkaJvFOl49M2SLpcNLDFJhVvcNakHZl2ZfuwiPgv0OwUhrg+sY646O
 O9ghaX+6ATvwNlS6LrMmg18jZfQ+3IJZY8i7ysl/0VfEVpoLGO9ediWLq Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10556"; a="317484398"
X-IronPort-AV: E=Sophos;i="5.96,230,1665471600"; d="scan'208";a="317484398"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2022 05:30:45 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10556"; a="641021335"
X-IronPort-AV: E=Sophos;i="5.96,230,1665471600"; d="scan'208";a="641021335"
Received: from efoley-mobl2.ger.corp.intel.com (HELO [10.213.214.59])
 ([10.213.214.59])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2022 05:30:43 -0800
Message-ID: <64f0cba9-a659-7888-0253-9b5c8a1c440f@linux.intel.com>
Date: Fri, 9 Dec 2022 13:30:41 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: Andrzej Hajda <andrzej.hajda@intel.com>, intel-gfx@lists.freedesktop.org
References: <20221209121459.3496148-1-andrzej.hajda@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20221209121459.3496148-1-andrzej.hajda@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: remove struct_member macro
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 09/12/2022 12:14, Andrzej Hajda wrote:
> Since it is used only to get type of member it can be replaced
> with typeof_member.
> 
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_utils.h       | 4 +---
>   drivers/gpu/drm/i915/intel_runtime_pm.h | 2 +-
>   2 files changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
> index 6c14d13364bf78..b64192d9c7daa7 100644
> --- a/drivers/gpu/drm/i915/i915_utils.h
> +++ b/drivers/gpu/drm/i915/i915_utils.h
> @@ -149,8 +149,6 @@ bool i915_error_injected(void);
>   #define page_pack_bits(ptr, bits) ptr_pack_bits(ptr, bits, PAGE_SHIFT)
>   #define page_unpack_bits(ptr, bits) ptr_unpack_bits(ptr, bits, PAGE_SHIFT)
>   
> -#define struct_member(T, member) (((T *)0)->member)
> -
>   #define fetch_and_zero(ptr) ({						\
>   	typeof(*ptr) __T = *(ptr);					\
>   	*(ptr) = (typeof(*ptr))0;					\
> @@ -170,7 +168,7 @@ static __always_inline ptrdiff_t ptrdiff(const void *a, const void *b)
>    */
>   #define container_of_user(ptr, type, member) ({				\
>   	void __user *__mptr = (void __user *)(ptr);			\
> -	BUILD_BUG_ON_MSG(!__same_type(*(ptr), struct_member(type, member)) && \
> +	BUILD_BUG_ON_MSG(!__same_type(*(ptr), typeof_member(type, member)) && \

#define __same_type(a, b) __builtin_types_compatible_p(typeof(a), typeof(b))

#define typeof_member(T, m)	typeof(((T*)0)->m)

So expands to:

__builtin_types_compatible_p(typeof(*(ptr)), typeof(typeof(((type*)0)->m)));

I guess that's okay since infinite number of typeofs is still a typeof.

Regards,

Tvrtko

>   			 !__same_type(*(ptr), void),			\
>   			 "pointer type mismatch in container_of()");	\
>   	((type __user *)(__mptr - offsetof(type, member))); })
> diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.h b/drivers/gpu/drm/i915/intel_runtime_pm.h
> index 98b8b28baaa15e..e592e8d6499a1f 100644
> --- a/drivers/gpu/drm/i915/intel_runtime_pm.h
> +++ b/drivers/gpu/drm/i915/intel_runtime_pm.h
> @@ -96,7 +96,7 @@ struct intel_runtime_pm {
>   };
>   
>   #define BITS_PER_WAKEREF	\
> -	BITS_PER_TYPE(struct_member(struct intel_runtime_pm, wakeref_count))
> +	BITS_PER_TYPE(typeof_member(struct intel_runtime_pm, wakeref_count))
>   #define INTEL_RPM_WAKELOCK_SHIFT	(BITS_PER_WAKEREF / 2)
>   #define INTEL_RPM_WAKELOCK_BIAS		(1 << INTEL_RPM_WAKELOCK_SHIFT)
>   #define INTEL_RPM_RAW_WAKEREF_MASK	(INTEL_RPM_WAKELOCK_BIAS - 1)
