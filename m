Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7734869623D
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Feb 2023 12:19:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCBB010E88E;
	Tue, 14 Feb 2023 11:19:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAE9810E88E;
 Tue, 14 Feb 2023 11:19:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676373595; x=1707909595;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=iMHZnxWcPsjaaO41GWmVBXwP4XD6SQv3nHB2je2NCds=;
 b=nDFXkdOf9saYiOB4FHMrus7Mt8prqjk/BN2TlNtf2kVqZL2QU0fkC6GQ
 s6a3W9clC8pccOOvL4vDFsCpxwKVmLbOQLDrvDJ7vsY3suOcqmGjCpFLH
 Kq+y/SDYg1x0Ov/n04cJKLtSgL+G8DaijcKKFXIIEhPxtfU1NdLVwfoWO
 uNihCOQp/eVgheWTDHrqn6uOaoiYXkwz6FOyR/4cVXNQowkbUrV02O7EX
 aBC+g4nX3pTzryfgi3Pjf9UnMkAZFvUt3Yq+u2pFlgDIp519VAXejCsF1
 FXMR60LuNu3UjRoG3wfrazgvBSLNT2oArMfKLOjFRUn2iY4ttdbQJTLCk Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="332449531"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="332449531"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 03:19:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="732862268"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="732862268"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by fmsmga008.fm.intel.com with SMTP; 14 Feb 2023 03:19:51 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 14 Feb 2023 13:19:51 +0200
Date: Tue, 14 Feb 2023 13:19:51 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jonas =?iso-8859-1?Q?=C5dahl?= <jadahl@redhat.com>
Message-ID: <Y+tuV91XeDoXXp3t@intel.com>
References: <20230208040911.12590-2-ville.syrjala@linux.intel.com>
 <20230208211016.7034-1-ville.syrjala@linux.intel.com>
 <Y+UAN7V+kA58yMfn@redhat.com> <Y+tTpH1nfHIG/Dxg@intel.com>
 <Y+taU+zDiTO9aA0U@redhat.com> <Y+tiXJglfpzgUEFD@intel.com>
 <Y+tqHZQ/sg3u/VxR@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Y+tqHZQ/sg3u/VxR@redhat.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm: Introduce plane SIZE_HINTS
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
Cc: Pekka Paalanen <pekka.paalanen@collabora.com>,
 Simon Ser <contact@emersion.fr>, intel-gfx@lists.freedesktop.org,
 Daniel Stone <daniel@fooishbar.org>, dri-devel@lists.freedesktop.org,
 Harry Wentland <harry.wentland@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 14, 2023 at 12:01:49PM +0100, Jonas �dahl wrote:
> On Tue, Feb 14, 2023 at 12:28:44PM +0200, Ville Syrj�l� wrote:
> > On Tue, Feb 14, 2023 at 10:54:27AM +0100, Jonas �dahl wrote:
> > > On Tue, Feb 14, 2023 at 11:25:56AM +0200, Ville Syrj�l� wrote:
> > > > On Thu, Feb 09, 2023 at 03:16:23PM +0100, Jonas �dahl wrote:
> > > > > On Wed, Feb 08, 2023 at 11:10:16PM +0200, Ville Syrjala wrote:
> > > > > > From: Ville Syrj�l� <ville.syrjala@linux.intel.com>
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
> > > > > > 
> > > > > > Cc: Simon Ser <contact@emersion.fr>
> > > > > > Cc: Jonas �dahl <jadahl@redhat.com>
> > > > > > Cc: Daniel Stone <daniel@fooishbar.org>
> > > > > > Cc: Pekka Paalanen <pekka.paalanen@collabora.com>
> > > > > > Acked-by: Harry Wentland <harry.wentland@amd.com>
> > > > > > Signed-off-by: Ville Syrj�l� <ville.syrjala@linux.intel.com>
> > > > > > ---
> > > > > >  drivers/gpu/drm/drm_mode_config.c |  7 +++++
> > > > > >  drivers/gpu/drm/drm_plane.c       | 48 +++++++++++++++++++++++++++++++
> > > > > >  include/drm/drm_mode_config.h     |  5 ++++
> > > > > >  include/drm/drm_plane.h           |  4 +++
> > > > > >  include/uapi/drm/drm_mode.h       | 11 +++++++
> > > > > >  5 files changed, 75 insertions(+)
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
> > > > > > index 24e7998d1731..ae51b1f83755 100644
> > > > > > --- a/drivers/gpu/drm/drm_plane.c
> > > > > > +++ b/drivers/gpu/drm/drm_plane.c
> > > > > > @@ -140,6 +140,21 @@
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
> > > > > > + *     support a very limited set of sizes (eg. cursor planes
> > > > > > + *     on typical hardware).
> > > > > 
> > > > > This is a bit awkward since problematic drivers would only expose
> > > > > this property if they are new enough.
> > > > > 
> > > > > A way to avoid this is for all new drivers expose this property, but
> > > > > special case the size 0x0 as "everything below the max limit goes". Then
> > > > > userspace can do (ignoring the missing cap fallback).
> > > > 
> > > > I don't think there are any drivers that need that.
> > > > So I'm thinking we can just ignore that for now.
> > > 
> > > None the less, userspace not seeing SIZE_HINTS will be required to
> > > indefinitely use the existing "old" behavior using the size cap as the
> > > buffer size with a fallback, and drivers without any size limitations
> > > that, i.e. details that are hard to express with a set of accepted
> > > sizes, will still use the inoptimal buffer sizes.
> > > 
> > > If I read [1] correctly, AMD has no particular size limitations other
> > > than a size limit, but without a SIZE_HINTS, userspace still needs to
> > > use the maximum size.
> > 
> > Simon pointed out they have pretty much the same exact limits as i915.
> > Ie. only a few power of two sizes, and stride must match width.
> 
> How about various ARM drivers, where the cursor plane is a regular
> overlay plane with an artificial 'cursor' stamp on it?

They don't even bother with the size cap currently. So the
generic ioctl code currently just decides that 64x64 is good
enough for them.

> 
> Either way, the documentation creates an impossible expectation -
> drivers, existing of future, that does not "support for a very limited
> set of sizes" but actually any size below a limit, can't communicate to
> userspace that it can handle cursor buffers with an arbitrary sizes,
> without userspace breaking on todays kernels.

I don't see how anything would break. You just won't get a 100%
optimal result potentially if you don't declare any smaller
sizes. And I think we can always specify that magic 0x0 value
later (or a new cap/etc) should an actual user for it appear.

I guess to play it safe we could specify 0x0 as a value that
might become valid in the future, so userspace should check
for it and treat it the same as not having the prop at all.

-- 
Ville Syrj�l�
Intel
