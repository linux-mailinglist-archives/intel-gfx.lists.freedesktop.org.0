Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D960B450B54
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Nov 2021 18:18:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E6246EE31;
	Mon, 15 Nov 2021 17:18:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88C5F6EE31
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Nov 2021 17:18:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10169"; a="230945274"
X-IronPort-AV: E=Sophos;i="5.87,237,1631602800"; d="scan'208";a="230945274"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2021 09:18:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,237,1631602800"; d="scan'208";a="506008705"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 15 Nov 2021 09:18:47 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 15 Nov 2021 19:18:46 +0200
Date: Mon, 15 Nov 2021 19:18:46 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <YZKWdl3Hy0Mrf5IA@intel.com>
References: <20211102193214.99448-1-jose.souza@intel.com>
 <YYPpysij7Oovwzhx@intel.com>
 <50dd687c006667f95dab06cfbcfbef8a6e193496.camel@intel.com>
 <YYU1u4fu75vdK1PT@intel.com>
 <38902e7a71287702db079f0c0ca5c35eabafa4b4.camel@intel.com>
 <YYVwCOe/xyeOlTSZ@intel.com>
 <8cd6252fca125547e6d7bd926106e13569b33521.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <8cd6252fca125547e6d7bd926106e13569b33521.camel@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/display: Exit PSR when doing
 async flips
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Nov 09, 2021 at 07:13:34PM +0000, Souza, Jose wrote:
> On Fri, 2021-11-05 at 19:55 +0200, Ville Syrjälä wrote:
> > On Fri, Nov 05, 2021 at 05:44:21PM +0000, Souza, Jose wrote:
> > > On Fri, 2021-11-05 at 15:46 +0200, Ville Syrjälä wrote:
> > > > On Thu, Nov 04, 2021 at 05:56:52PM +0000, Souza, Jose wrote:
> > > > > On Thu, 2021-11-04 at 16:10 +0200, Ville Syrjälä wrote:
> > > > > > On Tue, Nov 02, 2021 at 12:32:14PM -0700, José Roberto de Souza wrote:
> > > > > > > Changing the buffer in the middle of the scanout then entering an
> > > > > > > period of flip idleness will cause part of the previous buffer being
> > > > > > > diplayed to user when PSR is enabled.
> > > > > > > 
> > > > > > > So here disabling PSR and scheduling activation during the next
> > > > > > > sync flip.
> > > > > > > 
> > > > > > > The async flip check that we had in PSR compute is not executed at
> > > > > > > every flip so it was not doing anything useful and is also being
> > > > > > > dropped here.
> > > > > > > 
> > > > > > > v2:
> > > > > > > - scheduling the PSR work in _intel_psr_post_plane_update()
> > > > > > > 
> > > > > > > v3:
> > > > > > > - only re enabling PSR when doing a sync flip
> > > > > > > 
> > > > > > > Cc: Karthik B S <karthik.b.s@intel.com>
> > > > > > > Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
> > > > > > > Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > > > > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > > > > > > Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> > > > > > > ---
> > > > > > >  drivers/gpu/drm/i915/display/intel_psr.c | 37 ++++++++++++++----------
> > > > > > >  1 file changed, 21 insertions(+), 16 deletions(-)
> > > > > > > 
> > > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> > > > > > > index 9d589d471e335..b8fac53d57df1 100644
> > > > > > > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > > > > > > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > > > > > > @@ -731,12 +731,6 @@ static bool intel_psr2_sel_fetch_config_valid(struct intel_dp *intel_dp,
> > > > > > >  		return false;
> > > > > > >  	}
> > > > > > >  
> > > > > > > -	if (crtc_state->uapi.async_flip) {
> > > > > > > -		drm_dbg_kms(&dev_priv->drm,
> > > > > > > -			    "PSR2 sel fetch not enabled, async flip enabled\n");
> > > > > > > -		return false;
> > > > > > > -	}
> > > > > > > -
> > > > > > >  	/* Wa_14010254185 Wa_14010103792 */
> > > > > > >  	if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_C0)) {
> > > > > > >  		drm_dbg_kms(&dev_priv->drm,
> > > > > > > @@ -1780,36 +1774,47 @@ void intel_psr_pre_plane_update(struct intel_atomic_state *state,
> > > > > > >  		if (psr->enabled && needs_to_disable)
> > > > > > >  			intel_psr_disable_locked(intel_dp);
> > > > > > >  
> > > > > > > +		if (psr->enabled && crtc_state->uapi.async_flip)
> > > > > > > +			intel_psr_exit(intel_dp);
> > > > > > > +
> > > > > > >  		mutex_unlock(&psr->lock);
> > > > > > >  	}
> > > > > > >  }
> > > > > > >  
> > > > > > >  static void _intel_psr_post_plane_update(const struct intel_atomic_state *state,
> > > > > > > -					 const struct intel_crtc_state *crtc_state)
> > > > > > > +					 const struct intel_crtc_state *old_crtc_state,
> > > > > > > +					 const struct intel_crtc_state *new_crtc_state)
> > > > > > 
> > > > > > Might make sense to change this to match how psr_pre_plane_update()
> > > > > > works these days.
> > > > > 
> > > > > Will do as follow up.
> > > > > 
> > > > > > 
> > > > > > >  {
> > > > > > >  	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
> > > > > > >  	struct intel_encoder *encoder;
> > > > > > >  
> > > > > > > -	if (!crtc_state->has_psr)
> > > > > > > +	if (!new_crtc_state->has_psr)
> > > > > > >  		return;
> > > > > > >  
> > > > > > >  	for_each_intel_encoder_mask_with_psr(state->base.dev, encoder,
> > > > > > > -					     crtc_state->uapi.encoder_mask) {
> > > > > > > +					     new_crtc_state->uapi.encoder_mask) {
> > > > > > >  		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> > > > > > >  		struct intel_psr *psr = &intel_dp->psr;
> > > > > > >  
> > > > > > >  		mutex_lock(&psr->lock);
> > > > > > >  
> > > > > > > -		drm_WARN_ON(&dev_priv->drm, psr->enabled && !crtc_state->active_planes);
> > > > > > > +		drm_WARN_ON(&dev_priv->drm, psr->enabled &&
> > > > > > > +			    !new_crtc_state->active_planes);
> > > > > > >  
> > > > > > >  		/* Only enable if there is active planes */
> > > > > > > -		if (!psr->enabled && crtc_state->active_planes)
> > > > > > > -			intel_psr_enable_locked(intel_dp, crtc_state);
> > > > > > > +		if (!psr->enabled && new_crtc_state->active_planes)
> > > > > > > +			intel_psr_enable_locked(intel_dp, new_crtc_state);
> > > > > > 
> > > > > > What prevents this guy from activating PSR while we're doing
> > > > > > an async flip?
> > > > > 
> > > > > enabled != active, when doing a async flip it will set active = false but enabled will be kept on.
> > > > 
> > > > intel_psr_enable_locked() calls intel_psr_activate() uncoditionally.
> > > > There is no active=false thing anywhere that I can see.
> > > > 
> > > > > 
> > > > > And to change the number of active_planes it will need to do a sync flip, so we are safe.
> > > > 
> > > > Why would the number of active planes need to change for this
> > > > to get called?
> > > 
> > > If CRTC is left on but the number of planes goes to 0, PSR is disabled.
> > > Then it is enabled again if the number of planes goes to 1 or more.
> > > 
> > > > 
> > > > I guess maybe there's some reason why this can't happen but it is
> > > > entirely non-obvious when reading this code. Also seems pretty
> > > > fragile if some other code now changes and suddenly causes this
> > > > to get called. In fact from the looks of things the only thing
> > > > needed would be for someone to call intel_psr_disable_locked()
> > > > so that psr->enabled gets cleared.
> > > 
> > > If someone calls intel_psr_disable_locked() then in the next flip the code above will indeed enable it again but as PSR takes at least 2 frames to
> > > actually activate after registers are programmed, we are safe. (see PSR2 EDP_PSR2_FRAME_BEFORE_SU and PSR1 psr_compute_idle_frames())
> > > 
> > > Then on the next async flip, it will exited again and active set to false.
> > > 
> > > > 
> > > > I might suggest adding crtc_state->psr_active or soemthing along
> > > > those lines to make it obvious when we want to have psr logically
> > > > enabled, but actually inactive.
> > > 
> > > Because of the invalidate frontbuffer rendering cases, we can't keep PSR status in atomic state.
> > 
> > Not fully. But it shouldn't prevent us from having something there as
> > well. So if crtc_state says to not activate PSR then don't, otherwise
> > let it activate/deactive as needed based on frontbuffer activity.
> > 
> > ATM it seems to be kind of ad-hoc when we fully disable vs. just
> > deactivate PSR. Dunno how feasible it would be to make that either:
> > a) logically enable/disable PSR only during full modesets, and
> >    otherwise just activate/deactivate as needed whether it be due to
> >    stuff we can calculate based on crtc_state (eg. active_planes or
> >    async_flip) or frontbuffer activity
> > or
> > b) always logically enable/disable PSR based on stuff we can calculate
> >    from the crtc state, and leave the activate/deactivate stuff to only
> >    frontbuffer rendering activity
> > 
> 
> Something like this for a)?
> 
> 
> void intel_psr_pre_plane_update(struct intel_atomic_state *state,
> 				struct intel_crtc *crtc)
> {
> 	struct drm_i915_private *i915 = to_i915(state->base.dev);
> 	const struct intel_crtc_state *crtc_state =
> 		intel_atomic_get_new_crtc_state(state, crtc);
> 	struct intel_encoder *encoder;
> 
> 	if (!HAS_PSR(i915))
> 		return;
> 
> 	for_each_intel_encoder_mask_with_psr(state->base.dev, encoder,
> 					     crtc_state->uapi.encoder_mask) {
> 		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> 		struct intel_psr *psr = &intel_dp->psr;
> 		bool needs_to_disable = false;
> 		bool needs_to_exit = false;
> 
> 		mutex_lock(&psr->lock);
> 
> 		/*
> 		 * Reasons to disable:
> 		 * - PSR disabled in new state
> 		 * - Changing between PSR versions
> 		 */
> 		needs_to_disable |= intel_crtc_needs_modeset(crtc_state);
> 		needs_to_disable |= !crtc_state->has_psr;
> 		needs_to_disable |= crtc_state->has_psr2 != psr->psr2_enabled;
> 		if (psr->enabled && needs_to_disable)
> 			intel_psr_disable_locked(intel_dp);
> 
> 		needs_to_exit |= crtc_state->uapi.async_flip;
> 		needs_to_exit |= crtc_state->active_planes == 0;
> 		if (psr->enabled && needs_to_exit)
> 			intel_psr_exit(intel_dp);
> 
> 		mutex_unlock(&psr->lock);
> 	}
> }
> 
> static void _intel_psr_post_plane_update(const struct intel_atomic_state *state,
> 					 const struct intel_crtc_state *old_crtc_state,
> 					 const struct intel_crtc_state *new_crtc_state)
> {
> 	struct intel_encoder *encoder;
> 
> 	if (!new_crtc_state->has_psr)
> 		return;
> 
> 	for_each_intel_encoder_mask_with_psr(state->base.dev, encoder,
> 					     new_crtc_state->uapi.encoder_mask) {
> 		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> 		struct intel_psr *psr = &intel_dp->psr;
> 		bool can_activate = true;
> 
> 		mutex_lock(&psr->lock);
> 
> 		/* Only enable if there is active planes */
> 		if (new_crtc_state->uapi.async_flip ||
> 		    new_crtc_state->active_planes == 0 ||
> 		    psr->sink_not_reliable)
> 			can_activate = false;
> 
> 		if (!psr->enabled && can_activate)
> 			intel_psr_enable_locked(intel_dp, new_crtc_state);

This still conflates activate vs. enable, so not quite what I was
suggesting.

> 
> 		if (psr->enabled && !psr->active && can_activate)
> 			intel_psr_activate(intel_dp);
> 
> 		/* Force a PSR exit when enabling CRC to avoid CRC timeouts */
> 		if (new_crtc_state->crc_enabled && psr->enabled)
> 			psr_force_hw_tracking_exit(intel_dp);
> 
> 		mutex_unlock(&psr->lock);
> 	}
> }
> 
> > Although there is also the AUX vs. PSR case to consider, but looks like
> > that is still not fixed.
> > 
> 

-- 
Ville Syrjälä
Intel
