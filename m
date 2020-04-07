Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BC0C1A0892
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 09:46:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBB9F6E573;
	Tue,  7 Apr 2020 07:46:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 522486E573
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 07:46:25 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id j17so2619334wru.13
 for <intel-gfx@lists.freedesktop.org>; Tue, 07 Apr 2020 00:46:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=lVZ+YdwfIk4PeMabQVzWIFSraf5btbPFfPJ0hBqt9yI=;
 b=EF+k95AwD6bPpwIwEsasOreHbgtuI2K8eJjY1RRWNWTihPEHBWAhVO2k7cbSZjdDa+
 Tk2y1/DEBUWlWPgyOsBB39WIkAVqA/2kgMtiu1E1gil2VadmaH58rAA4HUm/TP5XHmtW
 SL+MBW36t8TMMLf75TBBkD3qBLf7X9qDpz4NY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=lVZ+YdwfIk4PeMabQVzWIFSraf5btbPFfPJ0hBqt9yI=;
 b=KLsRdA76A+lUSJyJk1cXfZZPGwfTY4WteMULWAqq6y1Wn60DY6E8sgup56evQutDtJ
 ZNtomiFb0LQ2hJn2dXQiSfrwFBpyBgMO0QlofXRMMRXp03JIKjN7xlWyJr/ujclMK91E
 XhDpla2jBrC52pC2Xy2R67L2wsl059ap9DZUqtzSjovaxTzqa4lDHktLlN1BuIbeI+1Z
 PqcoiAgQj/EaP8m32hgp+jrIfU0ZVjmvjTgupwgB7HRSlLXDTAd9TRzv5VxwUvG/0762
 S6T7hdjLh5/noAYx2owHUnBlgEH4lVHM+eCjgvow8g6LPkVBHiAfksb2qtyxV0fBqSeA
 kBHw==
X-Gm-Message-State: AGi0PuaKXsFTacwFG8ZT9nufJBWz+nESxNkDkQam9Rb+7rqgZCgyHAwe
 1fEXOmeJS0rz3lOTwwi5dKDjig==
X-Google-Smtp-Source: APiQypICjAebPo3knB98Owf+DaBh/JvQjgUTjZlGbvCFiqt7eMU5Aw4X36Lybdm/9gjYajp9OefX0g==
X-Received: by 2002:adf:a406:: with SMTP id d6mr1236977wra.79.1586245583835;
 Tue, 07 Apr 2020 00:46:23 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id n124sm1276376wma.11.2020.04.07.00.46.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Apr 2020 00:46:23 -0700 (PDT)
Date: Tue, 7 Apr 2020 09:46:21 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200407074621.GD3456981@phenom.ffwll.local>
References: <20200403204008.14864-1-ville.syrjala@linux.intel.com>
 <20200403204008.14864-16-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200403204008.14864-16-ville.syrjala@linux.intel.com>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
Subject: Re: [Intel-gfx] [PATCH v2 15/17] drm/gma500: Stop using
 mode->private_flags
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, Sam Ravnborg <sam@ravnborg.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Apr 03, 2020 at 11:40:06PM +0300, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> gma500 only uses mode->private_flags to convey the sdvo pixel
> multiplier from the encoder .mode_fixup() hook to the encoder
> .mode_set() hook. Those always seems get called as a pair so
> let's just stuff the pixel multiplier into the encoder itself
> as there are no state objects we could use in this non-atomic
> driver.
> =

> Paves the way for nuking mode->private_flag.

Yeah the sdvo multiplier is why I originally started with creating the
intel_pipe_config stuff ...

The only semi-nasty thing with legacy crtc helpers is that they don't
clean up anything from mode_fixup failures. But since the next modeset
will go through the full dance again I think that's ok.

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> =

> Cc: Patrik Jakobsson <patrik.r.jakobsson@gmail.com>
> CC: Sam Ravnborg <sam@ravnborg.org>
> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> Cc: Emil Velikov <emil.l.velikov@gmail.com>
> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/gma500/psb_intel_drv.h  | 19 -------------------
>  drivers/gpu/drm/gma500/psb_intel_sdvo.c | 11 ++++++-----
>  2 files changed, 6 insertions(+), 24 deletions(-)
> =

> diff --git a/drivers/gpu/drm/gma500/psb_intel_drv.h b/drivers/gpu/drm/gma=
500/psb_intel_drv.h
> index fb601983cef0..3dd5718c3e31 100644
> --- a/drivers/gpu/drm/gma500/psb_intel_drv.h
> +++ b/drivers/gpu/drm/gma500/psb_intel_drv.h
> @@ -56,25 +56,6 @@
>  #define INTEL_OUTPUT_DISPLAYPORT 9
>  #define INTEL_OUTPUT_EDP 10
>  =

> -#define INTEL_MODE_PIXEL_MULTIPLIER_SHIFT (0x0)
> -#define INTEL_MODE_PIXEL_MULTIPLIER_MASK (0xf << INTEL_MODE_PIXEL_MULTIP=
LIER_SHIFT)
> -
> -static inline void
> -psb_intel_mode_set_pixel_multiplier(struct drm_display_mode *mode,
> -				int multiplier)
> -{
> -	mode->clock *=3D multiplier;
> -	mode->private_flags |=3D multiplier;
> -}
> -
> -static inline int
> -psb_intel_mode_get_pixel_multiplier(const struct drm_display_mode *mode)
> -{
> -	return (mode->private_flags & INTEL_MODE_PIXEL_MULTIPLIER_MASK)
> -	       >> INTEL_MODE_PIXEL_MULTIPLIER_SHIFT;
> -}
> -
> -
>  /*
>   * Hold information useally put on the device driver privates here,
>   * since it needs to be shared across multiple of devices drivers privat=
es.
> diff --git a/drivers/gpu/drm/gma500/psb_intel_sdvo.c b/drivers/gpu/drm/gm=
a500/psb_intel_sdvo.c
> index 264d7ad004b4..9e88a37f55e9 100644
> --- a/drivers/gpu/drm/gma500/psb_intel_sdvo.c
> +++ b/drivers/gpu/drm/gma500/psb_intel_sdvo.c
> @@ -132,6 +132,8 @@ struct psb_intel_sdvo {
>  	/* DDC bus used by this SDVO encoder */
>  	uint8_t ddc_bus;
>  =

> +	u8 pixel_multiplier;
> +
>  	/* Input timings for adjusted_mode */
>  	struct psb_intel_sdvo_dtd input_dtd;
>  =

> @@ -958,7 +960,6 @@ static bool psb_intel_sdvo_mode_fixup(struct drm_enco=
der *encoder,
>  				  struct drm_display_mode *adjusted_mode)
>  {
>  	struct psb_intel_sdvo *psb_intel_sdvo =3D to_psb_intel_sdvo(encoder);
> -	int multiplier;
>  =

>  	/* We need to construct preferred input timings based on our
>  	 * output timings.  To do that, we have to set the output
> @@ -985,8 +986,9 @@ static bool psb_intel_sdvo_mode_fixup(struct drm_enco=
der *encoder,
>  	/* Make the CRTC code factor in the SDVO pixel multiplier.  The
>  	 * SDVO device will factor out the multiplier during mode_set.
>  	 */
> -	multiplier =3D psb_intel_sdvo_get_pixel_multiplier(adjusted_mode);
> -	psb_intel_mode_set_pixel_multiplier(adjusted_mode, multiplier);
> +	psb_intel_sdvo->pixel_multiplier =3D
> +		psb_intel_sdvo_get_pixel_multiplier(adjusted_mode);
> +	adjusted_mode->clock *=3D psb_intel_sdvo->pixel_multiplier;
>  =

>  	return true;
>  }
> @@ -1002,7 +1004,6 @@ static void psb_intel_sdvo_mode_set(struct drm_enco=
der *encoder,
>  	u32 sdvox;
>  	struct psb_intel_sdvo_in_out_map in_out;
>  	struct psb_intel_sdvo_dtd input_dtd;
> -	int pixel_multiplier =3D psb_intel_mode_get_pixel_multiplier(adjusted_m=
ode);
>  	int rate;
>  	int need_aux =3D IS_MRST(dev) ? 1 : 0;
>  =

> @@ -1060,7 +1061,7 @@ static void psb_intel_sdvo_mode_set(struct drm_enco=
der *encoder,
>  =

>  	(void) psb_intel_sdvo_set_input_timing(psb_intel_sdvo, &input_dtd);
>  =

> -	switch (pixel_multiplier) {
> +	switch (psb_intel_sdvo->pixel_multiplier) {
>  	default:
>  	case 1: rate =3D SDVO_CLOCK_RATE_MULT_1X; break;
>  	case 2: rate =3D SDVO_CLOCK_RATE_MULT_2X; break;
> -- =

> 2.24.1
> =


-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
