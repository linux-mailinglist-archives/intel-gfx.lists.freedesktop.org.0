Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A5B903F7EDC
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Aug 2021 01:04:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F77F6E42E;
	Wed, 25 Aug 2021 23:03:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com
 [IPv6:2a00:1450:4864:20::231])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA3976E431
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Aug 2021 23:03:52 +0000 (UTC)
Received: by mail-lj1-x231.google.com with SMTP id l18so1421009lji.12
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Aug 2021 16:03:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2OfbLRqwAnGB5jDnDWm7vnODC+VKBMH0mApM9uNShXs=;
 b=LeHOXdGVlnEmXHRIBXzAJY8asTZDf++bfQ3M1qvvWJLxgDDVv78avIB9l1Jyz0qOMo
 u9umdFPvNW+PyMkEHAKEeda/6q0JI9t81cT6CUfsYnFa2lKx0Iz8nTpXGcnrGQRBCrW9
 wtytfUNZfGift6JaGL0FR9QLm39/oABYK5aZOHv2XKW1MjVkcY6SDpYRxHpxEZrQynXm
 DCsKT0d7/7nkZLNmsICj2HgXPS+fhxcDFG5LXBYnqq62SgMfTnda6O4vcraEod8LJNyc
 qOswtuUh/LwGb4ujrXvLe2kNG0UvSp9h8KDCra4ANOlDgSU9+8m/jxmE3e7EpL4VBsbz
 fkbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2OfbLRqwAnGB5jDnDWm7vnODC+VKBMH0mApM9uNShXs=;
 b=Aw4NS3RgHgXOKkIl6UqN/8QJeRBI3Yxc8DQj1LdNKDcPPpqsHY98PS5fsmxu/lxrHE
 w/iKazOIH7r/Z1S7a+M2FUCd2WjEs++pjxub7Sw7pgyey3dWqYOZjkcf9CCZ/+O0va//
 u2bMagpyY9G1qG/2VjrCXY66sKlyslpz+bQOCycFVzyETLPPp/l/5AMxYgNqWYRZGQUe
 oMkRCsEkGv2JnNcdWOGHIEN9xoAnB+Aa+D+SHuXNPkJ2aMCXFio7GHMHIHKD9psx4qys
 Py5tNq7n/Twz3oZypTbFw4h+WH7Gc+aS9CvhXmiir5yHJ1EAT14q/yjkj8r78Q6TzFlq
 wzJg==
X-Gm-Message-State: AOAM532sfBrdofTh0umiF17szxj8A9U0keBVIbsf7q6blay1Y1zHiYMm
 xzNQ76e7X4heb35YXcSUhLAloL7LiaoygeMzcwFvIg==
X-Google-Smtp-Source: ABdhPJwuDzns8qSLGm1dasF+52Y74fFiLN3vxGsN+IOwR3ac0gDzerXkqEQR/u7zlZ5f6A/hy0UYuL7SX3C1NJzPL6U=
X-Received: by 2002:a05:651c:83:: with SMTP id 3mr477952ljq.341.1629932630932; 
 Wed, 25 Aug 2021 16:03:50 -0700 (PDT)
MIME-Version: 1.0
References: <20210824232237.2085342-1-nathan@kernel.org>
In-Reply-To: <20210824232237.2085342-1-nathan@kernel.org>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Wed, 25 Aug 2021 16:03:39 -0700
Message-ID: <CAKwvOdk2mLem4w05o5cdr0Mz62M2CWeW+5LFnKE5L+pMPqa7WA@mail.gmail.com>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, 
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, 
 llvm@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Clean up disabled warnings
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Aug 24, 2021 at 4:23 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> i915 enables a wider set of warnings with '-Wall -Wextra' then disables
> several with cc-disable-warning. If an unknown flag gets added to
> KBUILD_CFLAGS when building with clang, all subsequent calls to
> cc-{disable-warning,option} will fail, meaning that all of these
> warnings do not get disabled [1].
>
> A separate series will address the root cause of the issue by not adding
> these flags when building with clang [2]; however, the symptom of these
> extra warnings appearing can be addressed separately by just removing
> the calls to cc-disable-warning, which makes the build ever so slightly
> faster because the compiler does not need to be called as much before
> building.
>
> The following warnings are supported by GCC 4.9 and clang 10.0.1, which
> are the minimum supported versions of these compilers so the call to
> cc-disable-warning is not necessary. Masahiro cleaned this up for the
> reset of the kernel in commit 4c8dd95a723d ("kbuild: add some extra
> warning flags unconditionally").
>
> * -Wmissing-field-initializers
> * -Wsign-compare
> * -Wtype-limits
> * -Wunused-parameter
>
> -Wunused-but-set-variable was implemented in clang 13.0.0 and
> -Wframe-address was implemented in clang 12.0.0 so the
> cc-disable-warning calls are kept for these two warnings.
>
> Lastly, -Winitializer-overrides is clang's version of -Woverride-init,
> which is disabled for the specific files that are problematic. clang
> added a compatibility alias in clang 8.0.0 so -Winitializer-overrides
> can be removed.
>
> [1]: https://lore.kernel.org/r/202108210311.CBtcgoUL-lkp@intel.com/
> [2]: https://lore.kernel.org/r/20210824022640.2170859-1-nathan@kernel.org/
>
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>

Thanks for the patch! Do you need to re-ping, rebase, or resend that
other series?
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>
> NOTE: This is based on my series to enable -Wsometimes-initialized here:
>
> https://lore.kernel.org/r/20210824225427.2065517-1-nathan@kernel.org/
>
> I sent it separately as this can go into whatever release but I would
> like for that series to go into 5.15.
>
>  drivers/gpu/drm/i915/Makefile | 10 ++++------
>  1 file changed, 4 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 335ba9f43d8f..6b38547543b1 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -13,13 +13,11 @@
>  # will most likely get a sudden build breakage... Hopefully we will fix
>  # new warnings before CI updates!
>  subdir-ccflags-y := -Wall -Wextra
> -subdir-ccflags-y += $(call cc-disable-warning, unused-parameter)
> -subdir-ccflags-y += $(call cc-disable-warning, type-limits)
> -subdir-ccflags-y += $(call cc-disable-warning, missing-field-initializers)
> +subdir-ccflags-y += -Wno-unused-parameter
> +subdir-ccflags-y += -Wno-type-limits
> +subdir-ccflags-y += -Wno-missing-field-initializers
> +subdir-ccflags-y += -Wno-sign-compare
>  subdir-ccflags-y += $(call cc-disable-warning, unused-but-set-variable)
> -# clang warnings
> -subdir-ccflags-y += $(call cc-disable-warning, sign-compare)
> -subdir-ccflags-y += $(call cc-disable-warning, initializer-overrides)
>  subdir-ccflags-y += $(call cc-disable-warning, frame-address)
>  subdir-ccflags-$(CONFIG_DRM_I915_WERROR) += -Werror
>
>
> base-commit: fb43ebc83e069625cfeeb2490efc3ffa0013bfa4
> prerequisite-patch-id: 31c28450ed7e8785dce967a16db6d52eff3d7d6d
> prerequisite-patch-id: 372dfa0e07249f207acc1942ab0e39b13ff229b2
> prerequisite-patch-id: 1a585fa6cda50c32ad1e3ac8235d3cff1b599978
> --
> 2.33.0
>


-- 
Thanks,
~Nick Desaulniers
