Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0384A88CDD7
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Mar 2024 21:07:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AC0D10F26F;
	Tue, 26 Mar 2024 20:07:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=chromium.org header.i=@chromium.org header.b="Vgf0f19a";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com
 [209.85.218.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8875B10F26E
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Mar 2024 20:07:16 +0000 (UTC)
Received: by mail-ej1-f43.google.com with SMTP id
 a640c23a62f3a-a46f0da1b4fso764050766b.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Mar 2024 13:07:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1711483635; x=1712088435;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=fREGYQa93j7EfUupxqcA2izNC64lOpiRsuPxi8ykyZo=;
 b=Vgf0f19adLOM41yG3gZUljTMT7a71ojoV5QzWQ+1J/+Ak3riSZp3jIgknyY519a/FF
 vd9VJ50C8/sT8AXmnrfvupIMwPxkwgLXLUv8HJtxUDursYxsxtOVH7HtqjmaSUvvWVbP
 RZarfgupDi1DIsD9sN/44IScGwPiUwoXGt8V4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1711483635; x=1712088435;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=fREGYQa93j7EfUupxqcA2izNC64lOpiRsuPxi8ykyZo=;
 b=E2IKVyeW70kpP0CbleIAeMzg1lTpjfLrHPajcqNGfvn7p8uST9pw1fzAsZ6S1U4whE
 h1VaMIFqWh18Vo6LftLwal91lG7O7/M1b7RHJN0QGJFKkOLtlJ2WKyfdKMFV9FjqWyx+
 PB/DaFp9NFAbbE+9b+GdbRgNW1OSABgFqdulfgGcrT8K0jOW9CYiw1qXBVdJegRDGQAk
 Kz16O/dlWCrkdvfcXluBytGIAE1L4g5hgOM/grzPofGnV00sJi6KXWG8q4b8rMf47r+N
 Ucwla3rz/MXnph7NlJSL8oZXfifFfsiJ6uKNZaNJ264W7GZ2lbURjzduusJqQM/IWUW0
 ypdA==
X-Forwarded-Encrypted: i=1;
 AJvYcCW//zE4rJM5OuaVVD3Ee8zBjTtvLNES5TiRbT+3QkhsDleDCk+okZwC0CmEFqhJwtsQlp5kgFw7JuZ7wRIyMxpMi4SOz7m1CeHfMxd6zt2Q
X-Gm-Message-State: AOJu0YzYeucJnUWZ06Q6BtvlxCCa52v/atn5hgvJKkUTAXQQzUkldj6l
 YKQGlgyFkaoC23YqnAhKEWhmV9b6TwqPor9yHjiSECDug/upoFuo/zIl9BnF9GY6nHNw697OKoH
 gf9t5pzUd1H5TlzrM+qWq6LbA5Kh/iE1oIEz5
X-Google-Smtp-Source: AGHT+IEpeZb1Us0A28FNrazL3fa2f8bSkXPM8h229KR1E3zAfbUgoxDgtXp3x8qSC+RmAajBaYZSBaKPiHbnsIar/6Q=
X-Received: by 2002:a17:906:7717:b0:a46:74fe:904f with SMTP id
 q23-20020a170906771700b00a4674fe904fmr538458ejm.26.1711483634808; Tue, 26 Mar
 2024 13:07:14 -0700 (PDT)
MIME-Version: 1.0
References: <20240320201152.3487892-1-imre.deak@intel.com>
 <20240320201152.3487892-3-imre.deak@intel.com>
 <c2083a63-a296-4c4e-b896-4494feabf060@intel.com>
 <CAE72mNkJX9hoCrz_BUWXj6hpgFWhf=jKO=R_+UxxSxo_1RXDCQ@mail.gmail.com>
In-Reply-To: <CAE72mNkJX9hoCrz_BUWXj6hpgFWhf=jKO=R_+UxxSxo_1RXDCQ@mail.gmail.com>
From: Manasi Navare <navaremanasi@chromium.org>
Date: Tue, 26 Mar 2024 13:07:04 -0700
Message-ID: <CAE72mN=b0ck+d-LXvZGjbxGV_NZsgf+hMOcU70USsRjA8PcWFg@mail.gmail.com>
Subject: Re: [PATCH 02/11] drm/i915/dp_mst: Fix symbol clock when calculating
 the DSC DPT bpp limit
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Cc: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
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

On Tue, Mar 26, 2024 at 1:04=E2=80=AFPM Manasi Navare <navaremanasi@chromiu=
m.org> wrote:
>
> On Tue, Mar 26, 2024 at 3:01=E2=80=AFAM Nautiyal, Ankit K
> <ankit.k.nautiyal@intel.com> wrote:
> >
> >
> > On 3/21/2024 1:41 AM, Imre Deak wrote:
> > > The expected link symbol clock unit when calculating the DSC DPT bpp
> > > limit is kSymbols/sec, aligning with the dotclock's kPixels/sec unit
> > > based on the crtc clock. As opposed to this port_clock is used - whic=
h
> > > has a 10 kbits/sec unit - with the resulting symbol clock in 10
> > > kSymbols/sec units (disregarding the rounding error for the 13.5Gbps
> > > rate). Fix the calculation using the expected 10x factor.
> > >
> > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> >
> > LGTM.
> >
> > Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> >
> > > ---
> > >   drivers/gpu/drm/i915/display/intel_dp_mst.c | 3 +--
> > >   1 file changed, 1 insertion(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gp=
u/drm/i915/display/intel_dp_mst.c
> > > index 53aec023ce92f..b2bcf66071b05 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > @@ -58,8 +58,7 @@ static int intel_dp_mst_check_constraints(struct dr=
m_i915_private *i915, int bpp
> > >   {
> > >       if (intel_dp_is_uhbr(crtc_state) && DISPLAY_VER(i915) < 14 && d=
sc) {
> > >               int output_bpp =3D bpp;
> > > -             /* DisplayPort 2 128b/132b, bits per lane is always 32 =
*/
> > > -             int symbol_clock =3D crtc_state->port_clock / 32;
> > > +             int symbol_clock =3D intel_dp_link_symbol_clock(crtc_st=
ate->port_clock);
>
> Is this correct Symbol clock calculation not needed for UHBR support
> on platforms with DISPLAY_VER =3D 14 (MTL)?
>
> Manasi

Never mind, the patch [PATCH 05/11] drm/i915/dp_mst: Account with the
DSC DPT bpp limit on MTL answers my question here

Manasi

> > >
> > >               if (output_bpp * adjusted_mode->crtc_clock >=3D
> > >                   symbol_clock * 72) {
