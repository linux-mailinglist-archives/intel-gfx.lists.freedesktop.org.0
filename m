Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2460A7499C5
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jul 2023 12:50:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 868F910E4D4;
	Thu,  6 Jul 2023 10:50:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0890B10E4D4
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jul 2023 10:50:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688640634; x=1720176634;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=UtcUcFIGKM7PocxcWe8bqXiskZZvJxAP266oot53ELo=;
 b=AAq1630/Ps27lCJdUPV0XSFvLlfNZvc6tcQ+NWoO2StQtUVshR+4Y8g0
 PtvALQICn/1A2y/2UcfSH9ES7U23UWV8alyOFT6Ea9b0POYLsZQGUstPh
 YdsBr6RxXLTCXrDFL7vrY3So6iDU8MrWO77NGYxYfonF84uk6CnEZ8XVg
 ABTexhoPX6IvvhMrEHPiJkQ5Y8l9GPtiQiPL8RQD9xwva9KhzuGJKzAW2
 pdq472Ps07/BgFA2OQuNyYLDADtGG3Wo+er7LcGtIYzEzFWmOsW2ib8mR
 OF2I7XQWoUTj67PYzhcpbbY81i4J2+1GJxflp/qGXcIIn2IkMNzUG3XVL A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="366147386"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="366147386"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2023 03:50:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="669717092"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="669717092"
Received: from dnatta1-mobl1.ger.corp.intel.com (HELO [10.213.201.247])
 ([10.213.201.247])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2023 03:50:27 -0700
Message-ID: <3b5ee224-272c-0eeb-7d6f-f5da9cc2b3f0@linux.intel.com>
Date: Thu, 6 Jul 2023 11:50:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <cover.1688463863.git.jani.nikula@intel.com>
 <2abb4ff40e939d2a8e2bf0f2837fc6769614e50b.1688463863.git.jani.nikula@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <2abb4ff40e939d2a8e2bf0f2837fc6769614e50b.1688463863.git.jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/uncore: split
 unclaimed_reg_debug() to header and footer
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
> Make it easier to have different logic for the two for follow-up.
> 
> Cc: Lee Shawn C <shawn.c.lee@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   drivers/gpu/drm/i915/intel_uncore.c | 37 +++++++++++++++++------------
>   1 file changed, 22 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
> index 796ebfe6c550..a88aa342b623 100644
> --- a/drivers/gpu/drm/i915/intel_uncore.c
> +++ b/drivers/gpu/drm/i915/intel_uncore.c
> @@ -1926,10 +1926,8 @@ __unclaimed_previous_reg_debug(struct intel_uncore *uncore,
>   }
>   
>   static inline void
> -unclaimed_reg_debug(struct intel_uncore *uncore,
> -		    const i915_reg_t reg,
> -		    const bool read,
> -		    const bool before)
> +unclaimed_reg_debug_header(struct intel_uncore *uncore,
> +			   const i915_reg_t reg, const bool read)
>   {
>   	if (likely(!uncore->i915->params.mmio_debug) || !uncore->debug)
>   		return;
> @@ -1937,13 +1935,22 @@ unclaimed_reg_debug(struct intel_uncore *uncore,
>   	/* interrupts are disabled and re-enabled around uncore->lock usage */
>   	lockdep_assert_held(&uncore->lock);
>   
> -	if (before) {
> -		spin_lock(&uncore->debug->lock);
> -		__unclaimed_previous_reg_debug(uncore, reg, read);
> -	} else {
> -		__unclaimed_reg_debug(uncore, reg, read);
> -		spin_unlock(&uncore->debug->lock);
> -	}
> +	spin_lock(&uncore->debug->lock);
> +	__unclaimed_previous_reg_debug(uncore, reg, read);
> +}
> +
> +static inline void
> +unclaimed_reg_debug_footer(struct intel_uncore *uncore,
> +			   const i915_reg_t reg, const bool read)
> +{
> +	if (likely(!uncore->i915->params.mmio_debug) || !uncore->debug)
> +		return;
> +
> +	/* interrupts are disabled and re-enabled around uncore->lock usage */
> +	lockdep_assert_held(&uncore->lock);
> +
> +	__unclaimed_reg_debug(uncore, reg, read);
> +	spin_unlock(&uncore->debug->lock);
>   }
>   
>   #define __vgpu_read(x) \
> @@ -2004,10 +2011,10 @@ __gen2_read(64)
>   	u##x val = 0; \
>   	assert_rpm_wakelock_held(uncore->rpm); \
>   	spin_lock_irqsave(&uncore->lock, irqflags); \
> -	unclaimed_reg_debug(uncore, reg, true, true)
> +	unclaimed_reg_debug_header(uncore, reg, true)
>   
>   #define GEN6_READ_FOOTER \
> -	unclaimed_reg_debug(uncore, reg, true, false); \
> +	unclaimed_reg_debug_footer(uncore, reg, true); \
>   	spin_unlock_irqrestore(&uncore->lock, irqflags); \
>   	trace_i915_reg_rw(false, reg, val, sizeof(val), trace); \
>   	return val
> @@ -2108,10 +2115,10 @@ __gen2_write(32)
>   	trace_i915_reg_rw(true, reg, val, sizeof(val), trace); \
>   	assert_rpm_wakelock_held(uncore->rpm); \
>   	spin_lock_irqsave(&uncore->lock, irqflags); \
> -	unclaimed_reg_debug(uncore, reg, false, true)
> +	unclaimed_reg_debug_header(uncore, reg, false)
>   
>   #define GEN6_WRITE_FOOTER \
> -	unclaimed_reg_debug(uncore, reg, false, false); \
> +	unclaimed_reg_debug_footer(uncore, reg, false); \
>   	spin_unlock_irqrestore(&uncore->lock, irqflags)
>   
>   #define __gen6_write(x) \

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
