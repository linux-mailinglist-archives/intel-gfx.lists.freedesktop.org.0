Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B826797BF4
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 20:34:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63FF410E243;
	Thu,  7 Sep 2023 18:34:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com
 [IPv6:2a00:1450:4864:20::533])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DDC110E243
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Sep 2023 18:34:24 +0000 (UTC)
Received: by mail-ed1-x533.google.com with SMTP id
 4fb4d7f45d1cf-52a5c0d949eso1702817a12.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 07 Sep 2023 11:34:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1694111663; x=1694716463;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=I/52oKDUD4z1+f5evvYM3qYUTyUzAVHMTztVh7dPiYo=;
 b=CbLJ3DM2ViW9j1Eha7UOSbRPlaKkeDyUpDixAqeUSgteQWKisTktOsx4xVufJXG5Uz
 1+C9TEWBdOUSaPwo0wj/D/k3gf0vNTGG/j1AmEvRT8bkXjWRlnj1bs8tDF7FJA0LfKmy
 ++PhGBSzP9FyvWt+OOUYUjBhMZikqDLEXDmDM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1694111663; x=1694716463;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=I/52oKDUD4z1+f5evvYM3qYUTyUzAVHMTztVh7dPiYo=;
 b=ErYbk18IxQK3P+domvfvLONayXg4+FjC76xFeVu/AJ+Y4Ux1qQEO7YhiSqAgtmstH9
 TMraIjv6xyCyYVwYoPHRzs+6xLughxCanMWW+u20ytQFD32bEoLPOmzB8nR3l9fryKgx
 ml7/o+/5g81ZU6+1tDbaBuzUJ4bgyZZuIY5ZtyMPneUy6tc4p0/9YYF+mkFVQ+DOAkVS
 +t+P8Ty55E6yy+12S5ic8GyrXiLvaV/utTpoN62C6tKsrNXlEyvBDhi+938vf/Phyp8R
 WSW0d6iSrnOMW/3I9hmKRN9WxpKcyIkEj2FVAJMSR4Sb3VmEGuJIJMVrpLUt0bTphzMI
 z45w==
X-Gm-Message-State: AOJu0YyZv5a0XAnBb+MfTMnMLojYp5h4ojsTz+uzGWHR9y+mVRcIdoKi
 NjxhZ3Sg46Kch+raYP3HIh9CW/BMKjaOvPHNsBvZSYUvXbUKx1BklJM=
X-Google-Smtp-Source: AGHT+IHUcMmSTLSDS1m2XXMPhAA5UynAFsm5Jd5tV4dUdw7KaQz+keOAxyVQrRs+cRfe/61vmoMjwkIjD0KedgCEy58=
X-Received: by 2002:a05:6402:14c1:b0:52c:9ce1:f117 with SMTP id
 f1-20020a05640214c100b0052c9ce1f117mr94988edx.40.1694111662787; Thu, 07 Sep
 2023 11:34:22 -0700 (PDT)
MIME-Version: 1.0
References: <20230901130440.2085-1-ville.syrjala@linux.intel.com>
 <20230901130440.2085-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20230901130440.2085-2-ville.syrjala@linux.intel.com>
From: Manasi Navare <navaremanasi@chromium.org>
Date: Thu, 7 Sep 2023 11:34:11 -0700
Message-ID: <CAE72mN=xEt50_1KGCQCHK6BR5Tm4FLS6Twxe7YGw9SfnEr=O6w@mail.gmail.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 01/12] drm/i915: Move psr unlock out from
 the pipe update critical section
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

Looks good to me,

Reviewed-by: Manasi Navare <navaremanasi@chromium.org>

Manasi

On Fri, Sep 1, 2023 at 6:04=E2=80=AFAM Ville Syrjala
<ville.syrjala@linux.intel.com> wrote:
>
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Do the PSR unlock after the vblank evade critcal section is
> fully over, not before.
>
> Cc: Manasi Navare <navaremanasi@chromium.org>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_crtc.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/=
i915/display/intel_crtc.c
> index 182c6dd64f47..5caa928e5ce9 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -646,10 +646,8 @@ void intel_pipe_update_end(struct intel_crtc_state *=
new_crtc_state)
>         ktime_t end_vbl_time =3D ktime_get();
>         struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>
> -       intel_psr_unlock(new_crtc_state);
> -
>         if (new_crtc_state->do_async_flip)
> -               return;
> +               goto out;
>
>         trace_intel_pipe_update_end(crtc, end_vbl_count, scanline_end);
>
> @@ -709,7 +707,7 @@ void intel_pipe_update_end(struct intel_crtc_state *n=
ew_crtc_state)
>         local_irq_enable();
>
>         if (intel_vgpu_active(dev_priv))
> -               return;
> +               goto out;
>
>         if (crtc->debug.start_vbl_count &&
>             crtc->debug.start_vbl_count !=3D end_vbl_count) {
> @@ -724,4 +722,7 @@ void intel_pipe_update_end(struct intel_crtc_state *n=
ew_crtc_state)
>         }
>
>         dbg_vblank_evade(crtc, end_vbl_time);
> +
> +out:
> +       intel_psr_unlock(new_crtc_state);
>  }
> --
> 2.41.0
>
