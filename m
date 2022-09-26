Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFAC85EB1F5
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Sep 2022 22:17:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A66810E7AA;
	Mon, 26 Sep 2022 20:17:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com
 [IPv6:2607:f8b0:4864:20::529])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D723110E7AD
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Sep 2022 20:17:30 +0000 (UTC)
Received: by mail-pg1-x529.google.com with SMTP id u69so7562484pgd.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Sep 2022 13:17:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date;
 bh=LBF//pAX5WHcz7xdaQr4Nf4d4GrRr37crvjLDzbblIk=;
 b=Bji77umcsdJeihjx85Wx1yJAb732Oz1ZA1q21x7/tJcnTUW/8fZte+SBOWKRr2y2X4
 t7UYhPhE3DC/SUmvxlRXNayEpDUn6fkDZy7UDvvNDbtu4owhre655mCikZL0f8jsHtqv
 cGn9ctLsI5otDOKjNY0EQMprAXB1loNeikeBDNXuhf21Gc6YNSGymHqhwg97uF5tGFMe
 IZ94nsGJZnj+0Ru0uhnDDrRz3FETUQWktqxCIkpnHZcyY5l8qG/NsoDS/+XHrgbZsJr4
 SbniuV3EE/E7bFBu3CiLO4p6FpJn/FlCsxGzzDKgRIkz5AdRBT3N+leywHBff6krEQW8
 RNBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date;
 bh=LBF//pAX5WHcz7xdaQr4Nf4d4GrRr37crvjLDzbblIk=;
 b=azlE2yB0DqnPYMlftN7uBBqQJvXHaAhYm/A1aA1ybLb95Kp7nsfOD9u6AwnTkge8sU
 BietZ5k6i6U3R09Srj3463mlclV8sb9Ahz2Ttx5QR64Ua/eUxCIGwQB3uB68U7ft1YkN
 q3Xx8GQSMSLR5WlrcMvdmq+w5URwF1AGULDFKDW93T2YtQj/auEsP9wnLFwZB30lMtqV
 bGZNwfHvH8+Czs1Crv6Vkpqp2kH4PO/13bE4NqB+a5VyOIspJdcjU40sVhuctsOuBvWW
 QD2wYsJSNt+w0Fy93tpPVMdBsBbOyC8Mw6K45kA2hLTebhrdyEuUqDDia2Xwi61g1L7L
 9eRg==
X-Gm-Message-State: ACrzQf1zsX3ADsSGIrrlRuhc209cHgX4aMPEo8K/lDTENL4T32metu11
 vphV4E7DUjRNYW/ZpmQMJfkwVTb80pfgdumBS9cgwA==
X-Google-Smtp-Source: AMsMyM5Uwpd0MxiH9sRDQzapR2kQfL6PV2oxZumBsqYgeO5TWDHdWVPWGZZxNuX11VhdUYgOQnkrigoKWNVoBnjDEtY=
X-Received: by 2002:a63:2cd2:0:b0:41c:5901:67d8 with SMTP id
 s201-20020a632cd2000000b0041c590167d8mr21300624pgs.365.1664223450163; Mon, 26
 Sep 2022 13:17:30 -0700 (PDT)
MIME-Version: 1.0
References: <20220926191109.1803094-1-keescook@chromium.org>
In-Reply-To: <20220926191109.1803094-1-keescook@chromium.org>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Mon, 26 Sep 2022 13:17:18 -0700
Message-ID: <CAKwvOdmCjAQpaF40VStbFNf1ZqmTxTTZzy2v4TwSF0LVO08GYw@mail.gmail.com>
To: Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH v2] overflow: Introduce overflows_type() and
 castable_to_type()
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
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Arnd Bergmann <arnd@kernel.org>, David Airlie <airlied@linux.ie>,
 Tom Rix <trix@redhat.com>, Daniel Latypov <dlatypov@google.com>,
 llvm@lists.linux.dev, "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Nathan Chancellor <nathan@kernel.org>, linux-sparse@vger.kernel.org,
 linux-hardening@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org,
 Vitor Massaru Iha <vitor@massaru.org>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

+ Arnd

On Mon, Sep 26, 2022 at 12:11 PM Kees Cook <keescook@chromium.org> wrote:
> ---
> v2:
>  - fix comment typo
>  - wrap clang pragma to avoid GCC warnings
>  - style nit cleanups
>  - rename __castable_to_type() to castable_to_type()
>  - remove prior overflows_type() definition
> v1: https://lore.kernel.org/lkml/20220926003743.409911-1-keescook@chromium.org
> diff --git a/lib/overflow_kunit.c b/lib/overflow_kunit.c
> index f385ca652b74..fffc3f86181d 100644
> --- a/lib/overflow_kunit.c
> +++ b/lib/overflow_kunit.c
> @@ -16,6 +16,11 @@
>  #include <linux/types.h>
>  #include <linux/vmalloc.h>
>
> +/* We're expecting to do a lot of "always true" or "always false" tests. */
> +#ifdef CONFIG_CC_IS_CLANG
> +#pragma clang diagnostic ignored "-Wtautological-constant-out-of-range-compare"
> +#endif

Any chance we can reuse parts of __diag_ignore or __diag_clang from
include/linux/compiler_types.h or include/linux/compiler-clang.h
respectively?

Those are needed for pragmas within preprocessor macros, which we
don't have here, but I suspect they may be more concise to use here.

> +#define TEST_SAME_TYPE(t1, t2, same)                   do {    \
> +       typeof(t1) __t1h = type_max(t1);                        \
> +       typeof(t1) __t1l = type_min(t1);                        \
> +       typeof(t2) __t2h = type_max(t2);                        \
> +       typeof(t2) __t2l = type_min(t2);                        \

Can we use __auto_type here rather than typeof(macro expansion)?
-- 
Thanks,
~Nick Desaulniers
