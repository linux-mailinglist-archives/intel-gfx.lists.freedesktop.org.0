Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CF63D700979
	for <lists+intel-gfx@lfdr.de>; Fri, 12 May 2023 15:50:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 366DA10E6C0;
	Fri, 12 May 2023 13:50:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2675F10E6BD
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 May 2023 13:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683899421; x=1715435421;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=6N1a5mr/4H4lYkzfdiBowCl+p/uz+2tkrp633tZpL+U=;
 b=biQ3b6Dl+e4jMhID3GLnvAM6aVVApqybvrPDM+VFDi3oMljvCMecTl8t
 ZmH7QiM8KCO5XWrlGn0QtWWNKrQI/TaQWbW2mOcH//J1zWjZ3950jAnbU
 CXu2qtfMgI6CLgKqxdmLO6BrYRNCG2x3QgH78o6Rn6p8hKihOghO3CTeq
 08tglpbIle0rVh+bScJlhuL6hvBrU0zBmiPf4D5tM2+JXSkTRLRSBRvPT
 WifewMhyVrHI1aqmMKgupsKu9uMVtGt7U7Plk2JCY8aj159JO/DMAsdqY
 tNDmVPDycvgZnRq8XDl8fQR3bwTY/xMqvIZNZEgkZ8D8LBgLvDlT11DGw Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="331155260"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="331155260"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 06:50:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="946636286"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="946636286"
Received: from unknown (HELO ideak-desk.fi.intel.com) ([10.237.72.78])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 06:50:19 -0700
Date: Fri, 12 May 2023 16:50:58 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <ZF5EQjI7CqVkEVh3@ideak-desk.fi.intel.com>
References: <20230510103131.1618266-1-imre.deak@intel.com>
 <20230510103131.1618266-15-imre.deak@intel.com>
 <ZF1ANptc8cI4N3K0@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZF1ANptc8cI4N3K0@intel.com>
Subject: Re: [Intel-gfx] [PATCH v4 14/14] drm/i915/tc: Reset TypeC PHYs left
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

On Thu, May 11, 2023 at 10:21:26PM +0300, Ville Syrjälä wrote:
> On Wed, May 10, 2023 at 01:31:31PM +0300, Imre Deak wrote:
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
> > v3:
> > - Add intel_crtc_needs_link_reset(), instead of open-coding it,
> >   keep intel_crtc_has_encoders(). (Ville)
> > - Fix state dumping and use a bitmask to track disabled CRTCs in
> >   intel_sanitize_all_crtcs(). (Ville)
> > - Set internal in intel_atomic_state right after allocating it.
> >   (Ville)
> > - Recheck all CRTCs (not yet force-disabled) after a CRTC is
> >   force-disabled for any reason (not only due to a link state)
> >   in intel_sanitize_all_crtcs().
> > - Reduce delay after CRTC disabling to 20ms, and use the simpler
> >   msleep().
> > - Clarify code comment about HPD behaviour in
> >   intel_sanitize_all_crtcs().
> > - Move all the TC link reset logic to intel_tc.c .
> > - Cancel the link reset work synchronously during system suspend,
> >   driver unload and shutdown.
> > 
> > v4:
> > - Rebased on previous patch, which allows calling the TC port
> >   suspend/cleanup handlers without modeset locks held; remove the
> >   display driver suspended assert from the link reset work
> >   accordingly.
> > 
> > Cc: Kai-Heng Feng <kai.heng.feng@canonical.com>
> > Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Tested-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
> > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5860
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c      |  32 +++-
> >  drivers/gpu/drm/i915/display/intel_dp.c       |   6 +-
> >  drivers/gpu/drm/i915/display/intel_dp.h       |   3 +
> >  .../drm/i915/display/intel_modeset_setup.c    |  85 ++++++++--
> >  drivers/gpu/drm/i915/display/intel_tc.c       | 156 +++++++++++++++++-
> >  drivers/gpu/drm/i915/display/intel_tc.h       |   5 +-
> >  6 files changed, 262 insertions(+), 25 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index 7d09bd2412352..b443a79bc9803 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -3313,6 +3313,8 @@ static void intel_disable_ddi(struct intel_atomic_state *state,
> >  			      const struct intel_crtc_state *old_crtc_state,
> >  			      const struct drm_connector_state *old_conn_state)
> >  {
> > +	intel_tc_port_link_cancel_reset_work(enc_to_dig_port(encoder));
> > +
> >  	intel_hdcp_disable(to_intel_connector(old_conn_state->connector));
> >  
> >  	if (intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_HDMI))
> > @@ -3381,6 +3383,8 @@ intel_ddi_pre_pll_enable(struct intel_atomic_state *state,
> >  	enum phy phy = intel_port_to_phy(dev_priv, encoder->port);
> >  	bool is_tc_port = intel_phy_is_tc(dev_priv, phy);
> >  
> > +	intel_tc_port_link_cancel_reset_work(dig_port);
> 
> Can the reset work still be schduled at this time?

IIUC a hotplug->intel_tc_port_link_reset() could race with the above
encoder disable->intel_tc_port_link_cancel_reset_work() call in an async
commit (which doesn't hold modeset locks).

But it's just an optimization to avoid the overhead of checking the link
status from the work, not actually guaranteeing that it won't be scheduled.
So I can remove it from here.

> > +
> >  	if (is_tc_port) {
> >  		struct intel_crtc *master_crtc =
> >  			to_intel_crtc(crtc_state->uapi.crtc);
> > @@ -4232,9 +4236,19 @@ static void intel_ddi_encoder_reset(struct drm_encoder *encoder)
> >  		intel_tc_port_init_mode(dig_port);
> >  }
> >  
> > +static int intel_ddi_encoder_late_register(struct drm_encoder *_encoder)
> > +{
> > +	struct intel_encoder *encoder = to_intel_encoder(_encoder);
> > +
> > +	intel_tc_port_link_reset(enc_to_dig_port(encoder));
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
> > @@ -4404,14 +4418,16 @@ intel_ddi_hotplug(struct intel_encoder *encoder,
> >  
> >  	state = intel_encoder_hotplug(encoder, connector);
> >  
> > -	intel_modeset_lock_ctx_retry(&ctx, NULL, 0, ret) {
> > -		if (connector->base.connector_type == DRM_MODE_CONNECTOR_HDMIA)
> > -			ret = intel_hdmi_reset_link(encoder, &ctx);
> > -		else
> > -			ret = intel_dp_retrain_link(encoder, &ctx);
> > -	}
> > +	if (!intel_tc_port_link_reset(dig_port)) {
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
> > @@ -4625,7 +4641,7 @@ static void intel_ddi_tc_encoder_suspend_complete(struct intel_encoder *encoder)
> >  	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> >  	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> >  
> > -	intel_tc_port_flush_work(dig_port);
> > +	intel_tc_port_suspend(dig_port);
> >  }
> >  
> >  static void intel_ddi_encoder_shutdown(struct intel_encoder *encoder)
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 99ceaa7d90b62..9a13ec09755fc 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -4231,9 +4231,9 @@ static bool intel_dp_has_connector(struct intel_dp *intel_dp,
> >  	return false;
> >  }
> >  
> > -static int intel_dp_get_active_pipes(struct intel_dp *intel_dp,
> > -				     struct drm_modeset_acquire_ctx *ctx,
> > -				     u8 *pipe_mask)
> > +int intel_dp_get_active_pipes(struct intel_dp *intel_dp,
> > +			      struct drm_modeset_acquire_ctx *ctx,
> > +			      u8 *pipe_mask)
> >  {
> >  	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> >  	struct drm_connector_list_iter conn_iter;
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> > index ef39e4f7a329e..5f86157a10d2d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> > @@ -42,6 +42,9 @@ void intel_dp_set_link_params(struct intel_dp *intel_dp,
> >  			      int link_rate, int lane_count);
> >  int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
> >  					    int link_rate, u8 lane_count);
> > +int intel_dp_get_active_pipes(struct intel_dp *intel_dp,
> > +			      struct drm_modeset_acquire_ctx *ctx,
> > +			      u8 *pipe_mask);
> >  int intel_dp_retrain_link(struct intel_encoder *encoder,
> >  			  struct drm_modeset_acquire_ctx *ctx);
> >  void intel_dp_set_power(struct intel_dp *intel_dp, u8 mode);
> > diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > index 75b4dea1e442b..85f6401b8c709 100644
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
> > @@ -379,6 +380,21 @@ static bool intel_crtc_has_encoders(struct intel_crtc *crtc)
> >  	return false;
> >  }
> >  
> > +static bool intel_crtc_needs_link_reset(struct intel_crtc *crtc)
> > +{
> > +	struct drm_device *dev = crtc->base.dev;
> > +	struct intel_encoder *encoder;
> > +
> > +	for_each_encoder_on_crtc(dev, &crtc->base, encoder) {
> > +		struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> > +
> > +		if (dig_port && intel_tc_port_link_needs_reset(dig_port))
> > +			return true;
> > +	}
> > +
> > +	return false;
> > +}
> > +
> >  static struct intel_connector *intel_encoder_find_connector(struct intel_encoder *encoder)
> >  {
> >  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> > @@ -421,11 +437,12 @@ static void intel_sanitize_fifo_underrun_reporting(const struct intel_crtc_state
> >  					   !HAS_GMCH(i915));
> >  }
> >  
> > -static void intel_sanitize_crtc(struct intel_crtc *crtc,
> > +static bool intel_sanitize_crtc(struct intel_crtc *crtc,
> >  				struct drm_modeset_acquire_ctx *ctx)
> >  {
> >  	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> >  	struct intel_crtc_state *crtc_state = to_intel_crtc_state(crtc->base.state);
> > +	bool needs_link_reset;
> >  
> >  	if (crtc_state->hw.active) {
> >  		struct intel_plane *plane;
> > @@ -445,13 +462,65 @@ static void intel_sanitize_crtc(struct intel_crtc *crtc,
> >  		intel_color_commit_arm(crtc_state);
> >  	}
> >  
> > +	if (!crtc_state->hw.active ||
> > +	    intel_crtc_is_bigjoiner_slave(crtc_state))
> > +		return false;
> > +
> > +	needs_link_reset = intel_crtc_needs_link_reset(crtc);
> > +
> >  	/*
> >  	 * Adjust the state of the output pipe according to whether we have
> >  	 * active connectors/encoders.
> >  	 */
> > -	if (crtc_state->hw.active && !intel_crtc_has_encoders(crtc) &&
> > -	    !intel_crtc_is_bigjoiner_slave(crtc_state))
> > -		intel_crtc_disable_noatomic(crtc, ctx);
> > +	if (!needs_link_reset && intel_crtc_has_encoders(crtc))
> > +		return false;
> > +
> > +	intel_crtc_disable_noatomic(crtc, ctx);
> > +
> > +	/*
> > +	 * The HPD state on other active/disconnected TC ports may be stuck in
> > +	 * the connected state until this port is disabled and a ~10ms delay has
> > +	 * passed, wait here for that so that sanitizing other CRTCs will see the
> > +	 * up-to-date HPD state.
> > +	 */
> > +	if (needs_link_reset)
> > +		msleep(20);
> > +
> > +	return true;
> > +}
> > +
> > +static void intel_sanitize_all_crtcs(struct drm_i915_private *i915,
> > +				     struct drm_modeset_acquire_ctx *ctx)
> > +{
> > +	struct intel_crtc *crtc;
> > +	u8 crtcs_forced_off = 0;
> 
> Bit of a pipe vs. crtc confusion here. Maybe we should use
> u32+drm_crtc_mask() here for real since we're not really interested
> in individual pipes.

Ok.

> > +
> > +	/*
> > +	 * An active and disconnected TypeC port prevents the HPD live state
> > +	 * to get updated on other active/disconnected TypeC ports, so after
> > +	 * a port gets disabled the CRTCs using other TypeC ports must be
> > +	 * rechecked wrt. their link status.
> > +	 */
> > +	for (;;) {
> > +		u8 old_mask = crtcs_forced_off;
> > +
> > +		for_each_intel_crtc(&i915->drm, crtc) {
> > +			if (BIT(crtc->pipe) & crtcs_forced_off)
> > +				continue;
> > +
> > +			if (intel_sanitize_crtc(crtc, ctx))
> > +				crtcs_forced_off |= BIT(crtc->pipe);
> > +		}
> > +		if (crtcs_forced_off == old_mask)
> > +			break;
> > +	}
> > +
> > +	for_each_intel_crtc(&i915->drm, crtc) {
> > +		struct intel_crtc_state *crtc_state =
> > +			to_intel_crtc_state(crtc->base.state);
> > +
> > +		intel_crtc_state_dump(crtc_state, NULL, "setup_hw_state");
> > +	}
> >  }
> >  
> >  static bool has_bogus_dpll_config(const struct intel_crtc_state *crtc_state)
> > @@ -871,13 +940,7 @@ void intel_modeset_setup_hw_state(struct drm_i915_private *i915,
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
> > index 4fca711a58bce..4d45571fba956 100644
> > --- a/drivers/gpu/drm/i915/display/intel_tc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> > @@ -5,15 +5,19 @@
> >  
> >  #include "i915_drv.h"
> >  #include "i915_reg.h"
> > +#include "intel_atomic.h"
> >  #include "intel_cx0_phy_regs.h"
> >  #include "intel_ddi.h"
> >  #include "intel_de.h"
> >  #include "intel_display.h"
> > +#include "intel_display_driver.h"
> >  #include "intel_display_power_map.h"
> >  #include "intel_display_types.h"
> >  #include "intel_dkl_phy_regs.h"
> > +#include "intel_dp.h"
> >  #include "intel_dp_mst.h"
> >  #include "intel_mg_phy_regs.h"
> > +#include "intel_modeset_lock.h"
> >  #include "intel_tc.h"
> >  
> >  #define DP_PIN_ASSIGNMENT_C	0x3
> > @@ -51,6 +55,7 @@ struct intel_tc_port {
> >  	enum intel_display_power_domain lock_power_domain;
> >  #endif
> >  	struct delayed_work disconnect_phy_work;
> > +	struct delayed_work link_reset_work;
> >  	int link_refcount;
> >  	bool legacy_port:1;
> >  	char port_name[8];
> > @@ -1572,6 +1577,135 @@ bool intel_tc_port_connected(struct intel_encoder *encoder)
> >  	return is_connected;
> >  }
> >  
> > +static bool __intel_tc_port_link_needs_reset(struct intel_tc_port *tc)
> > +{
> > +	bool ret;
> > +
> > +	mutex_lock(&tc->lock);
> > +
> > +	ret = tc->link_refcount &&
> > +	      tc->mode == TC_PORT_DP_ALT &&
> > +	      intel_tc_port_needs_reset(tc);
> > +
> > +	mutex_unlock(&tc->lock);
> > +
> > +	return ret;
> > +}
> > +
> > +bool intel_tc_port_link_needs_reset(struct intel_digital_port *dig_port)
> > +{
> > +	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> > +	enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
> > +
> > +	if (!intel_phy_is_tc(i915, phy))
> > +		return false;
> > +
> > +	return __intel_tc_port_link_needs_reset(to_tc_port(dig_port));
> > +}
> > +
> > +static int reset_link(struct intel_tc_port *tc)
> > +{
> > +	struct drm_i915_private *i915 = tc_to_i915(tc);
> > +	struct intel_digital_port *dig_port = tc->dig_port;
> > +	struct intel_dp *intel_dp = enc_to_intel_dp(&dig_port->base);
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
> > +	state->internal = true;
> > +
> > +	intel_modeset_lock_ctx_retry(&ctx, state, 0, ret) {
> > +		struct intel_crtc *crtc;
> > +		u8 pipe_mask;
> > +
> > +		ret = drm_modeset_lock(&i915->drm.mode_config.connection_mutex, &ctx);
> > +		if (ret)
> > +			continue;
> > +
> > +		ret = intel_dp_get_active_pipes(intel_dp, &ctx, &pipe_mask);
> > +		if (ret)
> > +			continue;
> > +
> > +		if (!pipe_mask)
> > +			continue;
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
> > +		if (!__intel_tc_port_link_needs_reset(tc))
> > +			continue;
> > +
> > +		ret = drm_atomic_commit(&state->base);
> 
> I suppose one way to avoid the dangers of the continue vs. not
> in these things would be to extract the entire body of the loop to
> a separate function.

Yes, having a function for it is clearer, will resend this with the
above changes.

> Anyways, the patch looks decent enough to me so
> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Thanks.

> 
> > +	}
> > +
> > +	drm_atomic_state_put(&state->base);
> > +
> > +	return ret;
> > +}
> > +
> > +static void intel_tc_port_link_reset_work(struct work_struct *work)
> > +{
> > +	struct intel_tc_port *tc =
> > +		container_of(work, struct intel_tc_port, link_reset_work.work);
> > +	struct drm_i915_private *i915 = tc_to_i915(tc);
> > +	int ret;
> > +
> > +	if (!__intel_tc_port_link_needs_reset(tc))
> > +		return;
> > +
> > +	mutex_lock(&i915->drm.mode_config.mutex);
> > +
> > +	drm_dbg_kms(&i915->drm,
> > +		    "Port %s: TypeC DP-alt sink disconnected, resetting link\n",
> > +		    tc->port_name);
> > +	ret = reset_link(tc);
> > +	drm_WARN_ON(&i915->drm, ret);
> > +
> > +	mutex_unlock(&i915->drm.mode_config.mutex);
> > +}
> > +
> > +bool intel_tc_port_link_reset(struct intel_digital_port *dig_port)
> > +{
> > +	if (!intel_tc_port_link_needs_reset(dig_port))
> > +		return false;
> > +
> > +	queue_delayed_work(system_unbound_wq,
> > +			   &to_tc_port(dig_port)->link_reset_work,
> > +			   msecs_to_jiffies(2000));
> > +
> > +	return true;
> > +}
> > +
> > +void intel_tc_port_link_cancel_reset_work(struct intel_digital_port *dig_port)
> > +{
> > +	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> > +	enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
> > +	struct intel_tc_port *tc = to_tc_port(dig_port);
> > +
> > +	if (!intel_phy_is_tc(i915, phy))
> > +		return;
> > +
> > +	cancel_delayed_work(&tc->link_reset_work);
> > +}
> > +
> >  static void __intel_tc_port_lock(struct intel_tc_port *tc,
> >  				 int required_lanes)
> >  {
> > @@ -1619,11 +1753,19 @@ static void intel_tc_port_disconnect_phy_work(struct work_struct *work)
> >   *
> >   * Flush the delayed work disconnecting an idle PHY.
> >   */
> > -void intel_tc_port_flush_work(struct intel_digital_port *dig_port)
> > +static void intel_tc_port_flush_work(struct intel_digital_port *dig_port)
> >  {
> >  	flush_delayed_work(&to_tc_port(dig_port)->disconnect_phy_work);
> >  }
> >  
> > +void intel_tc_port_suspend(struct intel_digital_port *dig_port)
> > +{
> > +	struct intel_tc_port *tc = to_tc_port(dig_port);
> > +
> > +	cancel_delayed_work_sync(&tc->link_reset_work);
> > +	intel_tc_port_flush_work(dig_port);
> > +}
> > +
> >  void intel_tc_port_unlock(struct intel_digital_port *dig_port)
> >  {
> >  	struct intel_tc_port *tc = to_tc_port(dig_port);
> > @@ -1660,6 +1802,14 @@ void intel_tc_port_put_link(struct intel_digital_port *dig_port)
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
> > @@ -1692,7 +1842,9 @@ int intel_tc_port_init(struct intel_digital_port *dig_port, bool is_legacy)
> >  		 "%c/TC#%d", port_name(port), tc_port + 1);
> >  
> >  	mutex_init(&tc->lock);
> > +	/* TODO: Combine the two works */
> >  	INIT_DELAYED_WORK(&tc->disconnect_phy_work, intel_tc_port_disconnect_phy_work);
> > +	INIT_DELAYED_WORK(&tc->link_reset_work, intel_tc_port_link_reset_work);
> >  	tc->legacy_port = is_legacy;
> >  	tc->mode = TC_PORT_DISCONNECTED;
> >  	tc->link_refcount = 0;
> > @@ -1706,7 +1858,7 @@ int intel_tc_port_init(struct intel_digital_port *dig_port, bool is_legacy)
> >  
> >  void intel_tc_port_cleanup(struct intel_digital_port *dig_port)
> >  {
> > -	intel_tc_port_flush_work(dig_port);
> > +	intel_tc_port_suspend(dig_port);
> >  
> >  	kfree(dig_port->tc);
> >  	dig_port->tc = NULL;
> > diff --git a/drivers/gpu/drm/i915/display/intel_tc.h b/drivers/gpu/drm/i915/display/intel_tc.h
> > index dd0810f9ea95e..3b16491925fa9 100644
> > --- a/drivers/gpu/drm/i915/display/intel_tc.h
> > +++ b/drivers/gpu/drm/i915/display/intel_tc.h
> > @@ -30,11 +30,14 @@ void intel_tc_port_sanitize_mode(struct intel_digital_port *dig_port,
> >  				 const struct intel_crtc_state *crtc_state);
> >  void intel_tc_port_lock(struct intel_digital_port *dig_port);
> >  void intel_tc_port_unlock(struct intel_digital_port *dig_port);
> > -void intel_tc_port_flush_work(struct intel_digital_port *dig_port);
> > +void intel_tc_port_suspend(struct intel_digital_port *dig_port);
> >  void intel_tc_port_get_link(struct intel_digital_port *dig_port,
> >  			    int required_lanes);
> >  void intel_tc_port_put_link(struct intel_digital_port *dig_port);
> >  bool intel_tc_port_ref_held(struct intel_digital_port *dig_port);
> > +bool intel_tc_port_link_needs_reset(struct intel_digital_port *dig_port);
> > +bool intel_tc_port_link_reset(struct intel_digital_port *dig_port);
> > +void intel_tc_port_link_cancel_reset_work(struct intel_digital_port *dig_port);
> >  
> >  int intel_tc_port_init(struct intel_digital_port *dig_port, bool is_legacy);
> >  void intel_tc_port_cleanup(struct intel_digital_port *dig_port);
> > -- 
> > 2.37.2
> 
> -- 
> Ville Syrjälä
> Intel
