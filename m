Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F78BB358AA
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Aug 2025 11:21:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBB7B10E627;
	Tue, 26 Aug 2025 09:21:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="SA2XPHvV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com
 [209.85.215.170])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F2B110E627;
 Tue, 26 Aug 2025 09:21:37 +0000 (UTC)
Received: by mail-pg1-f170.google.com with SMTP id
 41be03b00d2f7-b49cf21320aso3210913a12.1; 
 Tue, 26 Aug 2025 02:21:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1756200096; x=1756804896; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=TN4E6m3MRGjx4iuS/zaKf5r12wGI9usj9vunB+BK/MY=;
 b=SA2XPHvVD/zcG3cYwABL1fUxzFOk1ZeMFd5q4gP7B30/4Q+MzJwSGBeHnIc0CFsaMR
 ezqxkDRBUJABKQe8Ip2BQnwhQ1MO1T7HUFB1oHr9PCQ8Cpc9CrsUDy8g3/ISC/Jdsft+
 L/0FO5Vneqge2rNd4aBV5NtpAq9r6wbkGr+NzVVVgugVX8+xZGSgKL2YZHgpjtIir1Im
 cVZ68Cuq40CU+Ny+G5N/mBb8u0T6ocfnKl80cB94jl5jn6Xqf7kP7UFR8mONvOWEjRZc
 KScVxEIfG1el8JdpscnKRAF3pe+ClanKO1lZx9otOiW9U52QGFNHY0LkfW8HUw+HX7ym
 wyvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1756200096; x=1756804896;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=TN4E6m3MRGjx4iuS/zaKf5r12wGI9usj9vunB+BK/MY=;
 b=XnOKhPDxcm9f/+DJ3s+AKjAmjrudIeIxwZA4jWBOhRRHqSQw4tkutS6EXiLuH4nF69
 LqeXzbiv6skWaABDd4ErZWffNM0hheunb6bxG/Eg+eRnuFLkyocBlwb/GPQL62Pz1T9d
 m96xtmv/z64GfUsBiNsWy4aHfPZvx6vV5SUxBIoYh2oKTOzfPq16PwQodz5/kTOVahxK
 mHVXg0+WPC6n5UEFbwHCfLdnwZWoVxrbJ+6nvdNaBWFAhIHJ4Tq+SPaNs2VEGwJv5frp
 1v/uasC9ewad4o1A8BSKM1AWvhIdyaC/D/WEuHnlvckaH6XmtFn9zga+3GFCZlMmtfNt
 GjnA==
X-Forwarded-Encrypted: i=1;
 AJvYcCW2NrtS8p7+22NdDRGDNRmGhXsaFB2g/yXasJ8XkwJEWm8sCthHIog5pdWKNu04iWg+JprihGY5bQ==@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyUhu6ZYsUFr1UsZkHPln5o3hF7/7iScvtTy7aZX8oAKcVeblrI
 584jh4lsCwQKP3fBvhc7MqLPOBajrruTr2u7YA48pqSOpa1M3IL8y0/26T33JsuZQ3Riq3xjZSG
 7jJFJouv5Bq+r9Dd+WAjO21ufpvILsqI=
X-Gm-Gg: ASbGncv6CYywYUVGWpLX8Q+p9C0uyyF1O+faael8927wm94PS1oPHHZWsAgIbcQgx/N
 QRcRCa1jK0HQQKh5qlhLQa/Qjf2IyhRmnH34B21Dj9u4ECyP44MiYLBFwI1iXBPDLVWKDMcLI7R
 m3UFtKY9+fBJv1ey43b/o40+iBPdPAYzGt6SwGSzJli3CF+BY2Ac761nzEcAAea+S08z3w+22ZM
 uftT3k6/p6YuphuqPsJ
X-Google-Smtp-Source: AGHT+IFqBqZ0Wk8oCrKLh3E7XC0soNnHwIBYTarOnJbOUqZZVQPV8AyYFLJ+jCZ1Jx+36s7nbUuGqPh+/3OnOQYjJlg=
X-Received: by 2002:a17:903:943:b0:242:fbc6:6a83 with SMTP id
 d9443c01a7336-2462eb56b82mr184673725ad.0.1756200096368; Tue, 26 Aug 2025
 02:21:36 -0700 (PDT)
MIME-Version: 1.0
References: <20250820132913.496505-1-juhapekka.heikkila@gmail.com>
 <aKcZg9tk2YH0r67f@intel.com>
In-Reply-To: <aKcZg9tk2YH0r67f@intel.com>
From: =?UTF-8?Q?Juha=2DPekka_Heikkil=C3=A4?= <juhapekka.heikkila@gmail.com>
Date: Tue, 26 Aug 2025 12:21:25 +0300
X-Gm-Features: Ac12FXwNKUKNv3OkiCD0dXZ1pRPEf_xWi0ZI6Ra2IA6dVw_0cM3ImEXwyUI3c3M
Message-ID: <CAJ=qYWSJDRc8hvW0GDqH8AKK1G06gqrfDcL5bymnvt4s+=wppg@mail.gmail.com>
Subject: Re: [PATCH] drm/i915/display: Avoid divide by zero
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
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

On Thu, Aug 21, 2025 at 4:05=E2=80=AFPM Ville Syrj=C3=A4l=C3=A4
<ville.syrjala@linux.intel.com> wrote:
>
> On Wed, Aug 20, 2025 at 04:29:13PM +0300, Juha-Pekka Heikkila wrote:
> > skl_crtc_allocate_plane_ddb allow iter.data_rate to be zero
> > which could cause divide by zero in skl_allocate_plane_ddb,
> > check against that.
> >
> > Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> > ---
> >  drivers/gpu/drm/i915/display/skl_watermark.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu=
/drm/i915/display/skl_watermark.c
> > index def5150231a4..403783504ab3 100644
> > --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> > +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> > @@ -1388,7 +1388,7 @@ skl_allocate_plane_ddb(struct skl_plane_ddb_iter =
*iter,
> >  {
> >       u16 size, extra =3D 0;
> >
> > -     if (data_rate) {
> > +     if (data_rate && iter->data_rate) {
>
> I don't think it should be possible to have iter_data->data_rate=3D=3D0
> and data_rate!=3D0, with iter->data_rate being the sum of all the
> planes' data_rates.
>

But I see there in calling function skl_crtc_allocate_plane_ddb(..)
just before arriving here, check you've left there few years ago that
says

/* avoid the WARN later when we don't allocate any extra DDB */
if (iter.data_rate =3D=3D 0)
iter.size =3D 0;

hence I had idea to add this check also

> >               extra =3D min_t(u16, iter->size,
> >                             DIV64_U64_ROUND_UP(iter->size * data_rate,
> >                                                iter->data_rate));
> > --
> > 2.43.0
>
> --
> Ville Syrj=C3=A4l=C3=A4
> Intel
