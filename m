Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9641E847A87
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 21:32:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1113A10E5FF;
	Fri,  2 Feb 2024 20:32:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=chromium.org header.i=@chromium.org header.b="Fn6kgWyX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com
 [209.85.208.180])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B19D710E5FF
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Feb 2024 20:32:34 +0000 (UTC)
Received: by mail-lj1-f180.google.com with SMTP id
 38308e7fff4ca-2cf206e4d56so32561451fa.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 02 Feb 2024 12:32:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1706905953; x=1707510753;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=gNiDluYPLG0CrPuzUxBW694/0gZDbRXuWD3dRfkdvLM=;
 b=Fn6kgWyXFMczG3MJLyOHSS183etYjSjXA5l7ZO12nrzN5EjzC5m7H0pslvfThtCDyD
 fD1FU5VWLC3dW8idEVmw05uaPOEXnxuC0bH2qH48eeiwgd2JIolK8FfVh3gehNY/aab9
 oVAZGzOZ/W5oC4uHWaZuN/xnNPNAB7xCxRnD0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706905953; x=1707510753;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=gNiDluYPLG0CrPuzUxBW694/0gZDbRXuWD3dRfkdvLM=;
 b=lKCaCIMHlVZ4hIES0t2uFt2kmQ4Yx/YyyrRlu7OaBFueQ+A6SVK5NiN/rEXO1QMY0e
 0nBhjzErccI3ilnwAw1hSDfJhurXuy9PMFPxzbM0QZs3xFa4Yo3XLehWWhLSfn+1u/VT
 aW0VyShSoL9suZAg4t5LzMSbkA1xYKuNMx5cSofuEANTGqqgg3Awhh8kDV+zaOLQzPDR
 tXK9MQF+X+kNBLwBt/jnH0nAB85Q9rm5nOUMQA1hROC9FkZGdbcbOiaFSCtlpf0Wc/qG
 f+cOeJE/q/tVROGXYVjniEYXDXZhi74Q9mLlkiAEM/1Nog6mZodL27+l0PKN1WI7gEDQ
 RFpw==
X-Gm-Message-State: AOJu0YwVXBDny88c9S6w9ILeehmpxyISDvo6UapUf6bxOQ6psb+Xcm0x
 uI09NSnxCTAxt5aHeg3IVFp5bAf0X7y4Phqc7sT7Fvi0gEJGZ0KqaQ9UgKeDA1+i2h+0D+QjcA/
 IUYgB/KEHHV76F7dtMrV443ow+ykyRxSHITrxy/GwcDVR+HI=
X-Google-Smtp-Source: AGHT+IHmJi5v/utp+sDsupaWUI1RP/hWVNN2yReRbJQhLS3I49DHpN2nE1Jf5XfmzL1zRz1FQHAFVglrnnYk95hNu7M=
X-Received: by 2002:a2e:ba0a:0:b0:2d0:992a:cc5f with SMTP id
 p10-20020a2eba0a000000b002d0992acc5fmr155889lja.15.1706905953066; Fri, 02 Feb
 2024 12:32:33 -0800 (PST)
MIME-Version: 1.0
References: <20240131211909.622419-1-navaremanasi@chromium.org>
 <87ttmsh7fn.fsf@intel.com>
 <CAE72mN=xxBKGyU++pmez3fGkvuY5o8rz5OHAirxpUC_ksT3dBw@mail.gmail.com>
 <87sf2bg3ny.fsf@intel.com>
In-Reply-To: <87sf2bg3ny.fsf@intel.com>
From: Manasi Navare <navaremanasi@chromium.org>
Date: Fri, 2 Feb 2024 12:32:22 -0800
Message-ID: <CAE72mNnrJVQk4cjgx=tw21g=BL6AfPb2gU6yEqStOSbkmWzAyg@mail.gmail.com>
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

Thanks Jani, that makes sense and thanks for adding them in your suggestion=
.

I have made the necessary changes addressing all your review comments
and will send out a V2 for the patch.

Regards
Manasi

On Thu, Feb 1, 2024 at 3:34=E2=80=AFPM Jani Nikula <jani.nikula@linux.intel=
.com> wrote:
>
> On Thu, 01 Feb 2024, Manasi Navare <navaremanasi@chromium.org> wrote:
> > On Thu, Feb 1, 2024 at 1:15=E2=80=AFAM Jani Nikula <jani.nikula@linux.i=
ntel.com> wrote:
> >> On Wed, 31 Jan 2024, Manasi Navare <navaremanasi@chromium.org> wrote:
> >> > diff --git a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h b/driver=
s/gpu/drm/i915/display/intel_vdsc_regs.h
> >> > index 64f440fdc22b..db29660b74f3 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> >> > +++ b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> >> > @@ -51,8 +51,8 @@
> >> >  #define DSCC_PICTURE_PARAMETER_SET_0         _MMIO(0x6BA00)
> >> >  #define _DSCA_PPS_0                          0x6B200
> >> >  #define _DSCC_PPS_0                          0x6BA00
> >> > -#define DSCA_PPS(pps)                                _MMIO(_DSCA_PP=
S_0 + (pps) * 4)
> >> > -#define DSCC_PPS(pps)                                _MMIO(_DSCC_PP=
S_0 + (pps) * 4)
> >> > +#define DSCA_PPS(pps)                                ((pps < 12) ? =
_MMIO(_DSCA_PPS_0 + (pps) * 4):_MMIO(_DSCA_PPS_0 + (pps + 12) * 4))
> >> > +#define DSCC_PPS(pps)                                ((pps < 12) ? =
_MMIO(_DSCC_PPS_0 + (pps) * 4):_MMIO(_DSCC_PPS_0 + (pps + 12) * 4))
> >>
> >> There's no need to duplicate so much here, this could be just:
> >>
> >>         _MMIO(_DSCC_PPS_0 + ((pps) < 12 ? (pps) : (pps) + 12) * 4)
> >
> > Yes thanks for suggesting the simplification
> >
> >
> >>
> >> Also the macro arguments need to be wrapped in braces.
> >
> > Your above suggestion should work as is right?
> > #define DSCC_PPS(pps)                 _MMIO(_DSCC_PPS_0 + ((pps) < 12
> > ? (pps) : (pps) + 12) * 4)
> >
> > Where are you suggesting extra braces?
>
> I've added them in my suggestion.
>
> The original had (pps < 12) and (pps + 12), which would fail if someone
> passed in an expression with a lower precedence than < or +.
>
> BR,
> Jani.
>
>
> --
> Jani Nikula, Intel
