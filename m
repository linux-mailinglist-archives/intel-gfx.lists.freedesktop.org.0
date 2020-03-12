Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 42D2318361F
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2020 17:27:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FCB26EAFE;
	Thu, 12 Mar 2020 16:27:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF1816EAFE
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Mar 2020 16:27:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Mar 2020 09:27:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,545,1574150400"; d="scan'208";a="442107033"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga005.fm.intel.com with ESMTP; 12 Mar 2020 09:27:21 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 6473C5C1DD1; Thu, 12 Mar 2020 18:25:58 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200311162300.1838847-2-matthew.d.roper@intel.com>
References: <20200311162300.1838847-1-matthew.d.roper@intel.com>
 <20200311162300.1838847-2-matthew.d.roper@intel.com>
Date: Thu, 12 Mar 2020 18:25:58 +0200
Message-ID: <87d09h1qw9.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 1/6] drm/i915: Handle all MCR ranges
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Matt Roper <matthew.d.roper@intel.com> writes:

> The bspec documents multiple MCR ranges; make sure they're all captured
> by the driver.
>
> Bspec: 13991, 52079
> Fixes: 592a7c5e082e ("drm/i915: Extend non readable mcr range")

Yeah it seems that the ranges drip feed into documentation slowly.

> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 25 ++++++++++++++++++---
>  1 file changed, 22 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 391f39b1fb26..3e352e2a5b79 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1648,15 +1648,34 @@ create_scratch(struct i915_address_space *vm, int count)
>  	return ERR_PTR(err);
>  }
>  
> +static const struct {
> +	u32 start;
> +	u32 end;
> +} mcr_ranges_gen8[] = {
> +	{ .start = 0x5500, .end = 0x55ff },
> +	{ .start = 0x7000, .end = 0x7fff },
> +	{ .start = 0x9400, .end = 0x97ff },
> +	{ .start = 0xb000, .end = 0xb3ff },
> +	{ .start = 0xe000, .end = 0xe7ff },
> +	{},
> +};
> +
>  static bool mcr_range(struct drm_i915_private *i915, u32 offset)
>  {
> +	int i;
> +
> +	if (INTEL_GEN(i915) < 8)
> +		return false;
> +
>  	/*
> -	 * Registers in this range are affected by the MCR selector
> +	 * Registers in these ranges are affected by the MCR selector
>  	 * which only controls CPU initiated MMIO. Routing does not
>  	 * work for CS access so we cannot verify them on this path.
>  	 */
> -	if (INTEL_GEN(i915) >= 8 && (offset >= 0xb000 && offset <= 0xb4ff))
> -		return true;
> +	for (i = 0; mcr_ranges_gen8[i].start; i++)
> +		if (offset >= mcr_ranges_gen8[i].start &&
> +		    offset <= mcr_ranges_gen8[i].end)
> +			return true;
>  
>  	return false;
>  }
> -- 
> 2.24.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
