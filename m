Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 475D160D86B
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Oct 2022 02:18:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E14B10E1E9;
	Wed, 26 Oct 2022 00:18:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E19AF10E1E9
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Oct 2022 00:18:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666743503; x=1698279503;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Rg0wlbaVbTaPsiN6RnFJI6WpQ2cGW1mQ7aVBQk/Fluk=;
 b=VDB1SzABYi5y7dGR4u9+NoSRbZm1iQXpeXoaXlXVv4G5UlSoOnLP63fI
 +AJKF8GX46tr+gsuu5aCbr+keV1HcHPfNo5ga0DJzuKaj7fvKEm+Jpl+5
 s/etuWGOC+jevbZ+S8zfa6UmSJKH7a7jVGmxMDcpc7K+CC1sg2W4BOVDo
 FSBBiPEJVsmE0CUCPXymfvi9fBgR7Wlgjf+ttnZ4ZMkMpidTdoaolQl8N
 SsnTVkEfz4MREvO27LN5pxuakhUgmRWUPAT4oYb8Qi6TR6z9Bwh3xo/0E
 lEQmMK+CrdEK7HZPZDRy/zFMnBUeT93aVRKdi43YsVdYyj3gEHu8w3uL4 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="295228564"
X-IronPort-AV: E=Sophos;i="5.95,213,1661842800"; d="scan'208";a="295228564"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 17:18:23 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="663000388"
X-IronPort-AV: E=Sophos;i="5.95,213,1661842800"; d="scan'208";a="663000388"
Received: from dmocuta-mobl2.ger.corp.intel.com (HELO intel.com)
 ([10.252.44.60])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 17:18:20 -0700
Date: Wed, 26 Oct 2022 02:18:18 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <Y1h8yn4QHI3aBlCe@ashyti-mobl2.lan>
References: <20221024210953.1572998-1-gwan-gyeong.mun@intel.com>
 <87mt9kppb6.wl-ashutosh.dixit@intel.com>
 <Y1ercgaqQwfqt42U@ashyti-mobl2.lan>
 <87ilk7pwrw.wl-ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87ilk7pwrw.wl-ashutosh.dixit@intel.com>
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
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Ashutosh,

> On Tue, 25 Oct 2022 02:25:06 -0700, Andi Shyti wrote:
> >
> > Hi Ashutosh,
> 
> Hi Andi :)
> 
> > > > If a non-constant variable is used as the first argument of the FIELD_PREP
> > > > macro, a build error occurs when using the clang compiler.
> 
> A "non-constant variable" does not seem to be the cause of the compile
> error with clang, see below.
> 
> >
> > > > drivers/gpu/drm/i915/i915_hwmon.c:115:16: error: result of comparison of constant 18446744073709551615 with expression of type 'typeof (_Generic((field_msk), char: (unsigned char)0, unsigned char: (unsigned char)0, signed char: (unsigned char)0, unsigned short: (unsigned short)0, short: (unsigned short)0, unsigned int: (unsigned int)0, int: (unsigned int)0, unsigned long: (unsigned long)0, long: (unsigned long)0, unsigned long long: (unsigned long long)0, long long: (unsigned long long)0, default: (field_msk)))' (aka 'unsigned int') is always false [-Werror,-Wtautological-constant-out-of-range-compare]
> > >
> > > What is 18446744073709551615? You may want to limit the length of this line
> > > or checkpatch doesn't complain?
> >
> > yeah! I am not a clang user, and this must be some ugly error
> > output. I don't think it makes sense to break it, though.
> 
> 18446744073709551615 == ~0ull (see use in __BF_FIELD_CHECK).

I just wonder, then, where this number comes from, looks to me
like an ill formatted constant coming from the compiler
(definitely bigger than a ull).

> >
> > > >         bits_to_set = FIELD_PREP(field_msk, nval);
> > > >                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~
> > > > ./include/linux/bitfield.h:114:3: note: expanded from macro 'FIELD_PREP'
> > > >                 __BF_FIELD_CHECK(_mask, 0ULL, _val, "FIELD_PREP: ");    \
> > > >                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > > > ./include/linux/bitfield.h:71:53: note: expanded from macro '__BF_FIELD_CHECK'
> > > >                 BUILD_BUG_ON_MSG(__bf_cast_unsigned(_mask, _mask) >     \
> 
> So clang seems to break here at this line in __BF_FIELD_CHECK (note ~0ull
> also occurs here):
> 
> 		BUILD_BUG_ON_MSG(__bf_cast_unsigned(_mask, _mask) >	\
> 				 __bf_cast_unsigned(_reg, ~0ull),	\
> 				 _pfx "type of reg too small for mask"); \
> 
> So it goes through previous checks including the "mask is not constant"
> check. As Nick Desaulniers mentions "__builtin_constant_p is evaluated
> after most optimizations have run" so by that time both compilers (gcc and
> clang) have figured out that even though _mask is coming in as function
> argument it is really the constant below:
> 
> #define   PKG_PWR_LIM_1		REG_GENMASK(14, 0)

I also thought that the compiler should have figured it out, but
then why we got that error, and I don't see how
"bf_cast_unsigned(_reg, ~0ull)" could fail.

> But it is not clear why clang chokes on this "type of reg too small for
> mask" check (and gcc doesn't) since everything is u32.
> 
> It is for this reason I want someone from llvm to chime in.
> 
> > > >                 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~
> > > > ./include/linux/build_bug.h:39:58: note: expanded from macro 'BUILD_BUG_ON_MSG'
> > > >                                     ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~
> > > > ./include/linux/compiler_types.h:357:22: note: expanded from macro 'compiletime_assert'
> > > >         _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
> > > >         ~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > > > ./include/linux/compiler_types.h:345:23: note: expanded from macro '_compiletime_assert'
> > > >         __compiletime_assert(condition, msg, prefix, suffix)
> > > >         ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > > > ./include/linux/compiler_types.h:337:9: note: expanded from macro '__compiletime_assert'
> > > >                 if (!(condition))                                       \
> > > >
> > > > Fixes: 99f55efb7911 ("drm/i915/hwmon: Power PL1 limit and TDP setting")
> > > > Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
> > > > Cc: Anshuman Gupta <anshuman.gupta@intel.com>
> > > > Cc: Andi Shyti <andi.shyti@linux.intel.com>
> > > > Signed-off-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/i915_hwmon.c | 12 +++---------
> > > >  1 file changed, 3 insertions(+), 9 deletions(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
> > > > index 9e9781493025..782a621b1928 100644
> > > > --- a/drivers/gpu/drm/i915/i915_hwmon.c
> > > > +++ b/drivers/gpu/drm/i915/i915_hwmon.c
> > > > @@ -101,21 +101,16 @@ hwm_field_read_and_scale(struct hwm_drvdata *ddat, i915_reg_t rgadr,
> > > >
> > > >  static void
> > > >  hwm_field_scale_and_write(struct hwm_drvdata *ddat, i915_reg_t rgadr,
> > > > -			  u32 field_msk, int nshift,
> > > > -			  unsigned int scale_factor, long lval)
> > > > +			  int nshift, unsigned int scale_factor, long lval)
> > > >  {
> > > >	u32 nval;
> > > > -	u32 bits_to_clear;
> > > > -	u32 bits_to_set;
> > > >
> > > >	/* Computation in 64-bits to avoid overflow. Round to nearest. */
> > > >	nval = DIV_ROUND_CLOSEST_ULL((u64)lval << nshift, scale_factor);
> > > >
> > > > -	bits_to_clear = field_msk;
> > > > -	bits_to_set = FIELD_PREP(field_msk, nval);
> > > > -
> > > >	hwm_locked_with_pm_intel_uncore_rmw(ddat, rgadr,
> > > > -					    bits_to_clear, bits_to_set);
> > > > +					    PKG_PWR_LIM_1,
> > > > +					    FIELD_PREP(PKG_PWR_LIM_1, nval));
> > >
> > > I don't want to give up so easily. We might have future uses for the
> > > function where we want field_msk to be passed into the function (rather
> > > than set inside the function as in this patch).
> > >
> > > Do we understand what clang is complaining about? And why this compiles
> > > with gcc?
> >
> > Because we are not compiling the builtin functions with gcc but
> > gcc has support for them. The FIELD_PREP checks if the first
> > parameter is a constant:
> >
> >	BUILD_BUG_ON_MSG(!__builtin_constant_p(_mask),
> >
> > where _mask was our field_mask, but we ignore it. Apparently
> > clang doesn't.
> 
> So we have debunked this above.
> 
> > If we want to stick to gcc only, then I still think the patch is
> > correct for two reasons:
> >
> >   1. it's cleaner
> >   2. we would get on with the job and if one day we will decide
> >      to suppport builtin functions in gcc as well, we will sleep
> >      peacefully :)
> 
> I disagree with the patch even if we need to fix this in i915 (rather than
> say change the headers or something in clang).
> 
> Note that hwm_field_scale_and_write() pairs with hwm_field_read_and_scale()
> (they are basically a set/get pair) so it is desirable they have identical
> arguments. This patch breaks that symmetry.

OK, didn't see it! Makes sense.

> If we have to fix this in i915, I prefer the following patch (so just skip
> the checks in FIELD_PREP):
> 
> @@ -112,7 +112,7 @@ hwm_field_scale_and_write(struct hwm_drvdata *ddat, i915_reg_t rgadr,
>         nval = DIV_ROUND_CLOSEST_ULL((u64)lval << nshift, scale_factor);
> 
>         bits_to_clear = field_msk;
> -       bits_to_set = FIELD_PREP(field_msk, nval);
> +       bits_to_set = (nval << __bf_shf(field_msk)) & field_msk;
> 
>         hwm_locked_with_pm_intel_uncore_rmw(ddat, rgadr,

doesn't look pretty, though! :/

> But I'd wait to hear from clang/llvm folks first.

Yeah! Looking forward to getting some ideas :)

Thanks, Ashutosh!
Andi

> > > Copying llvm@lists.linux.dev too.
> >
> > maybe llvm folks have a better opinion.
> >
> 
> Thanks.
> --
> Ashutosh
> 
> > > >  }
> > > >
> > > >  /*
> > > > @@ -406,7 +401,6 @@ hwm_power_write(struct hwm_drvdata *ddat, u32 attr, int chan, long val)
> > > >	case hwmon_power_max:
> > > >		hwm_field_scale_and_write(ddat,
> > > >					  hwmon->rg.pkg_rapl_limit,
> > > > -					  PKG_PWR_LIM_1,
> > > >					  hwmon->scl_shift_power,
> > > >					  SF_POWER, val);
> > > >		return 0;
> > > > --
> > > > 2.37.1
> > > >
