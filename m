Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D88E323B54
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Feb 2021 12:35:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 002CB6E02D;
	Wed, 24 Feb 2021 11:35:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CABD6E02D
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Feb 2021 11:35:41 +0000 (UTC)
IronPort-SDR: d5qHOnindI+rnCOQGtwlYSeOrVm4F5OLA3npOKmuw06EZHTRLkbXCAAho6DHyiV8J9cd3VLnuo
 7d8hzKKHOUvQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9904"; a="185245359"
X-IronPort-AV: E=Sophos;i="5.81,202,1610438400"; d="scan'208";a="185245359"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2021 03:35:40 -0800
IronPort-SDR: jX/n8HqorZ9Caaycv9FVKiNiV+JuLgNiTXxe/oRQn51SQWiJ3jdpHwcdfVBNeGJQM/MTfjQds0
 KjpjaJJga+/g==
X-IronPort-AV: E=Sophos;i="5.81,202,1610438400"; d="scan'208";a="403660156"
Received: from tbirau-mobl1.ti.intel.com (HELO [10.252.60.240])
 ([10.252.60.240])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2021 03:35:39 -0800
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210224103502.153-1-michal.wajdeczko@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <b8f403fd-3aac-54dc-4be6-09ac2e344b9d@linux.intel.com>
Date: Wed, 24 Feb 2021 11:35:38 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210224103502.153-1-michal.wajdeczko@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Promote ptrdiff() to i915_utils.h
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 24/02/2021 10:35, Michal Wajdeczko wrote:
> Generic helpers should be placed in i915_utils.h.
> 
> Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Matthew Brost <matthew.brost@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_utils.h | 5 +++++
>   drivers/gpu/drm/i915/i915_vma.h   | 5 -----
>   2 files changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
> index 4618fe8aacb5..5bca71c90fe1 100644
> --- a/drivers/gpu/drm/i915/i915_utils.h
> +++ b/drivers/gpu/drm/i915/i915_utils.h
> @@ -201,6 +201,11 @@ __check_struct_size(size_t base, size_t arr, size_t count, size_t *size)
>   	__T;								\
>   })
>   
> +static __always_inline ptrdiff_t ptrdiff(const void *a, const void *b)
> +{
> +	return a - b;
> +}
> +
>   /*
>    * container_of_user: Extract the superclass from a pointer to a member.
>    *
> diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
> index a64adc8c883b..aed8e5bc233c 100644
> --- a/drivers/gpu/drm/i915/i915_vma.h
> +++ b/drivers/gpu/drm/i915/i915_vma.h
> @@ -143,11 +143,6 @@ static inline void i915_vma_put(struct i915_vma *vma)
>   	i915_gem_object_put(vma->obj);
>   }
>   
> -static __always_inline ptrdiff_t ptrdiff(const void *a, const void *b)
> -{
> -	return a - b;
> -}
> -
>   static inline long
>   i915_vma_compare(struct i915_vma *vma,
>   		 struct i915_address_space *vm,
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
