Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C40BD610C74
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Oct 2022 10:46:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6628410E11D;
	Fri, 28 Oct 2022 08:46:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31B7610E11D
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Oct 2022 08:46:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666946787; x=1698482787;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Y81jowPRVr3yWQ5VWj5Qf+FJEKQNp4a/l87a0tFTpqI=;
 b=ZH0pDdnuQDHNvTFVt63UbsBEcuCZ6m74hpahLcLZxG3gaQRgwEU2MsRQ
 5alG0QMRdASPVqiTaNVHrZhIKs8WrYWMQ4ih/ZfD0AUZFd0RS+sWYI1Ph
 a+8amVCdkZV1V/LRk2hs33bTGKCw+udTQe/xYvshiDq27LMCrqBfAWP+P
 Y3/4SglEDZUxHGC4VGszVkpbJNNIrZRLeDU5wLm3XG/bYeXIQSPay8Eu5
 IR5M7RlmBAsTTeaOVqEJX89yLh2oUNFrQzMs75b5Q29akx3UpPDjTUaOD
 8AzZl4I7IckhFepmkL6DzPkZEN1UF9umEFlWDQVuniUPmEgF/7HwVkclz w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="308436087"
X-IronPort-AV: E=Sophos;i="5.95,220,1661842800"; d="scan'208";a="308436087"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2022 01:46:26 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="807756305"
X-IronPort-AV: E=Sophos;i="5.95,220,1661842800"; d="scan'208";a="807756305"
Received: from pbednar-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.28.221])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2022 01:46:23 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>, "Dixit, Ashutosh"
 <ashutosh.dixit@intel.com>, Nick Desaulniers <ndesaulniers@google.com>
In-Reply-To: <c1c548f8-71a8-0d4d-d591-58a0cd5dac20@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221024210953.1572998-1-gwan-gyeong.mun@intel.com>
 <87mt9kppb6.wl-ashutosh.dixit@intel.com>
 <Y1ercgaqQwfqt42U@ashyti-mobl2.lan>
 <87ilk7pwrw.wl-ashutosh.dixit@intel.com>
 <Y1h8yn4QHI3aBlCe@ashyti-mobl2.lan>
 <CAKwvOdkpQvk31zbipLDPXfsDZ8FpGHs9t-+9JfFQO85Bs4h=wg@mail.gmail.com>
 <877d0lxl6s.wl-ashutosh.dixit@intel.com>
 <CAKwvOdmVJn8HvfF9WTnOAc+HsdJ4c1Tdck8E7Caky7AoCq4ZTA@mail.gmail.com>
 <875yg5xgkp.wl-ashutosh.dixit@intel.com>
 <c1c548f8-71a8-0d4d-d591-58a0cd5dac20@intel.com>
Date: Fri, 28 Oct 2022 11:46:21 +0300
Message-ID: <8735b89vz6.fsf@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org, llvm@lists.linux.dev,
 linux-kernel@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 28 Oct 2022, Gwan-gyeong Mun <gwan-gyeong.mun@intel.com> wrote:
> Resend, because some content was accidentally omitted from the previous 
> reply.
> Please ignore the previous email.
>
> Hi all,
>
> I should have written the original commit message more accurately, but 
> it seems that it was written inaccurately.
>
> If the FIELD_PREP macro is expanded, the following macros are used.
>
> #define FIELD_PREP(_mask, _val)						\
> 	({								\
> 		__BF_FIELD_CHECK(_mask, 0ULL, _val, "FIELD_PREP: ");	\
> 		((typeof(_mask))(_val) << __bf_shf(_mask)) & (_mask);	\
> 	})
>
>
> #define __BF_FIELD_CHECK(_mask, _reg, _val, _pfx)			\
> 	({								\
> 		BUILD_BUG_ON_MSG(!__builtin_constant_p(_mask),		\
> 				 _pfx "mask is not constant");		\
> 		BUILD_BUG_ON_MSG((_mask) == 0, _pfx "mask is zero");	\
> 		BUILD_BUG_ON_MSG(__builtin_constant_p(_val) ?		\
> 				 ~((_mask) >> __bf_shf(_mask)) & (_val) : 0, \
> 				 _pfx "value too large for the field"); \
> 		BUILD_BUG_ON_MSG(__bf_cast_unsigned(_mask, _mask) >	\
> 				 __bf_cast_unsigned(_reg, ~0ull),	\
> 				 _pfx "type of reg too small for mask"); \
> 		__BUILD_BUG_ON_NOT_POWER_OF_2((_mask) +			\
> 					      (1ULL << __bf_shf(_mask))); \
> 	})
>
> Among them, a build error is generated by the lower part of the 
> __BF_FIELD_CHECK() macro.
>
> 		BUILD_BUG_ON_MSG(__bf_cast_unsigned(_mask, _mask) >	\
> 				 __bf_cast_unsigned(_reg, ~0ull),	\
> 				 _pfx "type of reg too small for mask"); \
>
>
> Here, if you apply an argument to this macro, it will look like the 
> following.
>
> __bf_cast_unsigned(field_msk, field_msk) > __bf_cast_unsigned(0ULL, ~0ull)
>
> The result is always false because an unsigned int value of type 
> field_msk is not always greater than the maximum value of unsigned long 
> long .
> So, a build error occurs due to the following part of the clang compiler 
> option.
>
> [-Werror,-Wtautological-constant-out-of-range-compare]
>
> You can simply override this warning in Clang by adding the build option 
> below, but this seems like a bad attempt
>
> i915/Makefile
> CFLAGS_i915_hwmon.o += -Wno-tautological-constant-out-of-range-compare
>
> The easiest way to solve this is to use a constant value, not a 
> variable, as an argument to FIELD_PREP.
>
> And since the REG_FIELD_PREP() macro suggested by Jani requires a const 
> expression as the first argument, it cannot be changed with this macro 
> alone in the existing code, it must be changed to input a constant value 
> as shown below.

We've added REG_FIELD_PREP() precisely to avoid the problems with the
types and ranges, as we want it to operate on u32. It also uses
__is_constexpr() to avoid dependencies on compiler implementation and
optimizations.

Please use REG_FIELD_PREP() and a constant value. Maybe rethink the
interface if needed.

BR,
Jani.




>
> diff --git a/drivers/gpu/drm/i915/i915_hwmon.c 
> b/drivers/gpu/drm/i915/i915_hwmon.c
> index 08c921421a5f..abb3a194c548 100644
> --- a/drivers/gpu/drm/i915/i915_hwmon.c
> +++ b/drivers/gpu/drm/i915/i915_hwmon.c
> @@ -101,7 +101,7 @@ hwm_field_read_and_scale(struct hwm_drvdata *ddat, 
> i915_reg_t rgadr,
>
>   static void
>   hwm_field_scale_and_write(struct hwm_drvdata *ddat, i915_reg_t rgadr,
> -                         const u32 field_msk, int nshift,
> +                         int nshift,
>                            unsigned int scale_factor, long lval)
>   {
>          u32 nval;
> @@ -111,8 +111,8 @@ hwm_field_scale_and_write(struct hwm_drvdata *ddat, 
> i915_reg_t rgadr,
>          /* Computation in 64-bits to avoid overflow. Round to nearest. */
>          nval = DIV_ROUND_CLOSEST_ULL((u64)lval << nshift, scale_factor);
>
> -       bits_to_clear = field_msk;
> -       bits_to_set = REG_FIELD_PREP(field_msk, nval);
> +       bits_to_clear = PKG_PWR_LIM_1;
> +       bits_to_set = REG_FIELD_PREP(PKG_PWR_LIM_1, nval);
>
>          hwm_locked_with_pm_intel_uncore_rmw(ddat, rgadr,
>                                              bits_to_clear, bits_to_set);
> @@ -406,7 +406,6 @@ hwm_power_write(struct hwm_drvdata *ddat, u32 attr, 
> int chan, long val)
>          case hwmon_power_max:
>                  hwm_field_scale_and_write(ddat,
>                                            hwmon->rg.pkg_rapl_limit,
> -                                         PKG_PWR_LIM_1,
>                                            hwmon->scl_shift_power,
>                                            SF_POWER, val);
>                  return 0;
>
>
>
> In addition, if there is no build problem regardless of the size of the 
> type as the first argument in FIELD_PREP, it is possible through the 
> following modification.
> (Since this modification modifies include/linux/bitfield.h , I will send 
> it as a separate patch.
>    )
>
> However, it seems that we need to have Jani's confirm whether it is okay 
> to use FIELD_PREP() instead of REG_FIELD_PREP() which is forced to u32 
> return type in i915.
>
> diff --git a/include/linux/bitfield.h b/include/linux/bitfield.h
> index c9be1657f03d..6e96799b6f38 100644
> --- a/include/linux/bitfield.h
> +++ b/include/linux/bitfield.h
> @@ -9,7 +9,7 @@
>
>   #include <linux/build_bug.h>
>   #include <asm/byteorder.h>
> -
> +#include <linux/overflow.h>
>   /*
>    * Bitfield access macros
>    *
> @@ -69,7 +69,7 @@
>                                   ~((_mask) >> __bf_shf(_mask)) & (_val) 
> : 0, \
>                                   _pfx "value too large for the field"); \
>                  BUILD_BUG_ON_MSG(__bf_cast_unsigned(_mask, _mask) >     \
> -                                __bf_cast_unsigned(_reg, ~0ull),       \
> +                                __bf_cast_unsigned(_reg, 
> type_max(__unsigned_scalar_typeof(_reg))),    \
>                                   _pfx "type of reg too small for mask"); \
>                  __BUILD_BUG_ON_NOT_POWER_OF_2((_mask) +                 \
>                                                (1ULL << __bf_shf(_mask))); \
> @@ -84,7 +84,7 @@
>    */
>   #define FIELD_MAX(_mask)                                               \
>          ({                                                              \
> -               __BF_FIELD_CHECK(_mask, 0ULL, 0ULL, "FIELD_MAX: ");     \
> +               __BF_FIELD_CHECK(_mask, 
> type_min(__unsigned_scalar_typeof(_mask)), 
> type_min(__unsigned_scalar_typeof(_mask)), "FIELD_MAX: ");   \
>                  (typeof(_mask))((_mask) >> __bf_shf(_mask));            \
>          })
>
> @@ -97,7 +97,7 @@
>    */
>   #define FIELD_FIT(_mask, _val)                                         \
>          ({                                                              \
> -               __BF_FIELD_CHECK(_mask, 0ULL, 0ULL, "FIELD_FIT: ");     \
> +               __BF_FIELD_CHECK(_mask, 
> type_min(__unsigned_scalar_typeof(_mask)), 
> type_min(__unsigned_scalar_typeof(_val)), "FIELD_FIT: ");    \
>                  !((((typeof(_mask))_val) << __bf_shf(_mask)) & ~(_mask)); \
>          })
>
> @@ -111,7 +111,7 @@
>    */
>   #define FIELD_PREP(_mask, _val) 
>           \
>          ({                                                              \
> -               __BF_FIELD_CHECK(_mask, 0ULL, _val, "FIELD_PREP: ");    \
> +               __BF_FIELD_CHECK(_mask, 
> type_min(__unsigned_scalar_typeof(_mask)), _val, "FIELD_PREP: ");       \
>                  ((typeof(_mask))(_val) << __bf_shf(_mask)) & (_mask);   \
>          })
>
> @@ -125,7 +125,7 @@
>    */
>   #define FIELD_GET(_mask, _reg)                                         \
>          ({                                                              \
> -               __BF_FIELD_CHECK(_mask, _reg, 0U, "FIELD_GET: ");       \
> +               __BF_FIELD_CHECK(_mask, _reg, 
> type_min(__unsigned_scalar_typeof(_reg)), "FIELD_GET: "); \
>                  (typeof(_mask))(((_reg) & (_mask)) >> __bf_shf(_mask)); \
>          })
>
>
> Br,
>
> G.G.
>
> On 10/27/22 9:32 PM, Dixit, Ashutosh wrote:
>> On Thu, 27 Oct 2022 10:16:47 -0700, Nick Desaulniers wrote:
>>>
>> 
>> Hi Nick,
>> 
>>> Thanks, I can repro now.
>>>
>>> I haven't detangled the macro soup, but I noticed:
>>>
>>> 1. FIELD_PREP is defined in include/linux/bitfield.h which has the
>>> following comment:
>>>   18  * Mask must be a compilation time constant.
>> 
>> I had comments about this here:
>> 
>> https://lore.kernel.org/intel-gfx/87ilk7pwrw.wl-ashutosh.dixit@intel.com/
>> 
>> The relevant part being:
>> 
>> ---- {quote} ----
>>>>> ./include/linux/bitfield.h:71:53: note: expanded from macro '__BF_FIELD_CHECK'
>>>>>                  BUILD_BUG_ON_MSG(__bf_cast_unsigned(_mask, _mask) >     \
>> 
>> So clang seems to break here at this line in __BF_FIELD_CHECK (note ~0ull
>> also occurs here):
>> 
>> 		BUILD_BUG_ON_MSG(__bf_cast_unsigned(_mask, _mask) >	\
>> 				 __bf_cast_unsigned(_reg, ~0ull),	\
>> 				 _pfx "type of reg too small for mask"); \
>> 
>> So it goes through previous checks including the "mask is not constant"
>> check. As Nick Desaulniers mentions "__builtin_constant_p is evaluated
>> after most optimizations have run" so by that time both compilers (gcc and
>> clang) have figured out that even though _mask is coming in as function
>> argument it is really the constant below:
>> 
>> #define   PKG_PWR_LIM_1		REG_GENMASK(14, 0)
>> 
>> But it is not clear why clang chokes on this "type of reg too small for
>> mask" check (and gcc doesn't) since everything is u32.
>> ---- {end quote} ----
>> 
>>>
>>> 2. hwm_field_scale_and_write only has one callsite.
>>>
>>> The following patch works:
>> 
>> If we need to fix it at our end yes we can come up with one of these
>> patches. But we were hoping someone from clang/llvm can comment about the
>> "type of reg too small for mask" stuff. If this is something which needs to
>> be fixed in clang/llvm we probably don't want to hide the issue.
>> 
>>>
>>> ```
>>> diff --git a/drivers/gpu/drm/i915/i915_hwmon.c
>>> b/drivers/gpu/drm/i915/i915_hwmon.c
>>> index 9e9781493025..6ac29d90b92a 100644
>>> --- a/drivers/gpu/drm/i915/i915_hwmon.c
>>> +++ b/drivers/gpu/drm/i915/i915_hwmon.c
>>> @@ -101,7 +101,7 @@ hwm_field_read_and_scale(struct hwm_drvdata *ddat,
>>> i915_reg_t rgadr,
>>>
>>>   static void
>>>   hwm_field_scale_and_write(struct hwm_drvdata *ddat, i915_reg_t rgadr,
>>> -                         u32 field_msk, int nshift,
>>> +                         int nshift,
>>>                            unsigned int scale_factor, long lval)
>>>   {
>>>          u32 nval;
>>> @@ -111,8 +111,8 @@ hwm_field_scale_and_write(struct hwm_drvdata
>>> *ddat, i915_reg_t rgadr,
>>>          /* Computation in 64-bits to avoid overflow. Round to nearest. */
>>>          nval = DIV_ROUND_CLOSEST_ULL((u64)lval << nshift, scale_factor);
>>>
>>> -       bits_to_clear = field_msk;
>>> -       bits_to_set = FIELD_PREP(field_msk, nval);
>>> +       bits_to_clear = PKG_PWR_LIM_1;
>>> +       bits_to_set = FIELD_PREP(PKG_PWR_LIM_1, nval);
>>>
>>>          hwm_locked_with_pm_intel_uncore_rmw(ddat, rgadr,
>>>                                              bits_to_clear, bits_to_set);
>>> @@ -406,7 +406,6 @@ hwm_power_write(struct hwm_drvdata *ddat, u32
>>> attr, int chan, long val)
>>>          case hwmon_power_max:
>>>                  hwm_field_scale_and_write(ddat,
>>>                                            hwmon->rg.pkg_rapl_limit,
>>> -                                         PKG_PWR_LIM_1,
>>>                                            hwmon->scl_shift_power,
>>>                                            SF_POWER, val);
>>>                  return 0;
>>> ```
>>> Though I'm not sure if you're planning to add further callsites of
>>> hwm_field_scale_and_write with different field_masks?
>> 
>> I have reasons for keeping it this way, it's there in the link above if you
>> are interested.
>> 
>>>
>>> Alternatively, (without the above diff),
>>>
>>> ```
>>> diff --git a/include/linux/bitfield.h b/include/linux/bitfield.h
>>> index c9be1657f03d..6f40f12bcf89 100644
>>> --- a/include/linux/bitfield.h
>>> +++ b/include/linux/bitfield.h
>>> @@ -8,6 +8,7 @@
>>>   #define _LINUX_BITFIELD_H
>>>
>>>   #include <linux/build_bug.h>
>>> +#include <linux/const.h>
>>>   #include <asm/byteorder.h>
>>>
>>>   /*
>>> @@ -62,7 +63,7 @@
>>>
>>>   #define __BF_FIELD_CHECK(_mask, _reg, _val, _pfx)                      \
>>>          ({                                                              \
>>> -               BUILD_BUG_ON_MSG(!__builtin_constant_p(_mask),          \
>>> +               BUILD_BUG_ON_MSG(!__is_constexpr(_mask),                \
>>>                                   _pfx "mask is not constant");          \
>>>                  BUILD_BUG_ON_MSG((_mask) == 0, _pfx "mask is zero");    \
>>>                  BUILD_BUG_ON_MSG(__builtin_constant_p(_val) ?           \
>>> ```
>>> will produce:
>>> error: call to __compiletime_assert_407 declared with 'error'
>>> attribute: FIELD_PREP: mask is not constant
>>>
>>> I haven't tested if that change is also feasible (on top of fixing
>>> this specific instance), but I think it might help avoid more of these
>>> subtleties wrt. __builtin_constant_p that depende heavily on compiler,
>>> compiler version, optimization level.
>> 
>> Not disagreeing, can do something here if needed.
>> 
>> Thanks.
>> --
>> Ashutosh

-- 
Jani Nikula, Intel Open Source Graphics Center
