Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 755499D1260
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2024 14:44:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C98E89125;
	Mon, 18 Nov 2024 13:44:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="NqLyQOr9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com
 [209.85.214.181])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59A5389125;
 Mon, 18 Nov 2024 13:44:51 +0000 (UTC)
Received: by mail-pl1-f181.google.com with SMTP id
 d9443c01a7336-20c9978a221so43200715ad.1; 
 Mon, 18 Nov 2024 05:44:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1731937491; x=1732542291; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=+htDK99fcgbIKtI9OofxBvjOrzY8sEAl5Q9mYcbS7R4=;
 b=NqLyQOr9i9ck6rByvlJFnjKm3/ntfd9zhhC/3epva7+B4e+sGwT6HCcy0/A1E9y30+
 KqJBsbsBwhBPpUfneMdR8RUHI9mHwnXqAFSYeRsjFi68S5UcertrmgswprjLsGFk14Mv
 GmKCXf9+xayI/uoTiXJ9/bEXVgcxDOtQLIhG5xVbE0PMMs+7Zf6xt1czHEhnFa2deXxl
 b4Hf9jcj9MwtmlF5TSy5LQKXPjuhSiRWZOHNNs4mEXZ+b0pbXyWKkflIj5yLDsnVJSlY
 9gCmN42XZscvhjQIl67UBWexoPT83UWR8WWQYfciATxSOs/Sjv5Kr7F9AKCBbEASoWwv
 3JWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1731937491; x=1732542291;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=+htDK99fcgbIKtI9OofxBvjOrzY8sEAl5Q9mYcbS7R4=;
 b=KgJBQbt35HGPpEnmH1bnh1KJKW5AA6TDPf637EFewDW3IDYrxghJSsDEvoQZxQemlV
 O0LUKJjxTc/okaGQbG+DHkw3E65wam0Nwen+0JALKjosKc4vsc2rfSKbENJAA4eDBkkM
 bzcMBjF6e29TNkbKqrPJI01zcBRWCJg1kxzfwvnm9Nx8Ew0g8amBfC5j1wQEPKk902fl
 BAh/m1kJ26jDjHGZXasYyAMeDhdZLuxK3NiWKQL8Jy8AwirCLOY0GsIUAi8VYX27+IgQ
 gnYie/aBS5LU+4GG7yThX8YSiXNefZJCAP6Pafyu2cVb/RputNKMHWRvfkuHGFf5hZG9
 NZNA==
X-Forwarded-Encrypted: i=1;
 AJvYcCV7CfskGia0tyiCku5sWSt7JZtebXi+xbx73iIAU4m98kixwGOlUxwQ7OKXnPE1lZdCiMwTJpA00w==@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxOTutQByhUMiYIlmM6y4dxs3niq3AR+pCFTBXSVamQBU+HkEfJ
 e1i3lVE0ipkH0WPlqHpix9IZO7EzxdtET7Yq9ETY1aAw/qMQmdrSioIo0zK6guSMXxs+/7HgC01
 /Z9/Li5NTlpCptEsGaneMO91rWJJKUpKhwCEZNA==
X-Google-Smtp-Source: AGHT+IFUBFcmBiaX+cumFjfhyfoZ3i7BxSHhXCdHQPrTOcH+RuSv+fqmwNOZuncLqETRj1eOWj3GWHwkjIfQ/xK6KOQ=
X-Received: by 2002:a17:903:41c9:b0:20e:57c8:6aad with SMTP id
 d9443c01a7336-211d0d4c19emr179849245ad.2.1731937490599; Mon, 18 Nov 2024
 05:44:50 -0800 (PST)
MIME-Version: 1.0
References: <20241113115531.3394962-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20241113115531.3394962-1-ankit.k.nautiyal@intel.com>
From: =?UTF-8?Q?Juha=2DPekka_Heikkil=C3=A4?= <juhapekka.heikkila@gmail.com>
Date: Mon, 18 Nov 2024 15:44:38 +0200
Message-ID: <CAJ=qYWTMYzkKCT_eVEBeP=q=L1mXykdcv+DER6DB=toXU8+KxQ@mail.gmail.com>
Subject: Re: [PATCH] drm/i915/display/xe3lpd: Avoid setting YUV420_MODE in
 PIPE_MISC
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
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

These display patches probably should go through i915 ci also since it
changes code on i915.

patch itself look ok,

Reviewed-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>

On Wed, Nov 13, 2024 at 1:53=E2=80=AFPM Ankit Nautiyal
<ankit.k.nautiyal@intel.com> wrote:
>
> For Xe3_LPD the PIPE_MISC YUV420 Enable (bit 27), already implies enablin=
g
> full blend YUV420 mode and YUV420 Mode (bit 26) is removed.
> Therefore, avoid setting YUV420 Mode for Xe3_LPD+ while programming
> PIPE_MISC for YCbCr420 output format.
>
> Bspec: 69749
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 15 ++++++++++-----
>  1 file changed, 10 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index e790a2de5b3d..9db255bb1230 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -3137,9 +3137,14 @@ bdw_get_pipe_misc_output_format(struct intel_crtc =
*crtc)
>         tmp =3D intel_de_read(dev_priv, PIPE_MISC(crtc->pipe));
>
>         if (tmp & PIPE_MISC_YUV420_ENABLE) {
> -               /* We support 4:2:0 in full blend mode only */
> -               drm_WARN_ON(&dev_priv->drm,
> -                           (tmp & PIPE_MISC_YUV420_MODE_FULL_BLEND) =3D=
=3D 0);
> +               /*
> +                * We support 4:2:0 in full blend mode only.
> +                * For xe3_lpd+ this is implied in YUV420 Enable bit.
> +                * Ensure the same for prior platforms in YUV420 Mode bit=
.
> +                */
> +               if (DISPLAY_VER(dev_priv) < 30)
> +                       drm_WARN_ON(&dev_priv->drm,
> +                                   (tmp & PIPE_MISC_YUV420_MODE_FULL_BLE=
ND) =3D=3D 0);
>
>                 return INTEL_OUTPUT_FORMAT_YCBCR420;
>         } else if (tmp & PIPE_MISC_OUTPUT_COLORSPACE_YUV) {
> @@ -3388,8 +3393,8 @@ static void bdw_set_pipe_misc(struct intel_dsb *dsb=
,
>                 val |=3D PIPE_MISC_OUTPUT_COLORSPACE_YUV;
>
>         if (crtc_state->output_format =3D=3D INTEL_OUTPUT_FORMAT_YCBCR420=
)
> -               val |=3D PIPE_MISC_YUV420_ENABLE |
> -                       PIPE_MISC_YUV420_MODE_FULL_BLEND;
> +               val |=3D DISPLAY_VER(display) >=3D 30 ? PIPE_MISC_YUV420_=
ENABLE :
> +                       PIPE_MISC_YUV420_ENABLE | PIPE_MISC_YUV420_MODE_F=
ULL_BLEND;
>
>         if (DISPLAY_VER(dev_priv) >=3D 11 && is_hdr_mode(crtc_state))
>                 val |=3D PIPE_MISC_HDR_MODE_PRECISION;
> --
> 2.45.2
>
