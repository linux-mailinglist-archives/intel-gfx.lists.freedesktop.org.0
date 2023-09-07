Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E2161797C19
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 20:40:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A43E10E24B;
	Thu,  7 Sep 2023 18:40:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com
 [IPv6:2a00:1450:4864:20::52a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A11FC10E24B
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Sep 2023 18:40:40 +0000 (UTC)
Received: by mail-ed1-x52a.google.com with SMTP id
 4fb4d7f45d1cf-52a3ff5f0abso1761779a12.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 07 Sep 2023 11:40:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1694112039; x=1694716839;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=wTFbjLUADUJX2U7Y6iaqEjlaCG+7NH2yn15ec/e7na8=;
 b=GZr+R4iFtTHL7c/QpzojFM3tMP8sMtvn1zUTgESpfJ/G+kDnqTNeoEtZcyfQ+OZzSb
 yY4SB4QCzunPIVIDBbcYGqN8lcex4Qzr1Dkc2AEYKRbych5Y0b8jfuCfBGm9ZwL9cGBO
 F7kwslyaRv8QHqclw5OFunrhmVgS2UJOPCpKg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1694112039; x=1694716839;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=wTFbjLUADUJX2U7Y6iaqEjlaCG+7NH2yn15ec/e7na8=;
 b=Bgg8pU5zLQs63A6BOSxAicIPcIZ3phiTC98el57fDjNt1s4cFu0/+bp9eAQYBzYDHf
 zjhany8tFm4kO94KkMC4lhGIsw4NKjCXEPquI6CMV9iaLuMm3h3eck/UpznH25U8P+EN
 njHQcWnLPSYKrbI66rgm/zNVmwZ+LrrhcWJ1D1yL9P/txkYXAj32lyBRSvcpKsHa53Ea
 uTx1CHvTLUUFcbo5nNQPGnBmU0qH/jmWt3tIW9jaRxzqrpI/7NoAd03wihnHC3uz0q2n
 yymqBm9waugwKZ1SrzfHxZRqBInWFrRy9BV6SKj0wz0G6Rl/RyjP9xLCdHB9ttyqghau
 2+nQ==
X-Gm-Message-State: AOJu0Yz303nqK5+72Ceyok9OESusLJiP3zjM4+ZYHjve3ZumIan+TbTG
 ysG47EnY5p2LFFyaIXTvbCHCGBeNYxxHFCZpavcZYkptmWaOEfF6H0s=
X-Google-Smtp-Source: AGHT+IFneatpoF2We8Ycw7DW48Kd5bELRLUcIrUVj0D1popdtEVX29s+j5KQkeVOPZXjN4ekjsvvKrcLebZ6fOie4FM=
X-Received: by 2002:aa7:d648:0:b0:528:88e2:7fec with SMTP id
 v8-20020aa7d648000000b0052888e27fecmr138786edr.2.1694112039202; Thu, 07 Sep
 2023 11:40:39 -0700 (PDT)
MIME-Version: 1.0
References: <20230901130440.2085-1-ville.syrjala@linux.intel.com>
 <20230901130440.2085-7-ville.syrjala@linux.intel.com>
In-Reply-To: <20230901130440.2085-7-ville.syrjala@linux.intel.com>
From: Manasi Navare <navaremanasi@chromium.org>
Date: Thu, 7 Sep 2023 11:40:28 -0700
Message-ID: <CAE72mN=ZqyZ7LZmOp3kRstocOUf+YmnhriS+naW+ymz9MOMPqg@mail.gmail.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 06/12] drm/i915: Optimize out redundant M/N
 updates
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

Reviewed-by: Manasi Navare <navaremanasi@chromium.org>

Manasi

On Fri, Sep 1, 2023 at 6:05=E2=80=AFAM Ville Syrjala
<ville.syrjala@linux.intel.com> wrote:
>
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Don't perform a seamless M/N update if the values aren't actually
> changing. This avoids doing extra shenanigans during vblank evasion
> needlessly.
>
> Cc: Manasi Navare <navaremanasi@chromium.org>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 6196ef76390b..c20eaf0e7a91 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5525,7 +5525,9 @@ static void intel_crtc_check_fastset(const struct i=
ntel_crtc_state *old_crtc_sta
>         else
>                 new_crtc_state->uapi.mode_changed =3D false;
>
> -       if (intel_crtc_needs_modeset(new_crtc_state))
> +       if (intel_crtc_needs_modeset(new_crtc_state) ||
> +           intel_compare_link_m_n(&old_crtc_state->dp_m_n,
> +                                  &new_crtc_state->dp_m_n))
>                 new_crtc_state->update_m_n =3D false;
>
>         if (!intel_crtc_needs_modeset(new_crtc_state))
> --
> 2.41.0
>
