Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03C055B6CB0
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Sep 2022 14:01:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17BD310E6B3;
	Tue, 13 Sep 2022 12:01:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com
 [IPv6:2607:f8b0:4864:20::629])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C64AB10E6B6
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Sep 2022 12:01:26 +0000 (UTC)
Received: by mail-pl1-x629.google.com with SMTP id b21so11582037plz.7
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Sep 2022 05:01:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date;
 bh=1pj33muzPsJpUhNcBT0o05+VQt0cQ00T/48YoaU8PHs=;
 b=d/lOC17WeCAmAwvxW/N1bb7kaPeC/aK5SUy4mCsFXE+sUgxwzHqejSFjPte6c2BscC
 Jsy19VHeRmjWLFSqi9P2NPitXTP7wZRBBRvM0rnquiMAsqhNBa3v5Ow/9ksWRcWqVw76
 lHWGeMEzT0Msv8IbkZ5bqbrdwsBtu7ZZ2+mhg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date;
 bh=1pj33muzPsJpUhNcBT0o05+VQt0cQ00T/48YoaU8PHs=;
 b=Ci/DFH5ihFu3PReWezBZ48Al/z1KzNKLYThSJjqbFTOGvu1bDCYVjMx6+3+CpR2UiK
 uWwcQ9Gi/i1q6J3/SmxtlaejgchlgN8Wm3E4VwaQ9wmzollAmnFxd0Vwhx9hwoeZyQ4z
 RirJdkc3eQeUM2WTyM3FyZr5bo0ZAf0VWXjexIa8SP9kz+k7aRdw9WC/tzO8iqnd6Wtb
 iw9aMEBA1ub4ZotdeMEU70nD1LPUUWGehews8VMrpL7moE0TYxqc8cqH1uA6fAoQ/ult
 DFhU7rzQhSEfz293MQziXyZhs6LMuciW8DrktEwAcZoDpuyGYPHJ2QSepmI9OUimfTfl
 MBwA==
X-Gm-Message-State: ACgBeo1BoaloVp8eejk0cIzioezRWA+7p+U0YJS6XIs2ESdXIsSSn+fa
 PvPoyAGWYKjhC6UyUJVxim8/Rw==
X-Google-Smtp-Source: AA6agR4lG2Wr58F5IZD2hOfAAdpXddSRPOIQgSQteCRZSJphcxFM58CRtQHLZjzUCr/58UBt/YhjQA==
X-Received: by 2002:a17:903:22cc:b0:178:18a1:d16c with SMTP id
 y12-20020a17090322cc00b0017818a1d16cmr17420970plg.155.1663070485873; 
 Tue, 13 Sep 2022 05:01:25 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id
 d21-20020a170902729500b0017441330392sm8058363pll.63.2022.09.13.05.01.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Sep 2022 05:01:24 -0700 (PDT)
Date: Tue, 13 Sep 2022 05:01:23 -0700
From: Kees Cook <keescook@chromium.org>
To: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Message-ID: <202209130455.E7CF976A@keescook>
References: <20220909105913.752049-1-gwan-gyeong.mun@intel.com>
 <20220909105913.752049-4-gwan-gyeong.mun@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220909105913.752049-4-gwan-gyeong.mun@intel.com>
Subject: Re: [Intel-gfx] [PATCH v10 3/9] compiler_types.h: Add assert_type
 to catch type mis-match while compiling
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
Cc: thomas.hellstrom@linux.intel.com, jani.nikula@intel.com,
 ndesaulniers@google.com, intel-gfx@lists.freedesktop.org,
 linux@rasmusvillemoes.dk, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, chris@chris-wilson.co.uk,
 andrzej.hajda@intel.com, dlatypov@google.com, matthew.auld@intel.com,
 daniel@ffwll.ch, airlied@redhat.com, mchehab@kernel.org, vitor@massaru.org,
 nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Sep 09, 2022 at 07:59:07PM +0900, Gwan-gyeong Mun wrote:
> It adds assert_type and assert_typable macros to catch type mis-match while
> compiling. The existing typecheck() macro outputs build warnings, but the
> newly added assert_type() macro uses the _Static_assert() keyword (which is
> introduced in C11) to generate a build break when the types are different
> and can be used to detect explicit build errors.
> Unlike the assert_type() macro, assert_typable() macro allows a constant
> value as the second argument.
> 
> Suggested-by: Kees Cook <keescook@chromium.org>
> Signed-off-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Nirmoy Das <nirmoy.das@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Andi Shyti <andi.shyti@linux.intel.com>
> Cc: Mauro Carvalho Chehab <mchehab@kernel.org>
> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
> Cc: Kees Cook <keescook@chromium.org>
> ---
>  include/linux/compiler_types.h | 39 ++++++++++++++++++++++++++++++++++
>  1 file changed, 39 insertions(+)
> 
> diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
> index 4f2a819fd60a..19cc125918bb 100644
> --- a/include/linux/compiler_types.h
> +++ b/include/linux/compiler_types.h
> @@ -294,6 +294,45 @@ struct ftrace_likely_data {
>  /* Are two types/vars the same type (ignoring qualifiers)? */
>  #define __same_type(a, b) __builtin_types_compatible_p(typeof(a), typeof(b))
>  
> +/**
> + * assert_type - break compile if the first argument's data type and the second
> + *               argument's data type are not the same
> + *
> + * @t1: data type or variable
> + * @t2: data type or variable
> + *
> + * The first and second arguments can be data types or variables or mixed (the
> + * first argument is the data type and the second argument is variable or vice
> + * versa). It determines whether the first argument's data type and the second
> + * argument's data type are the same while compiling, and it breaks compile if
> + * the two types are not the same.
> + * See also assert_typable().
> + */
> +#define assert_type(t1, t2) _Static_assert(__same_type(t1, t2))
> +
> +/**
> + * assert_typable - break compile if the first argument's data type and the
> + *                  second argument's data type are not the same
> + *
> + * @t: data type or variable
> + * @n: data type or variable or constant value
> + *
> + * The first and second arguments can be data types or variables or mixed (the
> + * first argument is the data type and the second argument is variable or vice
> + * versa). Unlike the assert_type() macro, this macro allows a constant value
> + * as the second argument. And if the second argument is a constant value, it
> + * always passes. And it doesn't mean that the types are explicitly the same.
> + * When a constant value is used as the second argument, if you need an
> + * overflow check when assigning a constant value to a variable of the type of
> + * the first argument, you can use the overflows_type() macro. When a constant

I wonder if the overflows_type() check should happen in this test? It
seems weird that assert_typable(u8, 1024) would pass...

> + * value is not used as a second argument, it determines whether the first
> + * argument's data type and the second argument's data type are the same while
> + * compiling, and it breaks compile if the two types are not the same.
> + * See also assert_type() and overflows_type().
> + */
> +#define assert_typable(t, n) _Static_assert(__builtin_constant_p(n) ||	\
> +					    __same_type(t, typeof(n)))

Totally untested -- I'm not sure if this gets the right semantics for
constant expressoins, etc...

static_assert(__builtin_choose_expression(__builtin_constant_p(n), \
			overflows_type(n, typeof(t)), \
			__same_type(t, typeof(n))))


Also, can you please add KUnit tests for these new helpers into
lib/overflow_kunit.c?

-- 
Kees Cook
