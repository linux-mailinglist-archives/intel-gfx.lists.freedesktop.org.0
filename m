Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90A768461D4
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Feb 2024 21:16:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1241010ECE8;
	Thu,  1 Feb 2024 20:16:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=chromium.org header.i=@chromium.org header.b="G7klcgzH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com
 [209.85.208.45])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1906510ECE5
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Feb 2024 20:16:24 +0000 (UTC)
Received: by mail-ed1-f45.google.com with SMTP id
 4fb4d7f45d1cf-55f50cf2021so1881898a12.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 01 Feb 2024 12:16:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1706818582; x=1707423382;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=e7AeeeybYNuJhIi/dnmxdeVTMUWGSsUnvpSx/KjxcEM=;
 b=G7klcgzHHudvg6AhSjRGcHRTaq+NoaZLvmfMYxkMDi514To4iNYnfRmq1GBHpacJYR
 sP+DNuTtv0SJuopo3F1ejVlbRBDPbvaMwxHv0aUsMSdfVA5blcObF9Wd8e4t5Vv9Dg2M
 WYV+845VhlFZZKU23AkZ+JGOZMtZRZg2Cfytg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706818582; x=1707423382;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=e7AeeeybYNuJhIi/dnmxdeVTMUWGSsUnvpSx/KjxcEM=;
 b=Vqe/z9FxanTeMpFV6E0Om3yjmiIz66TRlT4n0YZNpkLbi9XyVBmiC2GJg8MngXgOMm
 UW5eK+PzAr3Xt/+o1yPCRZ63+lJW6PItvkwko0+Fo6/EOw76GxNO6B5vy+iG+RDeVdVu
 rLiJLSm5MHp9XPXd2zVu7wMOSPTIEzbxz/C3WKonRvzSuwZZypchkBA3ScuyjzJ7RmG3
 3yJG0QCIOJijK73QtV/oANtnOBG6JvI1nqFNae+Xuqg/I+n99P2C5N8MQAEW3adP8UsN
 O46f+QSpF9bX6PaqY61bR7yBQ2VI3f6PJC5KGOCKu89xi9OAFrIzM8D7xGGWH+5w0Xsx
 FxXA==
X-Gm-Message-State: AOJu0YzibM3ZG8rcEf1EDYSyBUUEWEL2DXN0zK1f1VBy9Bu3eq56Ne8N
 7PgKXRNthi0TrIiGt8wr8gG5pKyN1LJNu+fibq3FmtAzEwT8rldMwXVMpKXc0TQJl04eokAG/D7
 ARvZJ8e7X2+nwxU1BtF51T989lHm7Rf+itDLl
X-Google-Smtp-Source: AGHT+IGJKrAjSdRmOMlfJ776iVdr1+xiiAhp7JlTWrHBK5LPWwtrfLfvy6LSnzHP3eUkRp5irKIcsJ+jdGwrqLXCbMs=
X-Received: by 2002:a05:6402:34cc:b0:55f:a7d6:fd61 with SMTP id
 w12-20020a05640234cc00b0055fa7d6fd61mr3391772edc.26.1706818582175; Thu, 01
 Feb 2024 12:16:22 -0800 (PST)
MIME-Version: 1.0
References: <20240131211909.622419-1-navaremanasi@chromium.org>
 <87ttmsh7fn.fsf@intel.com>
In-Reply-To: <87ttmsh7fn.fsf@intel.com>
From: Manasi Navare <navaremanasi@chromium.org>
Date: Thu, 1 Feb 2024 12:16:11 -0800
Message-ID: <CAE72mN=xxBKGyU++pmez3fGkvuY5o8rz5OHAirxpUC_ksT3dBw@mail.gmail.com>
Subject: Re: [PATCH] drm/i915/display/vdsc: Fix the macro that calculates
 DSCC_/DSCA_ PPS reg address
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, Suraj Kandpal <suraj.kandpal@intel.com>, 
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Animesh Manna <animesh.manna@intel.com>, 
 Sean Paul <sean@poorly.run>, Drew Davenport <ddavenport@chromium.org>
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

Thanks a lot Jani for your feedback and review. Please find my
comments below inline,

On Thu, Feb 1, 2024 at 1:15=E2=80=AFAM Jani Nikula <jani.nikula@linux.intel=
.com> wrote:
>
>
> Please use "drm/i915/dsc: " as the subject prefix.

Okay I will change this

>
> On Wed, 31 Jan 2024, Manasi Navare <navaremanasi@chromium.org> wrote:
> > Patch (bd077259d0a9: drm/i915/vdsc: Add function to read any PPS regist=
er) defines
>
> Please use the usual style to refer to commits:
>
> Commit bd077259d0a9 ("drm/i915/vdsc: Add function to read any PPS registe=
r")

Yes agreed

>
> > a new macro to calculate the DSC PPS register addresses with PPS number=
 as an
> > input. This macro correctly calculates the addresses till PPS 11 since =
the
> > addresses increment by 4. So in that case the following macro works cor=
rectly
> > to give correct register address:
> > _MMIO(_DSCA_PPS_0 + (pps) * 4)
> >
> > However after PPS 11, the register address for PPS 12 increments by 12 =
because
> > of RC Buffer memory allocation in between. Because of this discontinuit=
y
> > in the address space, the macro calculates wrong addresses for PPS 12 -=
 16
> > resulting into incorrect DSC PPS parameter value read/writes causing DS=
C
> > corruption.
>
> Thanks for catching and debugging this!
>
> > This patch fixes it by correcting this macro to add the offset of 12 fo=
r
> > PPS >=3D12.
>
> Please just say "Fix it ...". Once committed, this is no longer a patch.

Okay will reword this

>
> > Bug: https://gitlab.freedesktop.org/drm/intel/-/issues/10172
>
> Closes: instead of Bug:

Okay will change this accordingly
.
>
> > Fixes: bd077259d0a9 ("drm/i915/vdsc: Add function to read any PPS regis=
ter")
> > Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> > Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > Cc: Animesh Manna <animesh.manna@intel.com>
> > Cc: Jani Nikula <jani.nikula@linux.intel.com>
> > Cc: Sean Paul <sean@poorly.run>
> > Cc: Drew Davenport <ddavenport@chromium.org>
> > Signed-off-by: Manasi Navare <navaremanasi@chromium.org>
> > ---
> >  drivers/gpu/drm/i915/display/intel_vdsc_regs.h | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h b/drivers/g=
pu/drm/i915/display/intel_vdsc_regs.h
> > index 64f440fdc22b..db29660b74f3 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> > @@ -51,8 +51,8 @@
> >  #define DSCC_PICTURE_PARAMETER_SET_0         _MMIO(0x6BA00)
> >  #define _DSCA_PPS_0                          0x6B200
> >  #define _DSCC_PPS_0                          0x6BA00
> > -#define DSCA_PPS(pps)                                _MMIO(_DSCA_PPS_0=
 + (pps) * 4)
> > -#define DSCC_PPS(pps)                                _MMIO(_DSCC_PPS_0=
 + (pps) * 4)
> > +#define DSCA_PPS(pps)                                ((pps < 12) ? _MM=
IO(_DSCA_PPS_0 + (pps) * 4):_MMIO(_DSCA_PPS_0 + (pps + 12) * 4))
> > +#define DSCC_PPS(pps)                                ((pps < 12) ? _MM=
IO(_DSCC_PPS_0 + (pps) * 4):_MMIO(_DSCC_PPS_0 + (pps + 12) * 4))
>
> There's no need to duplicate so much here, this could be just:
>
>         _MMIO(_DSCC_PPS_0 + ((pps) < 12 ? (pps) : (pps) + 12) * 4)

Yes thanks for suggesting the simplification


>
> Also the macro arguments need to be wrapped in braces.

Your above suggestion should work as is right?
#define DSCC_PPS(pps)                 _MMIO(_DSCC_PPS_0 + ((pps) < 12
? (pps) : (pps) + 12) * 4)

Where are you suggesting extra braces?

Regards
Manasi

>
> With the nitpicks fixed, LGTM.
>
> BR,
> Jani.
>
> >  #define _ICL_DSC0_PICTURE_PARAMETER_SET_0_PB 0x78270
> >  #define _ICL_DSC1_PICTURE_PARAMETER_SET_0_PB 0x78370
> >  #define _ICL_DSC0_PICTURE_PARAMETER_SET_0_PC 0x78470
>
> --
> Jani Nikula, Intel
