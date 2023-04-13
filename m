Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF8AA6E10FF
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Apr 2023 17:23:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DDF010E157;
	Thu, 13 Apr 2023 15:23:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe32.google.com (mail-vs1-xe32.google.com
 [IPv6:2607:f8b0:4864:20::e32])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C87510E157
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Apr 2023 15:23:17 +0000 (UTC)
Received: by mail-vs1-xe32.google.com with SMTP id y17so13749159vsd.9
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Apr 2023 08:23:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1681399396; x=1683991396;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=JuwrJ70Mbo2am35Xrve3DC3V7EBJwXslcKAE7fxR/tQ=;
 b=FFczle2oajkEDlbjt3/gVxkqykOx0/pn5Te2vWYMP0xXPBO3OfXO+eufeJ6LWbdhqW
 6RSYttPDPkEmDu3vvCW0W7OqAmk4GQCJk6kqHjtio3J11ZwOWpwrlPkSdzUjjB7lQANp
 d+0NocakEBzVaNxKPfoi8cljjrB0Q5UyE0TKU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681399396; x=1683991396;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=JuwrJ70Mbo2am35Xrve3DC3V7EBJwXslcKAE7fxR/tQ=;
 b=IvpNWIucnniyYqSUY52bvEiO+KMqTtwBeMFvSfUJk4e+MFv3R12Ou8O9UCaVW8MDfZ
 dGfq6Fpan8gTiMQn1Ku0bpAaZ9PyAThmXapF1YH40dr9sdx7j8rMlwR6RwN1MYHNY0QJ
 PyZOHAjO4J0eGeWa/LdnsfKws7oPw9EM4gBPyXsWfqMNvZpvaOdIdGOR5OnQf5inkBpv
 GhDV1MjuP/otkeiyn50YHzR6UzUrhm/D91CTqRWEnjll5goSQkE8TjDmj9W1K08IM15G
 LWc7sAhW3k0HvBZiTYjyf/JGnPfq52NtS4C4NTEQwvk0+MbuFR1xdXNAWHHut83mLujz
 w8VQ==
X-Gm-Message-State: AAQBX9dGgqNk7qqj1gWYIIYuNJEgQqIzg+IBk+bFAGjR7mnzr/kK2vPD
 m1+LFFhVxePZrvsJhQSoV6qse8UCHukcO/sSl1YoBg==
X-Google-Smtp-Source: AKy350aToxv42LpVQ48w86lJxrsWOjOx6xvRK3fqbJvYX2TdAWK82oRFxNi2Pyk/EeWPLq4uv79ZLhTGrcffweZDqhg=
X-Received: by 2002:a67:ca8b:0:b0:42e:3757:f5fc with SMTP id
 a11-20020a67ca8b000000b0042e3757f5fcmr567140vsl.0.1681399395925; Thu, 13 Apr
 2023 08:23:15 -0700 (PDT)
MIME-Version: 1.0
References: <20230411173408.1945921-1-navaremanasi@chromium.org>
 <ZDWcDhmJyMhQpQBa@intel.com>
 <CAE72mNkzD4fpXeTVyFaP+xQqDbSFm+yiQ8sBvGoD+beequfeaQ@mail.gmail.com>
 <ZDZAHj4PPaDD9HHj@intel.com>
In-Reply-To: <ZDZAHj4PPaDD9HHj@intel.com>
From: Manasi Navare <navaremanasi@chromium.org>
Date: Thu, 13 Apr 2023 08:23:05 -0700
Message-ID: <CAE72mNmd2wAdLFQFLgKeDazyn+Qogd1h4N75hfJrtBsOndB2Vg@mail.gmail.com>
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Return correct err code
 for bpc < 0
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

On Tue, Apr 11, 2023 at 10:22=E2=80=AFPM Ville Syrj=C3=A4l=C3=A4
<ville.syrjala@linux.intel.com> wrote:
>
> On Tue, Apr 11, 2023 at 05:07:01PM -0700, Manasi Navare wrote:
> > On Tue, Apr 11, 2023 at 10:42=E2=80=AFAM Ville Syrj=C3=A4l=C3=A4
> > <ville.syrjala@linux.intel.com> wrote:
> > >
> > > On Tue, Apr 11, 2023 at 05:34:08PM +0000, Manasi Navare wrote:
> > > > In the function intel_dp_max_bpp(), currently if bpc < 0 in case of=
 error,
> > > > we return 0 instead of returning an err code of -EINVAL.
> > > > This throws off the logic in the calling function.
> > >
> > > What logic? The caller doesn't expect to get an error.
> >
> > If this returns a 0, we end up using limits.max_bpp =3D 0 and in
> > intel_dp_compute_link_config_wide(),
> > since max_bpp is 0, it exits this for loop:
> >
> > for (bpp =3D limits->max_bpp; bpp >=3D limits->min_bpp; bpp -=3D 2 * 3)=
 and returns
> > -EINVAL which then wrongly goes to enable DSC even when link BW is
> > sufficient without DSC.
>
> And how woud max_bpp<0 prevent that?
>
> The real problem seems to be that the DSC code totally
> ignores bpp limits.

Hi Ville,

So I see a few concerns/questions:
- Why is the Max bpp value 0 in intel_dp_max_bpp, is that a valid case
and how should our link configurations handle that case when max_bpp
is 0?
- This is happening in a bug I am looking at with HDMI PCON, @Ankit
Nautiyal  have we ever seen something similar where max_bpp for HDMi
PCON
is returned 0?
- I dont think its a problem with DSC code, but rather
intel_dp_compute_link_config() outer for loop where we vary
from max_bpp to min_bpp and see if any bpp works with available link
bw, how should we handle this when max_bpp =3D 0 if you are saying thats
a valid case?
- In this patch if I return -EINVAL instead of 0, then atleast the
entire encoder_config will fail and that will fail the modeset, since
it assumes max_bpp cannot be 0

Could you please help answer above concerns and how to handle max bpp
=3D 0 case if that is valid? This patch is simply making that invalid
resulting into modeset failure

Manasi
>
> --
> Ville Syrj=C3=A4l=C3=A4
> Intel
