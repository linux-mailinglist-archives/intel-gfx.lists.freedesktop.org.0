Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F048B166617
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2020 19:19:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47D826EE39;
	Thu, 20 Feb 2020 18:19:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB5286EE38
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Feb 2020 18:19:11 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id k11so5684772wrd.9
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Feb 2020 10:19:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=Vrd8/4XC24KiZOwbkgOgl3xGVTXs8ATIgqdcIgXZ+wI=;
 b=R+Tx20kkZGABVaMvHAEKEYeewoV7QhM1ARU0qPrEpApBPQmg32ja+J7QTMIcSdgKpH
 JjTtJhKdeVVUz29l0+OdUbczix3xDT/Y7e90jy3nHbKoJu7e608KnTOTuZmZiHb1Z0VO
 +WczOjMJvnPBx7/YXk+IBXYrarrpMXgKqo0Cg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=Vrd8/4XC24KiZOwbkgOgl3xGVTXs8ATIgqdcIgXZ+wI=;
 b=Sut7qVf+RRYblMup8wA3d7X0BQv6u92pp+GbnJGLpEhWdye9OnjqOKM12hE0H5+ZQ7
 As9hI3hhBbV3mv/Ox60hhtGd2MLcVCp0Gfv08ok2MlzUTez2RtZhOwe3Mg0wJHIg42w1
 8l1RhALQUDUup0WE3h1/LN+telAu7UikDrTGSdctf9LvfJ2uPVeON4O1VCzpHW4WYDCA
 I7K4v634fwV1EQ0DxkR4nkjQPx7bZiJoBmjN43WcDoU7y51u5/pdQUvzjII28T1sxCFO
 2mTy6waYvq2qSbjGE/Vchm0TGWYN6mq+/8DeJOtzlsFHCjo2y2VtxtnhSShsO3Li9VUO
 jSYw==
X-Gm-Message-State: APjAAAUI9AWXrVjIq3SrUqdcPLHfD3O80vFHZcSHn7Dvde5FFr29ZYKd
 ciBhcJyLDaWyesSYuM/Q55nQBw==
X-Google-Smtp-Source: APXvYqxhEqKaHW/81uiai9yGLHupfLSJpNs7XDlcfVttvJY9cwWNUhol8bmKCj0pootpECkRHVJlXw==
X-Received: by 2002:a5d:640d:: with SMTP id z13mr42005368wru.181.1582222750594; 
 Thu, 20 Feb 2020 10:19:10 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id d204sm125562wmd.30.2020.02.20.10.19.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Feb 2020 10:19:09 -0800 (PST)
Date: Thu, 20 Feb 2020 19:19:08 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200220181908.GX2363188@phenom.ffwll.local>
References: <20200219203544.31013-1-ville.syrjala@linux.intel.com>
 <20200219203544.31013-10-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200219203544.31013-10-ville.syrjala@linux.intel.com>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
Subject: Re: [Intel-gfx] [PATCH 09/12] drm: Shrink drm_display_mode timings
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Feb 19, 2020 at 10:35:41PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Store the timings (apart from the clock) as u16. The uapi mode
> struct already uses u16 for everything so using something bigger
> internally doesn't really help us.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Makes sense I guess. This could mean some implicit pointer math is now no
longer auto-upgraded to big enough integers though ...

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> ---
>  drivers/gpu/drm/drm_modes.c |  7 ------
>  include/drm/drm_modes.h     | 46 ++++++++++++++++++-------------------
>  2 files changed, 23 insertions(+), 30 deletions(-)
> =

> diff --git a/drivers/gpu/drm/drm_modes.c b/drivers/gpu/drm/drm_modes.c
> index 0e7c9ba241c4..cc9fc52f9f7c 100644
> --- a/drivers/gpu/drm/drm_modes.c
> +++ b/drivers/gpu/drm/drm_modes.c
> @@ -1917,13 +1917,6 @@ EXPORT_SYMBOL(drm_mode_create_from_cmdline_mode);
>  void drm_mode_convert_to_umode(struct drm_mode_modeinfo *out,
>  			       const struct drm_display_mode *in)
>  {
> -	WARN(in->hdisplay > USHRT_MAX || in->hsync_start > USHRT_MAX ||
> -	     in->hsync_end > USHRT_MAX || in->htotal > USHRT_MAX ||
> -	     in->hskew > USHRT_MAX || in->vdisplay > USHRT_MAX ||
> -	     in->vsync_start > USHRT_MAX || in->vsync_end > USHRT_MAX ||
> -	     in->vtotal > USHRT_MAX || in->vscan > USHRT_MAX,
> -	     "timing values too large for mode info\n");
> -
>  	out->clock =3D in->clock;
>  	out->hdisplay =3D in->hdisplay;
>  	out->hsync_start =3D in->hsync_start;
> diff --git a/include/drm/drm_modes.h b/include/drm/drm_modes.h
> index b28c0234fcd7..b585074945b5 100644
> --- a/include/drm/drm_modes.h
> +++ b/include/drm/drm_modes.h
> @@ -278,16 +278,16 @@ struct drm_display_mode {
>  	 * Pixel clock in kHz.
>  	 */
>  	int clock;		/* in kHz */
> -	int hdisplay;
> -	int hsync_start;
> -	int hsync_end;
> -	int htotal;
> -	int hskew;
> -	int vdisplay;
> -	int vsync_start;
> -	int vsync_end;
> -	int vtotal;
> -	int vscan;
> +	u16 hdisplay;
> +	u16 hsync_start;
> +	u16 hsync_end;
> +	u16 htotal;
> +	u16 hskew;
> +	u16 vdisplay;
> +	u16 vsync_start;
> +	u16 vsync_end;
> +	u16 vtotal;
> +	u16 vscan;
>  	/**
>  	 * @flags:
>  	 *
> @@ -356,19 +356,19 @@ struct drm_display_mode {
>  	 * difference is exactly a factor of 10.
>  	 */
>  	int crtc_clock;
> -	int crtc_hdisplay;
> -	int crtc_hblank_start;
> -	int crtc_hblank_end;
> -	int crtc_hsync_start;
> -	int crtc_hsync_end;
> -	int crtc_htotal;
> -	int crtc_hskew;
> -	int crtc_vdisplay;
> -	int crtc_vblank_start;
> -	int crtc_vblank_end;
> -	int crtc_vsync_start;
> -	int crtc_vsync_end;
> -	int crtc_vtotal;
> +	u16 crtc_hdisplay;
> +	u16 crtc_hblank_start;
> +	u16 crtc_hblank_end;
> +	u16 crtc_hsync_start;
> +	u16 crtc_hsync_end;
> +	u16 crtc_htotal;
> +	u16 crtc_hskew;
> +	u16 crtc_vdisplay;
> +	u16 crtc_vblank_start;
> +	u16 crtc_vblank_end;
> +	u16 crtc_vsync_start;
> +	u16 crtc_vsync_end;
> +	u16 crtc_vtotal;
>  =

>  	/**
>  	 * @private_flags:
> -- =

> 2.24.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
