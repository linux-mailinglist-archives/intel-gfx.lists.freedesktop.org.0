Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0075615A43C
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2020 10:08:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7C176EA1B;
	Wed, 12 Feb 2020 09:08:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 249F06EA1B
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Feb 2020 09:07:59 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id z3so1241170wru.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Feb 2020 01:07:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=vFShrkZQ7njBJsSYKFbhYyD4yA00CpiBRMYW1A7EwPk=;
 b=E6ZsY7SlGxQXujzejiJZZWpqyGtNuFUabvI4YSp3PYT1MqgkMPyjfOj929DffScN1C
 nGUaqomtG1VGTj3IBwUbzrIK3dg03UYwxQu/2dC2f5GYg+GM+V5KK+z0k22yEN4H6j4r
 wS/XHtNpEvhvbnbqr84qsXoaJZS7KB0+7l9vc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=vFShrkZQ7njBJsSYKFbhYyD4yA00CpiBRMYW1A7EwPk=;
 b=lRPZDGX43GHW29UYz+FUDlT7hjJ8zfOoqVm9ihsaDtuMwYJ+lsPhc2q7LKX1hFrpre
 OgqZn6K0r9wnaNdMvadDQSbFoxEwfHrQ5jD3PG5CsJJAPnmPFxc+4KBzQfFXKs0yDR2U
 cN9Pyav0B4Cn2hOE5A9C/39ID5Viu/Kmq84ZlNKj15JOMgvYWUDvqVcsYYODihgw0Cbu
 gE3xfave1DusWneAdTjtsrblexHIsaHRBlnuEGUH/p8IQ3AtOeeCTveyInPuJThNp74b
 XEK3UXfrtMtdNzPoaL9fnful36B2TLgz3dDWqTTSJtwYBMWJgqwZLqM87OIDgF9shAwL
 9CcA==
X-Gm-Message-State: APjAAAX4j4Iotg2Fghr1YVuKR0vLZBIjhSXW/Z3n7Nug3LeqEhtKJAPa
 k3/2SSMA5XpTPflFCQbc0ijP2A==
X-Google-Smtp-Source: APXvYqwPeN5QYSmH6uoZxDQIAhGh+j3c4lkDvjMvH5wMo51f565wV4rhtgaGZPOKVbjKHDkYkt/t9g==
X-Received: by 2002:adf:bc87:: with SMTP id g7mr14294566wrh.121.1581498477704; 
 Wed, 12 Feb 2020 01:07:57 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id 133sm7889614wmd.5.2020.02.12.01.07.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 12 Feb 2020 01:07:56 -0800 (PST)
Date: Wed, 12 Feb 2020 10:07:55 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 Thierry Reding <treding@nvidia.com>
Message-ID: <20200212090755.GP2363188@phenom.ffwll.local>
References: <20200211162208.16224-1-ville.syrjala@linux.intel.com>
 <20200211162208.16224-8-ville.syrjala@linux.intel.com>
 <20200211170545.GN2363188@phenom.ffwll.local>
 <20200211171450.GZ13686@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200211171450.GZ13686@intel.com>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
Subject: Re: [Intel-gfx] [PATCH v3 7/7] drm: Allow drivers to leave
 encoder->possible_crtcs==0
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
Cc: Thomas Zimmermann <tzimmermann@suse.de>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 11, 2020 at 07:14:51PM +0200, Ville Syrj=E4l=E4 wrote:
> On Tue, Feb 11, 2020 at 06:05:45PM +0100, Daniel Vetter wrote:
> > On Tue, Feb 11, 2020 at 06:22:08PM +0200, Ville Syrjala wrote:
> > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > =

> > > Let's simplify life of driver by allowing them to leave
> > > encoder->possible_crtcs unset if they have no restrictions
> > > in crtc<->encoder linkage. We'll just populate possible_crtcs
> > > with the full crtc mask when registering the encoder so that
> > > userspace doesn't have to deal with drivers not populating
> > > this correctly.
> > > =

> > > Cc: Thomas Zimmermann <tzimmermann@suse.de>
> > > Cc: Daniel Vetter <daniel@ffwll.ch>
> > > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > ---
> > > We might not actually need/want this, but included it here for
> > > future reference if that assumption turns out to be wrong.
> > =

> > I think this one is most definitely needed. _Lots_ of drivers get this
> > toally wrong and just leave the value blank. It's encoded as official
> > fallback in most userspace compositors.
> =

> OK. It's been a while since I dug around so can't really remmber how
> this was being handled. I'll reorder before pushing.

Hm otoh having "works with all crtcs" as default is a bit dangerous,
whereas the "cannot be cloned" default for possible_clones is perfectly
safe.

So now I'm kinda not sure whether this is a bright idea, and we shouldn't
just eat the cost of fixing up all the various WARNING backtraces your
previous patch triggers. I've done a full review and the following look
suspect:

- tegara/sor.c Strangely it's the only one, the other output drivers do
  seem to set the possible_crtcs mask to something useful.

Everything else seems to be fine. I'd say let's drop this patch, and I'm
adding Thierry to shed some light on what's going on in tegra/sor.c.
-Daniel

> =

> > =

> > Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> > =

> > > ---
> > >  drivers/gpu/drm/drm_mode_config.c | 15 ++++++++++++++-
> > >  include/drm/drm_encoder.h         |  4 ++++
> > >  2 files changed, 18 insertions(+), 1 deletion(-)
> > > =

> > > diff --git a/drivers/gpu/drm/drm_mode_config.c b/drivers/gpu/drm/drm_=
mode_config.c
> > > index 4c1b350ddb95..ce18c3dd0bde 100644
> > > --- a/drivers/gpu/drm/drm_mode_config.c
> > > +++ b/drivers/gpu/drm/drm_mode_config.c
> > > @@ -592,6 +592,17 @@ static u32 full_crtc_mask(struct drm_device *dev)
> > >  	return crtc_mask;
> > >  }
> > >  =

> > > +/*
> > > + * Make life easy for drivers by allowing them to leave
> > > + * possible_crtcs unset if there are not crtc<->encoder
> > > + * restrictions.
> > > + */
> > > +static void fixup_encoder_possible_crtcs(struct drm_encoder *encoder)
> > > +{
> > > +	if (encoder->possible_crtcs =3D=3D 0)
> > > +		encoder->possible_crtcs =3D full_crtc_mask(encoder->dev);
> > > +}
> > > +
> > >  static void validate_encoder_possible_crtcs(struct drm_encoder *enco=
der)
> > >  {
> > >  	u32 crtc_mask =3D full_crtc_mask(encoder->dev);
> > > @@ -608,8 +619,10 @@ void drm_mode_config_validate(struct drm_device =
*dev)
> > >  {
> > >  	struct drm_encoder *encoder;
> > >  =

> > > -	drm_for_each_encoder(encoder, dev)
> > > +	drm_for_each_encoder(encoder, dev) {
> > >  		fixup_encoder_possible_clones(encoder);
> > > +		fixup_encoder_possible_crtcs(encoder);
> > > +	}
> > >  =

> > >  	drm_for_each_encoder(encoder, dev) {
> > >  		validate_encoder_possible_clones(encoder);
> > > diff --git a/include/drm/drm_encoder.h b/include/drm/drm_encoder.h
> > > index b236269f41ac..bd033c5618bf 100644
> > > --- a/include/drm/drm_encoder.h
> > > +++ b/include/drm/drm_encoder.h
> > > @@ -142,6 +142,10 @@ struct drm_encoder {
> > >  	 * the bits for all &drm_crtc objects this encoder can be connected=
 to
> > >  	 * before calling drm_dev_register().
> > >  	 *
> > > +	 * As an exception to the above rule if any crtc can be connected to
> > > +	 * the encoder the driver can leave @possible_crtcs set to 0. The c=
ore
> > > +	 * will automagically fix this up by setting the bit for every crtc.
> > > +	 *
> > >  	 * You will get a WARN if you get this wrong in the driver.
> > >  	 *
> > >  	 * Note that since CRTC objects can't be hotplugged the assigned in=
dices
> > > -- =

> > > 2.24.1
> > > =

> > =

> > -- =

> > Daniel Vetter
> > Software Engineer, Intel Corporation
> > http://blog.ffwll.ch
> =

> -- =

> Ville Syrj=E4l=E4
> Intel

-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
