Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E783560FF2D
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Oct 2022 19:17:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73B7110E6A9;
	Thu, 27 Oct 2022 17:17:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com
 [IPv6:2607:f8b0:4864:20::530])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 230D010E6A9
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Oct 2022 17:17:00 +0000 (UTC)
Received: by mail-pg1-x530.google.com with SMTP id h185so2122922pgc.10
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Oct 2022 10:17:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=zdjZv+IKq3ph1Ix4iiZ0nwCvy/5pBmnplSSKFf+POLY=;
 b=d9zSKpi6p0S91Q2V9qhJecbmYDzE3jyitR8boIIFcMct2U70ShHQqESa0PsTBoJLJm
 NjaIsFEk48yDlE3Ff88ENDHTlIxwERU9suxrHpciJg+SqYYEqWAg3m6D+TBWXiQRTZmW
 N85YdsfwBgByfbMeTO4G5aDzml9FEWJft9S6qkKvxRuyiDanjRdPVZUH1v0H3+gclbge
 aVbzdMhjEr+rksU8vO22yn+26hNJJQulcKX7L8N0PMHf41raEJ6kGIJFBrW81T6sl1UK
 M/xSY6XTN7tWqRoyvGdJdgz1tHRArwOWtGrIVxw0kFV8qahSE7e7Yf/JIBGN6RxVKDsr
 Ae/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=zdjZv+IKq3ph1Ix4iiZ0nwCvy/5pBmnplSSKFf+POLY=;
 b=RoTMqcTC2EAvML/WxiwbDSm+dXoIIvlALAjAY/CfsslKSYvscaDYK+Ij+cwcgRTAHq
 +OsJKg9G5WIV+bXwHvgqJabJDqQjElHpr48njDpPlRoz8thI1HfNXUDlAIHK3YV10+hL
 gnu8E8s23J9rJjuncPBOrOadlSJPEempyF8uvfHzfYezsolDO7nv/UrV5eFwTTAkUH/W
 OwBZwx4mS2G25zPzHIlGVkh/e1FJp8e7yrpMnXQQCb07ZLoBJR1AwXeRAYwzcUaml0z3
 POOD2qIe7bGVKvji0PqvAvB5pR/XJsIh7rUtut0NH9sY3D1IDtrboPanCiMatoOa5EQg
 QgqQ==
X-Gm-Message-State: ACrzQf3w+eI8J7IvQzUkuvNC0ku5lTDLvX9rYB/q2todnjBpzyn4kwR4
 RB+4RxqHu2K7ucAkjgz9Nf69zb6etSz0AMJByupmSQ==
X-Google-Smtp-Source: AMsMyM6C9FJi+RflmEyBNbFkvocpaOXOyAPTOIKqKeqwRQY+mzuqgIZaY9ryX4bLqiFfUG3kcd5vd1AhDTKJjw3033E=
X-Received: by 2002:a63:2cd2:0:b0:41c:5901:67d8 with SMTP id
 s201-20020a632cd2000000b0041c590167d8mr42895576pgs.365.1666891019459; Thu, 27
 Oct 2022 10:16:59 -0700 (PDT)
MIME-Version: 1.0
References: <20221024210953.1572998-1-gwan-gyeong.mun@intel.com>
 <87mt9kppb6.wl-ashutosh.dixit@intel.com> <Y1ercgaqQwfqt42U@ashyti-mobl2.lan>
 <87ilk7pwrw.wl-ashutosh.dixit@intel.com> <Y1h8yn4QHI3aBlCe@ashyti-mobl2.lan>
 <CAKwvOdkpQvk31zbipLDPXfsDZ8FpGHs9t-+9JfFQO85Bs4h=wg@mail.gmail.com>
 <877d0lxl6s.wl-ashutosh.dixit@intel.com>
In-Reply-To: <877d0lxl6s.wl-ashutosh.dixit@intel.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Thu, 27 Oct 2022 10:16:47 -0700
Message-ID: <CAKwvOdmVJn8HvfF9WTnOAc+HsdJ4c1Tdck8E7Caky7AoCq4ZTA@mail.gmail.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="UTF-8"
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

On Thu, Oct 27, 2022 at 9:53 AM Dixit, Ashutosh
<ashutosh.dixit@intel.com> wrote:
>
> On Thu, 27 Oct 2022 09:35:24 -0700, Nick Desaulniers wrote:
> >
>
> Hi Nick,
>
> > On Tue, Oct 25, 2022 at 5:18 PM Andi Shyti <andi.shyti@linux.intel.com> wrote:
> > >
> > > Hi Ashutosh,
> > >
> > > > But I'd wait to hear from clang/llvm folks first.
> > >
> > > Yeah! Looking forward to getting some ideas :)
> >
> > Gwan-gyeong, which tree and set of configs are necessary to reproduce
> > the observed warning?
> >
> > Warnings are treated as errors, so I don't want this breaking our CI.
>
> The following or equivalent should do it:
>
> git clone https://anongit.freedesktop.org/git/drm/drm-tip
> git checkout drm-tip
>
> Kernel config:
> CONFIG_DRM_I915=m
> CONFIG_HWMON=y
>
> Files:
> drivers/gpu/drm/i915/i915_hwmon.c/.h
>
> Thanks for taking a look.

Thanks, I can repro now.

I haven't detangled the macro soup, but I noticed:

1. FIELD_PREP is defined in include/linux/bitfield.h which has the
following comment:
 18  * Mask must be a compilation time constant.

2. hwm_field_scale_and_write only has one callsite.

The following patch works:

```
diff --git a/drivers/gpu/drm/i915/i915_hwmon.c
b/drivers/gpu/drm/i915/i915_hwmon.c
index 9e9781493025..6ac29d90b92a 100644
--- a/drivers/gpu/drm/i915/i915_hwmon.c
+++ b/drivers/gpu/drm/i915/i915_hwmon.c
@@ -101,7 +101,7 @@ hwm_field_read_and_scale(struct hwm_drvdata *ddat,
i915_reg_t rgadr,

 static void
 hwm_field_scale_and_write(struct hwm_drvdata *ddat, i915_reg_t rgadr,
-                         u32 field_msk, int nshift,
+                         int nshift,
                          unsigned int scale_factor, long lval)
 {
        u32 nval;
@@ -111,8 +111,8 @@ hwm_field_scale_and_write(struct hwm_drvdata
*ddat, i915_reg_t rgadr,
        /* Computation in 64-bits to avoid overflow. Round to nearest. */
        nval = DIV_ROUND_CLOSEST_ULL((u64)lval << nshift, scale_factor);

-       bits_to_clear = field_msk;
-       bits_to_set = FIELD_PREP(field_msk, nval);
+       bits_to_clear = PKG_PWR_LIM_1;
+       bits_to_set = FIELD_PREP(PKG_PWR_LIM_1, nval);

        hwm_locked_with_pm_intel_uncore_rmw(ddat, rgadr,
                                            bits_to_clear, bits_to_set);
@@ -406,7 +406,6 @@ hwm_power_write(struct hwm_drvdata *ddat, u32
attr, int chan, long val)
        case hwmon_power_max:
                hwm_field_scale_and_write(ddat,
                                          hwmon->rg.pkg_rapl_limit,
-                                         PKG_PWR_LIM_1,
                                          hwmon->scl_shift_power,
                                          SF_POWER, val);
                return 0;
```
Though I'm not sure if you're planning to add further callsites of
hwm_field_scale_and_write with different field_masks?

Alternatively, (without the above diff),

```
diff --git a/include/linux/bitfield.h b/include/linux/bitfield.h
index c9be1657f03d..6f40f12bcf89 100644
--- a/include/linux/bitfield.h
+++ b/include/linux/bitfield.h
@@ -8,6 +8,7 @@
 #define _LINUX_BITFIELD_H

 #include <linux/build_bug.h>
+#include <linux/const.h>
 #include <asm/byteorder.h>

 /*
@@ -62,7 +63,7 @@

 #define __BF_FIELD_CHECK(_mask, _reg, _val, _pfx)                      \
        ({                                                              \
-               BUILD_BUG_ON_MSG(!__builtin_constant_p(_mask),          \
+               BUILD_BUG_ON_MSG(!__is_constexpr(_mask),                \
                                 _pfx "mask is not constant");          \
                BUILD_BUG_ON_MSG((_mask) == 0, _pfx "mask is zero");    \
                BUILD_BUG_ON_MSG(__builtin_constant_p(_val) ?           \
```
will produce:
error: call to __compiletime_assert_407 declared with 'error'
attribute: FIELD_PREP: mask is not constant

I haven't tested if that change is also feasible (on top of fixing
this specific instance), but I think it might help avoid more of these
subtleties wrt. __builtin_constant_p that depende heavily on compiler,
compiler version, optimization level.
-- 
Thanks,
~Nick Desaulniers
