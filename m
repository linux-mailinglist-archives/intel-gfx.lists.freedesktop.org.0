Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F9EB895AA7
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Apr 2024 19:27:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C44310FED6;
	Tue,  2 Apr 2024 17:27:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=chromium.org header.i=@chromium.org header.b="KMAF1Shd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com
 [209.85.218.45])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71E9910FED6
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Apr 2024 17:27:05 +0000 (UTC)
Received: by mail-ej1-f45.google.com with SMTP id
 a640c23a62f3a-a4e40fad4fdso435336866b.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 02 Apr 2024 10:27:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1712078823; x=1712683623;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=CisjK78L/ggkWWTzIqDLO48olCEiKRuBwHgCPhobU9E=;
 b=KMAF1ShdDnqh/Gv4dljx8DSWMzxq2Q4lwzbqwepGsDbY8vwsQNqCY8fcplUhUdbv6k
 9yDmqtr7UFrFY7o4th7Mf4Vrrw1gar5zBv1xUsqisXQqC2+VbG8wGFGg4bAgAg8E0aWP
 +zbCHFoENb61n9Cj5lZVq5NL00aXfKBNd+fGg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1712078823; x=1712683623;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=CisjK78L/ggkWWTzIqDLO48olCEiKRuBwHgCPhobU9E=;
 b=GCWQYuCuOJA6XGtYUQ5QjXgMmIJwRXQ8q509jrIgJHNlybxngkeMUL83X+uHjLt4t+
 XBXzL/Uy2cYT+rjkw0jW9b+v/q4qz5QAfhPVUhjjxERViye50EY1znQtccIP50emOQA4
 I8CJt9vx3ucTfl8g1rDurni/IM8sSDQ8J1e0qmONBsfkxmFDIiIaD5UrTFPlJEzGcHiF
 pF3N69ggyFv8cGUzgijXJwR/414rlginyZIKQQRFj3lJkzscVcPnMx4ju1P4Dw8T3QA8
 xmQgfHDsJBRbPryhIUX8nobgEf8z4qx4JjJGNqSfKc9pl59n5h2mto6EcslTogvamiUA
 RX5w==
X-Gm-Message-State: AOJu0YzcZ98z5jd1zxttfVbMmz2WLpO7KzuUh3AQspg0JXq6H0Bw1CZS
 +f/kVGFy468A2vQbbAVQkAris8v+XhVx2q0/KSQdYOjkghee8eRZON9+DHmN0gugpBGTmenpupy
 RW6LmnrTV3TSMqI47HhdEXYzYNBie1IB0TZ7b
X-Google-Smtp-Source: AGHT+IEo17bsb8XbB5How+dzM9aDPTUGZWEEqOjY62N4T9tdOV4siVeXplgI13HouBLar42R8pRkeIqWRv+lYxVOks8=
X-Received: by 2002:a17:906:c42:b0:a47:3526:2e0f with SMTP id
 t2-20020a1709060c4200b00a4735262e0fmr7946369ejf.75.1712078823481; Tue, 02 Apr
 2024 10:27:03 -0700 (PDT)
MIME-Version: 1.0
References: <20240301074923.485807-1-charlton.lin@intel.com>
In-Reply-To: <20240301074923.485807-1-charlton.lin@intel.com>
From: Manasi Navare <navaremanasi@chromium.org>
Date: Tue, 2 Apr 2024 10:26:52 -0700
Message-ID: <CAE72mNkSDL9S8TMEyZ3dH126S05dNmGLCW2VH66cG+5UHY2Y5g@mail.gmail.com>
Subject: Re: [RFC] drm/i915/dp: Log message when limiting SST link rate
 MIME-Version: 1.0 Content-Type: text/plain;
 charset=UTF-8 Content-Transfer-Encoding: 8bit
To: Charlton Lin <charlton.lin@intel.com>
Cc: intel-gfx@lists.freedesktop.org, 
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, 
 Khaled Almahallawy <khaled.almahallawy@intel.com>,
 Sean Paul <seanpaul@chromium.org>
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

Thanks Charlton for the patch.
I think in general it is a good idea to log this when the max rate is
dropped to HBR3 for SST case.

Please find my comments below,


On Thu, Feb 29, 2024 at 11:49=E2=80=AFPM Charlton Lin <charlton.lin@intel.c=
om> wrote:
>
> Driver currently limits link rate up to HBR3 in SST mode. Log a
> message with monitor vendor, product id, and MSTM_CAP to
> help understand what monitors are being downgraded by this limit.
>
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Cc: Khaled Almahallawy <khaled.almahallawy@intel.com>
> Cc: Sean Paul <seanpaul@chromium.org>
> Signed-off-by: Charlton Lin <charlton.lin@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 6ece2c563c7a..0b2d6d88fd37 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2437,6 +2437,25 @@ intel_dp_compute_link_config(struct intel_encoder =
*encoder,
>                                                      false,
>                                                      &limits);
>
> +       if (intel_dp_max_common_rate(intel_dp) > limits.max_rate) {
> +               u8 mstm_cap;
> +               u32 panel_id =3D drm_edid_get_panel_id(&intel_dp->aux.ddc=
);
> +               char vend[4];
> +               u16 product_id;
> +
> +               drm_dbg_kms(&i915->drm,
> +                           "Limiting LR from max common rate %d to %d\n"=
,

We dont use LR acronym anywhere in the kernel for link rate, just say
link rate here.
Also I think would be good to log the reason why we are dropping this
to HBR3 or add a comment with a Todo
for this

Manasi

> +                           intel_dp_max_common_rate(intel_dp), limits.ma=
x_rate);
> +
> +               drm_edid_decode_panel_id(panel_id, vend, &product_id);
> +
> +               if (intel_dp->dpcd[DP_DPCD_REV] >=3D DP_DPCD_REV_12 &&
> +                   drm_dp_dpcd_readb(&intel_dp->aux, DP_MSTM_CAP, &mstm_=
cap) =3D=3D 1)
> +                       drm_dbg_kms(&i915->drm,
> +                                   "Manufacturer=3D%s Model=3D%x Sink MS=
TM_CAP=3D%x\n",
> +                                   vend, product_id, mstm_cap);
> +       }
> +
>         if (!dsc_needed) {
>                 /*
>                  * Optimize for slow and wide for everything, because the=
re are some
> --
> 2.25.1
>
