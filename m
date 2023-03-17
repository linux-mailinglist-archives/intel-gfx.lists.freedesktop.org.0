Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52EBB6BE9E7
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Mar 2023 14:16:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AC2810E37E;
	Fri, 17 Mar 2023 13:16:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20BB510E37A;
 Fri, 17 Mar 2023 13:16:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679058966; x=1710594966;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=EyDPYvpgZkBcyCbBdEta5NJ62vjSBvwL1qQajDsM+Ms=;
 b=ScE5HSbMN4UK5jEm6G+JgXjCajSU49R9TiiMw1Ui3HIIo5gOv9lB+Rcg
 wSRkJBwL17GVDe7vtC2X9xFMs5Bx2OMNBShwt4a/+gxKEiB4oEPGx02+8
 twCGOLAmLSaKzauO54Fbh3lhRUj0JzP/z4QItqc/yDrtxrjN7x7sPmMKN
 wsPbLVlmuafxktJ51i9BAaX8GYOeM9HckAQ5SL4GhZWfgkLqNgVN/dvtg
 WmAFHNROi7CrU1vcf7x5ab8YvTFjM0EvF/U/UYhQuFWndnxnq3EtyajZZ
 zXPCxJ6frr7OLrBkwtQjKDWl6rvUNfPD+brEtxFVQw7ORJBjhI+N/ILW5 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="400833662"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="400833662"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 06:15:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="1009624828"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="1009624828"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga005.fm.intel.com with SMTP; 17 Mar 2023 06:15:56 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 Mar 2023 15:15:56 +0200
Date: Fri, 17 Mar 2023 15:15:56 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jonas =?iso-8859-1?Q?=C5dahl?= <jadahl@gmail.com>
Message-ID: <ZBRoDO28OaX8nTrj@intel.com>
References: <20230208211016.7034-1-ville.syrjala@linux.intel.com>
 <20230313163311.11379-1-ville.syrjala@linux.intel.com>
 <ZBRCKIl+jdkohbVB@gmail.com> <ZBRQBfuEZS+2ieIM@intel.com>
 <ZBRbVJyoH0Gn6gLw@gmail.com> <ZBRdGVOQgH6IuBQK@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZBRdGVOQgH6IuBQK@gmail.com>
X-Patchwork-Hint: comment
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
 Jonas =?iso-8859-1?Q?=C5dahl?= <jadahl@redhat.com>,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Mar 17, 2023 at 01:29:13PM +0100, Jonas �dahl wrote:
> On Fri, Mar 17, 2023 at 01:21:43PM +0100, Jonas �dahl wrote:
> > On Fri, Mar 17, 2023 at 01:33:25PM +0200, Ville Syrj�l� wrote:
> > > On Fri, Mar 17, 2023 at 11:34:16AM +0100, Jonas �dahl wrote:
> > > > On Mon, Mar 13, 2023 at 06:33:11PM +0200, Ville Syrjala wrote:
> > > > > From: Ville Syrj�l� <ville.syrjala@linux.intel.com>
> > > > > 
> > > > > Add a new immutable plane property by which a plane can advertise
> > > > > a handful of recommended plane sizes. This would be mostly exposed
> > > > > by cursor planes as a slightly more capable replacement for
> > > > > the DRM_CAP_CURSOR_WIDTH/HEIGHT caps, which can only declare
> > > > > a one size fits all limit for the whole device.
> > > > > 
> > > > > Currently eg. amdgpu/i915/nouveau just advertize the max cursor
> > > > > size via the cursor size caps. But always using the max sized
> > > > > cursor can waste a surprising amount of power, so a better
> > > > > stragey is desirable.
> > > > > 
> > > > > Most other drivers don't specify any cursor size at all, in
> > > > > which case the ioctl code just claims that 64x64 is a great
> > > > > choice. Whether that is actually true is debatable.
> > > > > 
> > > > > A poll of various compositor developers informs us that
> > > > > blindly probing with setcursor/atomic ioctl to determine
> > > > > suitable cursor sizes is not acceptable, thus the
> > > > > introduction of the new property to supplant the cursor
> > > > > size caps. The compositor will now be free to select a
> > > > > more optimal cursor size from the short list of options.
> > > > > 
> > > > > Note that the reported sizes (either via the property or the
> > > > > caps) make no claims about things such as plane scaling. So
> > > > > these things should only really be consulted for simple
> > > > > "cursor like" use cases.
> > > > > 
> > > > > v2: Try to add some docs
> > > > > v3: Specify that value 0 is reserved for future use (basic idea from Jonas)
> > > > >     Drop the note about typical hardware (Pekka)
> > > > > 
> > > > > Cc: Simon Ser <contact@emersion.fr>
> > > > > Cc: Jonas �dahl <jadahl@redhat.com>
> > > > > Cc: Daniel Stone <daniel@fooishbar.org>
> > > > > Cc: Pekka Paalanen <pekka.paalanen@collabora.com>
> > > > > Acked-by: Harry Wentland <harry.wentland@amd.com>
> > > > > Acked-by: Pekka Paalanen <pekka.paalanen@collabora.com>
> > > > > Signed-off-by: Ville Syrj�l� <ville.syrjala@linux.intel.com>
> > > > > ---
> > > > >  drivers/gpu/drm/drm_mode_config.c |  7 ++++
> > > > >  drivers/gpu/drm/drm_plane.c       | 53 +++++++++++++++++++++++++++++++
> > > > >  include/drm/drm_mode_config.h     |  5 +++
> > > > >  include/drm/drm_plane.h           |  4 +++
> > > > >  include/uapi/drm/drm_mode.h       | 11 +++++++
> > > > >  5 files changed, 80 insertions(+)
> > > > > 
> > > > > diff --git a/drivers/gpu/drm/drm_mode_config.c b/drivers/gpu/drm/drm_mode_config.c
> > > > > index 87eb591fe9b5..21860f94a18c 100644
> > > > > --- a/drivers/gpu/drm/drm_mode_config.c
> > > > > +++ b/drivers/gpu/drm/drm_mode_config.c
> > > > > @@ -374,6 +374,13 @@ static int drm_mode_create_standard_properties(struct drm_device *dev)
> > > > >  		return -ENOMEM;
> > > > >  	dev->mode_config.modifiers_property = prop;
> > > > >  
> > > > > +	prop = drm_property_create(dev,
> > > > > +				   DRM_MODE_PROP_IMMUTABLE | DRM_MODE_PROP_BLOB,
> > > > > +				   "SIZE_HINTS", 0);
> > > > > +	if (!prop)
> > > > > +		return -ENOMEM;
> > > > > +	dev->mode_config.size_hints_property = prop;
> > > > > +
> > > > >  	return 0;
> > > > >  }
> > > > >  
> > > > > diff --git a/drivers/gpu/drm/drm_plane.c b/drivers/gpu/drm/drm_plane.c
> > > > > index 24e7998d1731..d2a6fdff1a57 100644
> > > > > --- a/drivers/gpu/drm/drm_plane.c
> > > > > +++ b/drivers/gpu/drm/drm_plane.c
> > > > > @@ -140,6 +140,26 @@
> > > > >   *     DRM_FORMAT_MOD_LINEAR. Before linux kernel release v5.1 there have been
> > > > >   *     various bugs in this area with inconsistencies between the capability
> > > > >   *     flag and per-plane properties.
> > > > > + *
> > > > > + * SIZE_HINTS:
> > > > > + *     Blob property which contains the set of recommended plane size
> > > > > + *     which can used for simple "cursor like" use cases (eg. no scaling).
> > > > > + *     Using these hints frees userspace from extensive probing of
> > > > > + *     supported plane sizes through atomic/setcursor ioctls.
> > > > > + *
> > > > > + *     For optimal usage userspace should pick the smallest size
> > > > > + *     that satisfies its own requirements.
> > > > > + *
> > > > > + *     The blob contains an array of struct drm_plane_size_hint.
> > > > > + *
> > > > > + *     Drivers should only attach this property to planes that
> > > > > + *     support a very limited set of sizes.
> > > > > + *
> > > > > + *     Note that property value 0 (ie. no blob) is reserved for potential
> > > > > + *     future use. Current userspace is expected to ignore the property
> > > > > + *     if the value is 0, and fall back to some other means (eg.
> > > > > + *     &DRM_CAP_CURSOR_WIDTH and &DRM_CAP_CURSOR_HEIGHT) to determine
> > > > > + *     the appropriate plane size to use.
> > > > 
> > > > Does this intend to mean userspace has the kernel's blessing on choosing
> > > > an arbitrary size as long as it's smaller than &DRM_CAP_CURSOR_WIDTH x
> > > > &DRM_CAP_CURSOR_HEIGHT?
> > > > 
> > > > It's a bit to vague for me to make a confident interpretation whether I
> > > > can, or whether I should pretend I didn't see SIZE_HINTS and apply the
> > > > old logic, meaning only using the exact cap size.
> > > 
> > > Using the exact cap size is the only thing more or less
> > > guaranteed to work. But other approaches (such as probing
> > > the size with atomic/cursor ioctls) can also be used.
> > 
> > I think you should then just disallow drivers for exposing SIZE_HINTS
> > with the value 0, and make it a bug if they do, to let userspace know
> > when the value 0 means anything.
> > 
> > In other words, userspace should *not* ignore the property value being
> > 0, but treat it as a kernel bug if there is a SIZE_HINTS only containing
> > a 0, until the value 0 has gotten any meaning. Otherwise I don't see how
> > it'll be usable in the future, since userspace doesn't know the
> > difference between 'legacy 0' and 'new 0' once it's defined to mean
> > anything.
> 
> On a second thought, userspace needs to ignore it, to not fall apart
> when running on never future kernels, you're right. Never mind.

OK, I guess you still want it :)

> 
> I guess with "is reserved" implies that it's a bug if it's used before
> it's defined to be anything, right?

Yes. I didn't want to specify the actual behaviour right now since
we have no drivers lining up to implement any of it. So just trying
to keep the door slightly ajar for the future.

-- 
Ville Syrj�l�
Intel
