Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8FBE6B9D22
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Mar 2023 18:33:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6128B10E195;
	Tue, 14 Mar 2023 17:33:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com
 [IPv6:2607:f8b0:4864:20::536])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA7C510E195
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Mar 2023 17:33:54 +0000 (UTC)
Received: by mail-pg1-x536.google.com with SMTP id 132so9341115pgh.13
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Mar 2023 10:33:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20210112; t=1678815234;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=8ZxqDNzvycT4+XijfCZlzYUv3fDjJKidxs0eAXMhtTA=;
 b=XzEonMxf+ttfSArX0RHLr6D5vMNyytUI6qvABrb42iAqxe+Kr1K2F6mYdWHXqIzawe
 qqROy5qEUYm7EHHQKxGLZI7B/OD2HliNayWc630un3jDGLAULCKMUWZ+U8H+3+sHyJqY
 GlpFSA/Sv4DuIyOCc9Cp//nK3BL/wWxsUaQX4qXAXJ9llH2PmDVGpoZ9J4+z3jdAXi/f
 hQZvBKlb8UTa4pF2xPP8eTta2bCICSGeE4+Z73fyTpEwa1lUFdeSre+NPHmi7jNXvbmp
 sSP6lHR/FXX1JP0ZIgCcxpAXyTxZ4jPIfmk7W+33bFLR4PEWT4aEET6qvoW6JheTGGG9
 M7Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678815234;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=8ZxqDNzvycT4+XijfCZlzYUv3fDjJKidxs0eAXMhtTA=;
 b=iryDmlZM9cumpqgGcLAB9iMaNW2WGi0QYYuU4Hr9NuDXy1BQYuwpc6ROMs9xjqkXfy
 xzi2w+wOPQKyvAUQaveOdEwRVeK7+MHRB+2c+XQGBAY+t6Vea1sR9pB7mmQW2wsBP87x
 UlL9xCHY/owRLocMbmCGx9j3vxgJoURcZrU2Jp5uNzouu0391/eJqWenmGpShJHlJ0K7
 A/l7qLHH/Ps4mTC9i7gDtQX2L8Bjyewy6pOABjm1kAD4LOd1mMIEjP5b5DDVw9ku7kW/
 sFyPpV1MOKlSexJxnyeVhzWS63VwxHizxZuzsKUIFnT1xGEHfhdhoNMJQzpd3Jw1Vrsc
 5+qw==
X-Gm-Message-State: AO0yUKWqvxL+eaUMCbOu++6TxzIgrts8HrORTzv9CjmyuUUab5dUaRHI
 mKwx6hPuyxX1xxUxU3CB2RLFRPzZF4LQE3OB0fjCaw==
X-Google-Smtp-Source: AK7set/i3KKyv9hvQo5Q7ghgqcV6N777n6WzcxTQaAuUf2P00bpeT2CcXBA0yXfi6K1bW1EIgTUNp5963S1lAoLI9sQ=
X-Received: by 2002:a65:6215:0:b0:509:93f0:a960 with SMTP id
 d21-20020a656215000000b0050993f0a960mr3430728pgv.2.1678815234096; Tue, 14 Mar
 2023 10:33:54 -0700 (PDT)
MIME-Version: 1.0
References: <20230314110415.2882484-1-ankit.k.nautiyal@intel.com>
 <20230314110415.2882484-9-ankit.k.nautiyal@intel.com>
In-Reply-To: <20230314110415.2882484-9-ankit.k.nautiyal@intel.com>
From: Manasi Navare <navaremanasi@google.com>
Date: Tue, 14 Mar 2023 10:33:43 -0700
Message-ID: <CAMNLLoSvJ1i0JyzLK8k-jy7Nih8DFrpYJ=fPqLbKToTTA4dVGw@mail.gmail.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Content-Type: multipart/alternative; boundary="000000000000ace94b05f6dfa147"
Subject: Re: [Intel-gfx] [PATCH v11 08/11] drm/i915/dp: Avoid DSC with
 output_format YCBCR420
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

--000000000000ace94b05f6dfa147
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Since we cannot do DSC with this output format currently, can this check be
added as part of the intel_dp_supports_dsc() ?

Regards
Manasi


On Tue, Mar 14, 2023 at 4:07=E2=80=AFAM Ankit Nautiyal <ankit.k.nautiyal@in=
tel.com>
wrote:

> Currently, DSC with YCBCR420 is not supported.
> Return -EINVAL when trying with DSC with output_format as YCBCR420.
>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index b1431ed175bc..99a5cd370c1f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1602,6 +1602,10 @@ int intel_dp_dsc_compute_config(struct intel_dp
> *intel_dp,
>         if (!intel_dp_supports_dsc(intel_dp, pipe_config))
>                 return -EINVAL;
>
> +       /* Currently DSC with YCBCR420 format is not supported */
> +       if (pipe_config->output_format =3D=3D INTEL_OUTPUT_FORMAT_YCBCR42=
0)
> +               return -EINVAL;
> +
>         if (compute_pipe_bpp)
>                 pipe_bpp =3D intel_dp_dsc_compute_bpp(intel_dp,
> pipe_config->output_format,
>
> conn_state->max_requested_bpc);
> --
> 2.25.1
>
>

--000000000000ace94b05f6dfa147
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Since we cannot do DSC with this output format currently, =
can this check be added as part of the intel_dp_supports_dsc() ?<div><br></=
div><div>Regards</div><div>Manasi</div></div><br><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Mar 14, 2023 at 4:07=E2=
=80=AFAM Ankit Nautiyal &lt;<a href=3D"mailto:ankit.k.nautiyal@intel.com">a=
nkit.k.nautiyal@intel.com</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex">Currently, DSC with YCBCR420 is not supported.<br>
Return -EINVAL when trying with DSC with output_format as YCBCR420.<br>
<br>
Signed-off-by: Ankit Nautiyal &lt;<a href=3D"mailto:ankit.k.nautiyal@intel.=
com" target=3D"_blank">ankit.k.nautiyal@intel.com</a>&gt;<br>
---<br>
=C2=A0drivers/gpu/drm/i915/display/intel_dp.c | 4 ++++<br>
=C2=A01 file changed, 4 insertions(+)<br>
<br>
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915=
/display/intel_dp.c<br>
index b1431ed175bc..99a5cd370c1f 100644<br>
--- a/drivers/gpu/drm/i915/display/intel_dp.c<br>
+++ b/drivers/gpu/drm/i915/display/intel_dp.c<br>
@@ -1602,6 +1602,10 @@ int intel_dp_dsc_compute_config(struct intel_dp *int=
el_dp,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!intel_dp_supports_dsc(intel_dp, pipe_confi=
g))<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return -EINVAL;<br>
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0/* Currently DSC with YCBCR420 format is not su=
pported */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (pipe_config-&gt;output_format =3D=3D INTEL_=
OUTPUT_FORMAT_YCBCR420)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -EINVAL;<br>
+<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (compute_pipe_bpp)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pipe_bpp =3D intel_=
dp_dsc_compute_bpp(intel_dp, pipe_config-&gt;output_format,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 conn_state-&gt;max_requested_bpc);<br>
-- <br>
2.25.1<br>
<br>
</blockquote></div>

--000000000000ace94b05f6dfa147--
