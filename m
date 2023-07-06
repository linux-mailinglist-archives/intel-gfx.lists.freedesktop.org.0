Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0870D7499C8
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jul 2023 12:51:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73DD810E4D6;
	Thu,  6 Jul 2023 10:51:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 198DA10E4D6
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jul 2023 10:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688640684; x=1720176684;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=2kOEnVMmUhbfvdztSs1vl+kT4EdXcko+EdQlbABlCOw=;
 b=RI8si3QU+Tnfc14nqVt6MUk8kAzNYnKtbNX2MDDNRTztQMN/zai/Z0V+
 AmdkW39Y75uUmEGbQjaaQl/JNNUMClyo9hm2bKZUQ5cv41BHYjAhQIa3v
 kEcikPdccfKyDJjd97CySRKpY2LNlP3FJjupIpLomIA7Dqv8Mg7etyboo
 m9MWvM4Yn43bjN0BzudbEDXGlAzxdWfW7fcacdnbYxyO+EpSd0laVhX8/
 zU7t3bCf1vpbJ0JSA7x5yL9vya4fk28ZyNHbKTmxQTdIbQuqfOwanYeji
 PkYww8H72hv528K6yh7bh4zLwFiMDMj6LuzbSYWp4z46y3ZpbYdSAWOUc Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="366147500"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="366147500"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2023 03:51:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="669717186"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="669717186"
Received: from dnatta1-mobl1.ger.corp.intel.com (HELO [10.213.201.247])
 ([10.213.201.247])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2023 03:51:23 -0700
Message-ID: <3eb5abe0-efa9-7d46-9d0d-21106c49b6f2@linux.intel.com>
Date: Thu, 6 Jul 2023 11:51:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <cover.1688463863.git.jani.nikula@intel.com>
 <eb314ccd1fc96aa729667fc18322cc4cbb3d79cf.1688463863.git.jani.nikula@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <eb314ccd1fc96aa729667fc18322cc4cbb3d79cf.1688463863.git.jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/uncore: fix race around
 i915->params.mmio_debug
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
> Only check the conditions for unclaimed reg debug once to avoid locking
> problems when i915->params.mmio_debug changes between header and footer.
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8749
> Cc: Lee Shawn C <shawn.c.lee@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   drivers/gpu/drm/i915/intel_uncore.c | 21 ++++++++++++---------
>   1 file changed, 12 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
> index a88aa342b623..dfefad5a5fec 100644
> --- a/drivers/gpu/drm/i915/intel_uncore.c
> +++ b/drivers/gpu/drm/i915/intel_uncore.c
> @@ -1925,27 +1925,26 @@ __unclaimed_previous_reg_debug(struct intel_uncore *uncore,
>   			i915_mmio_reg_offset(reg));
>   }
>   
> -static inline void
> +static inline bool __must_check
>   unclaimed_reg_debug_header(struct intel_uncore *uncore,
>   			   const i915_reg_t reg, const bool read)
>   {
>   	if (likely(!uncore->i915->params.mmio_debug) || !uncore->debug)
> -		return;
> +		return false;
>   
>   	/* interrupts are disabled and re-enabled around uncore->lock usage */
>   	lockdep_assert_held(&uncore->lock);
>   
>   	spin_lock(&uncore->debug->lock);
>   	__unclaimed_previous_reg_debug(uncore, reg, read);
> +
> +	return true;
>   }
>   
>   static inline void
>   unclaimed_reg_debug_footer(struct intel_uncore *uncore,
>   			   const i915_reg_t reg, const bool read)
>   {
> -	if (likely(!uncore->i915->params.mmio_debug) || !uncore->debug)
> -		return;
> -
>   	/* interrupts are disabled and re-enabled around uncore->lock usage */
>   	lockdep_assert_held(&uncore->lock);
>   
> @@ -2008,13 +2007,15 @@ __gen2_read(64)
>   #define GEN6_READ_HEADER(x) \
>   	u32 offset = i915_mmio_reg_offset(reg); \
>   	unsigned long irqflags; \
> +	bool unclaimed_reg_debug; \
>   	u##x val = 0; \
>   	assert_rpm_wakelock_held(uncore->rpm); \
>   	spin_lock_irqsave(&uncore->lock, irqflags); \
> -	unclaimed_reg_debug_header(uncore, reg, true)
> +	unclaimed_reg_debug = unclaimed_reg_debug_header(uncore, reg, true)
>   
>   #define GEN6_READ_FOOTER \
> -	unclaimed_reg_debug_footer(uncore, reg, true); \
> +	if (unclaimed_reg_debug) \
> +		unclaimed_reg_debug_footer(uncore, reg, true);	\
>   	spin_unlock_irqrestore(&uncore->lock, irqflags); \
>   	trace_i915_reg_rw(false, reg, val, sizeof(val), trace); \
>   	return val
> @@ -2112,13 +2113,15 @@ __gen2_write(32)
>   #define GEN6_WRITE_HEADER \
>   	u32 offset = i915_mmio_reg_offset(reg); \
>   	unsigned long irqflags; \
> +	bool unclaimed_reg_debug; \
>   	trace_i915_reg_rw(true, reg, val, sizeof(val), trace); \
>   	assert_rpm_wakelock_held(uncore->rpm); \
>   	spin_lock_irqsave(&uncore->lock, irqflags); \
> -	unclaimed_reg_debug_header(uncore, reg, false)
> +	unclaimed_reg_debug = unclaimed_reg_debug_header(uncore, reg, false)
>   
>   #define GEN6_WRITE_FOOTER \
> -	unclaimed_reg_debug_footer(uncore, reg, false); \
> +	if (unclaimed_reg_debug) \
> +		unclaimed_reg_debug_footer(uncore, reg, false); \
>   	spin_unlock_irqrestore(&uncore->lock, irqflags)
>   
>   #define __gen6_write(x) \

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
