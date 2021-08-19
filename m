Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ABF623F154D
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Aug 2021 10:41:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB4BC6E916;
	Thu, 19 Aug 2021 08:41:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com
 [IPv6:2a00:1450:4864:20::32b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 007CE6E916
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Aug 2021 08:41:07 +0000 (UTC)
Received: by mail-wm1-x32b.google.com with SMTP id
 f13-20020a1c6a0d000000b002e6fd0b0b3fso4627669wmc.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Aug 2021 01:41:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=o9+bz9xYU5JsIuncp2IYc1juRh8CoRxogtXF7nP8As0=;
 b=eXQeEBPE/PKUjNtuDrmfkJKnwRQmkeV18owHqIy/8kei5beiR9F6Cp0xtSAGSGO/G5
 Nmugb+FrCSDQvIlSUlN70EO76Oo5NMxOz/64oJOjOEFHgKeMiAJy1BmA4A/LMs9TnvES
 9J/L0LAgFeO2qgGJNmAqGbgWpco9jucIvKxcU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=o9+bz9xYU5JsIuncp2IYc1juRh8CoRxogtXF7nP8As0=;
 b=Lz9Hi/NsIeIo9NmRRx2QOzzfadtI6KefX0YX7jEDSpD64ixEBh0WiJufPyah57eFRk
 V6t30d+IV06QLIr3imRjuqlNlxswERPce+1xTk4HqoNRSLKHAlSR3TPnPSMwINxwbzxp
 tlrS44lF2clXEJbr3HVfaSH9FejB46hRHk+mw9i9t1o7QoSnE7ZeQZsT4uba4/O67wdA
 ue9WnPjjSdv+plCEX1ZFIv8I/e06ph3IJ3eRd0FTZMO93jntJ0Yx2qpy/ytEy92MDR7O
 c2M3feXsAzM3vcLxRRGQWtsvslw8KWxJ61nWXkNIonLE5tiOa/NmrQ4kEbTp5F+OpTtm
 BJZg==
X-Gm-Message-State: AOAM530IErAB9clqDlnm121chSAWHwzyf2bPMZLfQdnZeG+HshmF2FvG
 OiuSy1sh6elbevVf7IfksrLYZg==
X-Google-Smtp-Source: ABdhPJxClcK3NRbTU/mCIxI9eSRlZdizwBn8ACl1VjtXU4ecrqxceKRQM4XFRE2pm2GWoJs/ezlnTQ==
X-Received: by 2002:a7b:cc16:: with SMTP id f22mr12479637wmh.99.1629362466505; 
 Thu, 19 Aug 2021 01:41:06 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id w9sm1932333wmc.19.2021.08.19.01.41.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Aug 2021 01:41:06 -0700 (PDT)
Date: Thu, 19 Aug 2021 10:41:04 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: "Souza, Jose" <jose.souza@intel.com>
Cc: "daniel@ffwll.ch" <daniel@ffwll.ch>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "drawat@vmware.com" <drawat@vmware.com>,
 "Vetter, Daniel" <daniel.vetter@intel.com>,
 "robdclark@gmail.com" <robdclark@gmail.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>
Message-ID: <YR4ZIFAITm04ISei@phenom.ffwll.local>
References: <20210817232604.160029-1-jose.souza@intel.com>
 <YRzYv6lj5k3KOrPC@phenom.ffwll.local>
 <33375174e318c2772c0d5053ad6d7fd10bef8c49.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <33375174e318c2772c0d5053ad6d7fd10bef8c49.camel@intel.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH] drm/damage_helper: Fix handling of cursor
 dirty buffers
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Aug 18, 2021 at 04:44:44PM +0000, Souza, Jose wrote:
> On Wed, 2021-08-18 at 11:54 +0200, Daniel Vetter wrote:
> > On Tue, Aug 17, 2021 at 04:26:04PM -0700, José Roberto de Souza wrote:
> > > Cursors don't have a framebuffer so the fb comparisson was always
> > > failing and atomic state was being committed without any plane state.
> > > 
> > > So here checking if objects match when checking cursors.
> > 
> > This looks extremely backwards ... what exactly is this fixing? If this
> > isn't based on a real world compositor usage but some igt, then I'd say
> > the igt here is very wrong.
> 
> Yes it is IGT.
> Writing to cursor buffer current in the screen and calling
> drmModeDirtyFB() causes a empty atomic commit by
> drm_atomic_helper_dirtyfb().

Ok if the cursor write is done through legacy cursor uapi then trying to
make that work with dirtyfb doesn't make sense.

But you've found a bug at least, namely the empty commit. I think that
should be filtered out, and our dirtyfb testcases (I hope we have some
vendor-agnostic kms_dirtyfb already) should be extended with a testcase
where we call dirtyfb on an fb which is not currently used anywhere.

Wrt the cursor: The legacy cursor ioctls get remapped onto the cursor
plane, which means they come in as full commits. So there's really not
dirtyfb required afterwards. The funny thing about the cursor ioctls is
that they never supported frontbuffer rendering. You _always_ had to call
them to upload data. So the test is invalid from a functional pov too.
-Daniel

> 
> 
> > -Daniel
> > 
> > > Fixes: b9fc5e01d1ce ("drm: Add helper to implement legacy dirtyfb")
> > > Cc: Daniel Vetter <daniel.vetter@intel.com>
> > > Cc: Rob Clark <robdclark@gmail.com>
> > > Cc: Deepak Rawat <drawat@vmware.com>
> > > Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> > > Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> > > ---
> > >  drivers/gpu/drm/drm_damage_helper.c | 8 +++++++-
> > >  1 file changed, 7 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/gpu/drm/drm_damage_helper.c b/drivers/gpu/drm/drm_damage_helper.c
> > > index 8eeff0c7bdd47..595187d97c131 100644
> > > --- a/drivers/gpu/drm/drm_damage_helper.c
> > > +++ b/drivers/gpu/drm/drm_damage_helper.c
> > > @@ -157,12 +157,18 @@ int drm_atomic_helper_dirtyfb(struct drm_framebuffer *fb,
> > >  retry:
> > >  	drm_for_each_plane(plane, fb->dev) {
> > >  		struct drm_plane_state *plane_state;
> > > +		bool match;
> > >  
> > >  		ret = drm_modeset_lock(&plane->mutex, state->acquire_ctx);
> > >  		if (ret)
> > >  			goto out;
> > >  
> > > -		if (plane->state->fb != fb) {
> > > +		match = plane->state->fb == fb;
> > > +		/* Check if objs match to handle dirty buffers of cursors */
> > > +		if (plane->type == DRM_PLANE_TYPE_CURSOR && plane->state->fb)
> > > +			match |= fb->obj[0] == plane->state->fb->obj[0];
> > > +
> > > +		if (!match) {
> > >  			drm_modeset_unlock(&plane->mutex);
> > >  			continue;
> > >  		}
> > > -- 
> > > 2.32.0
> > > 
> > 
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
