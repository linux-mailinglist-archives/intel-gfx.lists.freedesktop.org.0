Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 180B2797C3A
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 20:49:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C31610E0AA;
	Thu,  7 Sep 2023 18:49:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com
 [IPv6:2a00:1450:4864:20::529])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A2F210E0AA
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Sep 2023 18:49:23 +0000 (UTC)
Received: by mail-ed1-x529.google.com with SMTP id
 4fb4d7f45d1cf-52eed139ec2so47382a12.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 07 Sep 2023 11:49:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1694112561; x=1694717361;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=6ddggg+drtuTShn5kELgLASJLZ3xWbZKOM95bokNY/0=;
 b=P/bGlNL4e+sktiNGPvuLet10542DBk0yoCir3BDMYM6ygt+gFMWH6zd+KHI/QEk83X
 7vfdIfYv/WJ1RMcFbmM5XICNDt0kG+8G2e+tS83Bif6HvlUSO05SzgVIaoLLs0m7tpg6
 FNZA8YKKcjEQTSA8K7EQNsi9CnhtytL0is/0w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1694112561; x=1694717361;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=6ddggg+drtuTShn5kELgLASJLZ3xWbZKOM95bokNY/0=;
 b=UOGUpGvf/2jS9JUihVx8hhIXvhbvkDwEo1VFqEiQcqtzQiPFAetTwmeBq8ZY74+XSa
 dRMCSsc4oiv8eHuQWc9qP9o015I49vuLzOTwd4HAO5bVlrbrQDaLy+WgfB5SI8Hvy03h
 94QRfzEkFFuaw/lzuiwA8SXgHXWzokR/a3X7LY9PkSX1mS4sAkkqeLk7CvlC6cYrm4Ao
 I8CcgqZ6Te+fZozHsa+UhdHzOo0TCqIcgyOKhhcQ6B4ZzJIL3jneFPbT/ejiPmk9HGKF
 LKnp1BrQ+sKhNZ3EbRJzbI9iHG2YpCQafKmi7hUvNp8PkzNU8F/f8S2q7zgSNsu/AEID
 QZBA==
X-Gm-Message-State: AOJu0YySB88WHxgOkN5Tcc/r6U3bYLEqwgtNFAiXVRSCVDQ15hjzpywc
 l1bbFEgvreldGz9SVpbzWH8gfhL3TnnOD08UP054iJLTO5RVxXj2
X-Google-Smtp-Source: AGHT+IGAnClsPZD9RzBQ++8p1JkqQw6n87+9aRzM7LZ+AgZbIr6yEj26BJrqZJF6nyrjn7VD39Z1bxZXivXhLdINqgA=
X-Received: by 2002:aa7:d7d3:0:b0:528:925f:413e with SMTP id
 e19-20020aa7d7d3000000b00528925f413emr147735eds.12.1694112561729; Thu, 07 Sep
 2023 11:49:21 -0700 (PDT)
MIME-Version: 1.0
References: <20230901130440.2085-1-ville.syrjala@linux.intel.com>
 <20230901130440.2085-10-ville.syrjala@linux.intel.com>
In-Reply-To: <20230901130440.2085-10-ville.syrjala@linux.intel.com>
From: Manasi Navare <navaremanasi@chromium.org>
Date: Thu, 7 Sep 2023 11:49:10 -0700
Message-ID: <CAE72mN=gAjB=h3BDzkMZqyh-OktWx3NwH38sn0oFEs_xdOhpXw@mail.gmail.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 09/12] drm/i915: Disable VRR during seamless
 M/N changes
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

Since we are always disabling when update_m_n, that means if in gaming
mode if VRR enable is requested by userspace, it cannot
be enabled if update_m_n or dual refresh mode is enabled and say we
have downclocked from 120Hz - 60Hz?

Doesnt this contradict the purpose of this series to try and do VRR
update params in fastset because we want VRR range to be
correctly reflected when in dual refresh mode when we downclock from
120-60hz in gaming use case with VRR?

Am I missing something here?

Regards
Manasi

On Fri, Sep 1, 2023 at 6:05=E2=80=AFAM Ville Syrjala
<ville.syrjala@linux.intel.com> wrote:
>
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Make life less confusing by making sure VRR is disabled whenever
> we do any drastic changes to the display timings, such as seamless
> M/N changes.
>
> Cc: Manasi Navare <navaremanasi@chromium.org>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index c20eaf0e7a91..cbbee303cd00 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -916,13 +916,15 @@ static bool planes_disabling(const struct intel_crt=
c_state *old_crtc_state,
>  static bool vrr_enabling(const struct intel_crtc_state *old_crtc_state,
>                          const struct intel_crtc_state *new_crtc_state)
>  {
> -       return is_enabling(vrr.enable, old_crtc_state, new_crtc_state);
> +       return is_enabling(vrr.enable, old_crtc_state, new_crtc_state) ||
> +               (new_crtc_state->vrr.enable && new_crtc_state->update_m_n=
);
>  }
>
>  static bool vrr_disabling(const struct intel_crtc_state *old_crtc_state,
>                           const struct intel_crtc_state *new_crtc_state)
>  {
> -       return is_disabling(vrr.enable, old_crtc_state, new_crtc_state);
> +       return is_disabling(vrr.enable, old_crtc_state, new_crtc_state) |=
|
> +               (old_crtc_state->vrr.enable && new_crtc_state->update_m_n=
);
>  }
>
>  #undef is_disabling
> --
> 2.41.0
>
