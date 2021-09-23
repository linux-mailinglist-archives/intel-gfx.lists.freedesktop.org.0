Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC931415F90
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Sep 2021 15:23:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12AC16ED17;
	Thu, 23 Sep 2021 13:23:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4992A6ED12
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Sep 2021 13:23:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10115"; a="223871393"
X-IronPort-AV: E=Sophos;i="5.85,316,1624345200"; d="scan'208";a="223871393"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2021 06:23:31 -0700
X-IronPort-AV: E=Sophos;i="5.85,316,1624345200"; d="scan'208";a="702711814"
Received: from unknown (HELO intel.com) ([10.237.72.91])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2021 06:23:30 -0700
Date: Thu, 23 Sep 2021 16:24:21 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <20210923132421.GA11567@intel.com>
References: <20210514125751.17075-1-ville.syrjala@linux.intel.com>
 <20210514125751.17075-6-ville.syrjala@linux.intel.com>
 <20210917153422.GB1224@intel.com> <YUs4GKt3Uy4W94wI@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YUs4GKt3Uy4W94wI@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 05/14] drm/i915: Fix HPLL watermark readout
 for g4x
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

On Wed, Sep 22, 2021 at 05:05:12PM +0300, Ville Syrjälä wrote:
> On Fri, Sep 17, 2021 at 06:34:22PM +0300, Lisovskiy, Stanislav wrote:
> > On Fri, May 14, 2021 at 03:57:42PM +0300, Ville Syrjala wrote:
> > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > 
> > > If HPLL watermarks are already enabled, let's not mark them as
> > > disabled by forgetting to bump 'level' before we call
> > > g4x_raw_plane_wm_set().
> > > 
> > > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/intel_pm.c | 7 +++++--
> > >  1 file changed, 5 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> > > index 661bc6fdf38c..990ee5a590d3 100644
> > > --- a/drivers/gpu/drm/i915/intel_pm.c
> > > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > > @@ -6468,7 +6468,8 @@ void g4x_wm_get_hw_state(struct drm_i915_private *dev_priv)
> > >  		for_each_plane_id_on_crtc(crtc, plane_id)
> > >  			raw->plane[plane_id] = active->wm.plane[plane_id];
> > >  
> > > -		if (++level > max_level)
> > > +		level = G4X_WM_LEVEL_SR;
> > > +		if (level > max_level)
> > 
> > Do I understand correctly that its basically identical to what
> > was before, so this is done here just for it to look more explicit?
> > 
> > I.e we had for example max_level G4X_WM_LEVEL_SR and level G4X_WM_LEVEL_NORMAL
> > , after ++level it will anyway become G4X_WM_LEVEL_SR and same for next one.
> > 
> > 
> > >  			goto out;
> > >  
> > >  		raw = &crtc_state->wm.g4x.raw[level];
> > > @@ -6477,7 +6478,8 @@ void g4x_wm_get_hw_state(struct drm_i915_private *dev_priv)
> > >  		raw->plane[PLANE_SPRITE0] = 0;
> > >  		raw->fbc = active->sr.fbc;
> > >  
> > > -		if (++level > max_level)
> > > +		level = G4X_WM_LEVEL_HPLL;
> > > +		if (level > max_level)
> > >  			goto out;
> > >  
> > >  		raw = &crtc_state->wm.g4x.raw[level];
> > > @@ -6486,6 +6488,7 @@ void g4x_wm_get_hw_state(struct drm_i915_private *dev_priv)
> > >  		raw->plane[PLANE_SPRITE0] = 0;
> > >  		raw->fbc = active->hpll.fbc;
> > >  
> > > +		level++;
> > 
> > Hi Ville,
> > 
> > So if we reached here, it means level = G4X_WM_LEVEL_HPLL, which is 
> > the max wm level defined, why are we then incrementing it even more?
> > 
> > the g4x_raw_plane_wm_set will be using that value as a level:
> > 
> > for (; level < intel_wm_num_levels(dev_priv); level++) {
> > 	struct g4x_pipe_wm *raw = &crtc_state->wm.g4x.raw[level];
> > 
> > 	dirty |= raw->plane[plane_id] != value;
> > 	raw->plane[plane_id] = value;
> > }
> > 
> > however level then will be equal to NUM_G4X_WM_LEVELS, which is actually
> > an illegal value, or is that an expected behaviour?
> > 
> > Just trying to understand, whats happening here, before stamping an r-b :)
> > 
> > Stan
> > 
> > 
> > >  	out:
> > >  		for_each_plane_id_on_crtc(crtc, plane_id)
> > >  			g4x_raw_plane_wm_set(crtc_state, level,
> 
> Right, so the code is basically this:
> 
> level = G4X_WM_LEVEL_SR;
> if (level > max_level)
> 	goto out;
> level = G4X_WM_LEVEL_HPLL;
> if (level > max_level)
> 	goto out;
> level++ /* ie. level=NUM_G4X_WM_LEVELS */
> out:
> invalidate_raw_watermarks_starting_from_level(level);
> 
> So if we take the first goto we want to invalidate all
> watermarks starting from SR, second goto wants to invalidate
> all watermarks starting from HPLL, and if we didn't take either
> goto we don't want to invalidate any watermarks because we deemed
> everything up to and including HPLL is ok. So we can't just
> leave level==G4X_WM_LEVEL_HPLL or else the code would still invalidate
> the HPLL watermarks. Instead we level++ so that the invalidate call
> becomes a nop.
> 
> The other option I suppose would be to skip the invalidation stuff
> if we didn't take either of the gotos, but I'm thinking that would make
> the code more messy.

Ah ok, thought its setting wm levels, but if its actually invalidating,
makes sense. Probably that is why it uses USHRT_MAX as a value.

Thanks for the clarification.

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> 
> -- 
> Ville Syrjälä
> Intel
