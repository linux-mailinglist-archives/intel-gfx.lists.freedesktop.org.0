Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B7B7B155BE6
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2020 17:36:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA49C6E094;
	Fri,  7 Feb 2020 16:36:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 847F76E094
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Feb 2020 16:36:17 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id f129so3484513wmf.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 07 Feb 2020 08:36:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=Xr0r1NPoghHw+wX1zbKLRQxBTFmc0m0oEomBjFuzToM=;
 b=I91Ao0MC/+Sfr+pi31770W3toz4FNxpwk1Bb5idAfibYLLF7nQ+gZjYQXHnK3UsU4r
 HIcdWvBDHlXCSEBtBhJbhFewn0ScqFyeCN8st1LUgNr41HEBX4VctJjBO6HIWlZpZ6GF
 aqghDIG/hNudginaf3QJCanL7pDqGLC4SbcGQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=Xr0r1NPoghHw+wX1zbKLRQxBTFmc0m0oEomBjFuzToM=;
 b=LmgmyxGjcbtGElZp85uf+AkbcGD0CEhivKZixsF8KphZb3JvpwQsh+ZQ1DJKQGADKt
 UKFByNqBIAyYjbK2oVRNzlD0Nm2B8AMoRfc3CqAXu9gC4gm4umx4IqDybe1v3tdj51eS
 Q/MuFOuPcERbuCGMR/t7PPhMr0Z01FGPL4usYCQKZ9hhG60KmwT3PPUfAfxD0w8GE+Eq
 M1knR244Pl6ePLIrD+rkPMg/xdkqWJkVcoTKRYh6SKF9spe0LmYMThnNWS7V5DZFgag9
 /2q/+skSFoqVsMz1mSmjn9Tgas88l6UnSguClKWxf5IratLOvCinhmzHYsYb0qq64TjZ
 BehA==
X-Gm-Message-State: APjAAAW8WyeG8Wh033UpP67AX4fCpQ81fM9T1hDbO8ILD8BwPM35cku6
 0gEIY/uL6K4fKJdXDy/RAb/m1w==
X-Google-Smtp-Source: APXvYqzA/+lmNPvP32/zA1Dqh6EJejEjOBvyyisRjfr+1ATQ0Qj/UrFORq5VwDruZ4QHXVIx1BWUAw==
X-Received: by 2002:a05:600c:2383:: with SMTP id
 m3mr5346187wma.32.1581093376217; 
 Fri, 07 Feb 2020 08:36:16 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id g21sm3840013wmh.17.2020.02.07.08.36.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 Feb 2020 08:36:15 -0800 (PST)
Date: Fri, 7 Feb 2020 17:36:13 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200207163613.GM43062@phenom.ffwll.local>
References: <20200207135950.6655-1-ville.syrjala@linux.intel.com>
 <20200207135950.6655-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200207135950.6655-2-ville.syrjala@linux.intel.com>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
Subject: Re: [Intel-gfx] [PATCH v2 1/6] drm: Include the encoder itself in
 possible_clones
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
Cc: intel-gfx@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Feb 07, 2020 at 03:59:45PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> The docs say possible_clones should always include the encoder itself.
> Since most drivers don't want to deal with the complexities of cloning
> let's allow them to set possible_clones=3D0 and instead we'll fix that
> up in the core.
> =

> We can't put this special case into drm_encoder_init() because drivers
> will have to fill up possible_clones after adding all the relevant
> encoders. Otherwise they wouldn't know the proper encoder indexes to
> use. So we'll just do it just before registering the encoders.
> =

> TODO: Should we do something similar for possible_crtcs=3D=3D0?
> =

> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/drm_encoder.c | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> =

> diff --git a/drivers/gpu/drm/drm_encoder.c b/drivers/gpu/drm/drm_encoder.c
> index e555281f43d4..f761d9306028 100644
> --- a/drivers/gpu/drm/drm_encoder.c
> +++ b/drivers/gpu/drm/drm_encoder.c
> @@ -66,11 +66,26 @@ static const struct drm_prop_enum_list drm_encoder_en=
um_list[] =3D {
>  	{ DRM_MODE_ENCODER_DPI, "DPI" },
>  };
>  =

> +/*
> + * For some reason we want the encoder itself included in
> + * possible_clones. Make life easy for drivers by allowing them
> + * to leave possible_clones unset if no cloning is possible.
> + */
> +static void fixup_possible_clones(struct drm_device *dev)
> +{
> +	struct drm_encoder *encoder;
> +
> +	drm_for_each_encoder(encoder, dev)
> +		encoder->possible_clones |=3D drm_encoder_mask(encoder);
> +}
> +
>  int drm_encoder_register_all(struct drm_device *dev)
>  {
>  	struct drm_encoder *encoder;
>  	int ret =3D 0;
>  =

> +	fixup_possible_clones(dev);

This is way too late, we've already registered the chardev minors at this
point. I think we need a new drm_mode_config_validate() at the top of
drm_dev_register, but which does _not_ run when the driver has a ->load
callback (which soon will be no driver at all).

Cheers, Daniel


> +
>  	drm_for_each_encoder(encoder, dev) {
>  		if (encoder->funcs->late_register)
>  			ret =3D encoder->funcs->late_register(encoder);
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
