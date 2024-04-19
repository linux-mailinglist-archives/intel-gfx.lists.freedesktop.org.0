Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 324668AB34A
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Apr 2024 18:25:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A5BF10F8E2;
	Fri, 19 Apr 2024 16:25:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QqFMf1pj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AFA810F8E2
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Apr 2024 16:25:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713543937; x=1745079937;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=VY7FzFoMCIIJZZYeE/6SjNnL1s/M75blHE+q9xDl+4o=;
 b=QqFMf1pjmaA/1z6whGxh65rqqYJnPH9fpPIztlPHwxR2xEoDavv/v7lw
 cgshbsC/Ag3acFEaHeRjX/Z56dY3ikaZj4WIo5dFFsjpgYfsy+wy08I2a
 e8m8G3b8GUL4QFggngzOBAn9W6LvSsQK810bo13H5tgaHVpzbwlVNb8n2
 LPPYMO9cAC5mbu9hAifT26fEZQZmy3cpBdo3lXrvF2JQbJnyJG90hTov8
 CggCErYfL2M+h2xlgCRpMdLo5+aM+fut9AN5bKjXdkBWSpEl2OJjT6JO1
 wq1ZYcnTc2oohacV9T2dsTm/FPkLif8O/KaNRkrg8XNWYXln3CEVC5R+1 g==;
X-CSE-ConnectionGUID: 6v5skhiOQTqt3416Zy1/Mw==
X-CSE-MsgGUID: 02zqs1lOQvSkmsRwcVDhjA==
X-IronPort-AV: E=McAfee;i="6600,9927,11049"; a="9012915"
X-IronPort-AV: E=Sophos;i="6.07,214,1708416000"; 
   d="scan'208";a="9012915"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2024 09:25:37 -0700
X-CSE-ConnectionGUID: lYPOoVCrRmuxMcH4tul5ZA==
X-CSE-MsgGUID: d91phTI/QD+3OPGH8pSiEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,214,1708416000"; d="scan'208";a="23446755"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 19 Apr 2024 09:25:35 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 19 Apr 2024 19:25:34 +0300
Date: Fri, 19 Apr 2024 19:25:34 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 2/6] drm/i915: Reject async flips if we need to change
 DDB/watermarks
Message-ID: <ZiKa_tyF0USsa2dH@intel.com>
References: <20240320160424.700-1-ville.syrjala@linux.intel.com>
 <20240320160424.700-3-ville.syrjala@linux.intel.com>
 <IA0PR11MB73072BC8E9CEAB07BA6D7E04BA0D2@IA0PR11MB7307.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <IA0PR11MB73072BC8E9CEAB07BA6D7E04BA0D2@IA0PR11MB7307.namprd11.prod.outlook.com>
X-Patchwork-Hint: comment
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

On Fri, Apr 19, 2024 at 04:27:53AM +0000, Murthy, Arun R wrote:
> 
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ville
> > Syrjala
> > Sent: Wednesday, March 20, 2024 9:34 PM
> > To: intel-gfx@lists.freedesktop.org
> > Subject: [PATCH 2/6] drm/i915: Reject async flips if we need to change
> > DDB/watermarks
> > 
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > DDB/watermarks are always double buffered on the vblank, so we can't safely
> > change them during async flips. Currently this never happens, but we'll be
> > making changing between sync and async flips a bit more flexible, in which case
> > we can actually end up here.
> 
> Rather on getting wm/DDB changes should we switch from async to sync flip to honour the wm/DDB changes else might end up in underrun or flicker/corruption.
> Spec is also aligned to this approach.

I can't really parse what you're saying.

The sequence of events that can lead us here are:
1. start in sync flip mode
2. userspace asks for an async flip (potentially asking for a
   different modifier)
   - we convert it to a sync flip and proceed
3. userspace asks for another async flip
   either:
   - the format/modifier (and thus wm/ddb) stays the same all
     is good and we do the async flip
   - the modifier changes we will now reject the request due to
     wm/ddb needing to change

We don't want to convert step 3 also to a sync flip because userspace
could just keep pingponging between two buffers with different modifiers
and we'd never actually get into proper async flip mode, and would just
keep doing sync flips. That would completely defat the purpose of async
flips.

And we do have to reject the request here in the wm code because
otherwise we'll clear the do_async_flip flag and the later
intel_async_flip_check_hw() wouldn't refuse the request even though
the modifier is changing. The other option would be to move some/all
of intel_async_flip_check_hw() into some earlier phase of
atomic_check(), but that would require some actual thought.


> Thanks and Regards,
> Arun R Murthy
> --------------------
> 
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/skl_watermark.c | 12 ++++++++++++
> >  1 file changed, 12 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c
> > b/drivers/gpu/drm/i915/display/skl_watermark.c
> > index bc341abcab2f..1fa416a70d51 100644
> > --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> > +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> > @@ -2540,6 +2540,12 @@ skl_ddb_add_affected_planes(const struct
> > intel_crtc_state *old_crtc_state,
> >  					&new_crtc_state-
> > >wm.skl.plane_ddb_y[plane_id]))
> >  			continue;
> > 
> > +		if (new_crtc_state->do_async_flip) {
> > +			drm_dbg_kms(&i915->drm, "[PLANE:%d:%s] Can't
> > change DDB during async flip\n",
> > +				    plane->base.base.id, plane->base.name);
> > +			return -EINVAL;
> > +		}
> > +
> >  		plane_state = intel_atomic_get_plane_state(state, plane);
> >  		if (IS_ERR(plane_state))
> >  			return PTR_ERR(plane_state);
> > @@ -2906,6 +2912,12 @@ static int skl_wm_add_affected_planes(struct
> > intel_atomic_state *state,
> >  						 &new_crtc_state-
> > >wm.skl.optimal))
> >  			continue;
> > 
> > +		if (new_crtc_state->do_async_flip) {
> > +			drm_dbg_kms(&i915->drm, "[PLANE:%d:%s] Can't
> > change watermarks during async flip\n",
> > +				    plane->base.base.id, plane->base.name);
> > +			return -EINVAL;
> > +		}
> > +
> >  		plane_state = intel_atomic_get_plane_state(state, plane);
> >  		if (IS_ERR(plane_state))
> >  			return PTR_ERR(plane_state);
> > --
> > 2.43.2
> 

-- 
Ville Syrjälä
Intel
