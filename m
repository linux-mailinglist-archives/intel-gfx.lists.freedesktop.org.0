Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 65A6B1595E6
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2020 18:04:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFD006EF21;
	Tue, 11 Feb 2020 17:04:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C86F6EF23
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2020 17:04:34 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id w12so13354178wrt.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2020 09:04:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=M/9yAk4ajGiOU0pD45oxJFBze34TCG7TzYIiHX6LFmc=;
 b=Ds0yz1Uol74MXc7pQcrbMsFuayWcoSmxa33+l2xVSgdD1jMKjQ1h91VO2FS/ZfL5Pr
 QyQqOtaUgnGF39yzyd9xdFlB/3sBS5b/yhqu86VjzbgV1UXLZ7PrKnVWjYPn+wg9dFhM
 csFq5mNbTlYJYJke4b7QyT+Xe6MckWvIS4MTg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=M/9yAk4ajGiOU0pD45oxJFBze34TCG7TzYIiHX6LFmc=;
 b=igYpzO6wqE6KFna/A0nUAOnblPo9tswu7XkJjkZqQ8TolHxQ323HR4yrCjLwKDXSKq
 UDDhKGP0vqJYz/cJH++KD9X0PHd5Zo0QNZOtemLcOxmwFzwT3YpqhOnwGAi5rjj7XDXw
 wmmCoXfjP1whA8NOK5NDJUODWgKJkQOjaBzv+PMIoo1ZUZkFKFEDFVz26tpSPf2bBWRv
 sc+Sx7XGusKLKgkDUX7dzzxQwTU8WoZfE8232OjArZNYU+E3f907mmHHZtxf+EfZTQa0
 QzID59O0tZuJU2RuDiehlEkEpi/5AprF2S+Lb7x6mz6ZS7hx3/Mc4thIDwqsg6FgIMhK
 8wwQ==
X-Gm-Message-State: APjAAAUeMgrBx91SXoQzKO41A0UeOY7fvYxVDfI3aahmAn0yfOLzTXVf
 LmFcjxS9M2CGnGuqRISJ5FmlB1slm/w=
X-Google-Smtp-Source: APXvYqzeGmMz2l3o90EjlIUi29ZojEuqVh0BwyYf8sBhghFcqWhzc9rC8AlXbzmRdpquwKVpIIHnDw==
X-Received: by 2002:a5d:4204:: with SMTP id n4mr9305641wrq.123.1581440672459; 
 Tue, 11 Feb 2020 09:04:32 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id x10sm6009723wrp.58.2020.02.11.09.04.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Feb 2020 09:04:31 -0800 (PST)
Date: Tue, 11 Feb 2020 18:04:29 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200211170429.GM2363188@phenom.ffwll.local>
References: <20200211162208.16224-1-ville.syrjala@linux.intel.com>
 <20200211162208.16224-7-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200211162208.16224-7-ville.syrjala@linux.intel.com>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
Subject: Re: [Intel-gfx] [PATCH v3 6/7] drm: Validate encoder->possible_crtcs
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

On Tue, Feb 11, 2020 at 06:22:07PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> WARN if the encoder possible_crtcs is effectively empty or contains
> bits for non-existing crtcs.
> =

> v2: Move to drm_mode_config_validate() (Daniel)
>     Make the docs say we WARN when this is wrong (Daniel)
>     Extract full_crtc_mask()
> =

> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

When pushing the fixup needs to be applied before the validation patch
here, because we don't want to anger the bisect gods.

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

I think with the fixup we should be good enough with the existing nonsense
in drivers. Fingers crossed.
-Daniel


> ---
>  drivers/gpu/drm/drm_mode_config.c | 27 ++++++++++++++++++++++++++-
>  include/drm/drm_encoder.h         |  2 +-
>  2 files changed, 27 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/gpu/drm/drm_mode_config.c b/drivers/gpu/drm/drm_mode=
_config.c
> index afc91447293a..4c1b350ddb95 100644
> --- a/drivers/gpu/drm/drm_mode_config.c
> +++ b/drivers/gpu/drm/drm_mode_config.c
> @@ -581,6 +581,29 @@ static void validate_encoder_possible_clones(struct =
drm_encoder *encoder)
>  	     encoder->possible_clones, encoder_mask);
>  }
>  =

> +static u32 full_crtc_mask(struct drm_device *dev)
> +{
> +	struct drm_crtc *crtc;
> +	u32 crtc_mask =3D 0;
> +
> +	drm_for_each_crtc(crtc, dev)
> +		crtc_mask |=3D drm_crtc_mask(crtc);
> +
> +	return crtc_mask;
> +}
> +
> +static void validate_encoder_possible_crtcs(struct drm_encoder *encoder)
> +{
> +	u32 crtc_mask =3D full_crtc_mask(encoder->dev);
> +
> +	WARN((encoder->possible_crtcs & crtc_mask) =3D=3D 0 ||
> +	     (encoder->possible_crtcs & ~crtc_mask) !=3D 0,
> +	     "Bogus possible_crtcs: "
> +	     "[ENCODER:%d:%s] possible_crtcs=3D0x%x (full crtc mask=3D0x%x)\n",
> +	     encoder->base.id, encoder->name,
> +	     encoder->possible_crtcs, crtc_mask);
> +}
> +
>  void drm_mode_config_validate(struct drm_device *dev)
>  {
>  	struct drm_encoder *encoder;
> @@ -588,6 +611,8 @@ void drm_mode_config_validate(struct drm_device *dev)
>  	drm_for_each_encoder(encoder, dev)
>  		fixup_encoder_possible_clones(encoder);
>  =

> -	drm_for_each_encoder(encoder, dev)
> +	drm_for_each_encoder(encoder, dev) {
>  		validate_encoder_possible_clones(encoder);
> +		validate_encoder_possible_crtcs(encoder);
> +	}
>  }
> diff --git a/include/drm/drm_encoder.h b/include/drm/drm_encoder.h
> index 3741963b9587..b236269f41ac 100644
> --- a/include/drm/drm_encoder.h
> +++ b/include/drm/drm_encoder.h
> @@ -142,7 +142,7 @@ struct drm_encoder {
>  	 * the bits for all &drm_crtc objects this encoder can be connected to
>  	 * before calling drm_dev_register().
>  	 *
> -	 * In reality almost every driver gets this wrong.
> +	 * You will get a WARN if you get this wrong in the driver.
>  	 *
>  	 * Note that since CRTC objects can't be hotplugged the assigned indices
>  	 * are stable and hence known before registering all objects.
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
