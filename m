Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF63C88CDCE
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Mar 2024 21:04:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6258810F268;
	Tue, 26 Mar 2024 20:04:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=chromium.org header.i=@chromium.org header.b="II6LFx9T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com
 [209.85.208.49])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89D7110F24F
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Mar 2024 20:04:17 +0000 (UTC)
Received: by mail-ed1-f49.google.com with SMTP id
 4fb4d7f45d1cf-56c08d1e900so3583510a12.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Mar 2024 13:04:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1711483455; x=1712088255;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Kg/IKpfU8EcvqHsIT7wSAxIUTVZ9+s/8+SFcDxCehus=;
 b=II6LFx9TecvzPoPc8pCb9O5OzBOGG6qx3l4FTUG86oHgBcs4L6FdWLSTgkPTWT0YwY
 pN9xzWPqN+NXuAWIoO86ZPwqM0c+8DgHUnm1EynxIk+DkvJflXV9UzEtzPRbjC9pvrD9
 y0mEPgS5ACh9tqxMrYfsa5toPB+CfglyX+Tc0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1711483455; x=1712088255;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Kg/IKpfU8EcvqHsIT7wSAxIUTVZ9+s/8+SFcDxCehus=;
 b=h7ieC8oRw480ryDTZu3Yf2rOhSlvF/2Nvfj4lxs9L9Pj2pYyFgbZmOSM7cA+4G9c0/
 jZCCAhqoQalsyxT+DfbODMj1hdc9w7s/upTlFuBPd9Yt6LbJReJp/QphAxacCC/TyLoN
 ZBpGaSl2h8IRdaTsH6jZY375D0wYabmtR5weKCBTDL+oj/OVffEXEZSyuz08LVUhIqIK
 hhSpBZVoTi2ndB/7dFl/ytFeLAU0Alz1LUPxyjf0HrrYAhSbMXOeNDaJZtSfnLO4Tf2d
 uv8zi2v4R8r1HY5j42yiyuEYKCjcTyBS8iHliWTyRNsIMBmsBSxK21c3eRWJZ2cY6EcV
 rQdA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXPBVnqcYzH21yVKTKaPsaNGd5CGKyHvwG7ylWoASm6eXAYklnpWhYZNJMtC8BVj5BOOeKOWaQv8l5Ue15fnEROBAKR8Cel3oJFOrObhKVn
X-Gm-Message-State: AOJu0YxF3LEddrYxvL1Sm6clL/Xm2rUfsNv7/9teUIuOlapm9t3IprpL
 NZwfOzYcwnDgODrv0Q/7mC0K/ROuB5AWNoD8yru1ttObiwz68skNVXdXbJQP+MD57U71LI8iHqT
 VfREtIlqkRUz7zYufmoQQXgsYD1svOtQe9Ams
X-Google-Smtp-Source: AGHT+IHVQzl0bHTCE9z/Vz+jF6wLN3WI31MP/7BJjyap4ZReg6sB1ZM7lQUI4dZgDrdUXge5294/r2BtWQphCFsUBcI=
X-Received: by 2002:a17:907:7da8:b0:a4a:33b1:2a30 with SMTP id
 oz40-20020a1709077da800b00a4a33b12a30mr3215268ejc.54.1711483455689; Tue, 26
 Mar 2024 13:04:15 -0700 (PDT)
MIME-Version: 1.0
References: <20240320201152.3487892-1-imre.deak@intel.com>
 <20240320201152.3487892-3-imre.deak@intel.com>
 <c2083a63-a296-4c4e-b896-4494feabf060@intel.com>
In-Reply-To: <c2083a63-a296-4c4e-b896-4494feabf060@intel.com>
From: Manasi Navare <navaremanasi@chromium.org>
Date: Tue, 26 Mar 2024 13:04:04 -0700
Message-ID: <CAE72mNkJX9hoCrz_BUWXj6hpgFWhf=jKO=R_+UxxSxo_1RXDCQ@mail.gmail.com>
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

On Tue, Mar 26, 2024 at 3:01=E2=80=AFAM Nautiyal, Ankit K
<ankit.k.nautiyal@intel.com> wrote:
>
>
> On 3/21/2024 1:41 AM, Imre Deak wrote:
> > The expected link symbol clock unit when calculating the DSC DPT bpp
> > limit is kSymbols/sec, aligning with the dotclock's kPixels/sec unit
> > based on the crtc clock. As opposed to this port_clock is used - which
> > has a 10 kbits/sec unit - with the resulting symbol clock in 10
> > kSymbols/sec units (disregarding the rounding error for the 13.5Gbps
> > rate). Fix the calculation using the expected 10x factor.
> >
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
>
> LGTM.
>
> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>
> > ---
> >   drivers/gpu/drm/i915/display/intel_dp_mst.c | 3 +--
> >   1 file changed, 1 insertion(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/=
drm/i915/display/intel_dp_mst.c
> > index 53aec023ce92f..b2bcf66071b05 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > @@ -58,8 +58,7 @@ static int intel_dp_mst_check_constraints(struct drm_=
i915_private *i915, int bpp
> >   {
> >       if (intel_dp_is_uhbr(crtc_state) && DISPLAY_VER(i915) < 14 && dsc=
) {
> >               int output_bpp =3D bpp;
> > -             /* DisplayPort 2 128b/132b, bits per lane is always 32 */
> > -             int symbol_clock =3D crtc_state->port_clock / 32;
> > +             int symbol_clock =3D intel_dp_link_symbol_clock(crtc_stat=
e->port_clock);

Is this correct Symbol clock calculation not needed for UHBR support
on platforms with DISPLAY_VER =3D 14 (MTL)?

Manasi
> >
> >               if (output_bpp * adjusted_mode->crtc_clock >=3D
> >                   symbol_clock * 72) {
