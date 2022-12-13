Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22C2764B88F
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Dec 2022 16:36:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F1AB10E336;
	Tue, 13 Dec 2022 15:35:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89F6110E337
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Dec 2022 15:35:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670945757; x=1702481757;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=IFQJwWzLoS89I+46Ccym+IevNU5G8DHLHvdip9+X/x4=;
 b=FW+XItR31XrlwHtgGXmlSWqkwcL70PQk3ZwMVkqke35xIjh90iHzAejE
 n9Lj1Q+yfXzhfFHvuG9st2W4spj081/ak4BpeglVbFmT0m0gPMPFb71ZL
 2I8eGK2PH5CnBAzq1JCaAPHCYDebtinSMH597B6YEMC3kt1UE5xmA3k9a
 vZa3TbLqOiFtzioYFu9q6Hyc2CB91UiJskhN+zKS+vpE3nORvK1yf+cgS
 ja/ZNQbeajYOqnlkeQYkr+Q/bXPNGD6LdLHf10L2aChCqrxniIKd4/x5w
 i1oGlLFzFfCeM/6exAx/jHQ0s8SZipta08ZLE6Xg1SlVy7oEP9Q3qzxai Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="320015478"
X-IronPort-AV: E=Sophos;i="5.96,241,1665471600"; d="scan'208";a="320015478"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 07:35:56 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="737427432"
X-IronPort-AV: E=Sophos;i="5.96,241,1665471600"; d="scan'208";a="737427432"
Received: from epetresx-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.251.216.82])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 07:35:33 -0800
Date: Tue, 13 Dec 2022 16:35:25 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <Y5ibvbKel/y3wCT+@ashyti-mobl2.lan>
References: <20221209121459.3496148-1-andrzej.hajda@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221209121459.3496148-1-andrzej.hajda@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Andrzej,

On Fri, Dec 09, 2022 at 01:14:59PM +0100, Andrzej Hajda wrote:
> Since it is used only to get type of member it can be replaced
> with typeof_member.
> 
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>

pushed in drm-intel-gt-next.

Thanks,
Andi

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
> -- 
> 2.34.1
