Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A6B87C00A4
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 17:46:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CB9E10E39E;
	Tue, 10 Oct 2023 15:46:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com
 [IPv6:2a00:1450:4864:20::334])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C809310E399
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 15:46:35 +0000 (UTC)
Received: by mail-wm1-x334.google.com with SMTP id
 5b1f17b1804b1-40566f89f6eso59250655e9.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 08:46:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1696952794; x=1697557594;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=OsRME75SktuOynY77PzFb87AxR5zi2B5TSAOuz/xU6Y=;
 b=ubQCn+9+HBbxm2ghUnKaF/vW0AN4xYQIKmQbLLlxY3NY6Xvc2JQFwpf8S3qMnSXmYu
 Rh6XPbTLeK+adfXHH4wqdrDVxgC10W84rNtNUROa/1gDvZa4AmeefwdVwrol/FR8Xqwx
 fGdrUuxwSyFunLqm2vM7EHWOq1rqZGw0PXJBBVJgCSWS90juiEPEt6b01XfFSytzOJRa
 rcVjduLGL3rFY9pdOSLWmGebm86XUygypMHwt2BD0X8AIc55BDRXO7S14FwwelrR7KPy
 u7AvCeBRSbVYOxgZ5anSOd4i5p5Wa8qNONBs/ewP4PNUKK/AJ1h8fMG2bHat9lfHhggY
 51lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696952794; x=1697557594;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=OsRME75SktuOynY77PzFb87AxR5zi2B5TSAOuz/xU6Y=;
 b=Y9Uz1pKlLtortTRWTvLnHRnj1cSUcMuBcRqsQOzxomhxOWH4xv3Z6qpPgIlmo4dKWz
 GKxPLaDAf41cv6URqJ2RGF1rHKIGFTzo9cdW6J1J694bT3MIMxSLwetPjNLfB0y/CQ1O
 4z45/ajxcVkoW0Poe2OdxnmPsDPLeQd36hArKxnxKXYkt9RDN0Wvb0DPd2+fwVOHbWYy
 2o45wJDdp7xnmNcSzOA9Kp1SlRFeJwiJEtFRGn6o5yFl2vJvmtf9Kl7I41vfoX6M3aTJ
 5ygUDHlpAja2QOqHbIecKr8vgrE1rRcniB63PRcWhPqW6dGApc7mfePJeEfzRzgQIGUN
 G52g==
X-Gm-Message-State: AOJu0YxX+OMNvDVifu9bRICpkznB14o6OurIcLaKCv6vR04vVZqiAC+8
 igYJ/nDZbxbyNcc7GTWGXF9H13Pdt16MMQuh4225EA==
X-Google-Smtp-Source: AGHT+IFduVmWdQfFCzBsYfMUfgVSOUDKPhtHViKnEgQHh0lN9dk88Ktq93jhS9gBDh5GXqpR4v/Qc0PrVp5QFHxz5Zs=
X-Received: by 2002:a05:600c:2247:b0:405:359e:ee43 with SMTP id
 a7-20020a05600c224700b00405359eee43mr17753164wmm.1.1696952793888; Tue, 10 Oct
 2023 08:46:33 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1696595500.git.jani.nikula@intel.com>
 <48f11648d7169687e7242e4c9b4694a0c03c4263.1696595500.git.jani.nikula@intel.com>
 <CAK7LNAT6MzbcjR7KZMEFUCHkq+WXgTB=Qmp_VD4UC7TvMg+dMg@mail.gmail.com>
 <20231009163837.GA1153868@dev-arch.thelio-3990X> <87o7h66fti.fsf@intel.com>
 <87h6my6evg.fsf@intel.com>
In-Reply-To: <87h6my6evg.fsf@intel.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Tue, 10 Oct 2023 08:46:22 -0700
Message-ID: <CAKwvOdk-h_Bvz9iFN=fMMn14A=8iwoPgSS27iZVmy4auTXCYvA@mail.gmail.com>
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
Cc: Nathan Chancellor <nathan@kernel.org>,
 Masahiro Yamada <masahiroy@kernel.org>, intel-gfx@lists.freedesktop.org,
 Arnd Bergmann <arnd@arndb.de>, linux-kbuild@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Oct 10, 2023 at 1:50=E2=80=AFAM Jani Nikula <jani.nikula@intel.com>=
 wrote:
>
> On Tue, 10 Oct 2023, Jani Nikula <jani.nikula@intel.com> wrote:
> > On Mon, 09 Oct 2023, Nathan Chancellor <nathan@kernel.org> wrote:
> >> On Sun, Oct 08, 2023 at 12:28:46AM +0900, Masahiro Yamada wrote:
> >>> On Fri, Oct 6, 2023 at 9:35=E2=80=AFPM Jani Nikula <jani.nikula@intel=
.com> wrote:
> >>> >
> >>> > The kernel top level Makefile, and recently scripts/Makefile.extraw=
arn,
> >>> > have included -Wall, and the disables -Wno-format-security and
> >>> > $(call cc-disable-warning,frame-address,) for a very long time. The=
y're
> >>> > redundant in our local subdir-ccflags-y and can be dropped.
> >>> >
> >>> > Cc: Arnd Bergmann <arnd@arndb.de>
> >>> > Cc: Nick Desaulniers <ndesaulniers@google.com>
> >>> > Cc: Nathan Chancellor <nathan@kernel.org>
> >>> > Cc: Masahiro Yamada <masahiroy@kernel.org>
> >>> > Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> >>>
> >>>
> >>> I made a similar suggestion in the past
> >>> https://lore.kernel.org/dri-devel/20190515043753.9853-1-yamada.masahi=
ro@socionext.com/
> >>>
> >>> So, I am glad that Intel has decided to de-duplicate the flags.
> >>>
> >>>
> >>>
> >>> I think you can drop more flags.
> >>>
> >>> For example,
> >>>
> >>>  subdir-ccflags-y +=3D -Wno-sign-compare
> >>>
> >>>
> >>> It is set by scripts/Makefile.extrawarn
> >>> unless W=3D3 is passed.
> >>>
> >>>
> >>> If W=3D3 is set by a user, -Wsign-compare should be warned
> >>> as it is the user's request.
> >>>
> >>>
> >>> drivers/gpu/drm/i915/Makefile negates W=3D3.
> >>> There is no good reason to do so.
> >>>
> >>>
> >>> Same applied to
> >>>
> >>>
> >>> subdir-ccflags-y +=3D -Wno-shift-negative-value
> >>
> >> As I point out in my review of the second patch [1], I am not sure the=
se
> >> should be dropped because -Wextra turns these warnings back on, at lea=
st
> >> for clang according to this build report [2] and my own testing, so th=
ey
> >> need to be disabled again.
> >
> > Yeah. The focus is on enabling W=3D1 warnings by default for i915. I ge=
t
> > that the disables we have to add to achieve that also disable some W=3D=
2
> > and W=3D3 warnings. But taking all of that into account requires
> > duplicating even more of Makefile.extrawarn (checking for warning
> > levels, maintaining parity with the different levels, etc.).
> >
> > I guess we could check if KBUILD_EXTRA_WARN does not have any of 1, 2,
> > or 3, but very few places outside of the build system look at
> > KBUILD_EXTRA_WARN, so feels wrong.
>
> This is the simplest I could think of:
>
> # The following turn off the warnings enabled by -Wextra
> ifeq ($(findstring 2, $(KBUILD_EXTRA_WARN)),)
> KBUILD_CFLAGS +=3D -Wno-missing-field-initializers
> KBUILD_CFLAGS +=3D -Wno-type-limits
> KBUILD_CFLAGS +=3D -Wno-shift-negative-value
> endif
> ifeq ($(findstring 3, $(KBUILD_EXTRA_WARN)),)
> KBUILD_CFLAGS +=3D -Wno-sign-compare
> endif
>
> Masahiro, I'd like to get your feedback on which to choose,
> unconditionally silencing the W=3D2/W=3D3 warnings for i915, or looking a=
t
> KBUILD_EXTRA_WARN.

KBUILD_EXTRA_WARN looks better to me; otherwise they would be hidden
forever (or nearly).  Suffer some duplication, w/e.

--=20
Thanks,
~Nick Desaulniers
