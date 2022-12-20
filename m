Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D6536523F4
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Dec 2022 16:50:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BECE10E0A8;
	Tue, 20 Dec 2022 15:50:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com
 [IPv6:2a00:1450:4864:20::333])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04E1F10E0A8
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 15:50:25 +0000 (UTC)
Received: by mail-wm1-x333.google.com with SMTP id
 b24-20020a05600c4a9800b003d21efdd61dso9149180wmp.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 07:50:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=69xQ+737SCD0Xl8S4oQAKfmHr5P6o+2pQHjjgEkNQto=;
 b=iFbVLlpPMyU+f1OpovNYbxpbEw487E7fe2u7lPqfzmOD1sD0TAceyZgeid49zdZenC
 KumlxbKJVVuVAGtUJK+ctlKAvD84kuMGm9BREP8gh/1Mayc/hL6+jROnoIL99f2PpsQt
 smg8E0MgfSA00GucWUHj5w7/BquVroG59SuESvIVwHyKEUm4/EQUuuk/SMP6KF34485D
 PkQg5t/ByeB35Syuti13eMFhaWRSGKlOWJIBOJy+oSmdakqaUArgkUIPxIkG+cTBwNVS
 nmuhNyKXZPia8/U95Pm3oLlRRa51ewUlrLMaqJbu+af4f4KQ3GpXb4Q5v0B3dqAuRN7a
 YyVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=69xQ+737SCD0Xl8S4oQAKfmHr5P6o+2pQHjjgEkNQto=;
 b=A92Jp2NxzA2Ry//XB6VYJMSuagyMao0T7GyzTNDEgiUeDKedjPT7rKiZHiPXopzkwU
 9Vfb4KnpksbJm4GK5/UIXHah6tvf7agtXLJfiihY8Jnn5jt1C50NX5fGesj4tELBrDvn
 QAx5EKcCdIDfgClJq0rQA6rQ+AXbC9Dbt1loJHnYNBHrrbl5Ml0sqcmXirura7XueROy
 6o6blmZ9g9RilT68YUlPS9LhhCVQlKtQQ3qZZQs2BXyVyX4YnD/bAnoROA4RA8+qyLca
 rCoOkgOz0/50cbIxNYKG4MVniGs1kS/CK5LI5NfMhM3VXVDOTHRsQ7nXJUMXhxCk5ZVj
 FmcQ==
X-Gm-Message-State: AFqh2kr1lBsYnbGjhjtCOJzZ/VoCnCMOyCHG4LWqMXtNc26h0XXJjy1d
 Z2sGKxZPAaw2ha0aDtoBPY/QdG2xPl+2AC/WztQ=
X-Google-Smtp-Source: AMrXdXvfTWDkSjYNqS6wyQTMxQvLsJ5WsifYdDJRQ7HZ1NbBoiuzQ33eZssxLHH352tA0I2MDISWlIgoJsCDoD7t/QY=
X-Received: by 2002:a05:600c:8a4:b0:3d0:58bb:9fa3 with SMTP id
 l36-20020a05600c08a400b003d058bb9fa3mr1384570wmp.39.1671551423494; Tue, 20
 Dec 2022 07:50:23 -0800 (PST)
MIME-Version: 1.0
References: <20221219172927.9603-1-sasa.dragic@gmail.com>
 <20221219172927.9603-2-sasa.dragic@gmail.com>
 <Y6GPJcaHBx/xs3Hi@intel.com>
In-Reply-To: <Y6GPJcaHBx/xs3Hi@intel.com>
From: Sasa Dragic <sasa.dragic@gmail.com>
Date: Tue, 20 Dec 2022 16:50:12 +0100
Message-ID: <CAKqOC0BHt4oO3gPjNwvFyuk0qxWX62KL4SPpim4-iYhUKE71EQ@mail.gmail.com>
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915: re-disable RC6p on Sandy
 Bridge
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Dec 20, 2022 at 11:32 AM Ville Syrj=C3=A4l=C3=A4
<ville.syrjala@linux.intel.com> wrote:
>
> On Mon, Dec 19, 2022 at 06:29:27PM +0100, Sasa Dragic wrote:
> > RC6p on Sandy Bridge got re-enabled over time, causing visual glitches
> > and GPU hangs.
> >
> > Disabled originally in commit 1c8ecf80fdee ("drm/i915: do not enable
> > RC6p on Sandy Bridge").
>
> re cover letter:
> > It was originally disabled in commit 1c8ecf80fdee ("drm/i915: do not
> > enable RC6p on Sandy Bridge"), and subsequently re-enabled by
> > 13c5a577b342 ("drm/i915/gt: Select the deepest available parking mode
> > for rc6"), which seems to focus only on Ivy Bridge.
>
> That only kicks in while parked (ie. fully idle from
> software POV). I think the real bad commit is
> fb6db0f5bf1d ("drm/i915: Remove unsafe i915.enable_rc6")
> which seems to affects which rc6 level is selected while
> unparked.

You are correct. Although I'd like to add that most of the glitching
happens when system is switching to / from fully idle (e.g. running
glxgears in background reduces symptoms tenfold).

> We should mention both of those commits here:
> Fixes: fb6db0f5bf1d ("drm/i915: Remove unsafe i915.enable_rc6")
> Fixes: 13c5a577b342 ("drm/i915/gt: Select the deepest available parking m=
ode for rc6")
>
> Also we want
> Cc: stable@vger.kernel.org
>
> We can add those while pushing, so no need to resend for that.

Ok, thanks.

> >
> > Signed-off-by: Sasa Dragic <sasa.dragic@gmail.com>
> > ---
> >  drivers/gpu/drm/i915/i915_pci.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i91=
5_pci.c
> > index 668e9da52584..69377564028a 100644
> > --- a/drivers/gpu/drm/i915/i915_pci.c
> > +++ b/drivers/gpu/drm/i915/i915_pci.c
> > @@ -423,7 +423,8 @@ static const struct intel_device_info ilk_m_info =
=3D {
> >       .has_coherent_ggtt =3D true, \
> >       .has_llc =3D 1, \
> >       .has_rc6 =3D 1, \
> > -     .has_rc6p =3D 1, \
> > +     /* snb does support rc6p, but enabling it causes various issues *=
/ \
> > +     .has_rc6p =3D 0, \
>
> The one downside of doing it this way is that we also lose
> the debugfs/sysfs files so we can't monitor rc6+/++
> residency anymore to make sure they are not entered.
>
> I think ideally we'd split this into two parts: which rc6
> states the hw actually has vs. which rc6 states we actually
> want to use. But at least for the time being I think this
> simple should be sufficient, and should be easy to backport
> to stable releases.

Agreed.

> >       .has_rps =3D true, \
> >       .dma_mask_size =3D 40, \
> >       .__runtime.ppgtt_type =3D INTEL_PPGTT_ALIASING, \
> > --
> > 2.37.2
>
> --
> Ville Syrj=C3=A4l=C3=A4
> Intel

Regards,
Sasa
