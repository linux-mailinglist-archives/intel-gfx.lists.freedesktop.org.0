Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CF2B671DB9
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jan 2023 14:28:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A25B310E751;
	Wed, 18 Jan 2023 13:28:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36FE210E751
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jan 2023 13:28:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674048492; x=1705584492;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=aeq7T6UESHnm7x++jSCE5icJkc3y8tgbQOzs/CKfQnU=;
 b=lgztINR5C3Y+ui1GNaXVeQFKf1pCd9EAhsf3OgU5szKrPcj7EdlN+wTa
 coxtNtlxnOUvLIfpwIk+ZD7DENWb0REC0bBKegg8Lq++a0XwJaQqMakl7
 vb2/dkxI/kgXhB9A9CHkzJvxOwAQ3PuO3qK1XQH99+A5OPueimZZok3iM
 rguGvdb32e0QyVJWpBtS/hQP+JP0uN2ZyMAXDqiM/aDwhEzcAOgPwrjpC
 ciqm1OdK01TrmWU4asPTWJkCYDW3oxAjRrknVsz7YB7LKc41KOxjg1F5Y
 LQX/cOjSoc1cvK3htAmbSxuG9viJF0Uzhnq3bK5vBFJXkFMxVlB8IhFT/ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="308540443"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="308540443"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 05:28:11 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="728198401"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="728198401"
Received: from llvincen-mobl.ger.corp.intel.com (HELO [10.213.215.37])
 ([10.213.215.37])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 05:28:10 -0800
Message-ID: <437ae0eb-0aa6-86d5-92a0-bf273b5f40ed@linux.intel.com>
Date: Wed, 18 Jan 2023 13:28:09 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <20230118131538.3558599-1-jani.nikula@intel.com>
 <20230118131538.3558599-7-jani.nikula@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20230118131538.3558599-7-jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 7/7] drm/i915: move GT_FREQUENCY_MULTIPLIER
 and GEN9_FREQ_SCALER to intel_rps.h
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



On 18/01/2023 13:15, Jani Nikula wrote:
> Declutter i915_drv.h.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_rps.h | 3 +++
>   drivers/gpu/drm/i915/i915_drv.h     | 3 ---
>   2 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.h b/drivers/gpu/drm/i915/gt/intel_rps.h
> index 9e1cad9ba0e9..c622962c6bef 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rps.h
> +++ b/drivers/gpu/drm/i915/gt/intel_rps.h
> @@ -12,6 +12,9 @@
>   struct i915_request;
>   struct drm_printer;
>   
> +#define GT_FREQUENCY_MULTIPLIER 50
> +#define GEN9_FREQ_SCALER 3
> +
>   void intel_rps_init_early(struct intel_rps *rps);
>   void intel_rps_init(struct intel_rps *rps);
>   void intel_rps_sanitize(struct intel_rps *rps);
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index d12c7932677a..2a6e212f8824 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -904,9 +904,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>   #define NUM_L3_SLICES(dev_priv) (IS_HSW_GT3(dev_priv) ? \
>   				 2 : HAS_L3_DPF(dev_priv))
>   
> -#define GT_FREQUENCY_MULTIPLIER 50
> -#define GEN9_FREQ_SCALER 3
> -
>   #define INTEL_NUM_PIPES(dev_priv) (hweight8(RUNTIME_INFO(dev_priv)->pipe_mask))
>   
>   #define HAS_DISPLAY(dev_priv) (RUNTIME_INFO(dev_priv)->pipe_mask != 0)

Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
