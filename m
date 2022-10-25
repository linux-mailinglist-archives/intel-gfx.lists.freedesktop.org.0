Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 687AB60CF06
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Oct 2022 16:30:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6311610E3B6;
	Tue, 25 Oct 2022 14:30:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F407110E3C5
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Oct 2022 14:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666708253; x=1698244253;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=N6B0FoqbNg9iyWuTX2TQln7Kb10Hes5Mua+iZdcwYxg=;
 b=dKbHS4QdrbnZ2ZO2am1QpgJa7UaiCTIQv2INlmSXD8xi6pp76wYHeAQY
 L2j2DPEAE/1IIwnE/c+LJnJ1Zrf44z29ehNoPSXmKKaqMK+LRNJWHxwgl
 wOphfdCwnJy3jEJteCbnG7kP9helPeoJ8pIpJqKoxTGoztUCIEFJhbOT/
 Gdjvgz2qVCsIWlmCAQDHJbWQr3PAYmmgq2dHL/AQ5Em66Lr9rpMgdXbPL
 7CAeHQxXuboC2Uqj4Wk7W/F6kYLq+nywmsvaEob1iGJPutu6AmsMOtBP2
 lB5lkxE898U6t8pF3d/ZCC7dCPZLR6KIng+df0FWfe4H8V485GRC/kOm+ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="307685025"
X-IronPort-AV: E=Sophos;i="5.95,212,1661842800"; d="scan'208";a="307685025"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 07:30:53 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="960834101"
X-IronPort-AV: E=Sophos;i="5.95,212,1661842800"; d="scan'208";a="960834101"
Received: from dgroene-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.45.231])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 07:30:52 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>, andi.shyti@linux.intel.com
In-Reply-To: <87eduwdllr.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221024210953.1572998-1-gwan-gyeong.mun@intel.com>
 <87eduwdllr.fsf@intel.com>
Date: Tue, 25 Oct 2022 17:30:49 +0300
Message-ID: <87bkq0dlgm.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/hwmon: Fix a build error used with
 clang compiler
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

On Tue, 25 Oct 2022, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Tue, 25 Oct 2022, Gwan-gyeong Mun <gwan-gyeong.mun@intel.com> wrote:
>> If a non-constant variable is used as the first argument of the FIELD_PREP
>> macro, a build error occurs when using the clang compiler.
>>
>> Fix the following build error used with clang compiler:
>>
>> drivers/gpu/drm/i915/i915_hwmon.c:115:16: error: result of comparison of constant 18446744073709551615 with expression of type 'typeof (_Generic((field_msk), char: (unsigned char)0, unsigned char: (unsigned char)0, signed char: (unsigned char)0, unsigned short: (unsigned short)0, short: (unsigned short)0, unsigned int: (unsigned int)0, int: (unsigned int)0, unsigned long: (unsigned long)0, long: (unsigned long)0, unsigned long long: (unsigned long long)0, long long: (unsigned long long)0, default: (field_msk)))' (aka 'unsigned int') is always false [-Werror,-Wtautological-constant-out-of-range-compare]
>>         bits_to_set = FIELD_PREP(field_msk, nval);
>>                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~
>> ./include/linux/bitfield.h:114:3: note: expanded from macro 'FIELD_PREP'
>>                 __BF_FIELD_CHECK(_mask, 0ULL, _val, "FIELD_PREP: ");    \
>>                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> ./include/linux/bitfield.h:71:53: note: expanded from macro '__BF_FIELD_CHECK'
>>                 BUILD_BUG_ON_MSG(__bf_cast_unsigned(_mask, _mask) >     \
>>                 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~
>> ./include/linux/build_bug.h:39:58: note: expanded from macro 'BUILD_BUG_ON_MSG'
>>                                     ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~
>> ./include/linux/compiler_types.h:357:22: note: expanded from macro 'compiletime_assert'
>>         _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
>>         ~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> ./include/linux/compiler_types.h:345:23: note: expanded from macro '_compiletime_assert'
>>         __compiletime_assert(condition, msg, prefix, suffix)
>>         ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> ./include/linux/compiler_types.h:337:9: note: expanded from macro '__compiletime_assert'
>>                 if (!(condition))                                       \
>>
>> Fixes: 99f55efb7911 ("drm/i915/hwmon: Power PL1 limit and TDP setting")
>> Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
>> Cc: Anshuman Gupta <anshuman.gupta@intel.com>
>> Cc: Andi Shyti <andi.shyti@linux.intel.com>
>> Signed-off-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
>> ---
>>  drivers/gpu/drm/i915/i915_hwmon.c | 12 +++---------
>>  1 file changed, 3 insertions(+), 9 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
>> index 9e9781493025..782a621b1928 100644
>> --- a/drivers/gpu/drm/i915/i915_hwmon.c
>> +++ b/drivers/gpu/drm/i915/i915_hwmon.c
>> @@ -101,21 +101,16 @@ hwm_field_read_and_scale(struct hwm_drvdata *ddat, i915_reg_t rgadr,
>>  
>>  static void
>>  hwm_field_scale_and_write(struct hwm_drvdata *ddat, i915_reg_t rgadr,
>> -			  u32 field_msk, int nshift,
>> -			  unsigned int scale_factor, long lval)
>> +			  int nshift, unsigned int scale_factor, long lval)
>>  {
>>  	u32 nval;
>> -	u32 bits_to_clear;
>> -	u32 bits_to_set;
>>  
>>  	/* Computation in 64-bits to avoid overflow. Round to nearest. */
>>  	nval = DIV_ROUND_CLOSEST_ULL((u64)lval << nshift, scale_factor);
>>  
>> -	bits_to_clear = field_msk;
>> -	bits_to_set = FIELD_PREP(field_msk, nval);
>
> Please just switch to REG_FIELD_PREP() and it should be fine.

Actually, probably not, but please switch to it anyway. ;)


>
> BR,
> Jani.
>
>
>> -
>>  	hwm_locked_with_pm_intel_uncore_rmw(ddat, rgadr,
>> -					    bits_to_clear, bits_to_set);
>> +					    PKG_PWR_LIM_1,
>> +					    FIELD_PREP(PKG_PWR_LIM_1, nval));
>>  }
>>  
>>  /*
>> @@ -406,7 +401,6 @@ hwm_power_write(struct hwm_drvdata *ddat, u32 attr, int chan, long val)
>>  	case hwmon_power_max:
>>  		hwm_field_scale_and_write(ddat,
>>  					  hwmon->rg.pkg_rapl_limit,
>> -					  PKG_PWR_LIM_1,
>>  					  hwmon->scl_shift_power,
>>  					  SF_POWER, val);
>>  		return 0;

-- 
Jani Nikula, Intel Open Source Graphics Center
