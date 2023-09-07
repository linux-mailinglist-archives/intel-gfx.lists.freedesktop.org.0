Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7103A797C47
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 20:49:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F24F410E083;
	Thu,  7 Sep 2023 18:49:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com
 [IPv6:2a00:1450:4864:20::132])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 833FA10E083
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Sep 2023 18:49:50 +0000 (UTC)
Received: by mail-lf1-x132.google.com with SMTP id
 2adb3069b0e04-500b0f06136so2203083e87.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 07 Sep 2023 11:49:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1694112589; x=1694717389;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=zY8ISioMPS2x14ZPXCZVS8u3HofcDNdZzoIHo8AJBoE=;
 b=UTwBj7GSFdDdxT3iLAj+J+kMRtfZys1s7DEdW5FTHwq2Zb2hQSWRqOCO5kawtQAiYH
 MK7zCaONyogXtrDcx7swSJTluiKm0NUaKfqQDh3BE9W7cEytxx+c6WREFXbR5FWREEIl
 FY8joWO6J1nGtrIV2JPAp9PWhCmSPl/CW2zXQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1694112589; x=1694717389;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=zY8ISioMPS2x14ZPXCZVS8u3HofcDNdZzoIHo8AJBoE=;
 b=l6+V6WLpG+IyPFiEaJ1W+3F3trOyaHZkUb75q/ADlxZqQ/lu1FVU3iUdqny+fBYTSA
 1ujqszd4SYv1eGz8kA0EZbY8HaMgdbKCuopx/3izqCmhAHiSSxoaOAa00AiQIxMebqAB
 CVs3T6FFHZT5TMA+pA8LOnlZjYznhEaX1hE6rnh5S0WrrTYL6+a5j3E8LWIKZ49pwGSM
 IpP096Y9EYd/+U5rtQGLuxch+UeZMsYF4My+3vZjvZ4a7s60a80yANwYf9vVdXtSm6dK
 coV3+fshgB8IqMSlnpsZ4cckLPDa4hxIF+Q3ZYf7o1jmKvBTwIchJOwXzlCKlHrWwRRk
 Tq8g==
X-Gm-Message-State: AOJu0YwGpvLl+HRfpzvfOewb66ggEjuTbMdiICiEFDTx1KiEvJMlZND7
 6g1tthpaxsBnSN81Z75BthWMQBac55fPbIAlJ94xRQ==
X-Google-Smtp-Source: AGHT+IHRc6HvaKGJ+uwLxoK8U/0WkM4JhBy9DZkQVBGJvKJuJvt9+DkVBYyfZN1UGXzdUGeeAsbFYSb4P1Ze1klD4uA=
X-Received: by 2002:a05:6512:3a87:b0:4fb:9712:a717 with SMTP id
 q7-20020a0565123a8700b004fb9712a717mr289643lfu.13.1694112588762; Thu, 07 Sep
 2023 11:49:48 -0700 (PDT)
MIME-Version: 1.0
References: <20230901130440.2085-1-ville.syrjala@linux.intel.com>
 <20230901130440.2085-12-ville.syrjala@linux.intel.com>
In-Reply-To: <20230901130440.2085-12-ville.syrjala@linux.intel.com>
From: Manasi Navare <navaremanasi@chromium.org>
Date: Thu, 7 Sep 2023 11:49:37 -0700
Message-ID: <CAE72mNn03ACvQGMCSR4Haow2yoreqLPkxve8ydUEFa=tvF9LKQ@mail.gmail.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 11/12] drm/i915: Assert that VRR is off
 during vblank evasion if necessary
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
> Whenever we change the actual transcoder timings (clock via
> seamless M/N, full modeset, (or soon) vtotal via LRR) we
> want the timing generator to be in non-VRR during the commit.
> Warn if we forgot to turn VRR off prior to vblank evasion.
>
> Cc: Manasi Navare <navaremanasi@chromium.org>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_crtc.c | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/=
i915/display/intel_crtc.c
> index a04076064f02..a39e31c1ca85 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -493,6 +493,10 @@ static void intel_crtc_vblank_evade_scanlines(struct=
 intel_atomic_state *state,
>         adjusted_mode =3D &crtc_state->hw.adjusted_mode;
>
>         if (crtc->mode_flags & I915_MODE_FLAG_VRR) {
> +               /* timing changes should happen with VRR disabled */
> +               drm_WARN_ON(state->base.dev, intel_crtc_needs_modeset(new=
_crtc_state) ||
> +                           new_crtc_state->update_m_n);
> +
>                 if (intel_vrr_is_push_sent(crtc_state))
>                         *vblank_start =3D intel_vrr_vmin_vblank_start(crt=
c_state);
>                 else
> --
> 2.41.0
>
