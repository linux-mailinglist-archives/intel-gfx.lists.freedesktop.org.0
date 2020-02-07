Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 20B8A155BBD
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2020 17:27:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75B4B6E0C8;
	Fri,  7 Feb 2020 16:27:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4ED86EAF7
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Feb 2020 16:27:54 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id p9so3182812wmc.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 07 Feb 2020 08:27:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=g5hFzqcKImqecJTfucQFuqf4KCnGTU9ws8qj9OluTHw=;
 b=jCl+nQIis/QO/xAhgCd91cyiWJm+Rsy/GOe2docaXXwCIPqsJj7I8HKGVzCjF+ceTD
 rBFvmpgtXBe1WUYe7IuUo/w6fPhGkNkD+WI51qLZ2pUahn0A01JXTGKxsIfFR7wGlcyC
 NsRwXzACaoI4haT9Dm1DqML15m24/mLlQhSK4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=g5hFzqcKImqecJTfucQFuqf4KCnGTU9ws8qj9OluTHw=;
 b=SgMQq58HTCDLxP6sf/PD5scPJP1x6EkFB5Jym3GHpmaC71/N13/FXT/XcrowrIqWLG
 K9C89mHYo4gNWouLLBqD+rV8O9LzN/GKilYpeLA244rORHzFDg/FJI9/0JhqAso/tD1h
 a+DzPRfnDVcelyc7YAXWgXhn5OWWzK41Ev1T8bF8D48Nx0nq9MI9NjwGqDZE8piuNcxD
 aWvC5NdjDgNWODq9+/w8zBWVCn48Zh726+vKipKkHsc23JXKoFC8NLvdld6wiePAQaHG
 9wWeiFr/QWH6tJT3AY9lO4myAdBD2lmRgw+en5Dswlsy82kUTRNNxSXPS4mqJn7eiDUu
 52Pg==
X-Gm-Message-State: APjAAAW5iGkSeZLkmNsSK7Tgm0EPhpfkgF8cmwz9JUvgfFrRrl69gZsc
 Flsaq7Fv0fx0p2ZiNHKwaWzpsA==
X-Google-Smtp-Source: APXvYqzghBRbvhuMCpPj1dod2Trka8PzcVPhn6RgQRZl3VB9dyQcghKIukoSbwvzTEcV6l44ac7WvQ==
X-Received: by 2002:a7b:c19a:: with SMTP id y26mr5457495wmi.152.1581092873321; 
 Fri, 07 Feb 2020 08:27:53 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id b10sm4011105wrw.61.2020.02.07.08.27.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 Feb 2020 08:27:52 -0800 (PST)
Date: Fri, 7 Feb 2020 17:27:51 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20200207162751.GJ43062@phenom.ffwll.local>
References: <20200207135950.6655-1-ville.syrjala@linux.intel.com>
 <20200207135950.6655-2-ville.syrjala@linux.intel.com>
 <d58f13cf-6c9e-9a1c-5cbd-e51e1ad04e80@suse.de>
 <20200207145001.GI13686@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200207145001.GI13686@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Thomas Zimmermann <tzimmermann@suse.de>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Feb 07, 2020 at 04:50:01PM +0200, Ville Syrj=E4l=E4 wrote:
> On Fri, Feb 07, 2020 at 03:28:35PM +0100, Thomas Zimmermann wrote:
> > Hi
> > =

> > Am 07.02.20 um 14:59 schrieb Ville Syrjala:
> > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > =

> > > The docs say possible_clones should always include the encoder itself.
> > > Since most drivers don't want to deal with the complexities of cloning
> > > let's allow them to set possible_clones=3D0 and instead we'll fix that
> > > up in the core.
> > > =

> > > We can't put this special case into drm_encoder_init() because drivers
> > > will have to fill up possible_clones after adding all the relevant
> > > encoders. Otherwise they wouldn't know the proper encoder indexes to
> > > use. So we'll just do it just before registering the encoders.
> > > =

> > > TODO: Should we do something similar for possible_crtcs=3D=3D0?
> > > =

> > > Cc: Thomas Zimmermann <tzimmermann@suse.de>
> > > Cc: Daniel Vetter <daniel@ffwll.ch>
> > > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > May this fixup function should warn iff possible_clones was set to non-0
> > by the driver, but the encoder itself is missing.
> =

> Yeah, I guess we could do that.

+1 on that, should catch some bugs at least.

Also can you pls fix up the kerneldoc for drm_encoder.possible_clones,
defacto this now means that 0 is a totally fine setting.
-Daniel

> =

> > In any case
> > =

> > Acked-by: Thomas Zimmermann <tzimmermann@suse.de>
> > =

> > > ---
> > >  drivers/gpu/drm/drm_encoder.c | 15 +++++++++++++++
> > >  1 file changed, 15 insertions(+)
> > > =

> > > diff --git a/drivers/gpu/drm/drm_encoder.c b/drivers/gpu/drm/drm_enco=
der.c
> > > index e555281f43d4..f761d9306028 100644
> > > --- a/drivers/gpu/drm/drm_encoder.c
> > > +++ b/drivers/gpu/drm/drm_encoder.c
> > > @@ -66,11 +66,26 @@ static const struct drm_prop_enum_list drm_encode=
r_enum_list[] =3D {
> > >  	{ DRM_MODE_ENCODER_DPI, "DPI" },
> > >  };
> > >  =

> > > +/*
> > > + * For some reason we want the encoder itself included in
> > > + * possible_clones. Make life easy for drivers by allowing them
> > > + * to leave possible_clones unset if no cloning is possible.
> > > + */
> > > +static void fixup_possible_clones(struct drm_device *dev)
> > > +{
> > > +	struct drm_encoder *encoder;
> > > +
> > > +	drm_for_each_encoder(encoder, dev)
> > > +		encoder->possible_clones |=3D drm_encoder_mask(encoder);
> > > +}
> > > +
> > >  int drm_encoder_register_all(struct drm_device *dev)
> > >  {
> > >  	struct drm_encoder *encoder;
> > >  	int ret =3D 0;
> > >  =

> > > +	fixup_possible_clones(dev);
> > > +
> > >  	drm_for_each_encoder(encoder, dev) {
> > >  		if (encoder->funcs->late_register)
> > >  			ret =3D encoder->funcs->late_register(encoder);
> > > =

> > =

> > -- =

> > Thomas Zimmermann
> > Graphics Driver Developer
> > SUSE Software Solutions Germany GmbH
> > Maxfeldstr. 5, 90409 N=FCrnberg, Germany
> > (HRB 36809, AG N=FCrnberg)
> > Gesch=E4ftsf=FChrer: Felix Imend=F6rffer
> > =

> =

> =

> =

> =

> -- =

> Ville Syrj=E4l=E4
> Intel
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
