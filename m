Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 275F61CFFF5
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2020 22:58:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E45F6E98B;
	Tue, 12 May 2020 20:58:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE4FD89C9B
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 May 2020 20:58:14 +0000 (UTC)
IronPort-SDR: socaUuf9u+4vJt5rugeeREor7YHLLv4Lirq0oORJtH257K+/mZsu2sYsNGmXBFqldKn8x132Vg
 LpX3wrDbW7Ug==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2020 13:58:13 -0700
IronPort-SDR: HHS3meo7ReIUuOZWmeR/Inqk9D7umtNGxrtjTTy6g+3rIlAVmci4Utuzmj5OWF1ePeOZZNZvar
 TsCgI0nl0P2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,385,1583222400"; d="scan'208";a="251024400"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga007.jf.intel.com with ESMTP; 12 May 2020 13:58:12 -0700
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
References: <20200502045744.407060-1-matthew.d.roper@intel.com>
 <20200502045744.407060-4-matthew.d.roper@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <8e056074-5e3d-dcfb-a047-57cb193233c3@intel.com>
Date: Tue, 12 May 2020 13:57:44 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200502045744.407060-4-matthew.d.roper@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 3/3] drm/i915: Add MCR ranges for gen11
 and gen12
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
Cc: chris@chris-wilson.co.uk
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 5/1/20 9:57 PM, Matt Roper wrote:
> The multicast register ranges are slightly different for gen11 and gen12
> than the table we have for gen8.  This information never got updated in
> the bspec, so this patch is based on a spreadsheet provided by the
> hardware team while they work on getting the official documentation
> updated.
> 
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_workarounds.c | 45 ++++++++++++++++++---
>   1 file changed, 39 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index b11b83546696..370607514e7b 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1668,10 +1668,12 @@ create_scratch(struct i915_address_space *vm, int count)
>   	return ERR_PTR(err);
>   }
>   
> -static const struct {
> +struct mcr_range {
>   	u32 start;
>   	u32 end;
> -} mcr_ranges_gen8[] = {
> +};
> +
> +static const struct mcr_range mcr_ranges_gen8[] = {
>   	{ .start = 0x5500, .end = 0x55ff },
>   	{ .start = 0x7000, .end = 0x7fff },
>   	{ .start = 0x9400, .end = 0x97ff },
> @@ -1680,11 +1682,42 @@ static const struct {
>   	{},
>   };
>   
> +static const struct mcr_range mcr_ranges_gen11[] = {
> +	{ .start = 0x5500,  .end = 0x55ff },
> +	{ .start = 0x7000,  .end = 0x7fff },
> +	{ .start = 0x8140,  .end = 0x815f },
> +	{ .start = 0x8c00,  .end = 0x8cff },
> +	{ .start = 0x94d0,  .end = 0x955f },
> +	{ .start = 0xb000,  .end = 0xb3ff },
> +	{ .start = 0xdf00,  .end = 0xe8ff },
> +	{ .start = 0x24400, .end = 0x24fff },
> +	{},
> +};
> +
> +static const struct mcr_range mcr_ranges_gen12[] = {
> +	{ .start = 0xb00,   .end = 0xbff },
> +	{ .start = 0x1000,  .end = 0x1fff },
> +	{ .start = 0x8150,  .end = 0x815f },
> +	{ .start = 0x8700,  .end = 0x87ff },
> +	{ .start = 0x9520,  .end = 0x955f },
> +	{ .start = 0xb100,  .end = 0xb3ff },
> +	{ .start = 0xde80,  .end = 0xe8ff },
> +	{ .start = 0x24a00, .end = 0x24a7f },
> +	{},
> +};
> +

The tables match what's in the magic spreadsheet.
Given that the steering ranges usually match forcewake ranges, IMO 
long-term we should aim to unify the 2 into a single table, but that's 
something for another time.

Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Daniele

>   static bool mcr_range(struct drm_i915_private *i915, u32 offset)
>   {
> +	const struct mcr_range *range_list;
>   	int i;
>   
> -	if (INTEL_GEN(i915) < 8)
> +	if (INTEL_GEN(i915) >= 12)
> +		range_list = mcr_ranges_gen12;
> +	else if (INTEL_GEN(i915) >= 11)
> +		range_list = mcr_ranges_gen11;
> +	else if (INTEL_GEN(i915) >= 8)
> +		range_list = mcr_ranges_gen8;
> +	else
>   		return false;
>   
>   	/*
> @@ -1692,9 +1725,9 @@ static bool mcr_range(struct drm_i915_private *i915, u32 offset)
>   	 * which only controls CPU initiated MMIO. Routing does not
>   	 * work for CS access so we cannot verify them on this path.
>   	 */
> -	for (i = 0; mcr_ranges_gen8[i].start; i++)
> -		if (offset >= mcr_ranges_gen8[i].start &&
> -		    offset <= mcr_ranges_gen8[i].end)
> +	for (i = 0; range_list[i].start; i++)
> +		if (offset >= range_list[i].start &&
> +		    offset <= range_list[i].end)
>   			return true;
>   
>   	return false;
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
