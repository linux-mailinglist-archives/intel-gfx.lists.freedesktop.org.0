Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A20A7615E57
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 09:51:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37E3210E44D;
	Wed,  2 Nov 2022 08:51:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A4A710E44D
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Nov 2022 08:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667379065; x=1698915065;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=8oI/hpF1wSDZ4xhfxjr8rZ8cxaeYiGW+7dKQDtws7j0=;
 b=VFNpIqLwV26EMViekK3N5LPhtHIHeTnNSDkyIF9OtYPvKYjX/sJZdWFn
 zc0Kr5gUn9+gUN1l4ELrQU/Rh7Xpu5N0iefX58Qu+y162qoPsN99HPFW4
 3psXXgZDgSyyJ7+iqphBrwh10OS1Yat4vgKiiahAZ/3vy4ZTXW49HrNsV
 oVY0Sqa1CrViyu9XiCM5oZvuuQknLpT1k4JSwMJvueV2W5ZXrq/Xd8Q01
 nvxGi9wzG3J6uWdU3FEgeiWmz7lHrXUdVzI9C00sGnm/DPYTcL9wtUq66
 ptUYPjvDQP1mlQPvNeIL13Df2SWRhgw1HgazpI57IHtYXO0rw+KBA4ZVd Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="296791929"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="296791929"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 01:51:04 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="628879057"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="628879057"
Received: from cjokeeff-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.15.91])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 01:51:02 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>, Gwan-gyeong Mun
 <gwan-gyeong.mun@intel.com>
In-Reply-To: <875yfxn82r.wl-ashutosh.dixit@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221024210953.1572998-1-gwan-gyeong.mun@intel.com>
 <20221029044230.32128-1-gwan-gyeong.mun@intel.com>
 <875yfxn82r.wl-ashutosh.dixit@intel.com>
Date: Wed, 02 Nov 2022 10:50:59 +0200
Message-ID: <87y1st7n9o.fsf@intel.com>
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

On Wed, 02 Nov 2022, "Dixit, Ashutosh" <ashutosh.dixit@intel.com> wrote:
> On Fri, 28 Oct 2022 21:42:30 -0700, Gwan-gyeong Mun wrote:
>>
>> Use REG_FIELD_PREP() and a constant value for hwm_field_scale_and_write()
>
> R-b'ing this so that this can get merged since this compile break is
> blocking drm-intel-gt-next pull request:
>
> Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>

Acked-by: Jani Nikula <jani.nikula@intel.com>

on this one as the stopgap measure.

>
>> If the first argument of FIELD_PREP() is not a compile-time constant value
>> or unsigned long long type, this routine of the __BF_FIELD_CHECK() macro
>> used internally by the FIELD_PREP() macro always returns false.
>>
>>  BUILD_BUG_ON_MSG(__bf_cast_unsigned(_mask, _mask) >      \
>>                   __bf_cast_unsigned(_reg, ~0ull),        \
>>                   _pfx "type of reg too small for mask"); \
>>
>> And it returns a build error by the option among the clang
>> compilation options. [-Werror,-Wtautological-constant-out-of-range-compare]
>>
>> Reported build error while using clang compiler:
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
>> v2: Use REG_FIELD_PREP() macro instead of FIELD_PREP() (Jani)
>>
>> Fixes: 99f55efb7911 ("drm/i915/hwmon: Power PL1 limit and TDP setting")
>> Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
>> Cc: Anshuman Gupta <anshuman.gupta@intel.com>
>> Cc: Andi Shyti <andi.shyti@linux.intel.com>
>> Cc: Jani Nikula <jani.nikula@intel.com>
>> Signed-off-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
>> ---
>>  drivers/gpu/drm/i915/i915_hwmon.c | 12 +++---------
>>  1 file changed, 3 insertions(+), 9 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
>> index 9e9781493025..c588a17f97e9 100644
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
>>	u32 nval;
>> -	u32 bits_to_clear;
>> -	u32 bits_to_set;
>>
>>	/* Computation in 64-bits to avoid overflow. Round to nearest. */
>>	nval = DIV_ROUND_CLOSEST_ULL((u64)lval << nshift, scale_factor);
>>
>> -	bits_to_clear = field_msk;
>> -	bits_to_set = FIELD_PREP(field_msk, nval);
>> -
>>	hwm_locked_with_pm_intel_uncore_rmw(ddat, rgadr,
>> -					    bits_to_clear, bits_to_set);
>> +					    PKG_PWR_LIM_1,
>> +					    REG_FIELD_PREP(PKG_PWR_LIM_1, nval));
>>  }
>>
>>  /*
>> @@ -406,7 +401,6 @@ hwm_power_write(struct hwm_drvdata *ddat, u32 attr, int chan, long val)
>>	case hwmon_power_max:
>>		hwm_field_scale_and_write(ddat,
>>					  hwmon->rg.pkg_rapl_limit,
>> -					  PKG_PWR_LIM_1,
>>					  hwmon->scl_shift_power,
>>					  SF_POWER, val);
>>		return 0;
>> --
>> 2.37.1
>>

-- 
Jani Nikula, Intel Open Source Graphics Center
