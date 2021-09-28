Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3512041B869
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Sep 2021 22:36:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E27856E973;
	Tue, 28 Sep 2021 20:36:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6466A6E973
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Sep 2021 20:35:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10121"; a="310350108"
X-IronPort-AV: E=Sophos;i="5.85,330,1624345200"; d="scan'208";a="310350108"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2021 13:35:57 -0700
X-IronPort-AV: E=Sophos;i="5.85,330,1624345200"; d="scan'208";a="706827731"
Received: from unknown (HELO intel.com) ([10.237.72.91])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2021 13:35:55 -0700
Date: Tue, 28 Sep 2021 23:36:51 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org,
 jani.saarinen@intel.com, maarten.lankhorst@linux.intel.com
Message-ID: <20210928203651.GA16292@intel.com>
References: <20210923084858.5480-1-stanislav.lisovskiy@intel.com>
 <YUyiJ1SFGULGHvmC@intel.com>
 <20210927182335.GY3389343@mdroper-desk1.amr.corp.intel.com>
 <YVINc1/ySKUw/KiH@intel.com>
 <20210928052411.GD3389343@mdroper-desk1.amr.corp.intel.com>
 <20210928124911.GA10399@intel.com> <YVNmymiuKRccLkoz@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YVNmymiuKRccLkoz@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Tile F plane format support
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

On Tue, Sep 28, 2021 at 10:02:34PM +0300, Ville Syrjälä wrote:
> On Tue, Sep 28, 2021 at 03:49:11PM +0300, Lisovskiy, Stanislav wrote:
> > On Mon, Sep 27, 2021 at 10:24:11PM -0700, Matt Roper wrote:
> > > On Mon, Sep 27, 2021 at 09:29:07PM +0300, Ville Syrjälä wrote:
> > > > On Mon, Sep 27, 2021 at 11:23:35AM -0700, Matt Roper wrote:
> > > > > On Thu, Sep 23, 2021 at 06:49:59PM +0300, Ville Syrjälä wrote:
> > > > > > On Thu, Sep 23, 2021 at 11:48:58AM +0300, Stanislav Lisovskiy wrote:
> > > > > > > TileF(Tile4 in bspec) format is 4K tile organized into
> > > > > > > 64B subtiles with same basic shape as for legacy TileY
> > > > > > > which will be supported by Display13.
> > > > > > 
> > > > > > Why we still haven't done the F->tile64 rename?
> > > > > >
> > > > > > This is the last chance to fix this before we bake 
> > > > > > this into the uapi and are stuck with a name that doesn't
> > > > > > match the spec and will just confuse everyone.
> > > > > 
> > > > > I think you're confusing the formats here.  The bspec uses both terms
> > > > > "TileF" and "Tile4" for the same format in different places.  There's a
> > > > > completely different format that's referred to as both "TileS" and
> > > > > "Tile64" in the bspec that we don't use at the moment.  So tile64
> > > > > wouldn't be a correct rename, but tile4 could be.
> > > > 
> > > > Right, tile64 is the macro tile variant I think. So like Ys
> > > > which we never bothered implementing, so I guess we''l not bother
> > > > with tile64 either.
> > > > 
> > > > > 
> > > > > In general Tile4 is much more common in the bspec than TileF is (TileF
> > > > > terminology is mostly found in the media sections).  And bspec 44917 is
> > > > > the most authoritative bspec page on the subject, and it refers to it as
> > > > > Tile4, so I agree that switching over "Tile4" would probably be a good
> > > > > move.
> > > > > 
> > > > > > 
> > > > > > > 
> > > > > ...
> > > > > > > diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
> > > > > > > index bde5860b3686..d7dc421c6134 100644
> > > > > > > --- a/include/uapi/drm/i915_drm.h
> > > > > > > +++ b/include/uapi/drm/i915_drm.h
> > > > > > > @@ -1522,7 +1522,8 @@ struct drm_i915_gem_caching {
> > > > > > >  #define I915_TILING_NONE	0
> > > > > > >  #define I915_TILING_X		1
> > > > > > >  #define I915_TILING_Y		2
> > > > > > > -#define I915_TILING_LAST	I915_TILING_Y
> > > > > > > +#define I915_TILING_F		3
> > > > > > > +#define I915_TILING_LAST	I915_TILING_F
> > > > > > 
> > > > > > fences...
> > > > > 
> > > > > Recognizing TileF/Tile4 separately from TileY is important to code
> > > > > outside of display as well.  There are blitter instructions that require
> > > > > different settings for TileY vs Tile4/F so if we drop the tracking of
> > > > > this as a unique tiling type, it will break the blitting/copying and
> > > > > some of the upcoming local memory support for Xe_HP-based platforms.
> > > > 
> > > > These are uapi definitions for set_tiling(). You are not meant to add
> > > > anything there. Just like we didn't add anything for Yf.
> > > 
> > > Yeah, I think that's the real problem --- we define some values here in
> > > the uapi header, but we also wind up using the same set of values for
> > > driver-internal non-uapi purposes too rather than having a separate enum
> > > (containing a superset of the uapi values) that can be used for those
> > > other things.  Display code can use FB modifiers for some things, but
> > > core/lmem code needs a way to refer to Tile4 and such and doesn't have a
> > > good way to do that today.
> > > 
> > > I think most (all?) of the non-display code that's relying on a
> > > definition of I915_TILING_F is in various selftests that are still being
> > > prepared for upstreaming, so maybe there's a better way to handle the
> > > selection of possible formats specifically in the selftest code itself.
> > > That's really the only area of the kernel code that should need to be
> > > aware of the specific internal layout of various buffers.
> > 
> > So I will proceed with the renaming at least.
> > 
> > Ville, suppose, I still need part of fencing related code?
> 
> Nah. Just nuke it all. Someone will have to fix whatever self test is
> abusing the uapi definitions though.
> 
> A local #define should suffice if nothing else is deemed appropriate.
> IIRC igt also has a local definition like this for Yf. We should
> perhaps rename those to some igt specific namespace as well...

As Matt mentioned, removing I915_TILING_F completely is going to break
way more than selftest, but also blitter/copy and local mem support.
In fact I remember, I had to add part of those in order to get some
tests working, another part was added by somebody else, so not even
sure how much other stuff its going to break.

Sounds like a bit too much for simple upstreaming of the patch, we
already had internally for more than a year, just wondering why 
this popped up only by now.

Stan

> 
> -- 
> Ville Syrjälä
> Intel
