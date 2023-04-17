Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 669546E54C4
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Apr 2023 00:48:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55FCF10E0E6;
	Mon, 17 Apr 2023 22:48:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe32.google.com (mail-vs1-xe32.google.com
 [IPv6:2607:f8b0:4864:20::e32])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B09C10E0E6
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Apr 2023 22:48:25 +0000 (UTC)
Received: by mail-vs1-xe32.google.com with SMTP id a9so24905422vsh.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Apr 2023 15:48:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1681771704; x=1684363704;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=YNvWex7HsfZZPR4QxB0s8WaQjgd0dz1wN41PB4Pva7I=;
 b=ZRbTZVGOrCZWRfOZirEmy6E7CpfJpqrt8b56/3uSuIvEhEU4UlbygNyrAQyk78uRuC
 wRV9n2oDt26YNz9CiQZT1NQkWw6dVGGYst36OzLkfFEa/aUGid8P4ai4AKH2N9O3GYuB
 7T0TsJkEQtgye3QrRNnPnF7v3Ly97g1gC/1Vs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681771704; x=1684363704;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=YNvWex7HsfZZPR4QxB0s8WaQjgd0dz1wN41PB4Pva7I=;
 b=l+HE+OoN5UKAoxW4MfVEJ/1C+85nBARFqvsB8FpUxXhxokEKlGN0L47Aobyhp+kfBN
 nl2B1MWoT7nhTLOcu5oykZDgeqKVvPDqihWTjBenJ5WZ0SxY+j5sXbGMUWBhFubM6xDf
 kxPrw+cLH6SIEXNl0psDZXDqpXOO5bTvNrlQ/IqKA4FYr+lvDP9cPRJgkbPiDgTKmXP7
 5FJ3yXrtgk7HXkDp6wY7ahVjeECzUJUwoxQqFfoGp8yJWayd49BEwf+a/FEp8Pcl2YvE
 fGx/0Am4ynKN16b3ndcVrmQKiqVyq/91dB5DBkpMmPfCu/kIsoDWX4zKgHve0X458SwW
 cnug==
X-Gm-Message-State: AAQBX9fR0h3WPiv7XsnOFQQy5FtAgOTpUiUUeQZWVsJHw8jwOO65h3wN
 V9740Xzw/HXujiKq7+3EAxfv9vIJ7UOYznQnouiRzQ==
X-Google-Smtp-Source: AKy350ajMhQYXh6EjEhwmhsVqx343kcAaBv+wftTu54JQnkQls83ISdFNV9sXBTZvVvx2xIagLsxZ8thVyTo4S49iD4=
X-Received: by 2002:a67:f844:0:b0:42e:549d:6185 with SMTP id
 b4-20020a67f844000000b0042e549d6185mr2216933vsp.2.1681771703789; Mon, 17 Apr
 2023 15:48:23 -0700 (PDT)
MIME-Version: 1.0
References: <20230411173408.1945921-1-navaremanasi@chromium.org>
 <ZDWcDhmJyMhQpQBa@intel.com>
 <CAE72mNkzD4fpXeTVyFaP+xQqDbSFm+yiQ8sBvGoD+beequfeaQ@mail.gmail.com>
 <ZDZAHj4PPaDD9HHj@intel.com>
 <CAE72mNmd2wAdLFQFLgKeDazyn+Qogd1h4N75hfJrtBsOndB2Vg@mail.gmail.com>
In-Reply-To: <CAE72mNmd2wAdLFQFLgKeDazyn+Qogd1h4N75hfJrtBsOndB2Vg@mail.gmail.com>
From: Manasi Navare <navaremanasi@chromium.org>
Date: Mon, 17 Apr 2023 15:48:12 -0700
Message-ID: <CAE72mNmy9Lm2vZz9S1q18-yAGWXsBkjhFkYDzoHZFQY6LqvOyw@mail.gmail.com>
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

Hi Ville,

Could you suggest how to handle the intel_dp_link_compute_config()
when the max_bpp is returned as 0, currently
it just exits the loop and returns a -EINVAL and this triggers the DSC path=
.
While we should be completely failing the modeset and encoder_config
in this case instead of trying DSC, correct?

Manasi

On Thu, Apr 13, 2023 at 8:23=E2=80=AFAM Manasi Navare <navaremanasi@chromiu=
m.org> wrote:
>
> On Tue, Apr 11, 2023 at 10:22=E2=80=AFPM Ville Syrj=C3=A4l=C3=A4
> <ville.syrjala@linux.intel.com> wrote:
> >
> > On Tue, Apr 11, 2023 at 05:07:01PM -0700, Manasi Navare wrote:
> > > On Tue, Apr 11, 2023 at 10:42=E2=80=AFAM Ville Syrj=C3=A4l=C3=A4
> > > <ville.syrjala@linux.intel.com> wrote:
> > > >
> > > > On Tue, Apr 11, 2023 at 05:34:08PM +0000, Manasi Navare wrote:
> > > > > In the function intel_dp_max_bpp(), currently if bpc < 0 in case =
of error,
> > > > > we return 0 instead of returning an err code of -EINVAL.
> > > > > This throws off the logic in the calling function.
> > > >
> > > > What logic? The caller doesn't expect to get an error.
> > >
> > > If this returns a 0, we end up using limits.max_bpp =3D 0 and in
> > > intel_dp_compute_link_config_wide(),
> > > since max_bpp is 0, it exits this for loop:
> > >
> > > for (bpp =3D limits->max_bpp; bpp >=3D limits->min_bpp; bpp -=3D 2 * =
3) and returns
> > > -EINVAL which then wrongly goes to enable DSC even when link BW is
> > > sufficient without DSC.
> >
> > And how woud max_bpp<0 prevent that?
> >
> > The real problem seems to be that the DSC code totally
> > ignores bpp limits.
>
> Hi Ville,
>
> So I see a few concerns/questions:
> - Why is the Max bpp value 0 in intel_dp_max_bpp, is that a valid case
> and how should our link configurations handle that case when max_bpp
> is 0?
> - This is happening in a bug I am looking at with HDMI PCON, @Ankit
> Nautiyal  have we ever seen something similar where max_bpp for HDMi
> PCON
> is returned 0?
> - I dont think its a problem with DSC code, but rather
> intel_dp_compute_link_config() outer for loop where we vary
> from max_bpp to min_bpp and see if any bpp works with available link
> bw, how should we handle this when max_bpp =3D 0 if you are saying thats
> a valid case?
> - In this patch if I return -EINVAL instead of 0, then atleast the
> entire encoder_config will fail and that will fail the modeset, since
> it assumes max_bpp cannot be 0
>
> Could you please help answer above concerns and how to handle max bpp
> =3D 0 case if that is valid? This patch is simply making that invalid
> resulting into modeset failure
>
> Manasi
> >
> > --
> > Ville Syrj=C3=A4l=C3=A4
> > Intel
