Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 142E3419E4B
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Sep 2021 20:29:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9704A89C7F;
	Mon, 27 Sep 2021 18:29:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E79DA89C7F
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Sep 2021 18:29:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10120"; a="224571992"
X-IronPort-AV: E=Sophos;i="5.85,327,1624345200"; d="scan'208";a="224571992"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2021 11:29:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,327,1624345200"; d="scan'208";a="615927264"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga001.fm.intel.com with SMTP; 27 Sep 2021 11:29:08 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 27 Sep 2021 21:29:07 +0300
Date: Mon, 27 Sep 2021 21:29:07 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 intel-gfx@lists.freedesktop.org, jani.saarinen@intel.com,
 maarten.lankhorst@linux.intel.com
Message-ID: <YVINc1/ySKUw/KiH@intel.com>
References: <20210923084858.5480-1-stanislav.lisovskiy@intel.com>
 <YUyiJ1SFGULGHvmC@intel.com>
 <20210927182335.GY3389343@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210927182335.GY3389343@mdroper-desk1.amr.corp.intel.com>
X-Patchwork-Hint: comment
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

On Mon, Sep 27, 2021 at 11:23:35AM -0700, Matt Roper wrote:
> On Thu, Sep 23, 2021 at 06:49:59PM +0300, Ville Syrjälä wrote:
> > On Thu, Sep 23, 2021 at 11:48:58AM +0300, Stanislav Lisovskiy wrote:
> > > TileF(Tile4 in bspec) format is 4K tile organized into
> > > 64B subtiles with same basic shape as for legacy TileY
> > > which will be supported by Display13.
> > 
> > Why we still haven't done the F->tile64 rename?
> >
> > This is the last chance to fix this before we bake 
> > this into the uapi and are stuck with a name that doesn't
> > match the spec and will just confuse everyone.
> 
> I think you're confusing the formats here.  The bspec uses both terms
> "TileF" and "Tile4" for the same format in different places.  There's a
> completely different format that's referred to as both "TileS" and
> "Tile64" in the bspec that we don't use at the moment.  So tile64
> wouldn't be a correct rename, but tile4 could be.

Right, tile64 is the macro tile variant I think. So like Ys
which we never bothered implementing, so I guess we''l not bother
with tile64 either.

> 
> In general Tile4 is much more common in the bspec than TileF is (TileF
> terminology is mostly found in the media sections).  And bspec 44917 is
> the most authoritative bspec page on the subject, and it refers to it as
> Tile4, so I agree that switching over "Tile4" would probably be a good
> move.
> 
> > 
> > > 
> ...
> > > diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
> > > index bde5860b3686..d7dc421c6134 100644
> > > --- a/include/uapi/drm/i915_drm.h
> > > +++ b/include/uapi/drm/i915_drm.h
> > > @@ -1522,7 +1522,8 @@ struct drm_i915_gem_caching {
> > >  #define I915_TILING_NONE	0
> > >  #define I915_TILING_X		1
> > >  #define I915_TILING_Y		2
> > > -#define I915_TILING_LAST	I915_TILING_Y
> > > +#define I915_TILING_F		3
> > > +#define I915_TILING_LAST	I915_TILING_F
> > 
> > fences...
> 
> Recognizing TileF/Tile4 separately from TileY is important to code
> outside of display as well.  There are blitter instructions that require
> different settings for TileY vs Tile4/F so if we drop the tracking of
> this as a unique tiling type, it will break the blitting/copying and
> some of the upcoming local memory support for Xe_HP-based platforms.

These are uapi definitions for set_tiling(). You are not meant to add
anything there. Just like we didn't add anything for Yf.

-- 
Ville Syrjälä
Intel
