Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 972C16BE9EE
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Mar 2023 14:18:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 485A110E38C;
	Fri, 17 Mar 2023 13:18:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFE7310E38C
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Mar 2023 13:18:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1679059114;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=inFPeV84vyYesBrV/TkE9Ll2SW5/769gz6bdDQI9gLI=;
 b=XgqSp7Kx11io4UdX7Gxx/eO3Hdzh+P6GMIcAQ136zC7ip73yL5HYeXRN5CDT2NlVPK6je4
 850PhYopWFjQNHu8d3tA0daE+sOtvAkcVN7zV6IdATfaR8cNGE01b+8mRBLthKERfRdFuN
 NguaNL17gTH03MRgWEm3TARhY3Heilk=
Received: from mail-lf1-f70.google.com (mail-lf1-f70.google.com
 [209.85.167.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-198-4i9M1HjmOfiFrRbaFCcybw-1; Fri, 17 Mar 2023 09:18:33 -0400
X-MC-Unique: 4i9M1HjmOfiFrRbaFCcybw-1
Received: by mail-lf1-f70.google.com with SMTP id
 a11-20020a195f4b000000b004b53d7241f6so1993550lfj.4
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Mar 2023 06:18:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679059112;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=inFPeV84vyYesBrV/TkE9Ll2SW5/769gz6bdDQI9gLI=;
 b=00OJCo2gWR11OFlPkyrTM6zzhpbDN5OpWu0e/gZlSZNs/TMEp3krlvQtwjYMRjsTZr
 r8QoUVT4aGcsEfzSIZcRWyOO9KZL5BUk51Vw8lPj7uj1fp947UJKhlUuM5YO/6xHz1xF
 PryJXwmU6rFfdpjdysr2OWUuMD6mX8u2wQPPLH2xlpxygF6ah2ESy/l/vplxpD7RSer7
 fOewdBvyOG+/Fl78XYNPKEeHP8rFS/gVrR68/scaAX3Xwey11hui/lekC6h7/caQVIEB
 9Y7J/OocDjMX3R1pFcALS6e0Qh23qabnpMvCyXDO2j8kY07yfm7ac0SK5x2wsU7uEhVt
 29+w==
X-Gm-Message-State: AO0yUKWR4Qt8SyTC7GRCaTn3hRRvLZde19Qr4qesgamvU7Q5sFLriDrP
 blS0+RELDAcUzY7TZt15AdX9LsHaKwTpAcqmj2f8c8iHVPqHMY9N/uJ+tKCg2tLis3aWnn2YCDQ
 YRo75IXiauOqTOoBMY/6p/a5mOKuZ
X-Received: by 2002:ac2:57db:0:b0:4de:3f1e:cdc4 with SMTP id
 k27-20020ac257db000000b004de3f1ecdc4mr4061329lfo.13.1679059111985; 
 Fri, 17 Mar 2023 06:18:31 -0700 (PDT)
X-Google-Smtp-Source: AK7set+Hv05A7Z4o058KqsVSgZ5xfZlgsnzH6jd64Mrll9XyHJ1eChlu4u5KcbjwMoxrm8gld7+Pgg==
X-Received: by 2002:ac2:57db:0:b0:4de:3f1e:cdc4 with SMTP id
 k27-20020ac257db000000b004de3f1ecdc4mr4061319lfo.13.1679059111640; 
 Fri, 17 Mar 2023 06:18:31 -0700 (PDT)
Received: from redhat.com (host-95-193-64-255.mobileonline.telia.com.
 [95.193.64.255]) by smtp.gmail.com with ESMTPSA id
 r28-20020ac252bc000000b004cc9ddce3adsm367198lfm.82.2023.03.17.06.18.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Mar 2023 06:18:31 -0700 (PDT)
Date: Fri, 17 Mar 2023 14:18:29 +0100
From: Jonas =?iso-8859-1?Q?=C5dahl?= <jadahl@redhat.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <ZBRopQWyxDfxPSua@redhat.com>
References: <20230208211016.7034-1-ville.syrjala@linux.intel.com>
 <20230313163311.11379-1-ville.syrjala@linux.intel.com>
 <ZBRCKIl+jdkohbVB@gmail.com> <ZBRQBfuEZS+2ieIM@intel.com>
 <ZBRbVJyoH0Gn6gLw@gmail.com> <ZBRdGVOQgH6IuBQK@gmail.com>
 <ZBRoDO28OaX8nTrj@intel.com>
MIME-Version: 1.0
In-Reply-To: <ZBRoDO28OaX8nTrj@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v3 1/2] drm: Introduce plane SIZE_HINTS
 property
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
Cc: intel-gfx@lists.freedesktop.org,
 Pekka Paalanen <pekka.paalanen@collabora.com>,
 Jonas =?iso-8859-1?Q?=C5dahl?= <jadahl@gmail.com>,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Mar 17, 2023 at 03:15:56PM +0200, Ville Syrjälä wrote:
> On Fri, Mar 17, 2023 at 01:29:13PM +0100, Jonas Ådahl wrote:
> > On Fri, Mar 17, 2023 at 01:21:43PM +0100, Jonas Ådahl wrote:
> > > On Fri, Mar 17, 2023 at 01:33:25PM +0200, Ville Syrjälä wrote:
> > > > On Fri, Mar 17, 2023 at 11:34:16AM +0100, Jonas Ådahl wrote:
> > > > > On Mon, Mar 13, 2023 at 06:33:11PM +0200, Ville Syrjala wrote:
> > > > > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > > > 
> > > > > > Add a new immutable plane property by which a plane can advertise
> > > > > > a handful of recommended plane sizes. This would be mostly exposed
> > > > > > by cursor planes as a slightly more capable replacement for
> > > > > > the DRM_CAP_CURSOR_WIDTH/HEIGHT caps, which can only declare
> > > > > > a one size fits all limit for the whole device.
> > > > > > 
> > > > > > Currently eg. amdgpu/i915/nouveau just advertize the max cursor
> > > > > > size via the cursor size caps. But always using the max sized
> > > > > > cursor can waste a surprising amount of power, so a better
> > > > > > stragey is desirable.
> > > > > > 
> > > > > > Most other drivers don't specify any cursor size at all, in
> > > > > > which case the ioctl code just claims that 64x64 is a great
> > > > > > choice. Whether that is actually true is debatable.
> > > > > > 
> > > > > > A poll of various compositor developers informs us that
> > > > > > blindly probing with setcursor/atomic ioctl to determine
> > > > > > suitable cursor sizes is not acceptable, thus the
> > > > > > introduction of the new property to supplant the cursor
> > > > > > size caps. The compositor will now be free to select a
> > > > > > more optimal cursor size from the short list of options.
> > > > > > 
> > > > > > Note that the reported sizes (either via the property or the
> > > > > > caps) make no claims about things such as plane scaling. So
> > > > > > these things should only really be consulted for simple
> > > > > > "cursor like" use cases.
> > > > > > 
> > > > > > v2: Try to add some docs
> > > > > > v3: Specify that value 0 is reserved for future use (basic idea from Jonas)
> > > > > >     Drop the note about typical hardware (Pekka)
> > > > > > 
> > > > > > Cc: Simon Ser <contact@emersion.fr>
> > > > > > Cc: Jonas Ådahl <jadahl@redhat.com>
> > > > > > Cc: Daniel Stone <daniel@fooishbar.org>
> > > > > > Cc: Pekka Paalanen <pekka.paalanen@collabora.com>
> > > > > > Acked-by: Harry Wentland <harry.wentland@amd.com>
> > > > > > Acked-by: Pekka Paalanen <pekka.paalanen@collabora.com>
> > > > > > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > > > ---
> > > > > >  drivers/gpu/drm/drm_mode_config.c |  7 ++++
> > > > > >  drivers/gpu/drm/drm_plane.c       | 53 +++++++++++++++++++++++++++++++
> > > > > >  include/drm/drm_mode_config.h     |  5 +++
> > > > > >  include/drm/drm_plane.h           |  4 +++
> > > > > >  include/uapi/drm/drm_mode.h       | 11 +++++++
> > > > > >  5 files changed, 80 insertions(+)
> > > > > > 
> > > > > > diff --git a/drivers/gpu/drm/drm_mode_config.c b/drivers/gpu/drm/drm_mode_config.c
> > > > > > index 87eb591fe9b5..21860f94a18c 100644
> > > > > > --- a/drivers/gpu/drm/drm_mode_config.c
> > > > > > +++ b/drivers/gpu/drm/drm_mode_config.c
> > > > > > @@ -374,6 +374,13 @@ static int drm_mode_create_standard_properties(struct drm_device *dev)
> > > > > >  		return -ENOMEM;
> > > > > >  	dev->mode_config.modifiers_property = prop;
> > > > > >  
> > > > > > +	prop = drm_property_create(dev,
> > > > > > +				   DRM_MODE_PROP_IMMUTABLE | DRM_MODE_PROP_BLOB,
> > > > > > +				   "SIZE_HINTS", 0);
> > > > > > +	if (!prop)
> > > > > > +		return -ENOMEM;
> > > > > > +	dev->mode_config.size_hints_property = prop;
> > > > > > +
> > > > > >  	return 0;
> > > > > >  }
> > > > > >  
> > > > > > diff --git a/drivers/gpu/drm/drm_plane.c b/drivers/gpu/drm/drm_plane.c
> > > > > > index 24e7998d1731..d2a6fdff1a57 100644
> > > > > > --- a/drivers/gpu/drm/drm_plane.c
> > > > > > +++ b/drivers/gpu/drm/drm_plane.c
> > > > > > @@ -140,6 +140,26 @@
> > > > > >   *     DRM_FORMAT_MOD_LINEAR. Before linux kernel release v5.1 there have been
> > > > > >   *     various bugs in this area with inconsistencies between the capability
> > > > > >   *     flag and per-plane properties.
> > > > > > + *
> > > > > > + * SIZE_HINTS:
> > > > > > + *     Blob property which contains the set of recommended plane size
> > > > > > + *     which can used for simple "cursor like" use cases (eg. no scaling).
> > > > > > + *     Using these hints frees userspace from extensive probing of
> > > > > > + *     supported plane sizes through atomic/setcursor ioctls.
> > > > > > + *
> > > > > > + *     For optimal usage userspace should pick the smallest size
> > > > > > + *     that satisfies its own requirements.
> > > > > > + *
> > > > > > + *     The blob contains an array of struct drm_plane_size_hint.
> > > > > > + *
> > > > > > + *     Drivers should only attach this property to planes that
> > > > > > + *     support a very limited set of sizes.
> > > > > > + *
> > > > > > + *     Note that property value 0 (ie. no blob) is reserved for potential
> > > > > > + *     future use. Current userspace is expected to ignore the property
> > > > > > + *     if the value is 0, and fall back to some other means (eg.
> > > > > > + *     &DRM_CAP_CURSOR_WIDTH and &DRM_CAP_CURSOR_HEIGHT) to determine
> > > > > > + *     the appropriate plane size to use.
> > > > > 
> > > > > Does this intend to mean userspace has the kernel's blessing on choosing
> > > > > an arbitrary size as long as it's smaller than &DRM_CAP_CURSOR_WIDTH x
> > > > > &DRM_CAP_CURSOR_HEIGHT?
> > > > > 
> > > > > It's a bit to vague for me to make a confident interpretation whether I
> > > > > can, or whether I should pretend I didn't see SIZE_HINTS and apply the
> > > > > old logic, meaning only using the exact cap size.
> > > > 
> > > > Using the exact cap size is the only thing more or less
> > > > guaranteed to work. But other approaches (such as probing
> > > > the size with atomic/cursor ioctls) can also be used.
> > > 
> > > I think you should then just disallow drivers for exposing SIZE_HINTS
> > > with the value 0, and make it a bug if they do, to let userspace know
> > > when the value 0 means anything.
> > > 
> > > In other words, userspace should *not* ignore the property value being
> > > 0, but treat it as a kernel bug if there is a SIZE_HINTS only containing
> > > a 0, until the value 0 has gotten any meaning. Otherwise I don't see how
> > > it'll be usable in the future, since userspace doesn't know the
> > > difference between 'legacy 0' and 'new 0' once it's defined to mean
> > > anything.
> > 
> > On a second thought, userspace needs to ignore it, to not fall apart
> > when running on never future kernels, you're right. Never mind.
> 
> OK, I guess you still want it :)
> 
> > 
> > I guess with "is reserved" implies that it's a bug if it's used before
> > it's defined to be anything, right?
> 
> Yes. I didn't want to specify the actual behaviour right now since
> we have no drivers lining up to implement any of it. So just trying
> to keep the door slightly ajar for the future.

Yep, thanks for that, and sorry about the confusion. As long as I in the
future can do 'if (value == 0) do_it_the_new_way()' (if they
materialize) I'm happy.


Jonas

