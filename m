Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CB0A24AA4C5
	for <lists+intel-gfx@lfdr.de>; Sat,  5 Feb 2022 00:58:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EF3310E11D;
	Fri,  4 Feb 2022 23:58:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D40810E11D
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Feb 2022 23:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644019114; x=1675555114;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=VRnAXVlrGyT7bySoG6Cqu0nEKUiX0kNEFxPHsV10T10=;
 b=VJuoyEpdGGkCGvD7cxysEjdmFVEc+UlBAMdLPdLWcCYk+lRj1MTS3Q+A
 SbVc0uZJrnWY0hnFIXdj1Hsse4wdSirDfptGi10dO/JnFKxD3BeQW8epA
 J0kr2iC1PTQGAfAKn3ofC1CQbucW5NOIBy3Rw+VXptGeH9iPNz3xdsOjS
 HhbjXHqqJMkpKRp7gS8XlG7E+A100mieooiDO+2r13Rnr2i7scdYpCe5T
 mGoyDrOWtUN26jQ20f+ktE4/8SMLgEjAhKcuaZppACEOvwuTW+4VAspq9
 rEjfCbf9a3Cgb25qz2XoxTmL1wclVRx0xeDqjNsH52RhHNYn5JRae/R8G Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10248"; a="248676748"
X-IronPort-AV: E=Sophos;i="5.88,344,1635231600"; d="scan'208";a="248676748"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2022 15:58:33 -0800
X-IronPort-AV: E=Sophos;i="5.88,344,1635231600"; d="scan'208";a="584281759"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2022 15:58:33 -0800
Date: Fri, 4 Feb 2022 15:58:29 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20220204235828.GA23624@labuser-Z97X-UD5H>
References: <20220203183823.22890-1-ville.syrjala@linux.intel.com>
 <20220203183823.22890-11-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220203183823.22890-11-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
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

On Thu, Feb 03, 2022 at 08:38:23PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Get rid of the inflexible bigjoiner_linked_crtc pointer thing
> and just track things as a bitmask of pipes instead. We can
> also nuke the bigjoiner_slave boolean as the role of the pipe
> can be determined from its position in the bitmask.
> 
> It might be possible to nuke the bigjoiner boolean as well
> if we make encoder.compute_config() do the bitmask assignment
> directly for the master pipe. But for now I left that alone so
> that encoer.compute_config() will just flag the state as needing
> bigjoiner, and the intel_atomic_check_bigjoiner() is still
> responsible for determining the bitmask. But that may have to change
> as the encoder may be in the best position to determine how
> exactly we should populate the bitmask.
> 
> Most places that just looked at the single bigjoiner_linked_crtc
> now iterate over the whole bitmask, eliminating the singular
> slave pipe assumption.

Okay so trying to understand the design here:
For Pipe A + B Bigjoiner and C + D bigjoiner for example,
bitmasks will be as below:

A : 0011
B:  0011

C: 1100
D: 1100

Is this correct understanding? Because we would mark both the master pipe and slave pipe in a bitmask right?

> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  .../gpu/drm/i915/display/intel_atomic_plane.c |   5 +-
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  12 +-
>  drivers/gpu/drm/i915/display/intel_display.c  | 305 ++++++++++++------
>  drivers/gpu/drm/i915/display/intel_display.h  |   2 +
>  .../drm/i915/display/intel_display_debugfs.c  |   5 +-
>  .../drm/i915/display/intel_display_types.h    |   7 +-
>  .../drm/i915/display/intel_plane_initial.c    |   7 -
>  drivers/gpu/drm/i915/display/intel_vdsc.c     |  43 ---
>  drivers/gpu/drm/i915/display/intel_vdsc.h     |   1 -
>  9 files changed, 227 insertions(+), 160 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> index 41d52889dfce..0e15fe908855 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> @@ -404,9 +404,10 @@ int intel_plane_atomic_check(struct intel_atomic_state *state,
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  
>  	if (new_crtc_state && intel_crtc_is_bigjoiner_slave(new_crtc_state)) {
> +		struct intel_crtc *master_crtc =
> +			intel_master_crtc(new_crtc_state);
>  		struct intel_plane *master_plane =
> -			intel_crtc_get_plane(new_crtc_state->bigjoiner_linked_crtc,
> -					     plane->id);
> +			intel_crtc_get_plane(master_crtc, plane->id);
>  
>  		new_master_plane_state =
>  			intel_atomic_get_new_plane_state(state, master_plane);
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 3f0e1e127595..9dee12986991 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -2703,6 +2703,7 @@ static void intel_ddi_post_disable(struct intel_atomic_state *state,
>  	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
>  	enum phy phy = intel_port_to_phy(dev_priv, encoder->port);
>  	bool is_tc_port = intel_phy_is_tc(dev_priv, phy);
> +	struct intel_crtc *slave_crtc;
>  
>  	if (!intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DP_MST)) {
>  		intel_crtc_vblank_off(old_crtc_state);
> @@ -2721,9 +2722,8 @@ static void intel_ddi_post_disable(struct intel_atomic_state *state,
>  			ilk_pfit_disable(old_crtc_state);
>  	}
>  
> -	if (old_crtc_state->bigjoiner_linked_crtc) {
> -		struct intel_crtc *slave_crtc =
> -			old_crtc_state->bigjoiner_linked_crtc;
> +	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, slave_crtc,
> +					 intel_crtc_bigjoiner_slave_pipes(old_crtc_state)) {
>  		const struct intel_crtc_state *old_slave_crtc_state =
>  			intel_atomic_get_old_crtc_state(state, slave_crtc);
>  
> @@ -3041,6 +3041,7 @@ intel_ddi_update_prepare(struct intel_atomic_state *state,
>  			 struct intel_encoder *encoder,
>  			 struct intel_crtc *crtc)
>  {
> +	struct drm_i915_private *i915 = to_i915(state->base.dev);
>  	struct intel_crtc_state *crtc_state =
>  		crtc ? intel_atomic_get_new_crtc_state(state, crtc) : NULL;
>  	int required_lanes = crtc_state ? crtc_state->lane_count : 1;
> @@ -3050,11 +3051,12 @@ intel_ddi_update_prepare(struct intel_atomic_state *state,
>  	intel_tc_port_get_link(enc_to_dig_port(encoder),
>  		               required_lanes);
>  	if (crtc_state && crtc_state->hw.active) {
> -		struct intel_crtc *slave_crtc = crtc_state->bigjoiner_linked_crtc;
> +		struct intel_crtc *slave_crtc;
>  
>  		intel_update_active_dpll(state, crtc, encoder);
>  
> -		if (slave_crtc)
> +		for_each_intel_crtc_in_pipe_mask(&i915->drm, slave_crtc,
> +						 intel_crtc_bigjoiner_slave_pipes(crtc_state))
>  			intel_update_active_dpll(state, slave_crtc, encoder);
>  	}
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 34b6b4ab3a1b..f5fc283f8f73 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -337,20 +337,38 @@ is_trans_port_sync_mode(const struct intel_crtc_state *crtc_state)
>  		is_trans_port_sync_slave(crtc_state);
>  }
>  
> +static enum pipe bigjoiner_master_pipe(const struct intel_crtc_state *crtc_state)
> +{
> +	return ffs(crtc_state->bigjoiner_pipes) - 1;

Here we have both master and slave pipe bits set in a bitmask: This would result in ffs(0011) -1 = 2 which wouldnt be correct?

> +}
> +
> +u8 intel_crtc_bigjoiner_slave_pipes(const struct intel_crtc_state *crtc_state)
> +{
> +	return crtc_state->bigjoiner_pipes & ~BIT(bigjoiner_master_pipe(crtc_state));
> +}
> +
>  bool intel_crtc_is_bigjoiner_slave(const struct intel_crtc_state *crtc_state)
>  {
> -	return crtc_state->bigjoiner_slave;
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +
> +	return crtc_state->bigjoiner_pipes &&
> +		crtc->pipe != bigjoiner_master_pipe(crtc_state);
>  }
>  
>  bool intel_crtc_is_bigjoiner_master(const struct intel_crtc_state *crtc_state)
>  {
> -	return crtc_state->bigjoiner && !crtc_state->bigjoiner_slave;
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +
> +	return crtc_state->bigjoiner_pipes &&
> +		crtc->pipe == bigjoiner_master_pipe(crtc_state);
>  }
>  
> -static struct intel_crtc *intel_master_crtc(const struct intel_crtc_state *crtc_state)
> +struct intel_crtc *intel_master_crtc(const struct intel_crtc_state *crtc_state)
>  {
> +	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
> +
>  	if (intel_crtc_is_bigjoiner_slave(crtc_state))
> -		return crtc_state->bigjoiner_linked_crtc;
> +		return intel_crtc_for_pipe(i915, bigjoiner_master_pipe(crtc_state));
>  	else
>  		return to_intel_crtc(crtc_state->uapi.crtc);
>  }
> @@ -4111,6 +4129,37 @@ static void enabled_bigjoiner_pipes(struct drm_i915_private *dev_priv,
>  		 *master_pipes, *slave_pipes);
>  }
>  
> +static enum pipe get_bigjoiner_master_pipe(enum pipe pipe, u8 master_pipes, u8 slave_pipes)
> +{
> +	if ((slave_pipes & BIT(pipe)) == 0)
> +		return pipe;
> +
> +	/* ignore everything above our pipe */
> +	master_pipes &= ~GENMASK(7, pipe);
> +
> +	/* highest remaining bit should be our master pipe */
> +	return fls(master_pipes) - 1;
> +}
> +
> +static u8 get_bigjoiner_slave_pipes(enum pipe pipe, u8 master_pipes, u8 slave_pipes)
> +{
> +	enum pipe master_pipe, next_master_pipe;
> +
> +	master_pipe = get_bigjoiner_master_pipe(pipe, master_pipes, slave_pipes);
> +
> +	if ((master_pipes & BIT(master_pipe)) == 0)
> +		return 0;
> +
> +	/* ignore our master pipe and everything below it */
> +	master_pipes &= ~GENMASK(master_pipe, 0);
> +	/* make sure a high bit is set for the ffs() */
> +	master_pipes |= BIT(7);
> +	/* lowest remaining bit should be the next master pipe */
> +	next_master_pipe = ffs(master_pipes) - 1;
> +
> +	return slave_pipes & GENMASK(next_master_pipe - 1, master_pipe);
> +}
> +
>  static u8 hsw_panel_transcoders(struct drm_i915_private *i915)
>  {
>  	u8 panel_transcoder_mask = BIT(TRANSCODER_EDP);
> @@ -4181,7 +4230,8 @@ static u8 hsw_enabled_transcoders(struct intel_crtc *crtc)
>  	/* bigjoiner slave -> consider the master pipe's transcoder as well */
>  	enabled_bigjoiner_pipes(dev_priv, &master_pipes, &slave_pipes);
>  	if (slave_pipes & BIT(crtc->pipe)) {
> -		cpu_transcoder = (enum transcoder) crtc->pipe - 1;
> +		cpu_transcoder = (enum transcoder)
> +			get_bigjoiner_master_pipe(crtc->pipe, master_pipes, slave_pipes);
>  		if (transcoder_ddi_func_is_enabled(dev_priv, cpu_transcoder))
>  			enabled_transcoders |= BIT(cpu_transcoder);
>  	}
> @@ -4306,6 +4356,24 @@ static bool bxt_get_dsi_transcoder_state(struct intel_crtc *crtc,
>  	return transcoder_is_dsi(pipe_config->cpu_transcoder);
>  }
>  
> +static void intel_bigjoiner_get_config(struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> +	u8 master_pipes, slave_pipes;
> +	enum pipe pipe = crtc->pipe;
> +
> +	enabled_bigjoiner_pipes(i915, &master_pipes, &slave_pipes);
> +
> +	if (((master_pipes | slave_pipes) & BIT(pipe)) == 0)
> +		return;
> +
> +	crtc_state->bigjoiner = true;
> +	crtc_state->bigjoiner_pipes =
> +		BIT(get_bigjoiner_master_pipe(pipe, master_pipes, slave_pipes)) |
> +		get_bigjoiner_slave_pipes(pipe, master_pipes, slave_pipes);
> +}
> +
>  static bool hsw_get_pipe_config(struct intel_crtc *crtc,
>  				struct intel_crtc_state *pipe_config)
>  {
> @@ -4332,8 +4400,7 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
>  		goto out;
>  
>  	intel_dsc_get_config(pipe_config);
> -	if (DISPLAY_VER(dev_priv) >= 13 && !pipe_config->dsc.compression_enable)
> -		intel_uncompressed_joiner_get_config(pipe_config);
> +	intel_bigjoiner_get_config(pipe_config);
>  
>  	if (!transcoder_is_dsi(pipe_config->cpu_transcoder) ||
>  	    DISPLAY_VER(dev_priv) >= 11)
> @@ -5615,9 +5682,10 @@ static void intel_dump_pipe_config(const struct intel_crtc_state *pipe_config,
>  		    transcoder_name(pipe_config->master_transcoder),
>  		    pipe_config->sync_mode_slaves_mask);
>  
> -	drm_dbg_kms(&dev_priv->drm, "bigjoiner: %s\n",
> +	drm_dbg_kms(&dev_priv->drm, "bigjoiner: %s, pipes: 0x%x\n",
>  		    intel_crtc_is_bigjoiner_slave(pipe_config) ? "slave" :
> -		    intel_crtc_is_bigjoiner_master(pipe_config) ? "master" : "no");
> +		    intel_crtc_is_bigjoiner_master(pipe_config) ? "master" : "no",
> +		    pipe_config->bigjoiner_pipes);
>  
>  	drm_dbg_kms(&dev_priv->drm, "splitter: %s, link count %d, overlap %d\n",
>  		    enableddisabled(pipe_config->splitter.enable),
> @@ -6699,8 +6767,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>  	PIPE_CONF_CHECK_X(sync_mode_slaves_mask);
>  	PIPE_CONF_CHECK_I(master_transcoder);
>  	PIPE_CONF_CHECK_BOOL(bigjoiner);
> -	PIPE_CONF_CHECK_BOOL(bigjoiner_slave);
> -	PIPE_CONF_CHECK_P(bigjoiner_linked_crtc);
> +	PIPE_CONF_CHECK_X(bigjoiner_pipes);
>  
>  	PIPE_CONF_CHECK_I(dsc.compression_enable);
>  	PIPE_CONF_CHECK_I(dsc.dsc_split);
> @@ -7486,20 +7553,25 @@ static int intel_crtc_add_bigjoiner_planes(struct intel_atomic_state *state,
>  
>  static int intel_bigjoiner_add_affected_planes(struct intel_atomic_state *state)
>  {
> +	struct drm_i915_private *i915 = to_i915(state->base.dev);
>  	const struct intel_crtc_state *crtc_state;
>  	struct intel_crtc *crtc;
>  	int i;
>  
>  	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
> -		int ret;
> +		struct intel_crtc *other;
>  
> -		if (!crtc_state->bigjoiner)
> -			continue;
> +		for_each_intel_crtc_in_pipe_mask(&i915->drm, other,
> +						 crtc_state->bigjoiner_pipes) {
> +			int ret;
>  
> -		ret = intel_crtc_add_bigjoiner_planes(state, crtc,
> -						      crtc_state->bigjoiner_linked_crtc);
> -		if (ret)
> -			return ret;
> +			if (crtc == other)
> +				continue;
> +
> +			ret = intel_crtc_add_bigjoiner_planes(state, crtc, other);
> +			if (ret)
> +				return ret;
> +		}
>  	}
>  
>  	return 0;
> @@ -7601,84 +7673,123 @@ static bool intel_cpu_transcoders_need_modeset(struct intel_atomic_state *state,
>  	return false;
>  }
>  
> +static bool intel_pipes_need_modeset(struct intel_atomic_state *state,
> +				     u8 pipes)
> +{
> +	const struct intel_crtc_state *new_crtc_state;
> +	struct intel_crtc *crtc;
> +	int i;
> +
> +	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> +		if (new_crtc_state->hw.enable &&
> +		    pipes & BIT(crtc->pipe) &&
> +		    intel_crtc_needs_modeset(new_crtc_state))
> +			return true;
> +	}
> +
> +	return false;
> +}
> +
>  static int intel_atomic_check_bigjoiner(struct intel_atomic_state *state,
>  					struct intel_crtc *master_crtc)
>  {
>  	struct drm_i915_private *i915 = to_i915(state->base.dev);
>  	struct intel_crtc_state *master_crtc_state =
>  		intel_atomic_get_new_crtc_state(state, master_crtc);
> -	struct intel_crtc_state *slave_crtc_state;
>  	struct intel_crtc *slave_crtc;
> +	u8 slave_pipes;
>  
> -	WARN_ON(master_crtc_state->bigjoiner_linked_crtc);
> -	WARN_ON(intel_crtc_is_bigjoiner_slave(master_crtc_state));
> +	/*
> +	 * TODO: encoder.compute_config() may be the best
> +	 * place to populate the bitmask for the master crtc.
> +	 * For now encoder.compute_config() just flags things
> +	 * as needing bigjoiner and we populate the bitmask
> +	 * here.
> +	 */
> +	WARN_ON(master_crtc_state->bigjoiner_pipes);
>  
>  	if (!master_crtc_state->bigjoiner)
>  		return 0;
>  
> -	slave_crtc = intel_dsc_get_bigjoiner_secondary(master_crtc);
> -	if (!slave_crtc) {
> +	slave_pipes = BIT(master_crtc->pipe + 1);
> +
> +	if (slave_pipes & ~bigjoiner_pipes(i915)) {
>  		drm_dbg_kms(&i915->drm,
> -			    "[CRTC:%d:%s] Big joiner configuration requires "
> -			    "CRTC + 1 to be used, doesn't exist\n",
> +			    "[CRTC:%d:%s] Cannot act as big joiner master "
> +			    "(need 0x%x as slave pipes, only 0x%x possible)\n",
> +			    master_crtc->base.base.id, master_crtc->base.name,
> +			    slave_pipes, bigjoiner_pipes(i915));
> +		return -EINVAL;

I dont get how we are checking for the invalid slave pipe here?
slave_pipes = BIT(1) = 0010
bigjoiner_pipes = 0000 (since we havents et anything in compute config)
so slave_pipes & ~bigjoiner_pipes = 0010 & 1111 = 0010 so the condition will be true
And then we are flagging it as error why?

Manasi

> +	}
> +
> +	for_each_intel_crtc_in_pipe_mask(&i915->drm, slave_crtc, slave_pipes) {
> +		struct intel_crtc_state *slave_crtc_state;
> +		int ret;
> +
> +		slave_crtc_state = intel_atomic_get_crtc_state(&state->base, slave_crtc);
> +		if (IS_ERR(slave_crtc_state))
> +			return PTR_ERR(slave_crtc_state);
> +
> +		/* master being enabled, slave was already configured? */
> +		if (slave_crtc_state->uapi.enable) {
> +			drm_dbg_kms(&i915->drm,
> +				    "[CRTC:%d:%s] Slave is enabled as normal CRTC, but "
> +				    "[CRTC:%d:%s] claiming this CRTC for bigjoiner.\n",
> +				    slave_crtc->base.base.id, slave_crtc->base.name,
> +				    master_crtc->base.base.id, master_crtc->base.name);
> +			return -EINVAL;
> +		}
> +
> +		/*
> +		 * The state copy logic assumes the master crtc gets processed
> +		 * before the slave crtc during the main compute_config loop.
> +		 * This works because the crtcs are created in pipe order,
> +		 * and the hardware requires master pipe < slave pipe as well.
> +		 * Should that change we need to rethink the logic.
> +		 */
> +		if (WARN_ON(drm_crtc_index(&master_crtc->base) >
> +			    drm_crtc_index(&slave_crtc->base)))
> +			return -EINVAL;
> +
> +		drm_dbg_kms(&i915->drm,
> +			    "[CRTC:%d:%s] Used as slave for big joiner master [CRTC:%d:%s]\n",
> +			    slave_crtc->base.base.id, slave_crtc->base.name,
>  			    master_crtc->base.base.id, master_crtc->base.name);
> -		return -EINVAL;
> +
> +		master_crtc_state->bigjoiner_pipes =
> +			BIT(master_crtc->pipe) | BIT(slave_crtc->pipe);
> +		slave_crtc_state->bigjoiner_pipes =
> +			BIT(master_crtc->pipe) | BIT(slave_crtc->pipe);
> +
> +		ret = copy_bigjoiner_crtc_state_modeset(state, slave_crtc);
> +		if (ret)
> +			return ret;
>  	}
>  
> -	slave_crtc_state = intel_atomic_get_crtc_state(&state->base, slave_crtc);
> -	if (IS_ERR(slave_crtc_state))
> -		return PTR_ERR(slave_crtc_state);
> -
> -	/* master being enabled, slave was already configured? */
> -	if (slave_crtc_state->uapi.enable)
> -		goto claimed;
> -
> -	/*
> -	 * The state copy logic assumes the master crtc gets processed
> -	 * before the slave crtc during the main compute_config loop.
> -	 * This works because the crtcs are created in pipe order,
> -	 * and the hardware requires master pipe < slave pipe as well.
> -	 * Should that change we need to rethink the logic.
> -	 */
> -	if (WARN_ON(drm_crtc_index(&master_crtc->base) > drm_crtc_index(&slave_crtc->base)))
> -		return -EINVAL;
> -
> -	drm_dbg_kms(&i915->drm,
> -		    "[CRTC:%d:%s] Used as slave for big joiner master [CRTC:%d:%s]\n",
> -		    slave_crtc->base.base.id, slave_crtc->base.name,
> -		    master_crtc->base.base.id, master_crtc->base.name);
> -
> -	master_crtc_state->bigjoiner_linked_crtc = slave_crtc;
> -	master_crtc_state->bigjoiner_slave = false;
> -
> -	slave_crtc_state->bigjoiner_linked_crtc = master_crtc;
> -	slave_crtc_state->bigjoiner_slave = true;
> -
> -	return copy_bigjoiner_crtc_state_modeset(state, slave_crtc);
> -
> -claimed:
> -	drm_dbg_kms(&i915->drm,
> -		    "[CRTC:%d:%s] Slave is enabled as normal CRTC, but "
> -		    "[CRTC:%d:%s] claiming this CRTC for bigjoiner.\n",
> -		    slave_crtc->base.base.id, slave_crtc->base.name,
> -		    master_crtc->base.base.id, master_crtc->base.name);
> -	return -EINVAL;
> +	return 0;
>  }
>  
>  static void kill_bigjoiner_slave(struct intel_atomic_state *state,
>  				 struct intel_crtc *master_crtc)
>  {
> +	struct drm_i915_private *i915 = to_i915(state->base.dev);
>  	struct intel_crtc_state *master_crtc_state =
>  		intel_atomic_get_new_crtc_state(state, master_crtc);
> -	struct intel_crtc *slave_crtc = master_crtc_state->bigjoiner_linked_crtc;
> -	struct intel_crtc_state *slave_crtc_state =
> -		intel_atomic_get_new_crtc_state(state, slave_crtc);
> +	struct intel_crtc *slave_crtc;
>  
> -	slave_crtc_state->bigjoiner = master_crtc_state->bigjoiner = false;
> -	slave_crtc_state->bigjoiner_slave = master_crtc_state->bigjoiner_slave = false;
> -	slave_crtc_state->bigjoiner_linked_crtc = master_crtc_state->bigjoiner_linked_crtc = NULL;
> +	for_each_intel_crtc_in_pipe_mask(&i915->drm, slave_crtc,
> +					 intel_crtc_bigjoiner_slave_pipes(master_crtc_state)) {
> +		struct intel_crtc_state *slave_crtc_state =
> +			intel_atomic_get_new_crtc_state(state, slave_crtc);
>  
> -	intel_crtc_copy_uapi_to_hw_state_modeset(state, slave_crtc);
> +		slave_crtc_state->bigjoiner = false;
> +		slave_crtc_state->bigjoiner_pipes = 0;
> +
> +		intel_crtc_copy_uapi_to_hw_state_modeset(state, slave_crtc);
> +	}
> +
> +	master_crtc_state->bigjoiner = false;
> +	master_crtc_state->bigjoiner_pipes = 0;
>  }
>  
>  /**
> @@ -7828,34 +7939,37 @@ static int intel_atomic_check_async(struct intel_atomic_state *state, struct int
>  
>  static int intel_bigjoiner_add_affected_crtcs(struct intel_atomic_state *state)
>  {
> +	struct drm_i915_private *i915 = to_i915(state->base.dev);
>  	struct intel_crtc_state *crtc_state;
>  	struct intel_crtc *crtc;
> +	u8 affected_pipes = 0;
> +	u8 modeset_pipes = 0;
>  	int i;
>  
>  	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
> -		struct intel_crtc_state *linked_crtc_state;
> -		struct intel_crtc *linked_crtc;
> +		affected_pipes |= crtc_state->bigjoiner_pipes;
> +		if (intel_crtc_needs_modeset(crtc_state))
> +			modeset_pipes |= crtc_state->bigjoiner_pipes;
> +	}
> +
> +	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc, affected_pipes) {
> +		crtc_state = intel_atomic_get_crtc_state(&state->base, crtc);
> +		if (IS_ERR(crtc_state))
> +			return PTR_ERR(crtc_state);
> +	}
> +
> +	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc, modeset_pipes) {
>  		int ret;
>  
> -		if (!crtc_state->bigjoiner)
> -			continue;
> +		crtc_state = intel_atomic_get_new_crtc_state(state, crtc);
>  
> -		linked_crtc = crtc_state->bigjoiner_linked_crtc;
> -		linked_crtc_state = intel_atomic_get_crtc_state(&state->base, linked_crtc);
> -		if (IS_ERR(linked_crtc_state))
> -			return PTR_ERR(linked_crtc_state);
> +		crtc_state->uapi.mode_changed = true;
>  
> -		if (!intel_crtc_needs_modeset(crtc_state))
> -			continue;
> -
> -		linked_crtc_state->uapi.mode_changed = true;
> -
> -		ret = drm_atomic_add_affected_connectors(&state->base,
> -							 &linked_crtc->base);
> +		ret = drm_atomic_add_affected_connectors(&state->base, &crtc->base);
>  		if (ret)
>  			return ret;
>  
> -		ret = intel_atomic_add_affected_planes(state, linked_crtc);
> +		ret = intel_atomic_add_affected_planes(state, crtc);
>  		if (ret)
>  			return ret;
>  	}
> @@ -7985,10 +8099,7 @@ static int intel_atomic_check(struct drm_device *dev,
>  		}
>  
>  		if (new_crtc_state->bigjoiner) {
> -			struct intel_crtc_state *linked_crtc_state =
> -				intel_atomic_get_new_crtc_state(state, new_crtc_state->bigjoiner_linked_crtc);
> -
> -			if (intel_crtc_needs_modeset(linked_crtc_state)) {
> +			if (intel_pipes_need_modeset(state, new_crtc_state->bigjoiner_pipes)) {
>  				new_crtc_state->uapi.mode_changed = true;
>  				new_crtc_state->update_pipe = false;
>  			}
> @@ -10390,12 +10501,18 @@ static void intel_modeset_readout_hw_state(struct drm_device *dev)
>  
>  			/* read out to slave crtc as well for bigjoiner */
>  			if (crtc_state->bigjoiner) {
> +				struct intel_crtc *slave_crtc;
> +
>  				/* encoder should read be linked to bigjoiner master */
>  				WARN_ON(intel_crtc_is_bigjoiner_slave(crtc_state));
>  
> -				crtc = crtc_state->bigjoiner_linked_crtc;
> -				crtc_state = to_intel_crtc_state(crtc->base.state);
> -				intel_encoder_get_config(encoder, crtc_state);
> +				for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, slave_crtc,
> +								 intel_crtc_bigjoiner_slave_pipes(crtc_state)) {
> +					struct intel_crtc_state *slave_crtc_state;
> +
> +					slave_crtc_state = to_intel_crtc_state(slave_crtc->base.state);
> +					intel_encoder_get_config(encoder, slave_crtc_state);
> +				}
>  			}
>  		} else {
>  			encoder->base.crtc = NULL;
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> index fe9eb3acee65..d8c5c507f54b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -557,6 +557,8 @@ enum phy intel_port_to_phy(struct drm_i915_private *i915, enum port port);
>  bool is_trans_port_sync_mode(const struct intel_crtc_state *state);
>  bool intel_crtc_is_bigjoiner_slave(const struct intel_crtc_state *crtc_state);
>  bool intel_crtc_is_bigjoiner_master(const struct intel_crtc_state *crtc_state);
> +u8 intel_crtc_bigjoiner_slave_pipes(const struct intel_crtc_state *crtc_state);
> +struct intel_crtc *intel_master_crtc(const struct intel_crtc_state *crtc_state);
>  
>  void intel_plane_destroy(struct drm_plane *plane);
>  void intel_enable_transcoder(const struct intel_crtc_state *new_crtc_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 053c74afe721..1738a4050773 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -936,9 +936,8 @@ static void intel_crtc_info(struct seq_file *m, struct intel_crtc *crtc)
>  	}
>  
>  	if (crtc_state->bigjoiner)
> -		seq_printf(m, "\tLinked to [CRTC:%d:%s] as a %s\n",
> -			   crtc_state->bigjoiner_linked_crtc->base.base.id,
> -			   crtc_state->bigjoiner_linked_crtc->base.name,
> +		seq_printf(m, "\tLinked to 0x%x pipes as a %s\n",
> +			   crtc_state->bigjoiner_pipes,
>  			   intel_crtc_is_bigjoiner_slave(crtc_state) ? "slave" : "master");
>  
>  	for_each_intel_encoder_mask(&dev_priv->drm, encoder,
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 60e15226a8cb..641ecae42198 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1202,11 +1202,8 @@ struct intel_crtc_state {
>  	/* enable pipe big joiner? */
>  	bool bigjoiner;
>  
> -	/* big joiner slave crtc? */
> -	bool bigjoiner_slave;
> -
> -	/* linked crtc for bigjoiner, either slave or master */
> -	struct intel_crtc *bigjoiner_linked_crtc;
> +	/* big joiner pipe bitmask */
> +	u8 bigjoiner_pipes;
>  
>  	/* Display Stream compression state */
>  	struct {
> diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
> index e4186a0b8edb..542227d6d2f9 100644
> --- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
> +++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
> @@ -165,8 +165,6 @@ intel_find_initial_plane_obj(struct intel_crtc *crtc,
>  {
>  	struct drm_device *dev = crtc->base.dev;
>  	struct drm_i915_private *dev_priv = to_i915(dev);
> -	struct intel_crtc_state *crtc_state =
> -		to_intel_crtc_state(crtc->base.state);
>  	struct intel_plane *plane =
>  		to_intel_plane(crtc->base.primary);
>  	struct intel_plane_state *plane_state =
> @@ -203,11 +201,6 @@ intel_find_initial_plane_obj(struct intel_crtc *crtc,
>  	 * pretend the BIOS never had it enabled.
>  	 */
>  	intel_plane_disable_noatomic(crtc, plane);
> -	if (crtc_state->bigjoiner) {
> -		struct intel_crtc *slave =
> -			crtc_state->bigjoiner_linked_crtc;
> -		intel_plane_disable_noatomic(slave, to_intel_plane(slave->base.primary));
> -	}
>  
>  	return;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index b83b59cf2b78..545eff5bf158 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -1107,18 +1107,6 @@ static i915_reg_t dss_ctl2_reg(struct intel_crtc *crtc, enum transcoder cpu_tran
>  		ICL_PIPE_DSS_CTL2(crtc->pipe) : DSS_CTL2;
>  }
>  
> -struct intel_crtc *
> -intel_dsc_get_bigjoiner_secondary(const struct intel_crtc *primary_crtc)
> -{
> -	return intel_crtc_for_pipe(to_i915(primary_crtc->base.dev), primary_crtc->pipe + 1);
> -}
> -
> -static struct intel_crtc *
> -intel_dsc_get_bigjoiner_primary(const struct intel_crtc *secondary_crtc)
> -{
> -	return intel_crtc_for_pipe(to_i915(secondary_crtc->base.dev), secondary_crtc->pipe - 1);
> -}
> -
>  void intel_uncompressed_joiner_enable(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> @@ -1174,25 +1162,6 @@ void intel_dsc_disable(const struct intel_crtc_state *old_crtc_state)
>  	}
>  }
>  
> -void intel_uncompressed_joiner_get_config(struct intel_crtc_state *crtc_state)
> -{
> -	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> -	u32 dss_ctl1;
> -
> -	dss_ctl1 = intel_de_read(dev_priv, dss_ctl1_reg(crtc, crtc_state->cpu_transcoder));
> -	if (dss_ctl1 & UNCOMPRESSED_JOINER_MASTER) {
> -		crtc_state->bigjoiner = true;
> -		crtc_state->bigjoiner_linked_crtc = intel_dsc_get_bigjoiner_secondary(crtc);
> -		drm_WARN_ON(&dev_priv->drm, !crtc_state->bigjoiner_linked_crtc);
> -	} else if (dss_ctl1 & UNCOMPRESSED_JOINER_SLAVE) {
> -		crtc_state->bigjoiner = true;
> -		crtc_state->bigjoiner_slave = true;
> -		crtc_state->bigjoiner_linked_crtc = intel_dsc_get_bigjoiner_primary(crtc);
> -		drm_WARN_ON(&dev_priv->drm, !crtc_state->bigjoiner_linked_crtc);
> -	}
> -}
> -
>  void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> @@ -1223,18 +1192,6 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
>  	crtc_state->dsc.dsc_split = (dss_ctl2 & RIGHT_BRANCH_VDSC_ENABLE) &&
>  		(dss_ctl1 & JOINER_ENABLE);
>  
> -	if (dss_ctl1 & BIG_JOINER_ENABLE) {
> -		crtc_state->bigjoiner = true;
> -
> -		if (!(dss_ctl1 & MASTER_BIG_JOINER_ENABLE)) {
> -			crtc_state->bigjoiner_slave = true;
> -			crtc_state->bigjoiner_linked_crtc = intel_dsc_get_bigjoiner_primary(crtc);
> -		} else {
> -			crtc_state->bigjoiner_linked_crtc = intel_dsc_get_bigjoiner_secondary(crtc);
> -		}
> -		drm_WARN_ON(&dev_priv->drm, !crtc_state->bigjoiner_linked_crtc);
> -	}
> -
>  	/* FIXME: add more state readout as needed */
>  
>  	/* PPS1 */
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.h b/drivers/gpu/drm/i915/display/intel_vdsc.h
> index 4ec75f715986..8763f00fa7e2 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.h
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.h
> @@ -18,7 +18,6 @@ void intel_uncompressed_joiner_enable(const struct intel_crtc_state *crtc_state)
>  void intel_dsc_enable(const struct intel_crtc_state *crtc_state);
>  void intel_dsc_disable(const struct intel_crtc_state *crtc_state);
>  int intel_dsc_compute_params(struct intel_crtc_state *pipe_config);
> -void intel_uncompressed_joiner_get_config(struct intel_crtc_state *crtc_state);
>  void intel_dsc_get_config(struct intel_crtc_state *crtc_state);
>  enum intel_display_power_domain
>  intel_dsc_power_domain(struct intel_crtc *crtc, enum transcoder cpu_transcoder);
> -- 
> 2.34.1
> 
