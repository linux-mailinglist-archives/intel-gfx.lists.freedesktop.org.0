Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDB94746E04
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jul 2023 11:54:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7625A10E2C3;
	Tue,  4 Jul 2023 09:54:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EECA10E2C2
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jul 2023 09:54:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688464470; x=1720000470;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=C1nj94KkgSXg2w5g77RFCaPh3t3ZociLsGL54cu3Oak=;
 b=ZBad5yqhTdCEmMSjco5ez8CLw1CMflUUaEFfXkuUvFNYsDfG67J0Rkmr
 AW7I+NwmB0j6z835csGD79wN45ymp/0uncbpmHOfHLAAUAFo2XnlVGAx/
 yx9MuWeUw3WRCMZvJTu3PvQSBu8OWKzOHal2v+3HOhm8g/RdWVJ1/VekW
 eFFLGzS/SIE9f3/Z5b0sNDKs7TWZAGyVCVujsxVcRhEEg+OgnC/G5SsDi
 VKnXBHsJ0Wt/bYiTwJXvN8lWjJIJu0hOnP6aQHWGAiaRR2y5GjSasOWRW
 0EgblauIZpCDNETAdXPm70/EeZUMD7jOZi9SWlPBK5D+R+8R556d73trz g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="426767350"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="426767350"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2023 02:54:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="965464920"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="965464920"
Received: from jbouhlil-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.48.173])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2023 02:54:28 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lee Shawn C <shawn.c.lee@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230704080727.2665-1-shawn.c.lee@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230704080727.2665-1-shawn.c.lee@intel.com>
Date: Tue, 04 Jul 2023 12:54:26 +0300
Message-ID: <87ilb00zot.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Refine mmio debug flow to avoid
 bad unlock balance detected.
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
Cc: Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 04 Jul 2023, Lee Shawn C <shawn.c.lee@intel.com> wrote:
> Perform reboot stresss test on a kernel build with lockdebug flag enabled.
> Bad unlock balanace detected would happened sometimes. Below is the
> problematic scenario. If params.mmio_debug value was changed at step #4.
> And it would trigger this issue. Modify code flow that decide to
> enable/disable mmio debug before unclaimed_reg_debug() can avoid
> this symptom.
>
>     1. GEN6_READ_HEADER is called with params.mmio_debug = 0
>     2. unclaimed_reg_debug(before = true) is called
>     3. unclaimed_reg_debug return without taking a lock
>        because params.mmio_debug == 0
>     4. other thread modifies params.mmio_debug to 1
>     5. GEN6_READ_FOOTER is called with params.mmio_debug != 0
>     6. unclaimed_reg_debug tries to assert non-taken lock (first WARN)
>     7. unclaimed_reg_debug tries to release non-taken lock (second WARN)
>
> Closes:https://gitlab.freedesktop.org/drm/intel/-/issues/8749

Thanks for the report and analysis!

> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Andi Shyti <andi.shyti@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/intel_uncore.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
> index 796ebfe6c550..9d665978cc43 100644
> --- a/drivers/gpu/drm/i915/intel_uncore.c
> +++ b/drivers/gpu/drm/i915/intel_uncore.c
> @@ -1931,9 +1931,6 @@ unclaimed_reg_debug(struct intel_uncore *uncore,
>  		    const bool read,
>  		    const bool before)
>  {
> -	if (likely(!uncore->i915->params.mmio_debug) || !uncore->debug)
> -		return;
> -
>  	/* interrupts are disabled and re-enabled around uncore->lock usage */
>  	lockdep_assert_held(&uncore->lock);
>  
> @@ -2001,13 +1998,16 @@ __gen2_read(64)
>  #define GEN6_READ_HEADER(x) \
>  	u32 offset = i915_mmio_reg_offset(reg); \
>  	unsigned long irqflags; \
> +	const bool mmio_debug = likely(uncore->i915->params.mmio_debug) || uncore->debug; \

This changes the condition. The old one requires both to be true, this
requires either to be true. Additionally this gets the "likely"
backwards as the condition is reversed.

	const bool mmio_debug =	unlikely(uncore->i915->params.mmio_debug) && uncore->debug;

Anyway. I'm not happy about having the debug conditions moved within
GEN6_READ_HEADER. This also does not address GEN6_WRITE_*.

I sent a slightly different kind of fix [1].


BR,
Jani.


[1] https://patchwork.freedesktop.org/series/120167/


>  	u##x val = 0; \
>  	assert_rpm_wakelock_held(uncore->rpm); \
>  	spin_lock_irqsave(&uncore->lock, irqflags); \
> -	unclaimed_reg_debug(uncore, reg, true, true)
> +	if (mmio_debug) \
> +		unclaimed_reg_debug(uncore, reg, true, true)
>  
>  #define GEN6_READ_FOOTER \
> -	unclaimed_reg_debug(uncore, reg, true, false); \
> +	if (mmio_debug) \
> +		unclaimed_reg_debug(uncore, reg, true, false); \
>  	spin_unlock_irqrestore(&uncore->lock, irqflags); \
>  	trace_i915_reg_rw(false, reg, val, sizeof(val), trace); \
>  	return val

-- 
Jani Nikula, Intel Open Source Graphics Center
