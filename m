Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EB8C84A13C
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Feb 2024 18:47:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A926110E287;
	Mon,  5 Feb 2024 17:47:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=chromium.org header.i=@chromium.org header.b="gB46aCeW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com
 [209.85.218.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94E1C10E283
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Feb 2024 17:47:07 +0000 (UTC)
Received: by mail-ej1-f44.google.com with SMTP id
 a640c23a62f3a-a354408e6bfso981235766b.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 05 Feb 2024 09:47:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1707155226; x=1707760026;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=EL07ITQk5LXyi5yjHI1iKO4RjUj5IZjnwPsNpI+xohw=;
 b=gB46aCeW+LECea5jc7QR7GeTLRKr6G0HvXTS/eDdZLGU7zzx/g660tll5oTPOQik+W
 kT7tMPghwQA4o8YSU7wxKz4ypcGnu/Juzk8HYeB8kLtMF/E1cBxGBinJoRdoqyRYw29/
 17F66/oiS+5RnDp6L7/kCKpJQxOzgCYNg9tII=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1707155226; x=1707760026;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=EL07ITQk5LXyi5yjHI1iKO4RjUj5IZjnwPsNpI+xohw=;
 b=FmRiQntBgpufp66J6ZEwyb2aCpxBJ5kwK8vzSYZwRbut5N3FkT7unZllmMobPnI1WW
 ezZHb5e+Qpge2SO0OWodOsO/s79KAN2rAnutYGsGYSGUjd2QrwwqkvzizM9dMnTnWC7e
 8nTmKf3J8xP3x09If9kbEx6eDzFC3xZoarU2D57wTEG9YSFvd56h+F8IqmfRRe1bhwSd
 q6bbmS7Ow9yuk4ld95GtZCdizOkSOG2WuHfTI+tlc+SakYN8wywPjQGm7yiApQWmNl+W
 JNbjWvJatGk5dJNO39v3+r6ndHTRfWTx1jJM5Bn9ifBTR4lmvkVqF3rfGoekOrgo3QeR
 GTSQ==
X-Gm-Message-State: AOJu0YyK3pNphiDiWZI76hP/C5WHM/sipamLcMwwybf1AIcJZaeuY8FS
 mBJ+7EO/C9Aw9/8LwD2zkvGetmGF8mSLaOPvPDd9PfB+VhuGlF8OMEJfAwkFHK10ITl1a6Lc0J+
 39Jj4GkbwKNfIa1kuo7oL+QP0D3gCMXwCocdZ
X-Google-Smtp-Source: AGHT+IE9kZTf9draB4w/jGh2HooMyOQu4kmjVZDtSzCDo3xUenKZwKiFY38f4in6SKi6QGz/qrILev9iYEz5kBhBChI=
X-Received: by 2002:a17:906:847:b0:a37:676a:f46 with SMTP id
 f7-20020a170906084700b00a37676a0f46mr295578ejd.34.1707155225801; Mon, 05 Feb
 2024 09:47:05 -0800 (PST)
MIME-Version: 1.0
References: <20240202204752.1210687-1-navaremanasi@chromium.org>
 <878r3zdspb.fsf@intel.com>
In-Reply-To: <878r3zdspb.fsf@intel.com>
From: Manasi Navare <navaremanasi@chromium.org>
Date: Mon, 5 Feb 2024 09:46:54 -0800
Message-ID: <CAE72mNnnkEeVcp_xzSGP9OfRnLXAvKsdgm5ZoP8zXYYmtGSFEg@mail.gmail.com>
Subject: Re: [PATCH v2] drm/i915/dsc: Fix the macro that calculates
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

Hi Jani,

Yea I think I made that change after checkpatch but didnt do commit
--amend, let me address that and send the patch for review.

Regards
Manasi

On Mon, Feb 5, 2024 at 4:03=E2=80=AFAM Jani Nikula <jani.nikula@linux.intel=
.com> wrote:
>
> On Fri, 02 Feb 2024, Manasi Navare <navaremanasi@chromium.org> wrote:
> > Commit bd077259d0a9 ("drm/i915/vdsc: Add function to read any PPS regis=
ter") defines
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
> >
> > This fixes it by correcting this macro to add the offset of 12 for
> > PPS >=3D12.
> >
> > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/10172
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
> > index 64f440fdc22b..e676440af369 100644
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
> > +#define DSCA_PPS(pps)                                _MMIO(_DSCA_PPS_0=
 + ((pps < 12) ? (pps):(pps + 12)) * 4)
> > +#define DSCC_PPS(pps)                                _MMIO(_DSCC_PPS_0=
 + ((pps < 12) ? (pps):(pps + 12)) * 4)
>
> pps still needs to be wrapped in parens like I said, to avoid precedence
> issues. Also, spaces are needed around ":". They were all there in what
> I suggested to be used, and checkpatch also notices both.
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
