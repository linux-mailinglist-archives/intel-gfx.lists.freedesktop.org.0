Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39AF26F76AD
	for <lists+intel-gfx@lfdr.de>; Thu,  4 May 2023 22:11:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BFDD10E1C0;
	Thu,  4 May 2023 20:11:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1A1110E1C0
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 May 2023 20:11:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683231110; x=1714767110;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=7XxG8t7sJcSOrLaVg1YD6etvUnjANn4PiZeCJ3z++dY=;
 b=himtfss4SkOGsLLOvc4uhrRefIw7UAEcYrbtruG9xzvE5zWEmuXfzUOW
 TOHbjFfhLZbF48QRm0lJMiOUKFg0j/jes8At8kmeNlYQxu5crzqujkTK5
 +TLbc1vT1cJraD40FxBlLfzSsHcPii3safGJEI7LGISaK4FSTCBgkR5k9
 /06G1R0gEims0pUuPEZ73G6FIqZIzn0JM6HRXk4CzViSJ75+O0WmvkHc7
 hZshS+IaK0+bjRlKIq1IYkPnRArX6ZqWOrllwnSNT0yCbI+hDdgXS+apC
 +yGyg2RCiHfnimNNqQ3SuU6lpoB8nAtzPr3No6UiHIae+b1n/g+7wuVe6 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="346520711"
X-IronPort-AV: E=Sophos;i="5.99,250,1677571200"; d="scan'208";a="346520711"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2023 13:11:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="700034717"
X-IronPort-AV: E=Sophos;i="5.99,250,1677571200"; d="scan'208";a="700034717"
Received: from unknown (HELO ideak-desk.fi.intel.com) ([10.237.72.78])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2023 13:11:39 -0700
Date: Thu, 4 May 2023 23:12:17 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <ZFQRoUud5FlRNXoi@ideak-desk.fi.intel.com>
References: <20230503231048.432368-1-imre.deak@intel.com>
 <20230503231048.432368-13-imre.deak@intel.com>
 <ZFPuXX5CvMEaye6e@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZFPuXX5CvMEaye6e@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 12/12] drm/i915/tc: Reset TypeC PHYs left
 enabled in DP-alt mode after the sink disconnects
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org,
 Kai-Heng Feng <kai.heng.feng@canonical.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, May 04, 2023 at 08:41:49PM +0300, Ville Syrjälä wrote:
> On Thu, May 04, 2023 at 02:10:48AM +0300, Imre Deak wrote:
> > If the output on a DP-alt link with its sink disconnected is kept
> > enabled for too long (about 20 sec), then some IOM/TCSS firmware timeout
> > will cause havoc on the PCI bus, at least for other GFX devices on it
> > which will stop powering up. Since user space is not guaranteed to do a
> > disabling modeset in time, switch such disconnected but active links to
> > TBT mode - which is without such shortcomings - with a 2 second delay.
> > 
> > If the above condition is detected already during the driver load/system
> > resume sanitization step disable the output instead, as at that point no
> > user space or kernel client depends on a consistent output state yet and
> > because subsequent atomic modeset on such connectors - without the
> > actual sink capabilities available - can fail.
> > 
> > An active/disconnected port as above will also block the HPD status of
> > other active/disconnected ports to get updated (stuck in the connected
> > state), until the former port is disabled, its PHY is disconnected and
> > a ~10 ms delay has elapsed. This means the link state for all TypeC
> > ports/CRTCs must be rechecked after a CRTC is disabled due to the above
> > reason. For this disconnect the PHY synchronously after the CRTC/port is
> > disabled and recheck all CRTCs for the above condition whenever such a
> > port is disabled.
> > 
> > To account for a race condition during driver loading where the sink is
> > disconnected after the above sanitization step and before the HPD
> > interrupts get enabled, do an explicit check/link reset if needed from
> > the encoder's late_register hook, which is called after the HPD
> > interrupts are enabled already.
> > 
> > v2:
> > - Handle an active/disconnected port blocking the HPD state update of
> >   another active/disconnected port.
> > - Cancel the delayed work resetting the link also from the encoder
> >   enable/suspend/shutdown hooks.
> > - Rebase on the earlier intel_modeset_lock_ctx_retry() addition,
> >   fixing here the missed atomic state reset in case of a retry.
> > - Fix handling of an error return from intel_atomic_get_crtc_state().
> > - Recheck if the port needs to be reset after all the atomic state
> >   is locked and async commits are waited on.
> > 
> > Cc: Kai-Heng Feng <kai.heng.feng@canonical.com>
> > Tested-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
> > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5860
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c      | 68 +++++++++++++--
> >  .../drm/i915/display/intel_display_types.h    |  2 +
> >  drivers/gpu/drm/i915/display/intel_dp.c       | 59 +++++++++++++
> >  drivers/gpu/drm/i915/display/intel_dp.h       |  1 +
> >  .../drm/i915/display/intel_modeset_setup.c    | 83 ++++++++++++++-----
> >  drivers/gpu/drm/i915/display/intel_tc.c       | 29 +++++++
> >  drivers/gpu/drm/i915/display/intel_tc.h       |  1 +
> >  7 files changed, 215 insertions(+), 28 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index eb391fff0f1be..db390b9c824ec 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -3313,6 +3313,8 @@ static void intel_disable_ddi(struct intel_atomic_state *state,
> >  			      const struct intel_crtc_state *old_crtc_state,
> >  			      const struct drm_connector_state *old_conn_state)
> >  {
> > +	cancel_delayed_work(&enc_to_dig_port(encoder)->reset_link_work);
> > +
> >  	intel_hdcp_disable(to_intel_connector(old_conn_state->connector));
> >  
> >  	if (intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_HDMI))
> > @@ -3381,6 +3383,8 @@ intel_ddi_pre_pll_enable(struct intel_atomic_state *state,
> >  	enum phy phy = intel_port_to_phy(dev_priv, encoder->port);
> >  	bool is_tc_port = intel_phy_is_tc(dev_priv, phy);
> >  
> > +	cancel_delayed_work(&dig_port->reset_link_work);
> > +
> >  	if (is_tc_port) {
> >  		struct intel_crtc *master_crtc =
> >  			to_intel_crtc(crtc_state->uapi.crtc);
> > @@ -4229,9 +4233,53 @@ static void intel_ddi_encoder_reset(struct drm_encoder *encoder)
> >  		intel_tc_port_init_mode(dig_port);
> >  }
> >  
> > +static void intel_ddi_tc_port_reset_link_work(struct work_struct *work)
> > +{
> > +	struct intel_digital_port *dig_port =
> > +		container_of(work, struct intel_digital_port, reset_link_work.work);
> > +	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> > +	struct intel_encoder *encoder = &dig_port->base;
> > +
> > +	mutex_lock(&i915->drm.mode_config.mutex);
> > +
> > +	if (intel_tc_port_link_needs_reset(dig_port)) {
> > +		int ret;
> > +
> > +		drm_dbg_kms(&i915->drm,
> > +			    "[ENCODER:%d:%s] TypeC DP-alt sink disconnected, resetting link\n",
> > +			    encoder->base.base.id, encoder->base.name);
> > +		ret = intel_dp_reset_link(encoder);
> > +		drm_WARN_ON(&i915->drm, ret);
> > +	}
> > +
> > +	mutex_unlock(&i915->drm.mode_config.mutex);
> > +}
> > +
> > +static bool intel_ddi_tc_port_reset_link(struct intel_encoder *encoder)
> > +{
> > +	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> > +
> > +	if (!intel_tc_port_link_needs_reset(dig_port))
> > +		return false;
> > +
> > +	queue_delayed_work(system_unbound_wq, &dig_port->reset_link_work, msecs_to_jiffies(2000));
> > +
> > +	return true;
> > +}
> > +
> > +static int intel_ddi_encoder_late_register(struct drm_encoder *_encoder)
> > +{
> > +	struct intel_encoder *encoder = to_intel_encoder(_encoder);
> > +
> > +	intel_ddi_tc_port_reset_link(encoder);
> > +
> > +	return 0;
> > +}
> > +
> >  static const struct drm_encoder_funcs intel_ddi_funcs = {
> >  	.reset = intel_ddi_encoder_reset,
> >  	.destroy = intel_ddi_encoder_destroy,
> > +	.late_register = intel_ddi_encoder_late_register,
> >  };
> >  
> >  static struct intel_connector *
> > @@ -4401,14 +4449,16 @@ intel_ddi_hotplug(struct intel_encoder *encoder,
> >  
> >  	state = intel_encoder_hotplug(encoder, connector);
> >  
> > -	intel_modeset_lock_ctx_retry(&ctx, NULL, 0, ret) {
> > -		if (connector->base.connector_type == DRM_MODE_CONNECTOR_HDMIA)
> > -			ret = intel_hdmi_reset_link(encoder, &ctx);
> > -		else
> > -			ret = intel_dp_retrain_link(encoder, &ctx);
> > -	}
> > +	if (!intel_ddi_tc_port_reset_link(encoder)) {
> > +		intel_modeset_lock_ctx_retry(&ctx, NULL, 0, ret) {
> > +			if (connector->base.connector_type == DRM_MODE_CONNECTOR_HDMIA)
> > +				ret = intel_hdmi_reset_link(encoder, &ctx);
> > +			else
> > +				ret = intel_dp_retrain_link(encoder, &ctx);
> > +		}
> >  
> > -	drm_WARN_ON(encoder->base.dev, ret);
> > +		drm_WARN_ON(encoder->base.dev, ret);
> > +	}
> >  
> >  	/*
> >  	 * Unpowered type-c dongles can take some time to boot and be
> > @@ -4624,6 +4674,7 @@ static void intel_ddi_encoder_suspend(struct intel_encoder *encoder)
> >  	if (!intel_phy_is_tc(i915, phy))
> >  		return;
> >  
> > +	cancel_delayed_work(&dig_port->reset_link_work);
> >  	intel_tc_port_flush_work(dig_port);
> >  }
> >  
> > @@ -4640,6 +4691,7 @@ static void intel_ddi_encoder_shutdown(struct intel_encoder *encoder)
> >  	if (!intel_phy_is_tc(i915, phy))
> >  		return;
> >  
> > +	cancel_delayed_work(&dig_port->reset_link_work);
> >  	intel_tc_port_cleanup(dig_port);
> >  }
> >  
> > @@ -4945,6 +4997,8 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
> >  			encoder->pipe_mask = intel_ddi_splitter_pipe_mask(dev_priv);
> >  	}
> >  
> > +	INIT_DELAYED_WORK(&dig_port->reset_link_work, intel_ddi_tc_port_reset_link_work);
> > +
> >  	/*
> >  	 * In theory we don't need the encoder->type check,
> >  	 * but leave it just in case we have some really bad VBTs...
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index 96a3183675bee..b4d5424cf95cf 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1817,6 +1817,8 @@ struct intel_digital_port {
> >  
> >  	struct intel_tc_port *tc;
> >  
> > +	struct delayed_work reset_link_work;
> > +
> >  	/* protects num_hdcp_streams reference count, hdcp_port_data and hdcp_auth_status */
> >  	struct mutex hdcp_mutex;
> >  	/* the number of pipes using HDCP signalling out of this port */
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 7a349cb9fc2e6..e7e4266b314a7 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -70,6 +70,7 @@
> >  #include "intel_hotplug.h"
> >  #include "intel_lspcon.h"
> >  #include "intel_lvds.h"
> > +#include "intel_modeset_lock.h"
> >  #include "intel_panel.h"
> >  #include "intel_pch_display.h"
> >  #include "intel_pps.h"
> > @@ -4258,6 +4259,64 @@ int intel_dp_retrain_link(struct intel_encoder *encoder,
> >  	return 0;
> >  }
> >  
> > +int intel_dp_reset_link(struct intel_encoder *encoder)
> > +{
> > +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> > +	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> > +	struct drm_modeset_acquire_ctx ctx;
> > +	struct drm_atomic_state *_state;
> > +	struct intel_atomic_state *state;
> > +	int ret = 0;
> > +
> > +	_state = drm_atomic_state_alloc(&i915->drm);
> > +	if (!_state)
> > +		return -ENOMEM;
> > +
> > +	state = to_intel_atomic_state(_state);
> > +
> > +	intel_modeset_lock_ctx_retry(&ctx, state, 0, ret) {
> > +		struct intel_crtc *crtc;
> > +		u8 pipe_mask;
> > +
> > +		ret = drm_modeset_lock(&i915->drm.mode_config.connection_mutex, &ctx);
> > +		if (ret)
> > +			continue;
> > +
> > +		ret = intel_dp_get_active_pipes(enc_to_intel_dp(encoder), &ctx, &pipe_mask);
> > +		if (ret)
> > +			continue;
> > +
> > +		if (!pipe_mask)
> > +			continue;
> > +
> > +		state->internal = true;
> 
> Can be set immediately after the state is allocated, which is what 
> everyone else does.

Ok, will move it there.

> > +
> > +		for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc, pipe_mask) {
> > +			struct intel_crtc_state *crtc_state;
> > +
> > +			crtc_state = intel_atomic_get_crtc_state(&state->base, crtc);
> > +			if (IS_ERR(crtc_state)) {
> > +				ret = PTR_ERR(crtc_state);
> > +				break;
> > +			}
> > +
> > +			crtc_state->uapi.connectors_changed = true;
> > +		}
> > +
> > +		if (ret)
> > +			continue;
> > +
> > +		if (!intel_tc_port_link_needs_reset(dig_port))
> > +			continue;
> > +
> > +		ret = drm_atomic_commit(&state->base);
> > +	}
> > +
> > +	drm_atomic_state_put(&state->base);
> > +
> > +	return ret;
> > +}
> > +
> >  static int intel_dp_prep_phy_test(struct intel_dp *intel_dp,
> >  				  struct drm_modeset_acquire_ctx *ctx,
> >  				  u8 *pipe_mask)
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> > index ca12a1733df6f..05a8bda8513ee 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> > @@ -45,6 +45,7 @@ int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
> >  bool intel_dp_is_connected(struct intel_dp *intel_dp);
> >  int intel_dp_retrain_link(struct intel_encoder *encoder,
> >  			  struct drm_modeset_acquire_ctx *ctx);
> > +int intel_dp_reset_link(struct intel_encoder *encoder);
> >  void intel_dp_set_power(struct intel_dp *intel_dp, u8 mode);
> >  void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
> >  					   const struct intel_crtc_state *crtc_state);
> > diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > index 1e10580e5ab31..311249a65f8fb 100644
> > --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > @@ -26,6 +26,7 @@
> >  #include "intel_fifo_underrun.h"
> >  #include "intel_modeset_setup.h"
> >  #include "intel_pch_display.h"
> > +#include "intel_tc.h"
> >  #include "intel_vblank.h"
> >  #include "intel_wm.h"
> >  #include "skl_watermark.h"
> > @@ -368,17 +369,6 @@ intel_sanitize_plane_mapping(struct drm_i915_private *i915)
> >  	}
> >  }
> >  
> > -static bool intel_crtc_has_encoders(struct intel_crtc *crtc)
> > -{
> > -	struct drm_device *dev = crtc->base.dev;
> > -	struct intel_encoder *encoder;
> > -
> > -	for_each_encoder_on_crtc(dev, &crtc->base, encoder)
> > -		return true;
> > -
> > -	return false;
> > -}
> 
> Not really seeing why this is removed.
> 
> > -
> >  static struct intel_connector *intel_encoder_find_connector(struct intel_encoder *encoder)
> >  {
> >  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> > @@ -421,11 +411,14 @@ static void intel_sanitize_fifo_underrun_reporting(const struct intel_crtc_state
> >  					   !HAS_GMCH(i915));
> >  }
> >  
> > -static void intel_sanitize_crtc(struct intel_crtc *crtc,
> > +static bool intel_sanitize_crtc(struct intel_crtc *crtc,
> >  				struct drm_modeset_acquire_ctx *ctx)
> >  {
> >  	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> >  	struct intel_crtc_state *crtc_state = to_intel_crtc_state(crtc->base.state);
> > +	struct intel_encoder *encoder;
> > +	bool needs_link_reset = false;
> > +	bool has_encoder = false;
> >  
> >  	if (crtc_state->hw.active) {
> >  		struct intel_plane *plane;
> > @@ -445,13 +438,67 @@ static void intel_sanitize_crtc(struct intel_crtc *crtc,
> >  		intel_color_commit_arm(crtc_state);
> >  	}
> >  
> > +	if (!crtc_state->hw.active ||
> > +	    intel_crtc_is_bigjoiner_slave(crtc_state))
> > +		return false;
> > +
> > +	for_each_encoder_on_crtc(&i915->drm, &crtc->base, encoder) {
> > +		struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> > +
> > +		has_encoder = true;
> > +
> > +		if (!dig_port || !intel_tc_port_link_needs_reset(dig_port))
> > +			continue;
> > +
> > +		needs_link_reset = true;
> > +		break;
> > +	}
> 
> Hmm. I guess you wanted to combine the loops. Feels like a
> rather pointless micro-optimizaiton. So containing this stuff
> into sepraate function(s) could be more readable. Although the
> fact that you need the needs_link_reset check after the disable 
> means you still need at least one boolean variable.

Yes, just to iterate the encoders only once, but having separate
functions makes this more readable, will do that.

> 
> > +
> >  	/*
> >  	 * Adjust the state of the output pipe according to whether we have
> >  	 * active connectors/encoders.
> >  	 */
> > -	if (crtc_state->hw.active && !intel_crtc_has_encoders(crtc) &&
> > -	    !intel_crtc_is_bigjoiner_slave(crtc_state))
> > +	if (!has_encoder || needs_link_reset)
> >  		intel_crtc_disable_noatomic(crtc, ctx);
> > +
> > +	/*
> > +	 * An active and disconnected TypeC port prevents the HPD live state
> > +	 * to get updated on other active/disconnected TypeC ports, so after
> > +	 * a port gets disabled the CRTCs using other TypeC ports must be
> > +	 * rechecked wrt. their link status. After the port is disabled the
> > +	 * HPD state on other ports will get updated in ~10ms, so also wait
> > +	 * here for that.
> > +	 */
> > +	if (needs_link_reset) {
> > +		usleep_range(50000, 100000);

I realized this slack is more than required, will reduce it to max 30ms.

> > +
> > +		return true;
> > +	}
> > +
> > +	return false;
> > +}
> > +
> > +static void intel_sanitize_all_crtcs(struct drm_i915_private *i915,
> > +				     struct drm_modeset_acquire_ctx *ctx)
> > +{
> > +	int restart_count;
> > +
> > +	for (restart_count = 0; restart_count < I915_MAX_PIPES; restart_count++) {
> > +		struct intel_crtc *crtc;
> > +		bool restart = false;
> > +
> > +		for_each_intel_crtc(&i915->drm, crtc) {
> > +			struct intel_crtc_state *crtc_state =
> > +				to_intel_crtc_state(crtc->base.state);
> > +
> > +			restart = restart || intel_sanitize_crtc(crtc, ctx);
> > +			intel_crtc_state_dump(crtc_state, NULL, "setup_hw_state");
> 
> So this will dump the state for all imtermediate/final states but not
> necessarily the initial state? I think we should either just dump the
> final states (which was the case previously), or perhaps dump both the
> initial and final states but not any intermediate stuff.

I meant to keep state dumping as-is from the final state, but botched
it, will fix this.

> Also this whole restart_count loop is confusing me. I presume it's just
> trying to make sure we don't disable the same crtc multiple times or
> something?

Yes, just to prevent an endless loop due to some bug.

> Seems a bit unlikely to me that we'd screw things up so badly, so
> maybe just rid of it, or maybe just use a bitmask or something to
> track the progress?

Ok, tracking which crtcs got disabled makes it clearer, can do that.

> 
> > +		}
> > +
> > +		if (!restart)
> > +			break;
> > +	}
> > +	drm_WARN_ON(&i915->drm, restart_count == I915_MAX_PIPES);
> >  }
> >  
> >  static bool has_bogus_dpll_config(const struct intel_crtc_state *crtc_state)
> > @@ -871,13 +918,7 @@ void intel_modeset_setup_hw_state(struct drm_i915_private *i915,
> >  	 */
> >  	intel_modeset_update_connector_atomic_state(i915);
> >  
> > -	for_each_intel_crtc(&i915->drm, crtc) {
> > -		struct intel_crtc_state *crtc_state =
> > -			to_intel_crtc_state(crtc->base.state);
> > -
> > -		intel_sanitize_crtc(crtc, ctx);
> > -		intel_crtc_state_dump(crtc_state, NULL, "setup_hw_state");
> > -	}
> > +	intel_sanitize_all_crtcs(i915, ctx);
> >  
> >  	intel_dpll_sanitize_state(i915);
> >  
> > diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
> > index 4fca711a58bce..8b7f57701c257 100644
> > --- a/drivers/gpu/drm/i915/display/intel_tc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> > @@ -1572,6 +1572,27 @@ bool intel_tc_port_connected(struct intel_encoder *encoder)
> >  	return is_connected;
> >  }
> >  
> > +bool intel_tc_port_link_needs_reset(struct intel_digital_port *dig_port)
> > +{
> > +	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> > +	enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
> > +	struct intel_tc_port *tc = to_tc_port(dig_port);
> > +	bool ret;
> > +
> > +	if (!intel_phy_is_tc(i915, phy))
> > +		return false;
> > +
> > +	mutex_lock(&tc->lock);
> > +
> > +	ret = tc->link_refcount &&
> > +	      intel_tc_port_in_dp_alt_mode(dig_port) &&
> > +	      intel_tc_port_needs_reset(tc);
> > +
> > +	mutex_unlock(&tc->lock);
> > +
> > +	return ret;
> > +}
> > +
> >  static void __intel_tc_port_lock(struct intel_tc_port *tc,
> >  				 int required_lanes)
> >  {
> > @@ -1660,6 +1681,14 @@ void intel_tc_port_put_link(struct intel_digital_port *dig_port)
> >  	intel_tc_port_lock(dig_port);
> >  	__intel_tc_port_put_link(tc);
> >  	intel_tc_port_unlock(dig_port);
> > +
> > +	/*
> > +	 * The firmware will not update the HPD status of other TypeC ports
> > +	 * that are active in DP-alt mode with their sink disconnected, until
> > +	 * this port is disabled and its PHY gets disconnected. Make sure this
> > +	 * happens in a timely manner by disconnecting the PHY synchronously.
> > +	 */
> > +	intel_tc_port_flush_work(dig_port);
> >  }
> >  
> >  int intel_tc_port_init(struct intel_digital_port *dig_port, bool is_legacy)
> > diff --git a/drivers/gpu/drm/i915/display/intel_tc.h b/drivers/gpu/drm/i915/display/intel_tc.h
> > index dd0810f9ea95e..c4cf1eac54a1c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_tc.h
> > +++ b/drivers/gpu/drm/i915/display/intel_tc.h
> > @@ -34,6 +34,7 @@ void intel_tc_port_flush_work(struct intel_digital_port *dig_port);
> >  void intel_tc_port_get_link(struct intel_digital_port *dig_port,
> >  			    int required_lanes);
> >  void intel_tc_port_put_link(struct intel_digital_port *dig_port);
> > +bool intel_tc_port_link_needs_reset(struct intel_digital_port *dig_port);
> >  bool intel_tc_port_ref_held(struct intel_digital_port *dig_port);
> >  
> >  int intel_tc_port_init(struct intel_digital_port *dig_port, bool is_legacy);
> > -- 
> > 2.37.2
> 
> -- 
> Ville Syrjälä
> Intel
