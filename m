Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1033419E16
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Sep 2021 20:23:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41FFA89FF7;
	Mon, 27 Sep 2021 18:23:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33C6589FF7
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Sep 2021 18:23:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10120"; a="247034028"
X-IronPort-AV: E=Sophos;i="5.85,327,1624345200"; d="scan'208";a="247034028"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2021 11:23:39 -0700
X-IronPort-AV: E=Sophos;i="5.85,327,1624345200"; d="scan'208";a="486237034"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2021 11:23:38 -0700
Date: Mon, 27 Sep 2021 11:23:35 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 intel-gfx@lists.freedesktop.org, jani.saarinen@intel.com,
 maarten.lankhorst@linux.intel.com
Message-ID: <20210927182335.GY3389343@mdroper-desk1.amr.corp.intel.com>
References: <20210923084858.5480-1-stanislav.lisovskiy@intel.com>
 <YUyiJ1SFGULGHvmC@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YUyiJ1SFGULGHvmC@intel.com>
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

On Thu, Sep 23, 2021 at 06:49:59PM +0300, Ville Syrjälä wrote:
> On Thu, Sep 23, 2021 at 11:48:58AM +0300, Stanislav Lisovskiy wrote:
> > TileF(Tile4 in bspec) format is 4K tile organized into
> > 64B subtiles with same basic shape as for legacy TileY
> > which will be supported by Display13.
> 
> Why we still haven't done the F->tile64 rename?
>
> This is the last chance to fix this before we bake 
> this into the uapi and are stuck with a name that doesn't
> match the spec and will just confuse everyone.

I think you're confusing the formats here.  The bspec uses both terms
"TileF" and "Tile4" for the same format in different places.  There's a
completely different format that's referred to as both "TileS" and
"Tile64" in the bspec that we don't use at the moment.  So tile64
wouldn't be a correct rename, but tile4 could be.

In general Tile4 is much more common in the bspec than TileF is (TileF
terminology is mostly found in the media sections).  And bspec 44917 is
the most authoritative bspec page on the subject, and it refers to it as
Tile4, so I agree that switching over "Tile4" would probably be a good
move.

> 
> > 
...
> > diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
> > index bde5860b3686..d7dc421c6134 100644
> > --- a/include/uapi/drm/i915_drm.h
> > +++ b/include/uapi/drm/i915_drm.h
> > @@ -1522,7 +1522,8 @@ struct drm_i915_gem_caching {
> >  #define I915_TILING_NONE	0
> >  #define I915_TILING_X		1
> >  #define I915_TILING_Y		2
> > -#define I915_TILING_LAST	I915_TILING_Y
> > +#define I915_TILING_F		3
> > +#define I915_TILING_LAST	I915_TILING_F
> 
> fences...

Recognizing TileF/Tile4 separately from TileY is important to code
outside of display as well.  There are blitter instructions that require
different settings for TileY vs Tile4/F so if we drop the tracking of
this as a unique tiling type, it will break the blitting/copying and
some of the upcoming local memory support for Xe_HP-based platforms.


Matt

> 
> >  
> >  #define I915_BIT_6_SWIZZLE_NONE		0
> >  #define I915_BIT_6_SWIZZLE_9		1
> > -- 
> > 2.24.1.485.gad05a3d8e5
> 
> -- 
> Ville Syrjälä
> Intel

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
