Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 457436147C6
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Nov 2022 11:35:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDEB410E378;
	Tue,  1 Nov 2022 10:35:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1791989BEC
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Nov 2022 10:35:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667298949; x=1698834949;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=LeJ7ZE+9zhxrbTdmwFFwdcs4x/7j57c/NB1rqk3/vFI=;
 b=JMKuFnpi4GLnQepQ6/51s+eivCl3HX4bhaa7ey4LBBShBmianogWSKo+
 J0H2ehM1qjOKPEJAlLhJVE665oJum+ZYhPE4dBQXevcbtLFaoEpzKiCGt
 4fJDD1UYmpzKOLZIC34yQQfLsuvCskl2t+J6gIJ1HzJ0Oe99ewSwLAUCf
 Kk7K79JRoX1snXWubrGBhuPIOretTKp3QZf/zVR6rY2xzXMKXmXXdAzbu
 iyG0rDdv+G1z97OakAyYh3GbaC4j4MQgyw45g9pDj2S3O61uEapQZNYTQ
 6/0kLBu4PtW96BeShG7diSqzGxaQYYJJbG+GZN5mavDk7dfBpjEbRcKPo Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="395420668"
X-IronPort-AV: E=Sophos;i="5.95,230,1661842800"; d="scan'208";a="395420668"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2022 03:35:39 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="665110641"
X-IronPort-AV: E=Sophos;i="5.95,230,1661842800"; d="scan'208";a="665110641"
Received: from rsimofi-mobl.ger.corp.intel.com (HELO localhost) ([10.252.30.2])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2022 03:35:36 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>, Gwan-gyeong Mun
 <gwan-gyeong.mun@intel.com>
In-Reply-To: <871qqnew7p.wl-ashutosh.dixit@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221024210953.1572998-1-gwan-gyeong.mun@intel.com>
 <20221029044230.32128-1-gwan-gyeong.mun@intel.com>
 <878rkwefji.wl-ashutosh.dixit@intel.com>
 <49a3db03-a62c-374d-76cd-8557c761f18b@intel.com>
 <871qqnew7p.wl-ashutosh.dixit@intel.com>
Date: Tue, 01 Nov 2022 12:35:34 +0200
Message-ID: <87leov7yix.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/hwmon: Fix a build error used
 with clang compiler
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 31 Oct 2022, "Dixit, Ashutosh" <ashutosh.dixit@intel.com> wrote:
> On Sun, 30 Oct 2022 23:37:59 -0700, Gwan-gyeong Mun wrote:
>>
>
> Hi GG,
>
>> On 10/31/22 7:19 AM, Dixit, Ashutosh wrote:
>> > On Fri, 28 Oct 2022 21:42:30 -0700, Gwan-gyeong Mun wrote:
>> >>
>> >> diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
>> >> index 9e9781493025..c588a17f97e9 100644
>> >> --- a/drivers/gpu/drm/i915/i915_hwmon.c
>> >> +++ b/drivers/gpu/drm/i915/i915_hwmon.c
>> >> @@ -101,21 +101,16 @@ hwm_field_read_and_scale(struct hwm_drvdata *ddat, i915_reg_t rgadr,
>> >>
>> >>   static void
>> >>   hwm_field_scale_and_write(struct hwm_drvdata *ddat, i915_reg_t rgadr,
>> >> -			  u32 field_msk, int nshift,
>> >> -			  unsigned int scale_factor, long lval)
>> >> +			  int nshift, unsigned int scale_factor, long lval)
>> >>   {
>> >>	u32 nval;
>> >> -	u32 bits_to_clear;
>> >> -	u32 bits_to_set;
>> >>
>> >>	/* Computation in 64-bits to avoid overflow. Round to nearest. */
>> >>	nval = DIV_ROUND_CLOSEST_ULL((u64)lval << nshift, scale_factor);
>> >>
>> >> -	bits_to_clear = field_msk;
>> >> -	bits_to_set = FIELD_PREP(field_msk, nval);
>> >> -
>> >>	hwm_locked_with_pm_intel_uncore_rmw(ddat, rgadr,
>> >> -					    bits_to_clear, bits_to_set);
>> >> +					    PKG_PWR_LIM_1,
>> >> +					    REG_FIELD_PREP(PKG_PWR_LIM_1, nval));
>> >
>> > I registered my objection to this patch already here:
>> >
>> > https://lore.kernel.org/intel-gfx/87ilk7pwrw.wl-ashutosh.dixit@intel.com/
>> >
>> > the crux of which is "hwm_field_scale_and_write() pairs with
>> > hwm_field_read_and_scale() (they are basically a set/get pair) so it is
>> > desirable they have identical arguments. This patch breaks that symmetry".
>> >
>> > We can merge this patch now but the moment a second caller of
>> > hwm_field_scale_and_write arrives this patch will need to be reverted.
>> >
>> > I have also posted my preferred way (as I previously indiecated) of fixing
>> > this issue here (if this needs to be fixed in i915):
>> >
>> > https://patchwork.freedesktop.org/series/110301/
>> >
>> The given link (https://patchwork.freedesktop.org/series/110301/) is an
>> inline function that reduces the checks of REG_FIELD_PREP() and pursues the
>> same functionality.
>> It's not a good idea to add and use duplicate new inline functions with
>> reduced functionality under different names.
>
> See if you like v2 better :-)
>
>> +/* FIELD_PREP and REG_FIELD_PREP require a compile time constant mask */
>> +static u32 hwm_field_prep(u32 mask, u32 val)
>> +{
>> +	return (val << __bf_shf(mask)) & mask;
>> +}
>> +
>>  static void
>>  hwm_locked_with_pm_intel_uncore_rmw(struct hwm_drvdata *ddat,
>>				    i915_reg_t reg, u32 clear, u32 set)
>> @@ -112,7 +118,7 @@  hwm_field_scale_and_write(struct hwm_drvdata *ddat,
>> i915_reg_t rgadr,
>>	nval = DIV_ROUND_CLOSEST_ULL((u64)lval << nshift, scale_factor);
>>
>>	bits_to_clear = field_msk;
>> -	bits_to_set = FIELD_PREP(field_msk, nval);
>> +	bits_to_set = hwm_field_prep(field_msk, nval);
>>
>>	hwm_locked_with_pm_intel_uncore_rmw(ddat, rgadr,
>>					    bits_to_clear, bits_to_set);
>>
>>
>> The patch
>> (https://patchwork.freedesktop.org/patch/509248/?series=110094&rev=5) that
>> fixed the build error in a simplified form was added as there is only one
>> place that calls the hwm_field_scale_and_write() function at this time.
>>
>> If more places that use the hwm_field_scale_and_write() function are added
>> in the future, how about changing the interface that calls this function as
>> Jani previously suggested?
>
> Sorry, which interface change which Jani suggested are you referring to? I
> don't recall seeing anything but maybe I am mistaken.

Maybe it was in another context, but this looks like the interfaces are
built a bit too much on the registers. There are chains of single-use
functions that scale and lock and read/write register fields. And it's
all based on the assumption that any given value maps to a single
bitfield in a single register and can be handled with a single read or
rmw, and it falls part otherwise.

I think the registers should be abstracted at the lowest level,
completely, not brought in top down as register addresses and masks. For
inspiration, maybe look at intel_backlight.c.

So here, you'd have hwm_read/hwm_write levels completely agnostic about
all the details, just muxing to different items.

The hwm_*_read/hwm_*_write would operate in a domain that handles all
generic i915 stuff, but still would not know anything about registers or
scaling. And then you'd have the lowest, platform specific level that
you'd call via platform specific function pointers. They would be passed
and return values in the right scale (maybe using common helpers).

You would *not* have or initialize hwmon->rg register file. At all. The
platform specific functions would handle the correct registers inline,
directly.

To recap, the platform specific abstraction should be the platform
specific function pointers, like literally everywhere in the driver,
*not* platform specific register initializations.


BR,
Jani.




>
> Thanks.
> --
> Ashutosh
>
>> > IMO it would be a mistake to use REG_FIELD_PREP or FIELD_PREP here since
>> > here the mask comes in as a function argument whereas REG_FIELD_PREP and
>> > FIELD_PREP require that mask to be a compile time constant.

-- 
Jani Nikula, Intel Open Source Graphics Center
