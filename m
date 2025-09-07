Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E31F9B47D04
	for <lists+intel-gfx@lfdr.de>; Sun,  7 Sep 2025 21:30:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0672610E1E3;
	Sun,  7 Sep 2025 19:30:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="e+ab8eIn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com
 [209.85.216.50])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C68BB10E06A;
 Sun,  7 Sep 2025 19:30:48 +0000 (UTC)
Received: by mail-pj1-f50.google.com with SMTP id
 98e67ed59e1d1-32326e8005bso3377197a91.3; 
 Sun, 07 Sep 2025 12:30:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1757273448; x=1757878248; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=A4j4G1+fc5WNtV81PPOigTWKeUF/QO+x9urN7p/f+fc=;
 b=e+ab8eInihC74JohDFrOGMuiuxhKA7ijuvJTfIUcpspinSXK7RsS5MXQF0JjufmkE/
 pqz1dhT14eEO74LxmQqSjGONKWu1Sr1EHMfKQILQ3iyZykVirSNn9IZtk9+MkMPxhjlR
 Y1O8+dR7e+NHcHcVCmmhdVt6lWuIL/Twzl9d3FfdqOiDlmmtF9kIOaVub5ERZOG36tBd
 vYR/XQOPg/VyRoseH5h76SnAGKXf3keRLlvZ8FxJB6OfXgDALyHj5q3WzA2/XAqeBaI1
 gz6JNyqd80iR9lcJPaoY7lwfirjGAYwiflaAxz5WXj69zTj59xAMR97vyMlFK1G7Q1ab
 5ZIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1757273448; x=1757878248;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=A4j4G1+fc5WNtV81PPOigTWKeUF/QO+x9urN7p/f+fc=;
 b=I3u4YEmHngw/NO/Gt7RJLH3eY1p41HlVHfbFlx4nxAyD/Sn+Phzv+A8UYDjKTv3hdN
 tpAcpw4Qfa9zNUgFmMht99QI6xIqiMjeJ8zybZWsgky+85cwcQAz2RDEE19Dh/yovUXh
 pkQvKFoZ4GKz7w+FmT4SSnO2RJHVqzwWTFCTkqp3wT3/AuVMxp4iYPNVhFtxJSRWzWSS
 HpB+aH8cawubydtFIkKr40O/MOO1jMXpPGaedFUL17DH2yLMx6FoBB3vqbgGaX5r7o7L
 +iNLw7hzt+hLcrqc4gcxyjlnY10X74BK7eHwARinsv73O9mG2qWsSFZ1RIj6+9s7EIQc
 4lgQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCU1t/O8eK51c6YP22Gt/s0wivJQdOaTIAZ60CxTaTV/HI62M+hSC1df4YFYF4ouuV81vRblkxPUKBQ=@lists.freedesktop.org,
 AJvYcCWR9zxPQogBPl022hSH4mewOrKmcLpDQwCjlF/oY2jqPP8s1pUc+PS1cBK9TgHpZqzyebQTAzd32/Q=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yx5ZIUn/9fPWIo0ZPv8Uz1VdHYM8xSh3s7mm6s1pNkU1HUuZ+A3
 k2b9WHSbQjdAapqPS1M9hc/UAzKx0U04BFHi23Ro7ys1fHCiiBpVFJFhkUzx+sB6024J3/41FHx
 hegoTAP+ms0MplBh36rRX01QgRePza7A=
X-Gm-Gg: ASbGnctrcGRLsRzq3RUCyfssR/Dq6ZvlY5Z3sY2vjHv/EYBq2Q69pTt+fPQjLbyliIY
 G6ztlpKDstNBGga2YVsqUhtO9VyybsCa+dHhjBF0ps9svNZRlgX/VN/DwRZ6wX278feq5ZUYmHX
 EQeuEw668KbABAeed3XvTsexFxhaUfyV4IBBuXHEGFNr7U0MyrY5kggISXSboIc0j0uG27Abn0o
 gwyLlwfMaNyiA9wQxY=
X-Google-Smtp-Source: AGHT+IH/Ax47ASzGD9qSgxCDCwyNVT+m+JtGgswW9ii9KWJkx/eCU6iSxG2wvNbU3E+SMZBpKEDiU0mHlJgev0KrQVQ=
X-Received: by 2002:a17:90b:2d81:b0:32b:6eed:d203 with SMTP id
 98e67ed59e1d1-32d43f77556mr8017587a91.24.1757273448181; Sun, 07 Sep 2025
 12:30:48 -0700 (PDT)
MIME-Version: 1.0
References: <20250903170821.310143-1-matthew.s.atwood@intel.com>
 <175700478100.122246.8257747418250302965@intel.com>
 <aLnEtkH2axNnG3td@msatwood-mobl>
In-Reply-To: <aLnEtkH2axNnG3td@msatwood-mobl>
From: =?UTF-8?Q?Juha=2DPekka_Heikkil=C3=A4?= <juhapekka.heikkila@gmail.com>
Date: Sun, 7 Sep 2025 22:30:37 +0300
X-Gm-Features: Ac12FXwXDzfWJaWGOtlzVLplkunY7oa5BHwizM3nwlqnsEXXciprkAeujB05wbA
Message-ID: <CAJ=qYWRSXQAUaYsJb1h+JADkKmcNuhZmgxwCBJAqdxRZviWUXg@mail.gmail.com>
Subject: Re: [PATCH] drm/i915/display: Use DISPLAY_VER over GRAPHICS_VER
To: Matt Atwood <matthew.s.atwood@intel.com>
Cc: Gustavo Sousa <gustavo.sousa@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com
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

On Thu, Sep 4, 2025 at 7:56=E2=80=AFPM Matt Atwood <matthew.s.atwood@intel.=
com> wrote:
>
> On Thu, Sep 04, 2025 at 01:53:01PM -0300, Gustavo Sousa wrote:
> > Quoting Matt Atwood (2025-09-03 14:08:21-03:00)
> > >The checks in plane_has_modifier() should check against display versio=
n
> > >instead of graphics version.
> > >
> > >Bspec: 67165, 70815
> > >
> > >Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> > >---
> > > drivers/gpu/drm/i915/display/intel_fb.c | 4 ++--
> > > 1 file changed, 2 insertions(+), 2 deletions(-)
> > >
> > >diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm=
/i915/display/intel_fb.c
> > >index b210c3250501..1e4cee857d7b 100644
> > >--- a/drivers/gpu/drm/i915/display/intel_fb.c
> > >+++ b/drivers/gpu/drm/i915/display/intel_fb.c
> > >@@ -563,11 +563,11 @@ static bool plane_has_modifier(struct intel_disp=
lay *display,
> > >                 return false;
> > >
> > >         if (md->modifier =3D=3D I915_FORMAT_MOD_4_TILED_BMG_CCS &&
> > >-            (GRAPHICS_VER(i915) < 20 || !display->platform.dgfx))
> > >+            (DISPLAY_VER(display) < 14 || !display->platform.dgfx))
> > >                 return false;
> > >
> > >         if (md->modifier =3D=3D I915_FORMAT_MOD_4_TILED_LNL_CCS &&
> > >-            (GRAPHICS_VER(i915) < 20 || display->platform.dgfx))
> > >+            (DISPLAY_VER(display) < 20 || display->platform.dgfx))
> > >                 return false;
> >
> > Hm... Maybe using GRAPHICS_VER() here was intentional? The checks on
> > display version are already covered by the entries in intel_modifiers.
> >
> > If we look at commit fca0abb23447 ("drm/i915/display: allow creation of
> > Xe2 ccs framebuffers"), we'll see that the respective entries were adde=
d
> > to intel_modifiers *and* the checks on GRAPHICS_VER() were added as
> > well. Perhaps there are indeed restrictions on the graphics side to be
> > able to use the format?
> >
> > --
> > Gustavo Sousa
> Honestly, I tried looking for reasons. I couldn't find anything in the
> documentation to support. I decided to send upstream to see if it broke
> stuff to not do the checks that way. CI seems very clean. Hoping Jani or
> Juha-Pekka will chime in if it is indeed an issue.

Using GRAPHICS_VER here was intentional. Jani didn't like it but these
xe2 ccs don't follow display versioning but gt versioning.

Proposed change look ok but I'll need to dig in to documentation
before I can say for sure. I remember we had discussion about this
with Jani but can't remember what convinced Jani I needed to use
GRAPHICS_VER at that time.

/Juha-Pekka

> >
> > >
> > >         return true;
> > >--
> > >2.50.1
> > >
