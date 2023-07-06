Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B2945749A01
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jul 2023 12:56:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3481F10E4D7;
	Thu,  6 Jul 2023 10:56:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BD3410E4D7
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jul 2023 10:56:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688640973; x=1720176973;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=ZHl5QHO3k+ybAb4ltcUgRg0/zsr2Dfo5lQFoEvrteHg=;
 b=C/AY2jE5pyT8kBB1niYa9cnfLdkhMrG1SMCjw7cQSgJuCZsPcwPXk1wA
 eK+BG6IjkrVpuD/OdD78WpDb+rMNx8BWo16muQmg8nYYRlHRvyrZ6fAST
 s8bmCaR05nzOulELcmDuwqN3l4w2IOs1oI9T58OOSBx0CfenJdP0lPZVi
 ise4Y9Fy3grFnBzVqcfSCEEVk3E49OyEVEipRhgHB8OhrtmZQ0LyiykvN
 9BnmoULvt59N7g/zco4EnA3ihpDsu/OFFotFd87hKRVxdst1dp8OQozOa
 NbkbkGJPjfw42Phugm4nQZDyjiqRd7BP5I7QC/ceETmqT61CYabsFvKL1 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="394328330"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="394328330"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2023 03:56:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="719547368"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="719547368"
Received: from dnatta1-mobl1.ger.corp.intel.com (HELO [10.213.201.247])
 ([10.213.201.247])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2023 03:56:10 -0700
Message-ID: <5e84ec16-537d-3df8-a47b-fb91f254a7ff@linux.intel.com>
Date: Thu, 6 Jul 2023 11:56:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <cover.1688463863.git.jani.nikula@intel.com>
 <4e087e216d86e6be8109bb443d1ac6c9ced1f777.1688463863.git.jani.nikula@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <4e087e216d86e6be8109bb443d1ac6c9ced1f777.1688463863.git.jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/uncore: optimize
 CONFIG_DRM_I915_DEBUG_MMIO=n more
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


On 04/07/2023 10:48, Jani Nikula wrote:
> While the default for the mmio_debug parameter depends on
> CONFIG_DRM_I915_DEBUG_MMIO, we look it up and include all the code for
> unclaimed reg debugging even when CONFIG_DRM_I915_DEBUG_MMIO=n. Fix it.
> 
> Cc: Lee Shawn C <shawn.c.lee@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   drivers/gpu/drm/i915/intel_uncore.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
> index dfefad5a5fec..da2edde4b6f6 100644
> --- a/drivers/gpu/drm/i915/intel_uncore.c
> +++ b/drivers/gpu/drm/i915/intel_uncore.c
> @@ -1929,7 +1929,8 @@ static inline bool __must_check
>   unclaimed_reg_debug_header(struct intel_uncore *uncore,
>   			   const i915_reg_t reg, const bool read)
>   {
> -	if (likely(!uncore->i915->params.mmio_debug) || !uncore->debug)
> +	if (!IS_ENABLED(CONFIG_DRM_I915_DEBUG_MMIO) ||
> +	    likely(!uncore->i915->params.mmio_debug) || !uncore->debug)
>   		return false;

But now it would not be possible to enable mmio_debug, if Kconfig 
_default_ is 'n'. What am I missing?

Regards,

Tvrtko

>   
>   	/* interrupts are disabled and re-enabled around uncore->lock usage */
