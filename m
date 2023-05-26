Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C3CF2712B12
	for <lists+intel-gfx@lfdr.de>; Fri, 26 May 2023 18:51:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23FB310E1D5;
	Fri, 26 May 2023 16:51:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf2c.google.com (mail-qv1-xf2c.google.com
 [IPv6:2607:f8b0:4864:20::f2c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 843C110E81E
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 May 2023 16:51:38 +0000 (UTC)
Received: by mail-qv1-xf2c.google.com with SMTP id
 6a1803df08f44-62606e67c0dso6615986d6.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 May 2023 09:51:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20221208; t=1685119897; x=1687711897;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=B0EcAbr12Tz3JaIJZGOfuX6nKlF7eHCwWePp0l1EnR0=;
 b=ZQAf4LUZzgLtNI1iuErVfrDk5RtwHd5YprqowAtUBbv7Kz6xOQfmdZi/1o5/n30lQE
 /tpfYmZDRVi4NoxJIuNvdO9aqoj4c9kwfIW1rEqzNszwi76gHAD+BGX2cV/Zd3s+NTMZ
 E4LKP1wu9x8pSzqzw57xxLCOhqzW+XL9oX/UQsKnneky5T2OfUWG5XoKACPfuYsoe8Uz
 OLVd8dGzB0x+YRg7KmLHG59ArbV8g7o7IlHkeiBGwa9sKUG7yGRVlrMm1uYGu+qlM1LL
 RGjTDUiCcBQEZsGuPruFUneQF+eACEbsKJDXp5xVByVgYkV3VN6qQGHsL9fuVdYTAyeH
 GMNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685119897; x=1687711897;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=B0EcAbr12Tz3JaIJZGOfuX6nKlF7eHCwWePp0l1EnR0=;
 b=E5j50wdOyegI+RMHhjMHxA01YoKZebJ9AP+BHR5tLhK3V2bxUVrTihewL0RDWq1CaN
 a5eF+P2H/C2B2W9rjqvc0rYEJ7Ryu91VrHww9uTlfslNTPAlYC2RI+PMB3mDJ9lTbCLn
 gKWQIubWMLQKS2uY8p0TZxSudqwLXUxTaDy4usPs5gxssLFliNv7FnBqlSSa0eBQs8sJ
 KsuhqQtb7vZ4Vp4QBXMn8zNb3nADpUwzYRdaBEC2Wr9GCOhn0Keghn2zTzK2Q3yCnTwK
 jlcfJNouBVpIAqcjRYCKHK0O1NZEoE6ypfT86w8K8I7aXP191StWnEI7iG/KIihxuBJB
 8zhg==
X-Gm-Message-State: AC+VfDyYhynWUAKEjtFy/IfXoI6xbmBSJ7hNHyvmjQEpfX4Sm7gwxEWU
 Z6ePIB9Z+uq11SCIIJzKZ2dvWW2cdUyfbCSCjSSTjQ==
X-Google-Smtp-Source: ACHHUZ7zNVT9E5+KkqBP+ZTyfqvDGI2d6bY2hRADL+qOK3dL+ftIEtrLh4N7cS11/o6IrVHRuLLfI56tUId+yu2rsJQ=
X-Received: by 2002:ad4:5ce6:0:b0:625:e039:5b03 with SMTP id
 iv6-20020ad45ce6000000b00625e0395b03mr3237442qvb.54.1685119897248; Fri, 26
 May 2023 09:51:37 -0700 (PDT)
MIME-Version: 1.0
References: <20230524-intel_async_flip_check_hw-implicit-fallthrough-v1-1-83de89e376a1@kernel.org>
 <CAKwvOd=jZJouuNMd3Rvc--goA0EXPHcf6cHXUA6W1kXJg2ay2w@mail.gmail.com>
 <20230524184103.GA324296@dev-arch.thelio-3990X>
 <CAKwvOdm=Zk8YhrPptN3k7UQo+1n7Ws=Qox=BwTR9bbjPJJYz8A@mail.gmail.com>
 <39da7e41-dd07-b8bc-57b9-19b05fdfbeac@tessares.net>
In-Reply-To: <39da7e41-dd07-b8bc-57b9-19b05fdfbeac@tessares.net>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Fri, 26 May 2023 09:51:26 -0700
Message-ID: <CAKwvOdkFxUU4AM9WbcRK9FYHq0cK2H-x4i5_x7oYiE7=DjghhQ@mail.gmail.com>
To: Matthieu Baerts <matthieu.baerts@tessares.net>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix clang -Wimplicit-fallthrough
 in intel_async_flip_check_hw()
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
Cc: llvm@lists.linux.dev, trix@redhat.com, intel-gfx@lists.freedesktop.org,
 patches@lists.linux.dev, Nathan Chancellor <nathan@kernel.org>,
 dri-devel@lists.freedesktop.org, rodrigo.vivi@intel.com,
 Joe Perches <joe@perches.com>, Naresh Kamboju <naresh.kamboju@linaro.org>,
 Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, May 25, 2023 at 1:30=E2=80=AFPM Matthieu Baerts
<matthieu.baerts@tessares.net> wrote:
>
> Hi Nick,
>
> On 24/05/2023 20:56, Nick Desaulniers wrote:
> > On Wed, May 24, 2023 at 11:41=E2=80=AFAM Nathan Chancellor <nathan@kern=
el.org> wrote:
> >>
> >> On Wed, May 24, 2023 at 11:32:32AM -0700, Nick Desaulniers wrote:
> >>> On Wed, May 24, 2023 at 8:38=E2=80=AFAM Nathan Chancellor <nathan@ker=
nel.org> wrote:
> >>>>
> >>>> Clang warns:
> >>>>
> >>>>   drivers/gpu/drm/i915/display/intel_display.c:6012:3: error: unanno=
tated fall-through between switch labels [-Werror,-Wimplicit-fallthrough]
> >>>>                   case I915_FORMAT_MOD_X_TILED:
> >>>>                   ^
> >>>>   drivers/gpu/drm/i915/display/intel_display.c:6012:3: note: insert =
'break;' to avoid fall-through
> >>>>                   case I915_FORMAT_MOD_X_TILED:
> >>>>                   ^
> >>>>                   break;
> >>>>   1 error generated.
> >>>>
> >>>> Clang is a little more pedantic than GCC, which does not warn when
> >>>> falling through to a case that is just break or return. Clang's vers=
ion
> >>>> is more in line with the kernel's own stance in deprecated.rst, whic=
h
> >>>> states that all switch/case blocks must end in either break,
> >>>> fallthrough, continue, goto, or return. Add the missing break to sil=
ence
> >>>> the warning.
> >>>>
> >>>> Fixes: 937859485aef ("drm/i915: Support Async Flip on Linear buffers=
")
> >>>> Reported-by: kernel test robot <lkp@intel.com>
> >>>> Closes: https://lore.kernel.org/202305241902.UvHtMoxa-lkp@intel.com/
> >>>> Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>
> >>>> Closes: https://lore.kernel.org/CA+G9fYv68V3ewK0Qj-syQj7qX-hQr0H1MFL=
=3DQFNuDoE_J2Zu-g@mail.gmail.com/
> >>>> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> >>>
> >>> Thanks for the patch! I've never seen the closes tag before, that's
> >>> new to me. Can you tell me more about it?
> >>
> >> It is new to me (at least in the context of the kernel) as well. I onl=
y
> >> used it over Link: because checkpatch.pl told me to:
> >>
> >> WARNING: Reported-by: should be immediately followed by Closes: with a=
 URL to the report
> >> #26:
> >> Reported-by: kernel test robot <lkp@intel.com>
> >> Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>
> >>
> >> WARNING: Reported-by: should be immediately followed by Closes: with a=
 URL to the report
> >> #27:
> >> Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>
> >> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> >>
> >> It was Link: for a bit but commit 44c31888098a ("checkpatch: allow
> >> Closes tags with links") changed it to Closes:. Looks odd to me but
> >> whatever the linter says I suppose.
> >>
> >> Thanks for the review!
> >>
> >> Cheers,
> >> Nathan
> >>
> >>> A few more tags
> >>>
> >>> Reported-by: Tom Rix <trix@redhat.com>
> >>> Link: https://lore.kernel.org/all/20230523125116.1669057-1-trix@redha=
t.com/
> >>> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> >
> > Ah then I guess my link tag should have been
> >
> > Closes: https://lore.kernel.org/all/20230523125116.1669057-1-trix@redha=
t.com/
> >
> > I hope the author of
> > commit 44c31888098a ("checkpatch: allow Closes tags with links")
> > has coordinated with the maintainer of b4, so that b4 recognizes Closes=
 tags.
> > b4 v0.12.2 does not pick up Closes tags.
>
> I'm sorry for the troubles caused by this series, that was not the
> intension.
>
> When looking at modifying b4 to support the Closes tag, I realised the
> Link tag from your previous message [1] was not taken as well. Was it
> just me?

oh? good find!

>
> If no, I just sent patches for b4, see [2]. I hope it will help!

appreciated! Thank you.

>
> Cheers,
> Matt
>
> [1]
> https://lore.kernel.org/all/CAKwvOd=3DjZJouuNMd3Rvc--goA0EXPHcf6cHXUA6W1k=
XJg2ay2w@mail.gmail.com/
> [2]
> https://lore.kernel.org/tools/20230525-closes-tags-v1-0-ed41b1773cb6@tess=
ares.net/T/
> --
> Tessares | Belgium | Hybrid Access Solutions
> www.tessares.net



--=20
Thanks,
~Nick Desaulniers
