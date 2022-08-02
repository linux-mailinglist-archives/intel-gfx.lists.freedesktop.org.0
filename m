Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CA42589D06
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Aug 2022 15:46:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFF4998DEB;
	Thu,  4 Aug 2022 13:46:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com
 [IPv6:2a00:1450:4864:20::633])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81DFB11335B
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Aug 2022 03:36:36 +0000 (UTC)
Received: by mail-ej1-x633.google.com with SMTP id rq15so17718931ejc.10
 for <intel-gfx@lists.freedesktop.org>; Mon, 01 Aug 2022 20:36:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/wjTSV2hy6NNMDug8Lf856kHhzGsXucjkK0VStP/SGQ=;
 b=k0wd+ZD4rnDjCGfhdg8y9HOzemVWGxpB4RgqxJ0Xe2Q5KDUQK0KDxMPnQL5ozgwmiU
 v8FmPiuLIqcBkQPrsxCIDUgixVfCEj2S6oqfWBl/59jxRN8b+y3K3Ad9CTGUGAxiQJhO
 AIp+8AzWZhnowR4imhRj1D9UutEp9f6U6bHQls1PXlfLXFHgtfdb3DEDuXiq8pQg+Hc4
 cBbchcs7N9zSFiyje0NAfkg3gRISKkqWxYbG8Zh+c8t3vB22j52rOp/Gj1XqknvS0AtK
 8/UlPQaj8HKh3axJHnotHHMUxEFoSu93QrRxY30pLDZMzQuw4iMOKlRg32IiKy9WZMSG
 PDUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/wjTSV2hy6NNMDug8Lf856kHhzGsXucjkK0VStP/SGQ=;
 b=tGZAC7QX/6CWBjBeCXsldI22n3Daow+QuHBigoJsxuJH1dd255TOybIuG+foI1KwCH
 Y4jGV7nF0KEriEmTo8TZP7Xwd2/5imLTn2EvdOfbjyuHJHSR9AqmRNMaZfi6v9afl4Vm
 /cVP3gTHczkeB4LAUl0l9psgE7ZEdDbRaamL7dtPD2354OIUKiGZLlYsfT9iY845W3Yp
 V109Q0lrRcEBiG0cwhyqFhIFVOyxHy2suWT1e9+7K0SmNYVnE+sT2j6FI4MoS2f3bzBZ
 B/YFJNubtHdtBCDmUWNBtn3Dpo5uwFNpVRBcCzIfQe3uYnmVrWK+eE+XOhOKUCqcKAz6
 nlpQ==
X-Gm-Message-State: AJIora+TYgTXN7x1Zi4O5L86A0Q2grjD/buNxvqGf+orxRHHksw1IqCU
 dEmivTRQ8bl+1If8ani/c0IQq99TivKZAEStmVeeKawzzXU=
X-Google-Smtp-Source: AGRyM1urBJDjFi64kCrKVGmjW1uXUSo0MDyX4tvoJkxkSAo94YIC2MzrcZPDpVNhKh1UQ6dMJ+xDeXdl5bhjCshLq/w=
X-Received: by 2002:a17:907:7ba2:b0:72b:57da:a76e with SMTP id
 ne34-20020a1709077ba200b0072b57daa76emr14835202ejc.210.1659411394836; Mon, 01
 Aug 2022 20:36:34 -0700 (PDT)
MIME-Version: 1.0
References: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
 <20220728013420.3750388-13-radhakrishna.sripada@intel.com>
 <YuiZ1EWqDj0KbzKd@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <YuiZ1EWqDj0KbzKd@mdroper-desk1.amr.corp.intel.com>
From: Caz Yokoyama <cazyokoyama@gmail.com>
Date: Mon, 1 Aug 2022 20:36:23 -0700
Message-ID: <CABhNg0imr-zTN39T1nGm-AgaPDSRK=+0OPYRd+VVUazG6bq0GQ@mail.gmail.com>
To: Matt Roper <matthew.d.roper@intel.com>
Content-Type: multipart/alternative; boundary="000000000000b9bea905e539d2e2"
X-Mailman-Approved-At: Thu, 04 Aug 2022 13:37:57 +0000
Subject: Re: [Intel-gfx] [PATCH 12/23] drm/i915/mtl: Fix rawclk for
 Meteorlake PCH
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

--000000000000b9bea905e539d2e2
Content-Type: text/plain; charset="UTF-8"

> MTL has a fixed rawclk of 38400Mhz. Register does not need to be
> +             * MTL always uses a 38.4 MHz rawclk.  The bspec tells us
Mismatch between commit message and comment. Probably
38400Mhz -> 38400kHz
-caz

On Mon, Aug 1, 2022 at 8:29 PM Matt Roper <matthew.d.roper@intel.com> wrote:

> On Wed, Jul 27, 2022 at 06:34:09PM -0700, Radhakrishna Sripada wrote:
> > From: Clint Taylor <clinton.a.taylor@intel.com>
> >
> > MTL has a fixed rawclk of 38400Mhz. Register does not need to be
> > reprogrammed.
> >
> > Bspec: 49304
> >
> > Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cdclk.c | 7 +++++++
> >  1 file changed, 7 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
> b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > index 86a22c3766e5..390a198b0011 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > @@ -3036,6 +3036,13 @@ u32 intel_read_rawclk(struct drm_i915_private
> *dev_priv)
> >
> >       if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG1)
> >               freq = dg1_rawclk(dev_priv);
> > +     else if (INTEL_PCH_TYPE(dev_priv) >= PCH_MTP)
> > +             /*
> > +             * MTL always uses a 38.4 MHz rawclk.  The bspec tells us
>
> Indentation isn't quite right here.
>
> Patch is also missing your s-o-b.
>
> With those fixed,
>
> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
>
> > +             * "RAWCLK_FREQ defaults to the values for 38.4 and does
> > +             * not need to be programmed."
> > +             */
> > +             freq = 38400;
> >       else if (INTEL_PCH_TYPE(dev_priv) >= PCH_CNP)
> >               freq = cnp_rawclk(dev_priv);
> >       else if (HAS_PCH_SPLIT(dev_priv))
> > --
> > 2.25.1
> >
>
> --
> Matt Roper
> Graphics Software Engineer
> VTT-OSGC Platform Enablement
> Intel Corporation
>


-- 
-caz, caz at caztech dot com, 503-six one zero - five six nine nine(m)

--000000000000b9bea905e539d2e2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">&gt; MTL has a fixed rawclk of 38400Mhz. Register does not=
 need to be<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * MTL alway=
s uses a 38.4 MHz rawclk.=C2=A0 The bspec tells us<br><div>Mismatch between=
 commit message and comment. Probably</div><div>38400Mhz -&gt;=C2=A038400kH=
z</div><div>-caz</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Mon, Aug 1, 2022 at 8:29 PM Matt Roper &lt;<a href=
=3D"mailto:matthew.d.roper@intel.com">matthew.d.roper@intel.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On Wed, Jul =
27, 2022 at 06:34:09PM -0700, Radhakrishna Sripada wrote:<br>
&gt; From: Clint Taylor &lt;<a href=3D"mailto:clinton.a.taylor@intel.com" t=
arget=3D"_blank">clinton.a.taylor@intel.com</a>&gt;<br>
&gt; <br>
&gt; MTL has a fixed rawclk of 38400Mhz. Register does not need to be<br>
&gt; reprogrammed.<br>
&gt; <br>
&gt; Bspec: 49304<br>
&gt; <br>
&gt; Signed-off-by: Clint Taylor &lt;<a href=3D"mailto:clinton.a.taylor@int=
el.com" target=3D"_blank">clinton.a.taylor@intel.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/gpu/drm/i915/display/intel_cdclk.c | 7 +++++++<br>
&gt;=C2=A0 1 file changed, 7 insertions(+)<br>
&gt; <br>
&gt; diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/=
drm/i915/display/intel_cdclk.c<br>
&gt; index 86a22c3766e5..390a198b0011 100644<br>
&gt; --- a/drivers/gpu/drm/i915/display/intel_cdclk.c<br>
&gt; +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c<br>
&gt; @@ -3036,6 +3036,13 @@ u32 intel_read_rawclk(struct drm_i915_private *=
dev_priv)<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (INTEL_PCH_TYPE(dev_priv) &gt;=3D PCH_DG1=
)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0freq =3D dg1_raw=
clk(dev_priv);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0else if (INTEL_PCH_TYPE(dev_priv) &gt;=3D PCH_MTP=
)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/*<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* MTL always uses a 3=
8.4 MHz rawclk.=C2=A0 The bspec tells us<br>
<br>
Indentation isn&#39;t quite right here.<br>
<br>
Patch is also missing your s-o-b.<br>
<br>
With those fixed,<br>
<br>
Reviewed-by: Matt Roper &lt;<a href=3D"mailto:matthew.d.roper@intel.com" ta=
rget=3D"_blank">matthew.d.roper@intel.com</a>&gt;<br>
<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* &quot;RAWCLK_FREQ d=
efaults to the values for 38.4 and does<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* not need to be prog=
rammed.&quot;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*/<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0freq =3D 38400;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0else if (INTEL_PCH_TYPE(dev_priv) &gt;=3D PC=
H_CNP)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0freq =3D cnp_raw=
clk(dev_priv);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0else if (HAS_PCH_SPLIT(dev_priv))<br>
&gt; -- <br>
&gt; 2.25.1<br>
&gt; <br>
<br>
-- <br>
Matt Roper<br>
Graphics Software Engineer<br>
VTT-OSGC Platform Enablement<br>
Intel Corporation<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div=
 dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div>-caz, caz at =
caztech dot com, 503-six one zero - five six nine nine(m)<br></div></div></=
div></div></div></div></div></div></div></div></div>

--000000000000b9bea905e539d2e2--
