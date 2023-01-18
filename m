Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D6A6671EDD
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jan 2023 15:06:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAB4A10E753;
	Wed, 18 Jan 2023 14:05:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E3CD10E752
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jan 2023 14:05:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674050757; x=1705586757;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=Fkggu60tmfp3yXQTsj9hMPmjZeGvql3ExYJ9oEUGw1w=;
 b=N+oum4g28e+XXN5dud0MLMSyNystLboefr3IY+0P76RMWQ+9Vc7n8Q0Z
 sHS1K9uEw2X1+MhcInPxfxB+hngc5NZixnDv3C7f5gtRuNuxvYLGZtrVG
 JGTqkr7+gFR/3oG4c5uHgYTqBtDVLXyR685kwTOVcFGTevK4xGd9UPHb+
 uOOmf8VwNSaposJwSMr3AQbvu/bJ26tvvmvCk3OEkHOTVp9Bqt5ryvX9e
 +3fWD8GtvW5pp6xgIbvoc7fsBjfIwBdqRN6SgEaqMdkGukusiRCK7sfVV
 jCtnRfsaB1HXclUNsnQR9qMDVU9Y2Jx/1Er57Gpgop0i7cKdImPRm3G4S A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="411225330"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="411225330"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 06:05:57 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="728211030"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="728211030"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.41.107])
 ([10.252.41.107])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 06:05:56 -0800
Message-ID: <1f0c6c82-fa34-6802-dc0b-34142dda1e79@linux.intel.com>
Date: Wed, 18 Jan 2023 15:05:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <20230118131538.3558599-1-jani.nikula@intel.com>
 <20230118131538.3558599-5-jani.nikula@intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <20230118131538.3558599-5-jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 5/7] drm/i915: move I915_GEM_GPU_DOMAINS to
 i915_gem.h
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>

For rest of the series Acked-by: Nirmoy Das <nirmoy.das@intel.com>


Thanks,

Nirmoy

On 1/18/2023 2:15 PM, Jani Nikula wrote:
> Declutter i915_drv.h.
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_drv.h | 7 -------
>   drivers/gpu/drm/i915/i915_gem.h | 7 +++++++
>   2 files changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 73ce5447cae8..eed552e507dc 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -68,13 +68,6 @@ struct drm_i915_clock_gating_funcs;
>   struct vlv_s0ix_state;
>   struct intel_pxp;
>   
> -#define I915_GEM_GPU_DOMAINS \
> -	(I915_GEM_DOMAIN_RENDER | \
> -	 I915_GEM_DOMAIN_SAMPLER | \
> -	 I915_GEM_DOMAIN_COMMAND | \
> -	 I915_GEM_DOMAIN_INSTRUCTION | \
> -	 I915_GEM_DOMAIN_VERTEX)
> -
>   #define I915_COLOR_UNEVICTABLE (-1) /* a non-vma sharing the address space */
>   
>   #define GEM_QUIRK_PIN_SWIZZLED_PAGES	BIT(0)
> diff --git a/drivers/gpu/drm/i915/i915_gem.h b/drivers/gpu/drm/i915/i915_gem.h
> index a5cdf6662d01..82e9d289398c 100644
> --- a/drivers/gpu/drm/i915/i915_gem.h
> +++ b/drivers/gpu/drm/i915/i915_gem.h
> @@ -39,6 +39,13 @@ struct i915_gem_ww_ctx;
>   struct i915_gtt_view;
>   struct i915_vma;
>   
> +#define I915_GEM_GPU_DOMAINS	       \
> +	(I915_GEM_DOMAIN_RENDER |      \
> +	 I915_GEM_DOMAIN_SAMPLER |     \
> +	 I915_GEM_DOMAIN_COMMAND |     \
> +	 I915_GEM_DOMAIN_INSTRUCTION | \
> +	 I915_GEM_DOMAIN_VERTEX)
> +
>   void i915_gem_init_early(struct drm_i915_private *i915);
>   void i915_gem_cleanup_early(struct drm_i915_private *i915);
>   
