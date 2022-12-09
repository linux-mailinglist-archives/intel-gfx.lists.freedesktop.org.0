Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BEC76482BF
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Dec 2022 14:18:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AC4A10E035;
	Fri,  9 Dec 2022 13:18:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44C6310E035
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Dec 2022 13:18:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670591909; x=1702127909;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=toWlTj+7JCdC3XHaonOltx2amCwUyOqGd9NPeh2Gl7A=;
 b=X0sXq9+XqUY1Cx9wzEQUUMUQSv2Fiu4UDSwx89kXsCRoDz13XX+zoumv
 NhScp+uzZJNlDKL9nCtVLalffNdWbTxiuRfy3CgxsKRpbPbFlGMjmR7Jd
 bIsEnTsAWSs8/Ra1SRi7jUJ+uF3jNUbHXS56hdSxshp1oh6dJiqU4/Ywq
 8s7Np9Iaz1xdAVEgkGs7vtuk/FB1k5RedIn2dEp33A1q5JLlkcsBy6qwh
 K3busy+K7j7F6UTqnuBCisC5TvbWLN+PHj9oCPtiTqXv3JQexhrbvNyQU
 uH1JE2PS76LKtaVe4iazVO5UdmxuadU+4ijLHKkh/RkIGcg0zaYrQ+t1z Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10556"; a="297808737"
X-IronPort-AV: E=Sophos;i="5.96,230,1665471600"; d="scan'208";a="297808737"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2022 05:18:28 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10556"; a="649551751"
X-IronPort-AV: E=Sophos;i="5.96,230,1665471600"; d="scan'208";a="649551751"
Received: from sarahgar-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.5.186])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2022 05:18:26 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20221209121459.3496148-1-andrzej.hajda@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221209121459.3496148-1-andrzej.hajda@intel.com>
Date: Fri, 09 Dec 2022 15:18:23 +0200
Message-ID: <877cz0zpeo.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 09 Dec 2022, Andrzej Hajda <andrzej.hajda@intel.com> wrote:
> Since it is used only to get type of member it can be replaced
> with typeof_member.

Yes, please!

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_utils.h       | 4 +---
>  drivers/gpu/drm/i915/intel_runtime_pm.h | 2 +-
>  2 files changed, 2 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
> index 6c14d13364bf78..b64192d9c7daa7 100644
> --- a/drivers/gpu/drm/i915/i915_utils.h
> +++ b/drivers/gpu/drm/i915/i915_utils.h
> @@ -149,8 +149,6 @@ bool i915_error_injected(void);
>  #define page_pack_bits(ptr, bits) ptr_pack_bits(ptr, bits, PAGE_SHIFT)
>  #define page_unpack_bits(ptr, bits) ptr_unpack_bits(ptr, bits, PAGE_SHIFT)
>  
> -#define struct_member(T, member) (((T *)0)->member)
> -
>  #define fetch_and_zero(ptr) ({						\
>  	typeof(*ptr) __T = *(ptr);					\
>  	*(ptr) = (typeof(*ptr))0;					\
> @@ -170,7 +168,7 @@ static __always_inline ptrdiff_t ptrdiff(const void *a, const void *b)
>   */
>  #define container_of_user(ptr, type, member) ({				\
>  	void __user *__mptr = (void __user *)(ptr);			\
> -	BUILD_BUG_ON_MSG(!__same_type(*(ptr), struct_member(type, member)) && \
> +	BUILD_BUG_ON_MSG(!__same_type(*(ptr), typeof_member(type, member)) && \
>  			 !__same_type(*(ptr), void),			\
>  			 "pointer type mismatch in container_of()");	\
>  	((type __user *)(__mptr - offsetof(type, member))); })
> diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.h b/drivers/gpu/drm/i915/intel_runtime_pm.h
> index 98b8b28baaa15e..e592e8d6499a1f 100644
> --- a/drivers/gpu/drm/i915/intel_runtime_pm.h
> +++ b/drivers/gpu/drm/i915/intel_runtime_pm.h
> @@ -96,7 +96,7 @@ struct intel_runtime_pm {
>  };
>  
>  #define BITS_PER_WAKEREF	\
> -	BITS_PER_TYPE(struct_member(struct intel_runtime_pm, wakeref_count))
> +	BITS_PER_TYPE(typeof_member(struct intel_runtime_pm, wakeref_count))
>  #define INTEL_RPM_WAKELOCK_SHIFT	(BITS_PER_WAKEREF / 2)
>  #define INTEL_RPM_WAKELOCK_BIAS		(1 << INTEL_RPM_WAKELOCK_SHIFT)
>  #define INTEL_RPM_RAW_WAKEREF_MASK	(INTEL_RPM_WAKELOCK_BIAS - 1)

-- 
Jani Nikula, Intel Open Source Graphics Center
