Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E89A914BC5E
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 15:55:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 513C18972C;
	Tue, 28 Jan 2020 14:55:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14E6D89C80
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2020 14:55:20 +0000 (UTC)
Received: by mail-wm1-x343.google.com with SMTP id g1so2831903wmh.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2020 06:55:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=/37CTIlAaeXXaG0RCavAIVg7uVtFN5ZHj7kky3b54o8=;
 b=Z+/Eh0pZRMXXMMoZglHAl7gO8OiuoUTnGeixEHqNFbPOsBfr1W4wNHZIeCtwJyh8C3
 NdUvsh2ObcnF3GOuu6X9NWgr9Vnvmp+Fm4Zd8YQYtICVzJry0+wUmHzdrldrEGTO4IpM
 YWpSgnajJ0dzqi5Du6AVU/TxPPUF8Ft0VTjR8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=/37CTIlAaeXXaG0RCavAIVg7uVtFN5ZHj7kky3b54o8=;
 b=ENfmxX9k+Bep9PmaKFyIIOz38w/8RPJCmpYVR/NnEK08eXJ/FnqXPX+ew7ZiUSZAof
 rDpPKFqNUxKjgA9bgCyKzN4JjLOobcXivr2oxBGTyjGBQQJRluTCHaXzFlpDuLqUs8bC
 h+qciCNh+OyGnP2tDhFxy3ox1GipuybHRmaPUWfcdMKO41oRfE5lphWD4abPjMUstt93
 m91VgND00HDD8PNr4MD82P2NHfYhO6+vM/AJ8H6I0R1DQro+o6bNdalgziF33zK+OV1d
 v13TvnqRQXmUVUNfSg85Vp143KPJ71l4I9L+1nWmDhjAbreN3xNOflLt0SjXrx2LiKwi
 9PJA==
X-Gm-Message-State: APjAAAVbXlCoGci9wvjF4AwjQ2WBIJ9uWKiaUMRAZx50tFFWvTY2DYcj
 0v3k5+4q9kMmFXaf32Nt4Ujzpxdv9RdMkA==
X-Google-Smtp-Source: APXvYqyZ1NosJQJOIGOxM5GMUTczmANweV1SYzUUpV9pHwkpkrFkhgD1+XAknsflD6v+5dk/zmRlkw==
X-Received: by 2002:a05:600c:20c6:: with SMTP id
 y6mr5518856wmm.95.1580223318672; 
 Tue, 28 Jan 2020 06:55:18 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id l3sm25782566wrt.29.2020.01.28.06.55.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Jan 2020 06:55:17 -0800 (PST)
Date: Tue, 28 Jan 2020 15:55:16 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>
Message-ID: <20200128145516.GE43062@phenom.ffwll.local>
References: <20200128104602.1459802-1-daniel.vetter@ffwll.ch>
 <20200128104602.1459802-2-daniel.vetter@ffwll.ch>
 <098c0e3c-e885-ac32-9c71-77ba75cb33c6@tronnes.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <098c0e3c-e885-ac32-9c71-77ba75cb33c6@tronnes.org>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/fbdev-helper: don't force restores
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 28, 2020 at 12:52:05PM +0100, Noralf Tr=F8nnes wrote:
> =

> =

> Den 28.01.2020 11.45, skrev Daniel Vetter:
> > Instead check for master status, in case we've raced.
> > =

> > This is the last exception to the general rule that we restore fbcon
> > only when there's no master active. Compositors are supposed to drop
> > their master status before they switch to a different console back to
> > text mode (or just switch to text mode directly, without a vt switch).
> > =

> > This is known to break some subtests of kms_fbcon_fbt in igt, but they'=
re
> > just wrong - it does a graphics/text mode switch for the vt without
> > updating the master status.
> > =

> > Also add a comment to the drm_client->restore hook that this is expected
> > going forward from all clients (there's currently just one).
> > =

> > v2: Also drop the force in pan_display
> > =

> > Cc: Noralf Tr=F8nnes <noralf@tronnes.org>
> > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > ---
> >  drivers/gpu/drm/drm_fb_helper.c | 14 ++------------
> >  include/drm/drm_client.h        |  5 +++++
> >  2 files changed, 7 insertions(+), 12 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/drm_fb_helper.c b/drivers/gpu/drm/drm_fb_h=
elper.c
> > index 4c7cbce7bae7..926187a82255 100644
> > --- a/drivers/gpu/drm/drm_fb_helper.c
> > +++ b/drivers/gpu/drm/drm_fb_helper.c
> > @@ -250,17 +250,7 @@ int drm_fb_helper_restore_fbdev_mode_unlocked(stru=
ct drm_fb_helper *fb_helper)
> >  		return 0;
> >  =

> >  	mutex_lock(&fb_helper->lock);
> > -	/*
> > -	 * TODO:
> > -	 * We should bail out here if there is a master by dropping _force.
> > -	 * Currently these igt tests fail if we do that:
> > -	 * - kms_fbcon_fbt@psr
> > -	 * - kms_fbcon_fbt@psr-suspend
> > -	 *
> > -	 * So first these tests need to be fixed so they drop master or don't
> > -	 * have an fd open.
> > -	 */
> > -	ret =3D drm_client_modeset_commit_force(&fb_helper->client);
> > +	ret =3D drm_client_modeset_commit(&fb_helper->client);
> >  =

> >  	do_delayed =3D fb_helper->delayed_hotplug;
> >  	if (do_delayed)
> > @@ -1357,7 +1347,7 @@ static int pan_display_atomic(struct fb_var_scree=
ninfo *var,
> >  =

> >  	pan_set(fb_helper, var->xoffset, var->yoffset);
> >  =

> > -	ret =3D drm_client_modeset_commit_force(&fb_helper->client);
> > +	ret =3D drm_client_modeset_commit(&fb_helper->client);
> =

> This needs _force because drm_fb_helper_pan_display() already holds the
> locks.

Geez, now I remember again why I did _not_ include this in v1 :-/

> With that fixed:
> Reviewed-by: Noralf Tr=F8nnes <noralf@tronnes.org>
> =

> Maybe a better and more descriptive name would have been
> drm_client_modeset_commit_locked().

This sounds like a good idea, I'll do a patch for this. I'll need to
resend the series anyway to be able to co-test it with the igt side fix.

Thanks for your review.
-Daniel

> =

> Noralf.
> =

> >  	if (!ret) {
> >  		info->var.xoffset =3D var->xoffset;
> >  		info->var.yoffset =3D var->yoffset;
> > diff --git a/include/drm/drm_client.h b/include/drm/drm_client.h
> > index 5cf2c5dd8b1e..d01d311023ac 100644
> > --- a/include/drm/drm_client.h
> > +++ b/include/drm/drm_client.h
> > @@ -44,6 +44,11 @@ struct drm_client_funcs {
> >  	 * returns zero gets the privilege to restore and no more clients are
> >  	 * called. This callback is not called after @unregister has been cal=
led.
> >  	 *
> > +	 * Note that the core does not guarantee exclusion against concurrent
> > +	 * drm_open(). Clients need to ensure this themselves, for example by
> > +	 * using drm_master_internal_acquire() and
> > +	 * drm_master_internal_release().
> > +	 *
> >  	 * This callback is optional.
> >  	 */
> >  	int (*restore)(struct drm_client_dev *client);
> > =


-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
