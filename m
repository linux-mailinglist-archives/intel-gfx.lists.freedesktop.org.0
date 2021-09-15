Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B31BF40C51E
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Sep 2021 14:21:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3472E6E918;
	Wed, 15 Sep 2021 12:21:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3368E6E918
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Sep 2021 12:21:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10107"; a="221966025"
X-IronPort-AV: E=Sophos;i="5.85,295,1624345200"; d="scan'208";a="221966025"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2021 05:21:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,295,1624345200"; d="scan'208";a="472382997"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga007.jf.intel.com with SMTP; 15 Sep 2021 05:21:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 15 Sep 2021 15:21:14 +0300
Date: Wed, 15 Sep 2021 15:21:14 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <YUHlOrV+bHC1Vx5O@intel.com>
References: <20210913144440.23008-1-ville.syrjala@linux.intel.com>
 <20210913144440.23008-12-ville.syrjala@linux.intel.com>
 <875yv2yw4f.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <875yv2yw4f.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 11/16] drm/i915: Introduce
 intel_master_crtc()
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

On Wed, Sep 15, 2021 at 01:24:32PM +0300, Jani Nikula wrote:
> On Mon, 13 Sep 2021, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Add a helper to determine the master crtc for bigjoiner usage.
> > Also name the variables consistently.
> 
> I think this would be a good time to to rename bigjoiner {master, slave}
> to {primary, secondary}. The change is coming to bspec too though it's
> not there yet.

Argh. "Primary" is really an overloaded terms so not a fan of that
rename. Anyway, I'll wait until the spec catches up because
otherewise I'll have to remap in my brain which is just pointless
cognitive load.

> 
> BR,
> Jani.
> 
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c     |  6 +--
> >  drivers/gpu/drm/i915/display/intel_display.c | 57 +++++++++++---------
> >  2 files changed, 33 insertions(+), 30 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index 4f7420dda8b5..4fbffce501dc 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -2882,12 +2882,10 @@ static void intel_ddi_post_disable(struct intel_atomic_state *state,
> >  	}
> >  
> >  	if (old_crtc_state->bigjoiner_linked_crtc) {
> > -		struct intel_atomic_state *state =
> > -			to_intel_atomic_state(old_crtc_state->uapi.state);
> > -		struct intel_crtc *slave =
> > +		struct intel_crtc *slave_crtc =
> >  			old_crtc_state->bigjoiner_linked_crtc;
> >  		const struct intel_crtc_state *old_slave_crtc_state =
> > -			intel_atomic_get_old_crtc_state(state, slave);
> > +			intel_atomic_get_old_crtc_state(state, slave_crtc);
> >  
> >  		intel_crtc_vblank_off(old_slave_crtc_state);
> >  
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index 24214e6249a9..a5450ac9e2d0 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -227,6 +227,14 @@ is_trans_port_sync_mode(const struct intel_crtc_state *crtc_state)
> >  		is_trans_port_sync_slave(crtc_state);
> >  }
> >  
> > +static struct intel_crtc *intel_master_crtc(const struct intel_crtc_state *crtc_state)
> > +{
> > +	if (crtc_state->bigjoiner_slave)
> > +		return crtc_state->bigjoiner_linked_crtc;
> > +	else
> > +		return to_intel_crtc(crtc_state->uapi.crtc);
> > +}
> > +
> >  static bool pipe_scanline_is_moving(struct drm_i915_private *dev_priv,
> >  				    enum pipe pipe)
> >  {
> > @@ -2978,21 +2986,19 @@ static void hsw_set_frame_start_delay(const struct intel_crtc_state *crtc_state)
> >  static void icl_ddi_bigjoiner_pre_enable(struct intel_atomic_state *state,
> >  					 const struct intel_crtc_state *crtc_state)
> >  {
> > -	struct intel_crtc *master = to_intel_crtc(crtc_state->uapi.crtc);
> > -	struct drm_i915_private *dev_priv = to_i915(master->base.dev);
> > +	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
> >  	struct intel_crtc_state *master_crtc_state;
> > +	struct intel_crtc *master_crtc;
> >  	struct drm_connector_state *conn_state;
> >  	struct drm_connector *conn;
> >  	struct intel_encoder *encoder = NULL;
> >  	int i;
> >  
> > -	if (crtc_state->bigjoiner_slave)
> > -		master = crtc_state->bigjoiner_linked_crtc;
> > -
> > -	master_crtc_state = intel_atomic_get_new_crtc_state(state, master);
> > +	master_crtc = intel_master_crtc(crtc_state);
> > +	master_crtc_state = intel_atomic_get_new_crtc_state(state, master_crtc);
> >  
> >  	for_each_new_connector_in_state(&state->base, conn, conn_state, i) {
> > -		if (conn_state->crtc != &master->base)
> > +		if (conn_state->crtc != &master_crtc->base)
> >  			continue;
> >  
> >  		encoder = to_intel_encoder(conn_state->best_encoder);
> > @@ -3006,10 +3012,10 @@ static void icl_ddi_bigjoiner_pre_enable(struct intel_atomic_state *state,
> >  		/*
> >  		 * Enable sequence steps 1-7 on bigjoiner master
> >  		 */
> > -		intel_encoders_pre_pll_enable(state, master);
> > +		intel_encoders_pre_pll_enable(state, master_crtc);
> >  		if (master_crtc_state->shared_dpll)
> >  			intel_enable_shared_dpll(master_crtc_state);
> > -		intel_encoders_pre_enable(state, master);
> > +		intel_encoders_pre_enable(state, master_crtc);
> >  
> >  		/* and DSC on slave */
> >  		intel_dsc_enable(NULL, crtc_state);
> > @@ -8462,7 +8468,7 @@ verify_crtc_state(struct intel_crtc *crtc,
> >  	struct intel_encoder *encoder;
> >  	struct intel_crtc_state *pipe_config = old_crtc_state;
> >  	struct drm_atomic_state *state = old_crtc_state->uapi.state;
> > -	struct intel_crtc *master = crtc;
> > +	struct intel_crtc *master_crtc;
> >  
> >  	__drm_atomic_helper_crtc_destroy_state(&old_crtc_state->uapi);
> >  	intel_crtc_free_hw_state(old_crtc_state);
> > @@ -8490,10 +8496,9 @@ verify_crtc_state(struct intel_crtc *crtc,
> >  			"(expected %i, found %i)\n",
> >  			new_crtc_state->hw.active, crtc->active);
> >  
> > -	if (new_crtc_state->bigjoiner_slave)
> > -		master = new_crtc_state->bigjoiner_linked_crtc;
> > +	master_crtc = intel_master_crtc(new_crtc_state);
> >  
> > -	for_each_encoder_on_crtc(dev, &master->base, encoder) {
> > +	for_each_encoder_on_crtc(dev, &master_crtc->base, encoder) {
> >  		enum pipe pipe;
> >  		bool active;
> >  
> > @@ -8503,7 +8508,7 @@ verify_crtc_state(struct intel_crtc *crtc,
> >  				encoder->base.base.id, active,
> >  				new_crtc_state->hw.active);
> >  
> > -		I915_STATE_WARN(active && master->pipe != pipe,
> > +		I915_STATE_WARN(active && master_crtc->pipe != pipe,
> >  				"Encoder connected to wrong pipe %c\n",
> >  				pipe_name(pipe));
> >  
> > @@ -9192,13 +9197,13 @@ static int intel_atomic_check_bigjoiner(struct intel_atomic_state *state,
> >  					struct intel_crtc_state *new_crtc_state)
> >  {
> >  	struct intel_crtc_state *slave_crtc_state, *master_crtc_state;
> > -	struct intel_crtc *slave, *master;
> > +	struct intel_crtc *slave_crtc, *master_crtc;
> >  
> >  	/* slave being enabled, is master is still claiming this crtc? */
> >  	if (old_crtc_state->bigjoiner_slave) {
> > -		slave = crtc;
> > -		master = old_crtc_state->bigjoiner_linked_crtc;
> > -		master_crtc_state = intel_atomic_get_new_crtc_state(state, master);
> > +		slave_crtc = crtc;
> > +		master_crtc = old_crtc_state->bigjoiner_linked_crtc;
> > +		master_crtc_state = intel_atomic_get_new_crtc_state(state, master_crtc);
> >  		if (!master_crtc_state || !intel_crtc_needs_modeset(master_crtc_state))
> >  			goto claimed;
> >  	}
> > @@ -9206,17 +9211,17 @@ static int intel_atomic_check_bigjoiner(struct intel_atomic_state *state,
> >  	if (!new_crtc_state->bigjoiner)
> >  		return 0;
> >  
> > -	slave = intel_dsc_get_bigjoiner_secondary(crtc);
> > -	if (!slave) {
> > +	slave_crtc = intel_dsc_get_bigjoiner_secondary(crtc);
> > +	if (!slave_crtc) {
> >  		DRM_DEBUG_KMS("[CRTC:%d:%s] Big joiner configuration requires "
> >  			      "CRTC + 1 to be used, doesn't exist\n",
> >  			      crtc->base.base.id, crtc->base.name);
> >  		return -EINVAL;
> >  	}
> >  
> > -	new_crtc_state->bigjoiner_linked_crtc = slave;
> > -	slave_crtc_state = intel_atomic_get_crtc_state(&state->base, slave);
> > -	master = crtc;
> > +	new_crtc_state->bigjoiner_linked_crtc = slave_crtc;
> > +	slave_crtc_state = intel_atomic_get_crtc_state(&state->base, slave_crtc);
> > +	master_crtc = crtc;
> >  	if (IS_ERR(slave_crtc_state))
> >  		return PTR_ERR(slave_crtc_state);
> >  
> > @@ -9225,15 +9230,15 @@ static int intel_atomic_check_bigjoiner(struct intel_atomic_state *state,
> >  		goto claimed;
> >  
> >  	DRM_DEBUG_KMS("[CRTC:%d:%s] Used as slave for big joiner\n",
> > -		      slave->base.base.id, slave->base.name);
> > +		      slave_crtc->base.base.id, slave_crtc->base.name);
> >  
> >  	return copy_bigjoiner_crtc_state(slave_crtc_state, new_crtc_state);
> >  
> >  claimed:
> >  	DRM_DEBUG_KMS("[CRTC:%d:%s] Slave is enabled as normal CRTC, but "
> >  		      "[CRTC:%d:%s] claiming this CRTC for bigjoiner.\n",
> > -		      slave->base.base.id, slave->base.name,
> > -		      master->base.base.id, master->base.name);
> > +		      slave_crtc->base.base.id, slave_crtc->base.name,
> > +		      master_crtc->base.base.id, master_crtc->base.name);
> >  	return -EINVAL;
> >  }
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Ville Syrjälä
Intel
