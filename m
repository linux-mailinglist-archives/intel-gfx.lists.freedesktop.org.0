Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5317860D1CD
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Oct 2022 18:46:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B35410E069;
	Tue, 25 Oct 2022 16:46:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com
 [IPv6:2607:f8b0:4864:20::535])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D889810E069
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Oct 2022 16:46:23 +0000 (UTC)
Received: by mail-pg1-x535.google.com with SMTP id e129so12000111pgc.9
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Oct 2022 09:46:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=w6glm61WKK0JtnK43KX4VU/+afrwhmeKJfT5j2YhWOE=;
 b=SY7JeX0X+eP2S5XelqLo8oiGd6pNEoIJSCJh4B2HTGvXY+LWcYYAozCZgrpcFcC/ex
 RcPIkdAGr+9rNByVy8jNphOwAHxoA0aH61XJjMGE9zFktsfI3pVDas/rGl/Y7wrPNctY
 wlfqgmlNo8M2x8bktOUFDF9ZXdvZ32htWWXFDuoZ4l9OrdO0n7Fn2J9XNLD1rRpEcQKC
 NqNEUPDWfntqGF+sZN8J1WOblVy4weseMzQjr4HzGuShJIV3kBiCUJJZ00l/4gZ3sAHt
 6fJPgN69I3k1pOLdTqS4TtMfM1sBAi9u/R/slIk+CKa5OEMR4NWujw/NJfdncpFtvCdQ
 hDSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=w6glm61WKK0JtnK43KX4VU/+afrwhmeKJfT5j2YhWOE=;
 b=3io75jFyujTVUTYxjUrdXculfM9kojoORVklz3vS9yvjIsz0OtO36N1osEBqHTz9wE
 W5ZIMs5S/gPIWU1WxmkggaCMYMc2qnJEsRpp/RpjjTsuPQw4Nc1rtyicH1+ln9pzpuJE
 p97FxBMWR7qZqR8cAww3fGGL+3U8Qx0iH28mXcdpV7amsow9F04zRlfihMbq6hXYAe28
 Uk3NiQoKWTTO71TRwoRfr028AsIemt8vV7KqcFA3j7sQNATfKXdOZi4TY3xdVmAjAHB+
 nNVqx9QkaL1K3js5KcR866sswmHZysfez4I3hW8zedLJybgxA//Zrq2diCAMBWBV0UVw
 5DoA==
X-Gm-Message-State: ACrzQf3TrOKyua+OqMdw2aJ5GF88qIbHN7mjsu8TjfeIVSp+M9ONYXOm
 dgZVrt9p6iJcg9QaIz/ctydblGn3PKqLVjE/QjfISw==
X-Google-Smtp-Source: AMsMyM6oy0HNDgS4+k+BYT5a5AzDWloI7jPbpV1LDdTHWucUhM6Z4y6oJCmhZZEJjX554yPqzQMfUBuG0Brfj0JhuKM=
X-Received: by 2002:a63:1f5c:0:b0:469:d0e6:dac0 with SMTP id
 q28-20020a631f5c000000b00469d0e6dac0mr32661554pgm.427.1666716383232; Tue, 25
 Oct 2022 09:46:23 -0700 (PDT)
MIME-Version: 1.0
References: <20221024210953.1572998-1-gwan-gyeong.mun@intel.com>
 <87mt9kppb6.wl-ashutosh.dixit@intel.com> <Y1ercgaqQwfqt42U@ashyti-mobl2.lan>
In-Reply-To: <Y1ercgaqQwfqt42U@ashyti-mobl2.lan>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Tue, 25 Oct 2022 09:46:11 -0700
Message-ID: <CAKwvOdn=O0WrZftj+zzV2iiUgTcXDYdvgJEj5Qfftd92f0aM_w@mail.gmail.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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
 LKML <linux-kernel@vger.kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Start of lore thread for context:
https://lore.kernel.org/intel-gfx/20221024210953.1572998-1-gwan-gyeong.mun@=
intel.com/

On Tue, Oct 25, 2022 at 2:25 AM Andi Shyti <andi.shyti@linux.intel.com> wro=
te:
>
> Hi Ashutosh,
>
> > > drivers/gpu/drm/i915/i915_hwmon.c:115:16: error: result of comparison=
 of constant 18446744073709551615 with expression of type 'typeof (_Generic=
((field_msk), char: (unsigned char)0, unsigned char: (unsigned char)0, sign=
ed char: (unsigned char)0, unsigned short: (unsigned short)0, short: (unsig=
ned short)0, unsigned int: (unsigned int)0, int: (unsigned int)0, unsigned =
long: (unsigned long)0, long: (unsigned long)0, unsigned long long: (unsign=
ed long long)0, long long: (unsigned long long)0, default: (field_msk)))' (=
aka 'unsigned int') is always false [-Werror,-Wtautological-constant-out-of=
-range-compare]
> >
> > What is 18446744073709551615? You may want to limit the length of this =
line
> > or checkpatch doesn't complain?
>
> yeah! I am not a clang user, and this must be some ugly error
> output. I don't think it makes sense to break it, though.
>
> > >         bits_to_set =3D FIELD_PREP(field_msk, nval);
> > >                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~
> > > ./include/linux/bitfield.h:114:3: note: expanded from macro 'FIELD_PR=
EP'
> > >                 __BF_FIELD_CHECK(_mask, 0ULL, _val, "FIELD_PREP: "); =
   \
> > >                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > > ./include/linux/bitfield.h:71:53: note: expanded from macro '__BF_FIE=
LD_CHECK'
> > >                 BUILD_BUG_ON_MSG(__bf_cast_unsigned(_mask, _mask) >  =
   \
> > >                 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~=
~~~~
> > > ./include/linux/build_bug.h:39:58: note: expanded from macro 'BUILD_B=
UG_ON_MSG'
> > >                                     ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~
> > > ./include/linux/compiler_types.h:357:22: note: expanded from macro 'c=
ompiletime_assert'
> > >         _compiletime_assert(condition, msg, __compiletime_assert_, __=
COUNTER__)
> > >         ~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~~~~~~
> > > ./include/linux/compiler_types.h:345:23: note: expanded from macro '_=
compiletime_assert'
> > >         __compiletime_assert(condition, msg, prefix, suffix)
> > >         ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > > ./include/linux/compiler_types.h:337:9: note: expanded from macro '__=
compiletime_assert'
> > >                 if (!(condition))                                    =
   \
> > >
> > > Fixes: 99f55efb7911 ("drm/i915/hwmon: Power PL1 limit and TDP setting=
")
> > > Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
> > > Cc: Anshuman Gupta <anshuman.gupta@intel.com>
> > > Cc: Andi Shyti <andi.shyti@linux.intel.com>
> > > Signed-off-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/i915_hwmon.c | 12 +++---------
> > >  1 file changed, 3 insertions(+), 9 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915=
/i915_hwmon.c
> > > index 9e9781493025..782a621b1928 100644
> > > --- a/drivers/gpu/drm/i915/i915_hwmon.c
> > > +++ b/drivers/gpu/drm/i915/i915_hwmon.c
> > > @@ -101,21 +101,16 @@ hwm_field_read_and_scale(struct hwm_drvdata *dd=
at, i915_reg_t rgadr,
> > >
> > >  static void
> > >  hwm_field_scale_and_write(struct hwm_drvdata *ddat, i915_reg_t rgadr=
,
> > > -                     u32 field_msk, int nshift,
> > > -                     unsigned int scale_factor, long lval)
> > > +                     int nshift, unsigned int scale_factor, long lva=
l)
> > >  {
> > >     u32 nval;
> > > -   u32 bits_to_clear;
> > > -   u32 bits_to_set;
> > >
> > >     /* Computation in 64-bits to avoid overflow. Round to nearest. */
> > >     nval =3D DIV_ROUND_CLOSEST_ULL((u64)lval << nshift, scale_factor)=
;
> > >
> > > -   bits_to_clear =3D field_msk;
> > > -   bits_to_set =3D FIELD_PREP(field_msk, nval);
> > > -
> > >     hwm_locked_with_pm_intel_uncore_rmw(ddat, rgadr,
> > > -                                       bits_to_clear, bits_to_set);
> > > +                                       PKG_PWR_LIM_1,
> > > +                                       FIELD_PREP(PKG_PWR_LIM_1, nva=
l));
> >
> > I don't want to give up so easily. We might have future uses for the
> > function where we want field_msk to be passed into the function (rather
> > than set inside the function as in this patch).
> >
> > Do we understand what clang is complaining about? And why this compiles
> > with gcc?
>
> Because we are not compiling the builtin functions with gcc but
> gcc has support for them. The FIELD_PREP checks if the first
> parameter is a constant:
>
>         BUILD_BUG_ON_MSG(!__builtin_constant_p(_mask),
>
> where _mask was our field_mask, but we ignore it. Apparently
> clang doesn't.

So we've been in this code before. I'm having vague memories of
commit 444da3f52407 ("bitfield.h: don't compile-time validate _val in
FIELD_FIT")

But looking at the first __builtin_constant_p check in
__BF_FIELD_CHECK, I'm curious if that might need to be __is_constexpr
rather than __builtin_constant_p; a change like
commit 4d45bc82df66 ("coresight: etm4x: avoid build failure with
unrolled loops")

__builtin_constant_p is evaluated after most optimizations have run;
__is_constexpr must be evaluated by compiler front ends during
semantic analysis.

But reading through the full lore thread, it sounds like Jani has
another suggestion to try instead.
https://lore.kernel.org/intel-gfx/87eduwdllr.fsf@intel.com/

Please re-cc us and our list if that doesn't work out.

>
> If we want to stick to gcc only, then I still think the patch is
> correct for two reasons:
>
>   1. it's cleaner
>   2. we would get on with the job and if one day we will decide
>      to suppport builtin functions in gcc as well, we will sleep
>      peacefully :)
>
> > Copying llvm@lists.linux.dev too.
>
> maybe llvm folks have a better opinion.
>
> Thanks,
> Andi
>
> > Thanks.
> > --
> > Ashutosh
> >
> >
> > >  }
> > >
> > >  /*
> > > @@ -406,7 +401,6 @@ hwm_power_write(struct hwm_drvdata *ddat, u32 att=
r, int chan, long val)
> > >     case hwmon_power_max:
> > >             hwm_field_scale_and_write(ddat,
> > >                                       hwmon->rg.pkg_rapl_limit,
> > > -                                     PKG_PWR_LIM_1,
> > >                                       hwmon->scl_shift_power,
> > >                                       SF_POWER, val);
> > >             return 0;
> > > --
> > > 2.37.1
> > >
>


--=20
Thanks,
~Nick Desaulniers
