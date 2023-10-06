Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41DFF7BC101
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Oct 2023 23:12:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34B1910E585;
	Fri,  6 Oct 2023 21:12:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe36.google.com (mail-vs1-xe36.google.com
 [IPv6:2607:f8b0:4864:20::e36])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BF5C89089
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Oct 2023 21:12:14 +0000 (UTC)
Received: by mail-vs1-xe36.google.com with SMTP id
 ada2fe7eead31-45600aceffbso1150810137.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 06 Oct 2023 14:12:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1696626733; x=1697231533;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ZbAwly3dikrgqzK4k8R0+8k+e23Msjxly1PWuzBfu1g=;
 b=lm8NtWBTdg8Pho0ofSEybQzLRt4HozbsJFdMdpvcYzSJlufGA25bz1s7fgYOhCaz8g
 mlX2lDKanwZCIL5ZlOz1Gxc6azfwF62iONq0Ii/8YXUlsbWND7Cm3ByA+IdIs1DYGzoM
 kHYxq2+GGcFvAKzdj2TbW1NHATurSvYazoTKE0Pre0C00ieOkExNOFAqkXVxA2O+XqCC
 BfkdhPbUBkbT0uAEG76t6o75joLJVMOrzerr/NznXcCjsUMf0Bwrj6GPUHHucFWNh92r
 eNA8vk9qQrq3JLPh5CFdgM9/TRVSlqQvKJYnsw6w4H5pW5KIJOm+N+vhB/219cHMEb90
 oBKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696626733; x=1697231533;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=ZbAwly3dikrgqzK4k8R0+8k+e23Msjxly1PWuzBfu1g=;
 b=pt6GtLPTqanHuyepo5uIUk2kb1a/HgkXUtfnHqTG6lcRAS6nvbCZ8OVhl7Yo7Hzd4e
 0GuS7Q4Q3rBzkUu7sEOcyIl3G89zkg27T/AbJa6pRJUMBijprpHOs+aaNrosEccCLPKy
 R6QGvh9bhQvpo8q4cR6PjV4Et3Xj5RQtPU/EnbWhCxnwNKaSYUniIwKVaTAlsqqGDKf7
 A4ZPNglGURPrIPWLSgH+1NobPuRl+Pstu+ZW41Bs8fRGAuVDJddfYvJHFnSKC+teTlqq
 yiOIg+/OOZ8s9ZsP4nQsRJVqddWxOwYOCAyabmZUTEeOGzh4BRodLFWvdDwAz+yAcyT6
 jUHA==
X-Gm-Message-State: AOJu0YxvGt6Cd12aX6/sY035wm4opDBKzFtCNbfp/OInYw/itewRZGzf
 Sx99PxcCoBHtxr9zAH6zad8mlumPMCyryCYHGjEY2g==
X-Google-Smtp-Source: AGHT+IFEBXD2wp73cuO/Du0AW1Z2vCNdjoG5TcUTWAONcm55bIcnRmUJtJBUTyJn8wz0plhuvSLhqTMfe4pKQMBO4Sc=
X-Received: by 2002:a67:f754:0:b0:452:7f81:1502 with SMTP id
 w20-20020a67f754000000b004527f811502mr8785778vso.26.1696626732971; Fri, 06
 Oct 2023 14:12:12 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1696595500.git.jani.nikula@intel.com>
 <48f11648d7169687e7242e4c9b4694a0c03c4263.1696595500.git.jani.nikula@intel.com>
In-Reply-To: <48f11648d7169687e7242e4c9b4694a0c03c4263.1696595500.git.jani.nikula@intel.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Fri, 6 Oct 2023 14:12:00 -0700
Message-ID: <CAKwvOdkWX9GU_kvpqjRDgMuB_91RJTLZND+aDVh2tTEq3eK=Tg@mail.gmail.com>
To: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: drop -Wall and related
 disables from cflags as redundant
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
Cc: Nathan Chancellor <nathan@kernel.org>, intel-gfx@lists.freedesktop.org,
 Masahiro Yamada <masahiroy@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 linux-kbuild@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Oct 6, 2023 at 5:35=E2=80=AFAM Jani Nikula <jani.nikula@intel.com> =
wrote:
>
> The kernel top level Makefile, and recently scripts/Makefile.extrawarn,
> have included -Wall, and the disables -Wno-format-security and
> $(call cc-disable-warning,frame-address,) for a very long time. They're
> redundant in our local subdir-ccflags-y and can be dropped.
>
> Cc: Arnd Bergmann <arnd@arndb.de>
> Cc: Nick Desaulniers <ndesaulniers@google.com>
> Cc: Nathan Chancellor <nathan@kernel.org>
> Cc: Masahiro Yamada <masahiroy@kernel.org>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

I didn't carefully cross reference these specific flags so I provide
and ack rather than RB, but the logic in the description checks out
IMO.

Acked-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  drivers/gpu/drm/i915/Makefile | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefil=
e
> index dec78efa452a..623f81217442 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -5,22 +5,20 @@
>
>  # Add a set of useful warning flags and enable -Werror for CI to prevent
>  # trivial mistakes from creeping in. We have to do this piecemeal as we =
reject
> -# any patch that isn't warning clean, so turning on -Wall -Wextra (or W=
=3D1) we
> +# any patch that isn't warning clean, so turning on -Wextra (or W=3D1) w=
e
>  # need to filter out dubious warnings.  Still it is our interest
>  # to keep running locally with W=3D1 C=3D1 until we are completely clean=
.
>  #
> -# Note the danger in using -Wall -Wextra is that when CI updates gcc we
> +# Note the danger in using -Wextra is that when CI updates gcc we
>  # will most likely get a sudden build breakage... Hopefully we will fix
>  # new warnings before CI updates!
> -subdir-ccflags-y :=3D -Wall -Wextra
> -subdir-ccflags-y +=3D -Wno-format-security
> +subdir-ccflags-y :=3D -Wextra
>  subdir-ccflags-y +=3D -Wno-unused-parameter
>  subdir-ccflags-y +=3D -Wno-type-limits
>  subdir-ccflags-y +=3D -Wno-missing-field-initializers
>  subdir-ccflags-y +=3D -Wno-sign-compare
>  subdir-ccflags-y +=3D -Wno-shift-negative-value
>  subdir-ccflags-y +=3D $(call cc-option, -Wunused-but-set-variable)
> -subdir-ccflags-y +=3D $(call cc-disable-warning, frame-address)
>  subdir-ccflags-$(CONFIG_DRM_I915_WERROR) +=3D -Werror
>
>  # Fine grained warnings disable
> --
> 2.39.2
>


--=20
Thanks,
~Nick Desaulniers
