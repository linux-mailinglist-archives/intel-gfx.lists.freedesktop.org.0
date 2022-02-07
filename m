Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F8C4AB5E3
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Feb 2022 08:31:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE92C10E37C;
	Mon,  7 Feb 2022 07:31:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2267610E37C
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Feb 2022 07:31:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644219084; x=1675755084;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=/dQsGgZuRQzeZKRoGN5U2T1jEZwmf4p7L5FoFrdLJR0=;
 b=KHlrABrWGxPC0c5cFJD9MCGNpPBzuAW36c5BtGEsaSJZKtr0/Fab8CnP
 sFkjsI7fgt0qqhznweBiSvfJmcP/07hiynBz88+HEGUMpp4Rbx3qeYqgl
 r2w6fICUgubTrl+OobmgJIaLvBXREOOBm1BKtv3DAFba/nRk1bYIdZ7OE
 vEkVXttgN+QslLufLIrfLvHAzA+v/As5keZq8qdMQja3+7nUSzVE31yQ3
 hLkzdXW09Sfgj9+HD1E1TCHzZZRdru3YcRoGdQRfEkf/a1HPnzIKYn/jD
 Y2CXobRfDzXfZSBm6VvEs3FtY1dvfUlA1ia7x0KZMiOKX+ooO1Tysv4+e g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10250"; a="236062484"
X-IronPort-AV: E=Sophos;i="5.88,349,1635231600"; d="scan'208";a="236062484"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2022 23:31:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,349,1635231600"; d="scan'208";a="677678248"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga001.fm.intel.com with SMTP; 06 Feb 2022 23:31:20 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 07 Feb 2022 09:31:19 +0200
Date: Mon, 7 Feb 2022 09:31:19 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Navare, Manasi" <manasi.d.navare@intel.com>
Message-ID: <YgDKx8obYfeLKCAf@intel.com>
References: <20220203183823.22890-1-ville.syrjala@linux.intel.com>
 <20220203183823.22890-11-ville.syrjala@linux.intel.com>
 <20220204235828.GA23624@labuser-Z97X-UD5H>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220204235828.GA23624@labuser-Z97X-UD5H>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 10/10] drm/i915: Change bigjoiner state
 tracking to use the pipe bitmask
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Feb 04, 2022 at 03:58:29PM -0800, Navare, Manasi wrote:
> On Thu, Feb 03, 2022 at 08:38:23PM +0200, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Get rid of the inflexible bigjoiner_linked_crtc pointer thing
> > and just track things as a bitmask of pipes instead. We can
> > also nuke the bigjoiner_slave boolean as the role of the pipe
> > can be determined from its position in the bitmask.
> > 
> > It might be possible to nuke the bigjoiner boolean as well
> > if we make encoder.compute_config() do the bitmask assignment
> > directly for the master pipe. But for now I left that alone so
> > that encoer.compute_config() will just flag the state as needing
> > bigjoiner, and the intel_atomic_check_bigjoiner() is still
> > responsible for determining the bitmask. But that may have to change
> > as the encoder may be in the best position to determine how
> > exactly we should populate the bitmask.
> > 
> > Most places that just looked at the single bigjoiner_linked_crtc
> > now iterate over the whole bitmask, eliminating the singular
> > slave pipe assumption.
> 
> Okay so trying to understand the design here:
> For Pipe A + B Bigjoiner and C + D bigjoiner for example,
> bitmasks will be as below:
> 
> A : 0011
> B:  0011
> 
> C: 1100
> D: 1100
> 
> Is this correct understanding? Because we would mark both the master pipe and slave pipe in a bitmask right?

Yes.

> 
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  .../gpu/drm/i915/display/intel_atomic_plane.c |   5 +-
> >  drivers/gpu/drm/i915/display/intel_ddi.c      |  12 +-
> >  drivers/gpu/drm/i915/display/intel_display.c  | 305 ++++++++++++------
> >  drivers/gpu/drm/i915/display/intel_display.h  |   2 +
> >  .../drm/i915/display/intel_display_debugfs.c  |   5 +-
> >  .../drm/i915/display/intel_display_types.h    |   7 +-
> >  .../drm/i915/display/intel_plane_initial.c    |   7 -
> >  drivers/gpu/drm/i915/display/intel_vdsc.c     |  43 ---
> >  drivers/gpu/drm/i915/display/intel_vdsc.h     |   1 -
> >  9 files changed, 227 insertions(+), 160 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > index 41d52889dfce..0e15fe908855 100644
> > --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > @@ -404,9 +404,10 @@ int intel_plane_atomic_check(struct intel_atomic_state *state,
> >  		intel_atomic_get_new_crtc_state(state, crtc);
> >  
> >  	if (new_crtc_state && intel_crtc_is_bigjoiner_slave(new_crtc_state)) {
> > +		struct intel_crtc *master_crtc =
> > +			intel_master_crtc(new_crtc_state);
> >  		struct intel_plane *master_plane =
> > -			intel_crtc_get_plane(new_crtc_state->bigjoiner_linked_crtc,
> > -					     plane->id);
> > +			intel_crtc_get_plane(master_crtc, plane->id);
> >  
> >  		new_master_plane_state =
> >  			intel_atomic_get_new_plane_state(state, master_plane);
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index 3f0e1e127595..9dee12986991 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -2703,6 +2703,7 @@ static void intel_ddi_post_disable(struct intel_atomic_state *state,
> >  	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> >  	enum phy phy = intel_port_to_phy(dev_priv, encoder->port);
> >  	bool is_tc_port = intel_phy_is_tc(dev_priv, phy);
> > +	struct intel_crtc *slave_crtc;
> >  
> >  	if (!intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DP_MST)) {
> >  		intel_crtc_vblank_off(old_crtc_state);
> > @@ -2721,9 +2722,8 @@ static void intel_ddi_post_disable(struct intel_atomic_state *state,
> >  			ilk_pfit_disable(old_crtc_state);
> >  	}
> >  
> > -	if (old_crtc_state->bigjoiner_linked_crtc) {
> > -		struct intel_crtc *slave_crtc =
> > -			old_crtc_state->bigjoiner_linked_crtc;
> > +	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, slave_crtc,
> > +					 intel_crtc_bigjoiner_slave_pipes(old_crtc_state)) {
> >  		const struct intel_crtc_state *old_slave_crtc_state =
> >  			intel_atomic_get_old_crtc_state(state, slave_crtc);
> >  
> > @@ -3041,6 +3041,7 @@ intel_ddi_update_prepare(struct intel_atomic_state *state,
> >  			 struct intel_encoder *encoder,
> >  			 struct intel_crtc *crtc)
> >  {
> > +	struct drm_i915_private *i915 = to_i915(state->base.dev);
> >  	struct intel_crtc_state *crtc_state =
> >  		crtc ? intel_atomic_get_new_crtc_state(state, crtc) : NULL;
> >  	int required_lanes = crtc_state ? crtc_state->lane_count : 1;
> > @@ -3050,11 +3051,12 @@ intel_ddi_update_prepare(struct intel_atomic_state *state,
> >  	intel_tc_port_get_link(enc_to_dig_port(encoder),
> >  		               required_lanes);
> >  	if (crtc_state && crtc_state->hw.active) {
> > -		struct intel_crtc *slave_crtc = crtc_state->bigjoiner_linked_crtc;
> > +		struct intel_crtc *slave_crtc;
> >  
> >  		intel_update_active_dpll(state, crtc, encoder);
> >  
> > -		if (slave_crtc)
> > +		for_each_intel_crtc_in_pipe_mask(&i915->drm, slave_crtc,
> > +						 intel_crtc_bigjoiner_slave_pipes(crtc_state))
> >  			intel_update_active_dpll(state, slave_crtc, encoder);
> >  	}
> >  }
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index 34b6b4ab3a1b..f5fc283f8f73 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -337,20 +337,38 @@ is_trans_port_sync_mode(const struct intel_crtc_state *crtc_state)
> >  		is_trans_port_sync_slave(crtc_state);
> >  }
> >  
> > +static enum pipe bigjoiner_master_pipe(const struct intel_crtc_state *crtc_state)
> > +{
> > +	return ffs(crtc_state->bigjoiner_pipes) - 1;
> 
> Here we have both master and slave pipe bits set in a bitmask: This would result in ffs(0011) -1 = 2 which wouldnt be correct?

ffs(0b0011) == 1

<snip>
> >  static int intel_atomic_check_bigjoiner(struct intel_atomic_state *state,
> >  					struct intel_crtc *master_crtc)
> >  {
> >  	struct drm_i915_private *i915 = to_i915(state->base.dev);
> >  	struct intel_crtc_state *master_crtc_state =
> >  		intel_atomic_get_new_crtc_state(state, master_crtc);
> > -	struct intel_crtc_state *slave_crtc_state;
> >  	struct intel_crtc *slave_crtc;
> > +	u8 slave_pipes;
> >  
> > -	WARN_ON(master_crtc_state->bigjoiner_linked_crtc);
> > -	WARN_ON(intel_crtc_is_bigjoiner_slave(master_crtc_state));
> > +	/*
> > +	 * TODO: encoder.compute_config() may be the best
> > +	 * place to populate the bitmask for the master crtc.
> > +	 * For now encoder.compute_config() just flags things
> > +	 * as needing bigjoiner and we populate the bitmask
> > +	 * here.
> > +	 */
> > +	WARN_ON(master_crtc_state->bigjoiner_pipes);
> >  
> >  	if (!master_crtc_state->bigjoiner)
> >  		return 0;
> >  
> > -	slave_crtc = intel_dsc_get_bigjoiner_secondary(master_crtc);
> > -	if (!slave_crtc) {
> > +	slave_pipes = BIT(master_crtc->pipe + 1);
> > +
> > +	if (slave_pipes & ~bigjoiner_pipes(i915)) {
> >  		drm_dbg_kms(&i915->drm,
> > -			    "[CRTC:%d:%s] Big joiner configuration requires "
> > -			    "CRTC + 1 to be used, doesn't exist\n",
> > +			    "[CRTC:%d:%s] Cannot act as big joiner master "
> > +			    "(need 0x%x as slave pipes, only 0x%x possible)\n",
> > +			    master_crtc->base.base.id, master_crtc->base.name,
> > +			    slave_pipes, bigjoiner_pipes(i915));
> > +		return -EINVAL;
> 
> I dont get how we are checking for the invalid slave pipe here?
> slave_pipes = BIT(1) = 0010
> bigjoiner_pipes = 0000 (since we havents et anything in compute config)

bigjoiner_pipes() is a bitmask of pipes that support bigjoiner.
It is constant for the platform.

> so slave_pipes & ~bigjoiner_pipes = 0010 & 1111 = 0010 so the condition will be true
> And then we are flagging it as error why?

If we come here with eg. master == pipe D on TGL then we'd
mark the non-existent pipe E as the slave. This check will
catch that.

-- 
Ville Syrjälä
Intel
