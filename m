Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F287155BF7
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2020 17:39:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35AF16E0AF;
	Fri,  7 Feb 2020 16:39:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 094266E0DC
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Feb 2020 16:39:30 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id s10so3214591wmh.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 07 Feb 2020 08:39:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=XVUWQ66dkvZlVhMgAVolskWz95Cn5Ra1ERHvEZJqaYU=;
 b=imdJYPDbxgBxcEGy5/0Fk4y4lA24If9JaSQrfXeb+ytYxtCY1ZgjtUpQeE864ZDIzy
 Lu3Tx+FuAhR7qSTfNnXKIbP/MqXPOa59h+zX85TpuYlao7pRQTUqS16GpykN5X2FSwc0
 5eJZDPwFl92R1CJPMbybP52FwJ67VubAdrl24=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=XVUWQ66dkvZlVhMgAVolskWz95Cn5Ra1ERHvEZJqaYU=;
 b=HGxful377EGr1Ex+XFyZ5EiF6tAcpWTZo6EVzrbsDJOWwt3HTd9tyA7tLcWN2yL0G8
 afRlh9I75GTS9DS9KIzE+Yqq1u6IA6hBND9byH0uDyrdEtizVcbsiwaGXKy+pBZohLF6
 zPbo0IwoxPf7hi3LdcoiQjmsrhl0DeeVp/aJJZFdwjBlfpt5XkuaGpHj3SO4DfPoph9I
 m2WIBZzFIoCFejLuJe9aL2gAH6IX4uLOMiN+0QDOX7yvaCmCISAYaCTDezKcMbIzbt3C
 O462TmGmG7M6IDmo4xmU51XJHRIDCWWQRqs+rE0+pEyXrNl/Ix4vJKc15nPtw5yozv4E
 6vsg==
X-Gm-Message-State: APjAAAVn/WTEqMzpQlGN0PTqZI59eH3FHg2x6yHnWX4FwEUJPwwO6Ud+
 ffPZ1GR6phXaOVoR8U67/r2TPA==
X-Google-Smtp-Source: APXvYqw9hxfRNiAA9wvQJLL6hjC6m8Fm4Fbnb48eJnmgfAxBUDtG1TcxAhMDLP7HlXHXWqmu2KZwBw==
X-Received: by 2002:a7b:ce18:: with SMTP id m24mr5210736wmc.123.1581093568714; 
 Fri, 07 Feb 2020 08:39:28 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id a22sm4076271wmd.20.2020.02.07.08.39.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 Feb 2020 08:39:27 -0800 (PST)
Date: Fri, 7 Feb 2020 17:39:26 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200207163926.GN43062@phenom.ffwll.local>
References: <20200207135950.6655-1-ville.syrjala@linux.intel.com>
 <20200207135950.6655-7-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200207135950.6655-7-ville.syrjala@linux.intel.com>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
Subject: Re: [Intel-gfx] [PATCH v2 6/6] drm: Validate encoder->possible_crtcs
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

On Fri, Feb 07, 2020 at 03:59:50PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> WARN if the encoder possible_crtcs is effectively empty or contains
> bits for non-existing crtcs.
> =

> TODO: Or should we perhapst just filter out any bit for a
> non-exisiting crtc?
> =

> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

From a quick grep it looks like at least most drivers seem to get this
right. Worth a shot to find the hold-outs.

Two things:
- Imo also best to move into the drm_mode_config_validate I suggested.
- Please update the kerneldoc for drm_encoder.possible_crtcs to mention
  that this will WARN if you get it wrong (and maybe remove the line that
  most drivers screw this up).

Check itself lgtm.
-Daniel

> ---
>  drivers/gpu/drm/drm_encoder.c | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> =

> diff --git a/drivers/gpu/drm/drm_encoder.c b/drivers/gpu/drm/drm_encoder.c
> index bc2246f27e0d..f16b2a2518d7 100644
> --- a/drivers/gpu/drm/drm_encoder.c
> +++ b/drivers/gpu/drm/drm_encoder.c
> @@ -107,6 +107,23 @@ static void validate_possible_clones(struct drm_enco=
der *encoder)
>  	     encoder->possible_clones, encoder_mask);
>  }
>  =

> +static void validate_possible_crtcs(struct drm_encoder *encoder)
> +{
> +	struct drm_device *dev =3D encoder->dev;
> +	struct drm_crtc *crtc;
> +	u32 crtc_mask =3D 0;
> +
> +	drm_for_each_crtc(crtc, dev)
> +		crtc_mask |=3D drm_crtc_mask(crtc);
> +
> +	WARN((encoder->possible_crtcs & crtc_mask) =3D=3D 0 ||
> +	     (encoder->possible_crtcs & ~crtc_mask) !=3D 0,
> +	     "Bogus possible_crtcs: "
> +	     "[ENCODER:%d:%s] possible_crtcs=3D0x%x (full crtc mask=3D0x%x)\n",
> +	     encoder->base.id, encoder->name,
> +	     encoder->possible_crtcs, crtc_mask);
> +}
> +
>  int drm_encoder_register_all(struct drm_device *dev)
>  {
>  	struct drm_encoder *encoder;
> @@ -115,6 +132,7 @@ int drm_encoder_register_all(struct drm_device *dev)
>  	fixup_possible_clones(dev);
>  =

>  	drm_for_each_encoder(encoder, dev) {
> +		validate_possible_crtcs(encoder);
>  		validate_possible_clones(encoder);
>  =

>  		if (encoder->funcs->late_register)
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
