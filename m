Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D61DD24D216
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Aug 2020 12:16:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4511A6EAC8;
	Fri, 21 Aug 2020 10:16:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB1666E10A
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Aug 2020 10:16:52 +0000 (UTC)
IronPort-SDR: Y9d6jHlPl97WcwhPE1gVDZ9dG1EwXxiRO/kx3QDekeufna/fMSd4FviWeOeBBaOHm1HM+zRUq6
 sl0YnvA+Fp6Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9719"; a="240323859"
X-IronPort-AV: E=Sophos;i="5.76,335,1592895600"; d="scan'208";a="240323859"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2020 03:16:52 -0700
IronPort-SDR: srr+4kf59DoOaMm+x+BKOR6r61ichCtNQyxIvBmfBfJcXvO7Um59zBFoYKGtHedoiCHM9tE0Z1
 fqpvcx/5UkFQ==
X-IronPort-AV: E=Sophos;i="5.76,335,1592895600"; d="scan'208";a="321212720"
Received: from amanna-mobl1.gar.corp.intel.com (HELO [10.251.77.53])
 ([10.251.77.53])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2020 03:16:51 -0700
To: Manasi Navare <manasi.d.navare@intel.com>, intel-gfx@lists.freedesktop.org
References: <20200715224222.7557-1-manasi.d.navare@intel.com>
 <20200715224222.7557-5-manasi.d.navare@intel.com>
From: "Manna, Animesh" <animesh.manna@intel.com>
Message-ID: <211c34b1-7a68-c08f-8d1b-9306fed07bbe@intel.com>
Date: Fri, 21 Aug 2020 15:46:48 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20200715224222.7557-5-manasi.d.navare@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v6 05/11] drm/i915: Try to make bigjoiner
 work in atomic check
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 16-07-2020 04:12, Manasi Navare wrote:
> From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>
>   When the clock is higher than the dotclock, try with 2 pipes enabled.
>   If we can enable 2, then we will go into big joiner mode, and steal
>   the adjacent crtc.
>
>   This only links the crtc's in software, no hardware or plane
>   programming is done yet. Blobs are also copied from the master's
>   crtc_state, so it doesn't depend at commit time on the other
>   crtc_state.
>
> v3:
> * Manual Rebase (Manasi)
>   Changes since v1:
>   - Rename pipe timings to transcoder timings, as they are now different.
>    Changes since v2:
>   - Rework bigjoiner checks; always disable slave when recalculating
>     master. No need to have a separate bigjoiner pass any more.
>   - Use pipe_mode instead of transcoder_mode, to clean up the code.
>
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_atomic.c   |   9 +-
>   drivers/gpu/drm/i915/display/intel_atomic.h   |   3 +-
>   drivers/gpu/drm/i915/display/intel_display.c  | 201 ++++++++++++++++--
>   .../drm/i915/display/intel_display_types.h    |   9 +
>   drivers/gpu/drm/i915/display/intel_dp.c       |  22 +-
>   5 files changed, 211 insertions(+), 33 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
> index 630f49b7aa01..b9dcdc74a10d 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
> @@ -270,14 +270,15 @@ void intel_crtc_free_hw_state(struct intel_crtc_state *crtc_state)
>   	intel_crtc_put_color_blobs(crtc_state);
>   }
>   
> -void intel_crtc_copy_color_blobs(struct intel_crtc_state *crtc_state)
> +void intel_crtc_copy_color_blobs(struct intel_crtc_state *crtc_state,
> +				 const struct intel_crtc_state *from_crtc_state)

can we use primary_crtc_state instead of from_crtc_state?

>   {
>   	drm_property_replace_blob(&crtc_state->hw.degamma_lut,
> -				  crtc_state->uapi.degamma_lut);
> +				  from_crtc_state->uapi.degamma_lut);
>   	drm_property_replace_blob(&crtc_state->hw.gamma_lut,
> -				  crtc_state->uapi.gamma_lut);
> +				  from_crtc_state->uapi.gamma_lut);
>   	drm_property_replace_blob(&crtc_state->hw.ctm,
> -				  crtc_state->uapi.ctm);
> +				  from_crtc_state->uapi.ctm);
>   }
>   
>   /**
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic.h b/drivers/gpu/drm/i915/display/intel_atomic.h
> index 11146292b06f..fc556c032c8f 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic.h
> +++ b/drivers/gpu/drm/i915/display/intel_atomic.h
> @@ -43,7 +43,8 @@ struct drm_crtc_state *intel_crtc_duplicate_state(struct drm_crtc *crtc);
>   void intel_crtc_destroy_state(struct drm_crtc *crtc,
>   			       struct drm_crtc_state *state);
>   void intel_crtc_free_hw_state(struct intel_crtc_state *crtc_state);
> -void intel_crtc_copy_color_blobs(struct intel_crtc_state *crtc_state);
> +void intel_crtc_copy_color_blobs(struct intel_crtc_state *crtc_state,
> +				 const struct intel_crtc_state *from_crtc_state);
>   struct drm_atomic_state *intel_atomic_state_alloc(struct drm_device *dev);
>   void intel_atomic_state_free(struct drm_atomic_state *state);
>   void intel_atomic_state_clear(struct drm_atomic_state *state);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 3ecb642805a6..955e19abb563 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -8016,9 +8016,24 @@ static int intel_crtc_compute_config(struct intel_crtc *crtc,
>   				     struct intel_crtc_state *pipe_config)
>   {
>   	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> -	const struct drm_display_mode *pipe_mode = &pipe_config->hw.pipe_mode;
> +	struct drm_display_mode *pipe_mode = &pipe_config->hw.pipe_mode;
>   	int clock_limit = dev_priv->max_dotclk_freq;
>   
> +	*pipe_mode = pipe_config->hw.adjusted_mode;
> +
> +	/* Adjust pipe_mode for bigjoiner, with half the horizontal mode */
> +	if (pipe_config->bigjoiner) {
> +		pipe_mode->crtc_clock /= 2;
> +		pipe_mode->crtc_hdisplay /= 2;
> +		pipe_mode->crtc_hblank_start /= 2;
> +		pipe_mode->crtc_hblank_end /= 2;
> +		pipe_mode->crtc_hsync_start /= 2;
> +		pipe_mode->crtc_hsync_end /= 2;
> +		pipe_mode->crtc_htotal /= 2;
> +		pipe_mode->crtc_hskew /= 2;
> +		pipe_config->pipe_src_w /= 2;
> +	}
> +
>   	if (INTEL_GEN(dev_priv) < 4) {
>   		clock_limit = dev_priv->max_cdclk_freq * 9 / 10;
>   
> @@ -8079,7 +8094,7 @@ static int intel_crtc_compute_config(struct intel_crtc *crtc,
>   	 * WaPruneModeWithIncorrectHsyncOffset:ctg,elk,ilk,snb,ivb,vlv,hsw.
>   	 */
>   	if ((INTEL_GEN(dev_priv) > 4 || IS_G4X(dev_priv)) &&
> -		pipe_mode->crtc_hsync_start == pipe_mode->crtc_hdisplay)
> +	    pipe_config->hw.adjusted_mode.crtc_hsync_start == pipe_mode->crtc_hdisplay)
>   		return -EINVAL;
>   
>   	intel_crtc_compute_pixel_rate(pipe_config);
> @@ -12433,7 +12448,7 @@ static bool encoders_cloneable(const struct intel_encoder *a,
>   			  b->cloneable & (1 << a->type));
>   }
>   
> -static bool check_single_encoder_cloning(struct drm_atomic_state *state,
> +static bool check_single_encoder_cloning(struct intel_atomic_state *state,

we may not need it.

>   					 struct intel_crtc *crtc,
>   					 struct intel_encoder *encoder)
>   {
> @@ -12442,7 +12457,7 @@ static bool check_single_encoder_cloning(struct drm_atomic_state *state,
>   	struct drm_connector_state *connector_state;
>   	int i;
>   
> -	for_each_new_connector_in_state(state, connector, connector_state, i) {
> +	for_each_new_connector_in_state(&state->base, connector, connector_state, i) {
>   		if (connector_state->crtc != &crtc->base)
>   			continue;
>   
> @@ -12682,6 +12697,7 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
>   
>   	if (mode_changed && crtc_state->hw.enable &&
>   	    dev_priv->display.crtc_compute_clock &&
> +	    !crtc_state->bigjoiner_slave &&

based on recent direction better to use primary/secondary keyword instead of master/slave.

>   	    !drm_WARN_ON(&dev_priv->drm, crtc_state->shared_dpll)) {
>   		ret = dev_priv->display.crtc_compute_clock(crtc, crtc_state);
>   		if (ret)
> @@ -13206,18 +13222,31 @@ static bool check_digital_port_conflicts(struct intel_atomic_state *state)
>   }
>   
>   static void
> -intel_crtc_copy_uapi_to_hw_state_nomodeset(struct intel_crtc_state *crtc_state)
> +intel_crtc_copy_uapi_to_hw_state_nomodeset(struct intel_atomic_state *state,
> +					   struct intel_crtc_state *crtc_state)
>   {
> -	intel_crtc_copy_color_blobs(crtc_state);
> +	const struct intel_crtc_state *from_crtc_state = crtc_state;
> +
> +	if (crtc_state->bigjoiner_slave) {
> +		from_crtc_state = intel_atomic_get_new_crtc_state(state,
> +								  crtc_state->bigjoiner_linked_crtc);
> +
> +		/* No need to copy state if the master state is unchanged */
> +		if (!from_crtc_state)
> +			return;
> +	}
> +
> +	intel_crtc_copy_color_blobs(crtc_state, from_crtc_state);
>   }
>   
>   static void
> -intel_crtc_copy_uapi_to_hw_state(struct intel_crtc_state *crtc_state)
> +intel_crtc_copy_uapi_to_hw_state(struct intel_atomic_state *state,
> +				 struct intel_crtc_state *crtc_state)
>   {
>   	crtc_state->hw.enable = crtc_state->uapi.enable;
>   	crtc_state->hw.active = crtc_state->uapi.active;
>   	crtc_state->hw.pipe_mode = crtc_state->hw.adjusted_mode = crtc_state->uapi.adjusted_mode;
> -	intel_crtc_copy_uapi_to_hw_state_nomodeset(crtc_state);
> +	intel_crtc_copy_uapi_to_hw_state_nomodeset(state, crtc_state);
>   }
>   
>   static void intel_crtc_copy_hw_to_uapi_state(struct intel_crtc_state *crtc_state,
> @@ -13240,7 +13269,49 @@ static void intel_crtc_copy_hw_to_uapi_state(struct intel_crtc_state *crtc_state
>   }
>   
>   static int
> -intel_crtc_prepare_cleared_state(struct intel_crtc_state *crtc_state)
> +copy_bigjoiner_crtc_state(struct intel_crtc_state *crtc_state,
> +			  const struct intel_crtc_state *from_crtc_state)
> +{
> +	struct intel_crtc_state *saved_state;
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +
> +	saved_state = kmemdup(from_crtc_state, sizeof(*saved_state), GFP_KERNEL);
> +	if (!saved_state)
> +		return -ENOMEM;
> +
> +	saved_state->uapi = crtc_state->uapi;
> +	saved_state->scaler_state = crtc_state->scaler_state;
> +	saved_state->shared_dpll = crtc_state->shared_dpll;
> +	saved_state->dpll_hw_state = crtc_state->dpll_hw_state;
> +	saved_state->crc_enabled = crtc_state->crc_enabled;
> +
> +	intel_crtc_free_hw_state(crtc_state);
> +	memcpy(crtc_state, saved_state, sizeof(*crtc_state));
> +	kfree(saved_state);
> +
> +	/* Re-init hw state */
> +	memset(&crtc_state->hw, 0, sizeof(saved_state->hw));
> +	crtc_state->hw.enable = from_crtc_state->hw.enable;
> +	crtc_state->hw.active = from_crtc_state->hw.active;
> +	crtc_state->hw.pipe_mode = from_crtc_state->hw.pipe_mode;
> +	crtc_state->hw.adjusted_mode = from_crtc_state->hw.adjusted_mode;
> +
> +	/* Some fixups */
> +	crtc_state->uapi.mode_changed = from_crtc_state->uapi.mode_changed;
> +	crtc_state->uapi.connectors_changed = from_crtc_state->uapi.connectors_changed;
> +	crtc_state->uapi.active_changed = from_crtc_state->uapi.active_changed;
> +	crtc_state->nv12_planes = crtc_state->c8_planes = crtc_state->update_planes = 0;
> +	crtc_state->bigjoiner_linked_crtc = to_intel_crtc(from_crtc_state->uapi.crtc);
> +	crtc_state->bigjoiner_slave = true;
> +	crtc_state->cpu_transcoder = (enum transcoder)crtc->pipe;
> +	crtc_state->has_audio = false;
> +
> +	return 0;
> +}
> +
> +static int
> +intel_crtc_prepare_cleared_state(struct intel_atomic_state *state,
> +				 struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>   	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> @@ -13276,16 +13347,16 @@ intel_crtc_prepare_cleared_state(struct intel_crtc_state *crtc_state)
>   	crtc_state->uapi.mode.private_flags = 0;
>   	crtc_state->uapi.adjusted_mode.private_flags = 0;
>   
> -	intel_crtc_copy_uapi_to_hw_state(crtc_state);
> +	intel_crtc_copy_uapi_to_hw_state(state, crtc_state);
>   
>   	return 0;
>   }
>   
>   static int
> -intel_modeset_pipe_config(struct intel_crtc_state *pipe_config)
> +intel_modeset_pipe_config(struct intel_atomic_state *state,
> +			  struct intel_crtc_state *pipe_config)
>   {
>   	struct drm_crtc *crtc = pipe_config->uapi.crtc;
> -	struct drm_atomic_state *state = pipe_config->uapi.state;
>   	struct drm_i915_private *i915 = to_i915(pipe_config->uapi.crtc->dev);
>   	struct drm_connector *connector;
>   	struct drm_connector_state *connector_state;
> @@ -13327,7 +13398,7 @@ intel_modeset_pipe_config(struct intel_crtc_state *pipe_config)
>   			       &pipe_config->pipe_src_w,
>   			       &pipe_config->pipe_src_h);
>   
> -	for_each_new_connector_in_state(state, connector, connector_state, i) {
> +	for_each_new_connector_in_state(&state->base, connector, connector_state, i) {
>   		struct intel_encoder *encoder =
>   			to_intel_encoder(connector_state->best_encoder);
>   
> @@ -13365,7 +13436,7 @@ intel_modeset_pipe_config(struct intel_crtc_state *pipe_config)
>   	 * adjust it according to limitations or connector properties, and also
>   	 * a chance to reject the mode entirely.
>   	 */
> -	for_each_new_connector_in_state(state, connector, connector_state, i) {
> +	for_each_new_connector_in_state(&state->base, connector, connector_state, i) {
>   		struct intel_encoder *encoder =
>   			to_intel_encoder(connector_state->best_encoder);
>   
> @@ -13422,8 +13493,6 @@ intel_modeset_pipe_config(struct intel_crtc_state *pipe_config)
>   	 * drm_atomic_helper_update_legacy_modeset_state() happy
>   	 */
>   	pipe_config->uapi.adjusted_mode = pipe_config->hw.adjusted_mode;
> -	/* without bigjoiner, pipe_mode == adjusted_mode */
> -	pipe_config->hw.pipe_mode = pipe_config->hw.adjusted_mode;
>   
>   	return 0;
>   }
> @@ -14820,6 +14889,75 @@ static bool intel_cpu_transcoders_need_modeset(struct intel_atomic_state *state,
>   	return false;
>   }
>   
> +static int intel_atomic_check_bigjoiner(struct intel_atomic_state *state,
> +					struct intel_crtc *crtc,
> +					struct intel_crtc_state *old_crtc_state,
> +					struct intel_crtc_state *new_crtc_state)
> +{
> +	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
> +	struct intel_crtc_state *slave_crtc_state, *master_crtc_state;
> +	struct intel_crtc *slave, *master;
> +
> +	/* slave being enabled, is master is still claiming this crtc? */
> +	if (old_crtc_state->bigjoiner_slave) {
> +		slave = crtc;
> +		master = old_crtc_state->bigjoiner_linked_crtc;
> +		master_crtc_state = intel_atomic_get_new_crtc_state(state, master);
> +		if (!master_crtc_state || !needs_modeset(master_crtc_state))
> +			goto claimed;
> +	}
> +
> +	if (!new_crtc_state->bigjoiner)
> +		return 0;
> +
> +	if (1 + crtc->pipe >= INTEL_NUM_PIPES(dev_priv)) {
> +		DRM_DEBUG_KMS("[CRTC:%d:%s] Big joiner configuration requires "
> +			      "CRTC + 1 to be used, doesn't exist\n",
> +			      crtc->base.base.id, crtc->base.name);
> +		return -EINVAL;
> +	}
> +
> +	slave = new_crtc_state->bigjoiner_linked_crtc =
> +		intel_get_crtc_for_pipe(dev_priv, crtc->pipe + 1);
> +	slave_crtc_state = intel_atomic_get_crtc_state(&state->base, slave);
> +	master = crtc;
> +	if (IS_ERR(slave_crtc_state))
> +		return PTR_ERR(slave_crtc_state);
> +
> +	/* master being enabled, slave was already configured? */
> +	if (slave_crtc_state->uapi.enable)
> +		goto claimed;
> +
> +	DRM_DEBUG_KMS("[CRTC:%d:%s] Used as slave for big joiner\n",
> +		      slave->base.base.id, slave->base.name);
> +
> +	return copy_bigjoiner_crtc_state(slave_crtc_state, new_crtc_state);
> +
> +claimed:
> +	DRM_DEBUG_KMS("[CRTC:%d:%s] Slave is enabled as normal CRTC, but "
> +		      "[CRTC:%d:%s] claiming this CRTC for bigjoiner.\n",
> +		      slave->base.base.id, slave->base.name,
> +		      master->base.base.id, master->base.name);
> +	return -EINVAL;
> +}
> +
> +static int kill_bigjoiner_slave(struct intel_atomic_state *state,
> +				struct intel_crtc_state *master_crtc_state)
> +{
> +	struct intel_crtc_state *slave_crtc_state =
> +			intel_atomic_get_crtc_state(&state->base,
> +						    master_crtc_state->bigjoiner_linked_crtc);
> +
> +		if (IS_ERR(slave_crtc_state))
> +			return PTR_ERR(slave_crtc_state);
> +
> +		slave_crtc_state->bigjoiner = master_crtc_state->bigjoiner = false;
> +		slave_crtc_state->bigjoiner_slave = master_crtc_state->bigjoiner_slave = false;
> +		slave_crtc_state->bigjoiner_linked_crtc = master_crtc_state->bigjoiner_linked_crtc = NULL;
> +		intel_crtc_copy_uapi_to_hw_state(state, slave_crtc_state);
> +		return 0;
> +}
> +
>   /**
>    * intel_atomic_check - validate state object
>    * @dev: drm device
> @@ -14849,19 +14987,36 @@ static int intel_atomic_check(struct drm_device *dev,
>   					    new_crtc_state, i) {
>   		if (!needs_modeset(new_crtc_state)) {
>   			/* Light copy */
> -			intel_crtc_copy_uapi_to_hw_state_nomodeset(new_crtc_state);
> +			intel_crtc_copy_uapi_to_hw_state_nomodeset(state, new_crtc_state);
>   
>   			continue;
>   		}
>   
> -		ret = intel_crtc_prepare_cleared_state(new_crtc_state);
> +		/* Kill old bigjoiner link, we may re-establish afterwards */
> +		if (old_crtc_state->bigjoiner && !old_crtc_state->bigjoiner_slave) {
> +			ret = kill_bigjoiner_slave(state, new_crtc_state);
> +			if (ret)
> +				goto fail;
> +		}
> +
> +		if (!new_crtc_state->uapi.enable) {
> +			if (!new_crtc_state->bigjoiner_slave) {
> +				intel_crtc_copy_uapi_to_hw_state(state, new_crtc_state);
> +				any_ms = true;
> +			}
> +			continue;
> +		}
> +
> +		ret = intel_crtc_prepare_cleared_state(state, new_crtc_state);
>   		if (ret)
>   			goto fail;
>   
> -		if (!new_crtc_state->hw.enable)
> -			continue;
> +		ret = intel_modeset_pipe_config(state, new_crtc_state);
> +		if (ret)
> +			goto fail;
>   
> -		ret = intel_modeset_pipe_config(new_crtc_state);
> +		ret = intel_atomic_check_bigjoiner(state, crtc, old_crtc_state,
> +						   new_crtc_state);
>   		if (ret)
>   			goto fail;
>   	}
> @@ -15193,7 +15348,9 @@ static void intel_update_crtc(struct intel_atomic_state *state,
>   
>   	commit_pipe_config(state, crtc);
>   
> -	if (INTEL_GEN(dev_priv) >= 9)
> +	if (new_crtc_state->bigjoiner) {
> +	/* Not supported yet */
> +	} else if (INTEL_GEN(dev_priv) >= 9)
>   		skl_update_planes_on_crtc(state, crtc);
>   	else
>   		i9xx_update_planes_on_crtc(state, crtc);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index c52c8f42df68..4694cfd90a0a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1053,6 +1053,15 @@ struct intel_crtc_state {
>   	/* enable pipe csc? */
>   	bool csc_enable;
>   
> +	/* enable pipe big joiner? */
> +	bool bigjoiner;
> +
> +	/* big joiner slave crtc? */
> +	bool bigjoiner_slave;
> +
> +	/* linked crtc for bigjoiner, either slave or master */
> +	struct intel_crtc *bigjoiner_linked_crtc;
> +
>   	/* Display Stream compression state */
>   	struct {
>   		bool compression_enable;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index fbfea99fd804..29f45d2206af 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2247,6 +2247,15 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>   	pipe_config->port_clock = intel_dp->common_rates[limits->max_clock];
>   	pipe_config->lane_count = limits->max_lane_count;
>   
> +	if (adjusted_mode->crtc_clock > intel_dp_max_dotclock(intel_dp, false)) {
> +		if (adjusted_mode->crtc_clock > intel_dp_max_dotclock(intel_dp, true)) {
> +			DRM_DEBUG_KMS("Clock rate too high for big joiner\n");
> +			return -EINVAL;
> +		}
> +		pipe_config->bigjoiner = true;
> +		DRM_DEBUG_KMS("Using bigjoiner configuration\n");
> +	}
> +

Adding a flag for big-joiner and setting it can be part of previous patch and instead of using true/false directly it can be used in dsc functions. Other changes looks fine to me.

Regards,
Animesh

>   	if (intel_dp_is_edp(intel_dp)) {
>   		pipe_config->dsc.compressed_bpp =
>   			min_t(u16, drm_edp_dsc_sink_output_bpp(intel_dp->dsc_dpcd) >> 4,
> @@ -2264,12 +2273,12 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>   						    pipe_config->lane_count,
>   						    adjusted_mode->crtc_clock,
>   						    adjusted_mode->crtc_hdisplay,
> -						    false);
> +						    pipe_config->bigjoiner);
>   		dsc_dp_slice_count =
>   			intel_dp_dsc_get_slice_count(intel_dp,
>   						     adjusted_mode->crtc_clock,
>   						     adjusted_mode->crtc_hdisplay,
> -						     false);
> +						     pipe_config->bigjoiner);
>   		if (!dsc_max_output_bpp || !dsc_dp_slice_count) {
>   			drm_dbg_kms(&dev_priv->drm,
>   				    "Compressed BPP/Slice Count not supported\n");
> @@ -2285,14 +2294,15 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>   	 * is greater than the maximum Cdclock and if slice count is even
>   	 * then we need to use 2 VDSC instances.
>   	 */
> -	if (adjusted_mode->crtc_clock > dev_priv->max_cdclk_freq) {
> -		if (pipe_config->dsc.slice_count > 1) {
> -			pipe_config->dsc.dsc_split = true;
> -		} else {
> +	if (adjusted_mode->crtc_clock > dev_priv->max_cdclk_freq ||
> +	    pipe_config->bigjoiner) {
> +		if (pipe_config->dsc.slice_count < 2) {
>   			drm_dbg_kms(&dev_priv->drm,
>   				    "Cannot split stream to use 2 VDSC instances\n");
>   			return -EINVAL;
>   		}
> +
> +		pipe_config->dsc.dsc_split = true;
>   	}
>   
>   	ret = intel_dp_dsc_compute_params(&dig_port->base, pipe_config);
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
