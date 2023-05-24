Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3000670FE13
	for <lists+intel-gfx@lfdr.de>; Wed, 24 May 2023 20:56:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD5EA10E591;
	Wed, 24 May 2023 18:56:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf2f.google.com (mail-qv1-xf2f.google.com
 [IPv6:2607:f8b0:4864:20::f2f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A832B10E55F
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 May 2023 18:56:36 +0000 (UTC)
Received: by mail-qv1-xf2f.google.com with SMTP id
 6a1803df08f44-623852980dfso662296d6.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 May 2023 11:56:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20221208; t=1684954595; x=1687546595;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=dpY+Uavx0Kq7VSnuARorOD1ZPZnj6s713E2WjNKhMUI=;
 b=gQ1PVRsXOc5Y4ryq1QnaR9mQ+sj7vt/IGYIkFsxwhsc6fn/EsKciyJYDdR8jSsiqRr
 y8ST2F1+H60zvUi0qcxXRL2QAUlqW/9rrRfv61ZTZ9fifvS4aD4DdISFY3iWUw8+bSb+
 SnDZm+wCuAvWrEoKzAeVZmisZCBIL8Tv0Iju5jKy8eElkmRgmtq2oV0qJuN/yo1xqXzV
 X4DkmNOnX5f/azKfzuTsPNd/pLdYOyB4lC5J1oCuS6rlJkS9drTfJCx3xJXRo0tCOrqu
 PXoyVlQIRn6dNZO8UpHRpxjdmDz5I8zzOAoKjfwisC792KYhm4EIy2vBwa+iePWZRUbr
 LI7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684954595; x=1687546595;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=dpY+Uavx0Kq7VSnuARorOD1ZPZnj6s713E2WjNKhMUI=;
 b=NRu5QxsqAR1N9p51HR7pvFKNNNsmQUaKSfJtJ4bd7ip+wHQPHjFadcjPWP5SjcgQEV
 zNt45GO1MjUQ1iA/xuTIg2cLOAsrn0IiSl3Iyz/LNYVArRmn26GBvCIvqCOf/WoS7SUE
 JNfE+6kaBinQvbe/w9ikJBOLa6z86jRS2Kv1Kkjp06F8y0We/PM/yfcPWxQpEsMpTyq/
 UNyz5dYR3FiDhr/5tOQwQa4LEKaFJm70+SHGDRL9wxvRYJwRg8m1PGF0YdVh2QDNvz6V
 iIuIHe1WSRawoFILtUh1IYe4Q1OZUhjiIX4zIG85SDm6TUVaGaLio5yZEYe9Jt1HeLz0
 /2tA==
X-Gm-Message-State: AC+VfDzxzspIVRmHTWW/0M8Wm61wRzahXcXG+8gwOEzEGZuicEbDYY9m
 uyX/msms8BRD+O8s+9q6AWQAtpl4cu5VJftJPM116A==
X-Google-Smtp-Source: ACHHUZ5h9HBkCUq/qZk7g08oCaDFCrEaad+HilNce/uVv659H4piux/9Tmz70lCHoZ+PHFeUzO9JmawjBItvJDVHMNM=
X-Received: by 2002:ad4:5c4d:0:b0:5ef:8b22:699e with SMTP id
 a13-20020ad45c4d000000b005ef8b22699emr35851016qva.14.1684954595053; Wed, 24
 May 2023 11:56:35 -0700 (PDT)
MIME-Version: 1.0
References: <20230524-intel_async_flip_check_hw-implicit-fallthrough-v1-1-83de89e376a1@kernel.org>
 <CAKwvOd=jZJouuNMd3Rvc--goA0EXPHcf6cHXUA6W1kXJg2ay2w@mail.gmail.com>
 <20230524184103.GA324296@dev-arch.thelio-3990X>
In-Reply-To: <20230524184103.GA324296@dev-arch.thelio-3990X>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Wed, 24 May 2023 11:56:24 -0700
Message-ID: <CAKwvOdm=Zk8YhrPptN3k7UQo+1n7Ws=Qox=BwTR9bbjPJJYz8A@mail.gmail.com>
To: Nathan Chancellor <nathan@kernel.org>
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
 patches@lists.linux.dev, dri-devel@lists.freedesktop.org,
 rodrigo.vivi@intel.com, Joe Perches <joe@perches.com>,
 matthieu.baerts@tessares.net, Naresh Kamboju <naresh.kamboju@linaro.org>,
 Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, May 24, 2023 at 11:41=E2=80=AFAM Nathan Chancellor <nathan@kernel.o=
rg> wrote:
>
> On Wed, May 24, 2023 at 11:32:32AM -0700, Nick Desaulniers wrote:
> > On Wed, May 24, 2023 at 8:38=E2=80=AFAM Nathan Chancellor <nathan@kerne=
l.org> wrote:
> > >
> > > Clang warns:
> > >
> > >   drivers/gpu/drm/i915/display/intel_display.c:6012:3: error: unannot=
ated fall-through between switch labels [-Werror,-Wimplicit-fallthrough]
> > >                   case I915_FORMAT_MOD_X_TILED:
> > >                   ^
> > >   drivers/gpu/drm/i915/display/intel_display.c:6012:3: note: insert '=
break;' to avoid fall-through
> > >                   case I915_FORMAT_MOD_X_TILED:
> > >                   ^
> > >                   break;
> > >   1 error generated.
> > >
> > > Clang is a little more pedantic than GCC, which does not warn when
> > > falling through to a case that is just break or return. Clang's versi=
on
> > > is more in line with the kernel's own stance in deprecated.rst, which
> > > states that all switch/case blocks must end in either break,
> > > fallthrough, continue, goto, or return. Add the missing break to sile=
nce
> > > the warning.
> > >
> > > Fixes: 937859485aef ("drm/i915: Support Async Flip on Linear buffers"=
)
> > > Reported-by: kernel test robot <lkp@intel.com>
> > > Closes: https://lore.kernel.org/202305241902.UvHtMoxa-lkp@intel.com/
> > > Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>
> > > Closes: https://lore.kernel.org/CA+G9fYv68V3ewK0Qj-syQj7qX-hQr0H1MFL=
=3DQFNuDoE_J2Zu-g@mail.gmail.com/
> > > Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> >
> > Thanks for the patch! I've never seen the closes tag before, that's
> > new to me. Can you tell me more about it?
>
> It is new to me (at least in the context of the kernel) as well. I only
> used it over Link: because checkpatch.pl told me to:
>
> WARNING: Reported-by: should be immediately followed by Closes: with a UR=
L to the report
> #26:
> Reported-by: kernel test robot <lkp@intel.com>
> Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>
>
> WARNING: Reported-by: should be immediately followed by Closes: with a UR=
L to the report
> #27:
> Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
>
> It was Link: for a bit but commit 44c31888098a ("checkpatch: allow
> Closes tags with links") changed it to Closes:. Looks odd to me but
> whatever the linter says I suppose.
>
> Thanks for the review!
>
> Cheers,
> Nathan
>
> > A few more tags
> >
> > Reported-by: Tom Rix <trix@redhat.com>
> > Link: https://lore.kernel.org/all/20230523125116.1669057-1-trix@redhat.=
com/
> > Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

Ah then I guess my link tag should have been

Closes: https://lore.kernel.org/all/20230523125116.1669057-1-trix@redhat.co=
m/

I hope the author of
commit 44c31888098a ("checkpatch: allow Closes tags with links")
has coordinated with the maintainer of b4, so that b4 recognizes Closes tag=
s.
b4 v0.12.2 does not pick up Closes tags.
--=20
Thanks,
~Nick Desaulniers
