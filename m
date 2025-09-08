Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90175B48F65
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Sep 2025 15:26:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A17F10E514;
	Mon,  8 Sep 2025 13:26:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Jrkr2F7Q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com
 [209.85.215.177])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3F7110E514;
 Mon,  8 Sep 2025 13:26:24 +0000 (UTC)
Received: by mail-pg1-f177.google.com with SMTP id
 41be03b00d2f7-b49b56a3f27so2665287a12.1; 
 Mon, 08 Sep 2025 06:26:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1757337984; x=1757942784; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=vODOFnOQDXd0OVdRcD+nKrJ2F1axdUPpJnSGv/RIfyE=;
 b=Jrkr2F7QuxHoXhrAylSJFhtsPMfJt6p7CT27kxmlyYKTBQNUXmxjBEFHeS0uCVnU0n
 6WXE2A0pszUPz4jVRHoH/qJcL589tUOS82neGt+4o833Mp44uiIh12kjyOuOuATl6VyB
 7GVW+prEYWYqHBEJTTuBL2YOAnzEEYzxioEaiT47hUBb3Y9pPBVTKiA2oleargLwmMcB
 yYIak87ivP8qjLeArWsqoSumgs8gXs5NBp8opvfgfr77p4q4278l6yHGT9buyvFBJCkn
 bZvmyFTV22DUIyOWRbP2rp0J/7Setj0/QVNIMY9UVVccl8PHX0CXcjRketj323vX+Lpf
 6z1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1757337984; x=1757942784;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=vODOFnOQDXd0OVdRcD+nKrJ2F1axdUPpJnSGv/RIfyE=;
 b=ICJuPEbJ6r+h35a0tbbQFA3xovp79FofaJ0qrHe05SGQm7NAMDabV6tW/4y8lCcWkP
 J91GcNY30YQ8ywhTf/ppTSE2AsN77fVVQe1gCdsm2AfEFT1e+ddahCCj4CmAOE9aJetd
 3G24ASr1uiGFN6S6bbc8xyyAepfdAFX52Cftd9sVGg8nmJZCcp1UZKePe+AcplkWXZuw
 m02XldrEDjgXviUw+TKfTmZtfE6k1PVK8fhLZ36KBetqGV6D6qIqdPZJGZJQStmIeEk4
 4a/Hxe2jxoJkmv2PVkCvrpujNTBdgXbuV08BwmUm9TmFZzA9cubrx+OcAcTwOdmJCJu8
 n1AA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWos+jHnMX15fpP8NepbPf/ld4obFtXUB12ttEYUfl+d5GapJPG0OGvIffeVbbTxTIdC0ikA2lk1NU=@lists.freedesktop.org,
 AJvYcCXci5h7aCW2828CPqpbaXiL+vu1V44SM8RxYUdeYmobHkvl07aCanQ1ChAQATqHVlQq5HyGBxcFx7o=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yy66t446eevtdd7VivoYQTuH5oDnitfHIIQwqdUTrhiQQA8pxAb
 poM2/s2H4fi6lcELh7vimJSKwzNrbxdi52OBh10obVTz6dqySlKII8U6LrEG0devdUy0phmKGyc
 3EuH53DuHABfhR901mXhyBdlXwOl9ejk=
X-Gm-Gg: ASbGncu7gdbgLhs6kFDkM7R6YxmvSSE4TOHB6mwZnzAjTlpFEer2fD+j9aaiejQWBdh
 LBFDLCcRgr2DSw+Xpjx2XuLaATd/7pwHxTTQpg7JAFXfucaRuc5FKy7y5Kwpp/qXBBj1R1YdUxL
 mzZ3ZYTaw9OTTpaZt8Z5j9l1HHtilgxGHlGyQVx5aW42h7uzvAn05BrTv6L2/i5GAB6if/sP4L6
 LUgfQTwNX7kQUY3xyZV
X-Google-Smtp-Source: AGHT+IFUNamgXNm69youoYWvDZZz27BVbVfgQ8OIuJvpwQc5r6RRshTIToxrzbqMvbtNbjpj2soyselSl8PsynZn204=
X-Received: by 2002:a17:90b:4e83:b0:32b:b514:3912 with SMTP id
 98e67ed59e1d1-32d43ee5afamr10629436a91.2.1757337984068; Mon, 08 Sep 2025
 06:26:24 -0700 (PDT)
MIME-Version: 1.0
References: <20250903170821.310143-1-matthew.s.atwood@intel.com>
 <175700478100.122246.8257747418250302965@intel.com>
 <aLnEtkH2axNnG3td@msatwood-mobl>
 <CAJ=qYWRSXQAUaYsJb1h+JADkKmcNuhZmgxwCBJAqdxRZviWUXg@mail.gmail.com>
 <44f40d56b53c2aa4be7aa605247373c693b1ce4f@intel.com>
In-Reply-To: <44f40d56b53c2aa4be7aa605247373c693b1ce4f@intel.com>
From: =?UTF-8?Q?Juha=2DPekka_Heikkil=C3=A4?= <juhapekka.heikkila@gmail.com>
Date: Mon, 8 Sep 2025 16:26:12 +0300
X-Gm-Features: Ac12FXyzwPgHPq-AHN47CIzoTWftbatoE70T3LXBQic_pXCbqJTupUWi7kOD8u0
Message-ID: <CAJ=qYWQ5NvouNHnXWA0aD02h69t2GYEq8O54ipgjM_4df6z6ZA@mail.gmail.com>
Subject: Re: [PATCH] drm/i915/display: Use DISPLAY_VER over GRAPHICS_VER
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Matt Atwood <matthew.s.atwood@intel.com>,
 Gustavo Sousa <gustavo.sousa@intel.com>, 
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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

I tried to look but can't find any reason why here was needed
GRAPHICS_VER(), probably was something that's not anymore. In any case
as Jani wrote GRAPHICS_VER() need to be removed from display code and
if something breaks from this I think it will come to my list of
things to fix..

Reviewed-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>

On Mon, Sep 8, 2025 at 1:29=E2=80=AFPM Jani Nikula <jani.nikula@linux.intel=
.com> wrote:
>
> On Sun, 07 Sep 2025, Juha-Pekka Heikkil=C3=A4 <juhapekka.heikkila@gmail.c=
om> wrote:
> > On Thu, Sep 4, 2025 at 7:56=E2=80=AFPM Matt Atwood <matthew.s.atwood@in=
tel.com> wrote:
> >>
> >> On Thu, Sep 04, 2025 at 01:53:01PM -0300, Gustavo Sousa wrote:
> >> > Quoting Matt Atwood (2025-09-03 14:08:21-03:00)
> >> > >The checks in plane_has_modifier() should check against display ver=
sion
> >> > >instead of graphics version.
> >> > >
> >> > >Bspec: 67165, 70815
> >> > >
> >> > >Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> >> > >---
> >> > > drivers/gpu/drm/i915/display/intel_fb.c | 4 ++--
> >> > > 1 file changed, 2 insertions(+), 2 deletions(-)
> >> > >
> >> > >diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/=
drm/i915/display/intel_fb.c
> >> > >index b210c3250501..1e4cee857d7b 100644
> >> > >--- a/drivers/gpu/drm/i915/display/intel_fb.c
> >> > >+++ b/drivers/gpu/drm/i915/display/intel_fb.c
> >> > >@@ -563,11 +563,11 @@ static bool plane_has_modifier(struct intel_d=
isplay *display,
> >> > >                 return false;
> >> > >
> >> > >         if (md->modifier =3D=3D I915_FORMAT_MOD_4_TILED_BMG_CCS &&
> >> > >-            (GRAPHICS_VER(i915) < 20 || !display->platform.dgfx))
> >> > >+            (DISPLAY_VER(display) < 14 || !display->platform.dgfx)=
)
> >> > >                 return false;
> >> > >
> >> > >         if (md->modifier =3D=3D I915_FORMAT_MOD_4_TILED_LNL_CCS &&
> >> > >-            (GRAPHICS_VER(i915) < 20 || display->platform.dgfx))
> >> > >+            (DISPLAY_VER(display) < 20 || display->platform.dgfx))
> >> > >                 return false;
> >> >
> >> > Hm... Maybe using GRAPHICS_VER() here was intentional? The checks on
> >> > display version are already covered by the entries in intel_modifier=
s.
> >> >
> >> > If we look at commit fca0abb23447 ("drm/i915/display: allow creation=
 of
> >> > Xe2 ccs framebuffers"), we'll see that the respective entries were a=
dded
> >> > to intel_modifiers *and* the checks on GRAPHICS_VER() were added as
> >> > well. Perhaps there are indeed restrictions on the graphics side to =
be
> >> > able to use the format?
> >> >
> >> > --
> >> > Gustavo Sousa
> >> Honestly, I tried looking for reasons. I couldn't find anything in the
> >> documentation to support. I decided to send upstream to see if it brok=
e
> >> stuff to not do the checks that way. CI seems very clean. Hoping Jani =
or
> >> Juha-Pekka will chime in if it is indeed an issue.
> >
> > Using GRAPHICS_VER here was intentional. Jani didn't like it but these
> > xe2 ccs don't follow display versioning but gt versioning.
> >
> > Proposed change look ok but I'll need to dig in to documentation
> > before I can say for sure. I remember we had discussion about this
> > with Jani but can't remember what convinced Jani I needed to use
> > GRAPHICS_VER at that time.
>
> I think I just took your word for it.
>
> In the long run, we can't have GRAPHICS_VER() checks in display
> code. Either this needs to be converted to DISPLAY_VER(), or, if that's
> not right, we need to add a way to ask for the *feature* support from
> i915/xe core. That means higher level semantics than just checking for
> graphics version.
>
> BR,
> Jani.
>
>
>
>
>
> >
> > /Juha-Pekka
> >
> >> >
> >> > >
> >> > >         return true;
> >> > >--
> >> > >2.50.1
> >> > >
>
> --
> Jani Nikula, Intel
