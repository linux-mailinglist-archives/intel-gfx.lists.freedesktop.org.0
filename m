Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6229A60C7FA
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Oct 2022 11:25:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCCE210E2F0;
	Tue, 25 Oct 2022 09:25:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F075510E2E9
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Oct 2022 09:25:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666689912; x=1698225912;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=cZVdOL+Y/sIgt9URnXIc+Uzvf3DjHE6NPrlEW0X0vNQ=;
 b=lJ91JRcTnp0u95bDfJLBVJdgmOBZwmQnFtHadbPqUOVeTtChz2xZ82nR
 RSrnoahORYx4AoHd5xLd5ey990xhBV49Yaf7i4w2uTXzNvGpK7kF/u7GN
 dPC9iSA4k+I+uGREtjCRBF/6jk/kLBEwX/mMIakAVkFynOPbt8BwDeKMX
 IhhZKXS5FJUyAZFff7NKmk+WqOpQas/Zf6GwqMwMTqPu1XqgAVO9srqks
 RldKVKz3iWqp9arLUaY4tgLO7cb/1IJXBy8lyD0f6Ux0CC0i6atioy0jH
 ojHdEAvZK79BuWhXNzz7rn4x/p2Mw2CRMzK7QPTW8HKHv09OoeuyiwN3F Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="371845971"
X-IronPort-AV: E=Sophos;i="5.95,211,1661842800"; d="scan'208";a="371845971"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 02:25:11 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="626362928"
X-IronPort-AV: E=Sophos;i="5.95,211,1661842800"; d="scan'208";a="626362928"
Received: from arybkin-mobl1.ccr.corp.intel.com (HELO intel.com)
 ([10.252.44.231])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 02:25:09 -0700
Date: Tue, 25 Oct 2022 11:25:06 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <Y1ercgaqQwfqt42U@ashyti-mobl2.lan>
References: <20221024210953.1572998-1-gwan-gyeong.mun@intel.com>
 <87mt9kppb6.wl-ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87mt9kppb6.wl-ashutosh.dixit@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org, llvm@lists.linux.dev
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Ashutosh,

> > drivers/gpu/drm/i915/i915_hwmon.c:115:16: error: result of comparison of constant 18446744073709551615 with expression of type 'typeof (_Generic((field_msk), char: (unsigned char)0, unsigned char: (unsigned char)0, signed char: (unsigned char)0, unsigned short: (unsigned short)0, short: (unsigned short)0, unsigned int: (unsigned int)0, int: (unsigned int)0, unsigned long: (unsigned long)0, long: (unsigned long)0, unsigned long long: (unsigned long long)0, long long: (unsigned long long)0, default: (field_msk)))' (aka 'unsigned int') is always false [-Werror,-Wtautological-constant-out-of-range-compare]
> 
> What is 18446744073709551615? You may want to limit the length of this line
> or checkpatch doesn't complain?

yeah! I am not a clang user, and this must be some ugly error
output. I don't think it makes sense to break it, though.

> >         bits_to_set = FIELD_PREP(field_msk, nval);
> >                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~
> > ./include/linux/bitfield.h:114:3: note: expanded from macro 'FIELD_PREP'
> >                 __BF_FIELD_CHECK(_mask, 0ULL, _val, "FIELD_PREP: ");    \
> >                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > ./include/linux/bitfield.h:71:53: note: expanded from macro '__BF_FIELD_CHECK'
> >                 BUILD_BUG_ON_MSG(__bf_cast_unsigned(_mask, _mask) >     \
> >                 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~
> > ./include/linux/build_bug.h:39:58: note: expanded from macro 'BUILD_BUG_ON_MSG'
> >                                     ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~
> > ./include/linux/compiler_types.h:357:22: note: expanded from macro 'compiletime_assert'
> >         _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
> >         ~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > ./include/linux/compiler_types.h:345:23: note: expanded from macro '_compiletime_assert'
> >         __compiletime_assert(condition, msg, prefix, suffix)
> >         ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > ./include/linux/compiler_types.h:337:9: note: expanded from macro '__compiletime_assert'
> >                 if (!(condition))                                       \
> >
> > Fixes: 99f55efb7911 ("drm/i915/hwmon: Power PL1 limit and TDP setting")
> > Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
> > Cc: Anshuman Gupta <anshuman.gupta@intel.com>
> > Cc: Andi Shyti <andi.shyti@linux.intel.com>
> > Signed-off-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_hwmon.c | 12 +++---------
> >  1 file changed, 3 insertions(+), 9 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
> > index 9e9781493025..782a621b1928 100644
> > --- a/drivers/gpu/drm/i915/i915_hwmon.c
> > +++ b/drivers/gpu/drm/i915/i915_hwmon.c
> > @@ -101,21 +101,16 @@ hwm_field_read_and_scale(struct hwm_drvdata *ddat, i915_reg_t rgadr,
> >
> >  static void
> >  hwm_field_scale_and_write(struct hwm_drvdata *ddat, i915_reg_t rgadr,
> > -			  u32 field_msk, int nshift,
> > -			  unsigned int scale_factor, long lval)
> > +			  int nshift, unsigned int scale_factor, long lval)
> >  {
> >	u32 nval;
> > -	u32 bits_to_clear;
> > -	u32 bits_to_set;
> >
> >	/* Computation in 64-bits to avoid overflow. Round to nearest. */
> >	nval = DIV_ROUND_CLOSEST_ULL((u64)lval << nshift, scale_factor);
> >
> > -	bits_to_clear = field_msk;
> > -	bits_to_set = FIELD_PREP(field_msk, nval);
> > -
> >	hwm_locked_with_pm_intel_uncore_rmw(ddat, rgadr,
> > -					    bits_to_clear, bits_to_set);
> > +					    PKG_PWR_LIM_1,
> > +					    FIELD_PREP(PKG_PWR_LIM_1, nval));
> 
> I don't want to give up so easily. We might have future uses for the
> function where we want field_msk to be passed into the function (rather
> than set inside the function as in this patch).
> 
> Do we understand what clang is complaining about? And why this compiles
> with gcc?

Because we are not compiling the builtin functions with gcc but
gcc has support for them. The FIELD_PREP checks if the first
parameter is a constant:

	BUILD_BUG_ON_MSG(!__builtin_constant_p(_mask),

where _mask was our field_mask, but we ignore it. Apparently
clang doesn't.

If we want to stick to gcc only, then I still think the patch is
correct for two reasons:

  1. it's cleaner
  2. we would get on with the job and if one day we will decide
     to suppport builtin functions in gcc as well, we will sleep
     peacefully :)

> Copying llvm@lists.linux.dev too.

maybe llvm folks have a better opinion.

Thanks,
Andi

> Thanks.
> --
> Ashutosh
> 
> 
> >  }
> >
> >  /*
> > @@ -406,7 +401,6 @@ hwm_power_write(struct hwm_drvdata *ddat, u32 attr, int chan, long val)
> >	case hwmon_power_max:
> >		hwm_field_scale_and_write(ddat,
> >					  hwmon->rg.pkg_rapl_limit,
> > -					  PKG_PWR_LIM_1,
> >					  hwmon->scl_shift_power,
> >					  SF_POWER, val);
> >		return 0;
> > --
> > 2.37.1
> >
