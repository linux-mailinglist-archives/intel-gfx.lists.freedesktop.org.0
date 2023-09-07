Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF762797C30
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 20:45:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6545710E083;
	Thu,  7 Sep 2023 18:45:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com
 [IPv6:2a00:1450:4864:20::531])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C51510E083
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Sep 2023 18:44:59 +0000 (UTC)
Received: by mail-ed1-x531.google.com with SMTP id
 4fb4d7f45d1cf-52a39a1c4d5so1733640a12.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 07 Sep 2023 11:44:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1694112297; x=1694717097;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=PJzoKPEBEP4BOtihURtdwsXaBBE2IFiO7eH6ORkPy0A=;
 b=J3zPA6IBsXs7lwT2CU10pYIgidp+GXXEW3erjWCqS+ovf32FqqBYr1A8sFIRnzwphV
 wuGII3YBU6Bdfu9d8yUGGaX9DsFH1b11NCuYw1S6crSjBHeD/tcXwaX8vVDKQjDOpxK7
 7e8RTSUFuJKCesPaXlng0w6LZA8z+zyHuRXew=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1694112297; x=1694717097;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=PJzoKPEBEP4BOtihURtdwsXaBBE2IFiO7eH6ORkPy0A=;
 b=VKprBRIwqLJm4m+DjSIyTIBPnHDykgkV5iUYlVOigmrs4E7hpkAFakDsM/rDZg+Dyv
 SLzo9sS9hWBa4qAVwnygE9Z+k6IZteJWViL4W+wGEYgabWHZn0QR90e0iHxHosYUqK8B
 ryHvx+q9zvBjkk0NgH8K0f8wNDxRrxVceinPJZluqBxvkWuInhImtiWr0wY7G9pniSVW
 WX7fNZ28aBRf3w1mgizxDKwzWdfVLY1YMSpLy6IkUngTWIV1kdUNvEIws7TODgTzW0No
 agaBS5JM7HsyPowAGEkFV9zunve39jblRU2+sUNyJTm/m5GPH8M7tyG0MIh1MVs/bcA1
 lRIA==
X-Gm-Message-State: AOJu0YzoFQep9Cw0LckechXuW4/GMAaMeF5qZYDiNxySUExh8WR84B6M
 XFozAJkc2O7cjeBsM6UL8maZL2BL1f1nem9RqzKyL4yTbzbaK1jz5+M=
X-Google-Smtp-Source: AGHT+IEv4napuZjLlXjMJ59PL/Dvf4kt3QDtsEfJ2XRlEGDIzi+37qTTRlf8XL0bZuATiasHlEV5x/jmZRKjZw6j37g=
X-Received: by 2002:aa7:d68c:0:b0:525:6d9e:67c0 with SMTP id
 d12-20020aa7d68c000000b005256d9e67c0mr151559edr.23.1694112297494; Thu, 07 Sep
 2023 11:44:57 -0700 (PDT)
MIME-Version: 1.0
References: <20230901130440.2085-1-ville.syrjala@linux.intel.com>
 <20230901130440.2085-9-ville.syrjala@linux.intel.com>
In-Reply-To: <20230901130440.2085-9-ville.syrjala@linux.intel.com>
From: Manasi Navare <navaremanasi@chromium.org>
Date: Thu, 7 Sep 2023 11:44:46 -0700
Message-ID: <CAE72mNk42kbNu7hbo3pJbuoiR2=wwx-ns2UegBJry37aFikMMg@mail.gmail.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 08/12] drm/i915: Validate that the timings
 are within the VRR range
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
> Let's assume there are some crazy displays where the high
> end of the VRR range ends up being lower than the refresh
> rate as determined by the actual timings. In that case
> when we toggle VRR on/off we would step outside the VRR
> range when toggling VRR on/off. Let's just make sure that
> never happens by not using VRR in such cases. If the user
> really wants VRR they should then select the timings to
> land within the VRR range.
>
> Cc: Manasi Navare <navaremanasi@chromium.org>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i=
915/display/intel_vrr.c
> index 6ef782538337..12731ad725a8 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -117,10 +117,10 @@ intel_vrr_compute_config(struct intel_crtc_state *c=
rtc_state,
>         const struct drm_display_info *info =3D &connector->base.display_=
info;
>         int vmin, vmax;
>
> -       if (!intel_vrr_is_capable(connector))
> +       if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
>                 return;
>
> -       if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
> +       if (!intel_vrr_is_in_range(connector, drm_mode_vrefresh(adjusted_=
mode)))
>                 return;
>
>         vmin =3D DIV_ROUND_UP(adjusted_mode->crtc_clock * 1000,
> --
> 2.41.0
>
