Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CD578CD57F
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2024 16:16:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42B3710E133;
	Thu, 23 May 2024 14:16:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g1VYaqXC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF6F210E133
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2024 14:16:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716473775; x=1748009775;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=+sC3UWBoIc+w6tmYCH3W5eQlxZK2R+ILz1x6wl4Q7ns=;
 b=g1VYaqXCbxYBpksnyxxmZwPjh/085DYibck8iALaLRUy+Yqk9PxTmD0K
 A+PKF1GTkhlGUeue/paIEzaWT1mtFntpYZmxH2h9c217y59LML85bgR1d
 k2ad7dngSh5v/aSfNGe6QHvBmgjhnNTfU0HufkijX+hkf1kzg6lsXsBDN
 45hZFyEOzq+Gr1uPVRpAyA1llAKXNqmQZEFo1/rtbq2Fe2jGI2mddfltJ
 YQ6hu2v0SsynAruRKKBcK7afKFQ7ntxtpYSviGRZbTAEjjEEbViVQsi9k
 Z/TvL3T6YxQAEfjJ07DLvzteFQn48aTjf/CRY7xddM9YVQZHxNLK26Q4z w==;
X-CSE-ConnectionGUID: OYup2OOxQnqTOQ94FTCdXA==
X-CSE-MsgGUID: uCdmfsGkSjicccn4bmnrCw==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="12627075"
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="12627075"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 07:12:46 -0700
X-CSE-ConnectionGUID: l8XZSk8TTmuvM9L4annVBw==
X-CSE-MsgGUID: kUAIuG3rSHW9zczpSTcyow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="33811657"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 07:12:45 -0700
Date: Thu, 23 May 2024 17:12:48 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v2 07/21] drm/i915/dp: Recheck link state after modeset
Message-ID: <Zk9O4EdFmOZnY6yO@ideak-desk.fi.intel.com>
References: <20240520185822.3725844-1-imre.deak@intel.com>
 <20240520185822.3725844-8-imre.deak@intel.com>
 <Zk9E6k4AF4hPVX1v@intel.com>
 <Zk9ItgRTutrbhZH5@ideak-desk.fi.intel.com>
 <Zk9Ljl7Mf-QTobQV@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Zk9Ljl7Mf-QTobQV@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, May 23, 2024 at 04:58:38PM +0300, Ville Syrjälä wrote:
> On Thu, May 23, 2024 at 04:46:30PM +0300, Imre Deak wrote:
> > On Thu, May 23, 2024 at 04:30:18PM +0300, Ville Syrjälä wrote:
> > > On Mon, May 20, 2024 at 09:58:05PM +0300, Imre Deak wrote:
> > > > Recheck the link state after a passing link training, with a 2 sec delay
> > > > to account for cases where the link goes bad following the link training
> > > > and the sink doesn't report this via an HPD IRQ.
> > > > 
> > > > The delayed work added here will be also used by a later patch after a
> > > > failed link training to try to retrain the link with unchanged link
> > > > params before reducing the link params.
> > > > 
> > > > v2: Don't flush an uninitialized delayed work (on HDMI-only DDI ports).
> > > > v3: Add the work to intel_digital_port instead of intel_dp.
> > > > 
> > > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/g4x_dp.c         |  7 ++++
> > > >  drivers/gpu/drm/i915/display/intel_ddi.c      | 34 +++++++++++++++++++
> > > >  drivers/gpu/drm/i915/display/intel_ddi.h      |  4 +++
> > > >  .../drm/i915/display/intel_display_types.h    |  3 ++
> > > >  drivers/gpu/drm/i915/display/intel_dp.c       |  1 +
> > > >  .../drm/i915/display/intel_dp_link_training.c | 12 +++++--
> > > >  6 files changed, 58 insertions(+), 3 deletions(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
> > > > index 06ec04e667e32..4363e32a834df 100644
> > > > --- a/drivers/gpu/drm/i915/display/g4x_dp.c
> > > > +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
> > > > @@ -20,6 +20,7 @@
> > > >  #include "intel_dp_aux.h"
> > > >  #include "intel_dp_link_training.h"
> > > >  #include "intel_dpio_phy.h"
> > > > +#include "intel_ddi.h"
> > > >  #include "intel_fifo_underrun.h"
> > > >  #include "intel_hdmi.h"
> > > >  #include "intel_hotplug.h"
> > > > @@ -1241,6 +1242,10 @@ static bool ilk_digital_port_connected(struct intel_encoder *encoder)
> > > >  
> > > >  static void intel_dp_encoder_destroy(struct drm_encoder *encoder)
> > > >  {
> > > > +	struct intel_digital_port *dig_port = enc_to_dig_port(to_intel_encoder(encoder));
> > > > +
> > > > +	intel_ddi_flush_link_check_work(dig_port);
> > > > +
> > > >  	intel_dp_encoder_flush_work(encoder);
> > > >  
> > > >  	drm_encoder_cleanup(encoder);
> > > > @@ -1309,6 +1314,8 @@ bool g4x_dp_init(struct drm_i915_private *dev_priv,
> > > >  
> > > >  	dig_port->aux_ch = AUX_CH_NONE;
> > > >  
> > > > +	intel_ddi_init_link_check_work(dig_port);
> > > 
> > > Using "ddi" for pre-ddi platforms is confusing. The implementation
> > > is also in intel_ddi.c for some reason.
> > 
> > Yes. It's a generic encoder or digital port functionality, neither of
> > which have its own file. How about moving them to intel_display.c and
> > the intel_display_link_{init_work, queue_work, flush_work, work_fn}
> > names?
> 
> We could add some new file for this kind of generic encoder stuff.
> intel_encoder.c or intel_dig_port.c maybe?

Ok, there seems to be more encoder functions that could be moved there,
so I'll add intel_encoder.c.

> > > > +
> > > >  	intel_connector = intel_connector_alloc();
> > > >  	if (!intel_connector)
> > > >  		goto err_connector_alloc;
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > > index 170ba01786cf8..86358ec27e685 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > > @@ -4360,6 +4360,7 @@ static void intel_ddi_encoder_destroy(struct drm_encoder *encoder)
> > > >  	struct drm_i915_private *i915 = to_i915(encoder->dev);
> > > >  	struct intel_digital_port *dig_port = enc_to_dig_port(to_intel_encoder(encoder));
> > > >  
> > > > +	intel_ddi_flush_link_check_work(dig_port);
> > > >  	intel_dp_encoder_flush_work(encoder);
> > > >  	if (intel_encoder_is_tc(&dig_port->base))
> > > >  		intel_tc_port_cleanup(dig_port);
> > > > @@ -4441,6 +4442,37 @@ intel_ddi_init_dp_connector(struct intel_digital_port *dig_port)
> > > >  	return connector;
> > > >  }
> > > >  
> > > > +static void intel_ddi_link_check_work_fn(struct work_struct *work)
> > > > +{
> > > > +	struct intel_digital_port *dig_port =
> > > > +		container_of(work, typeof(*dig_port), check_link_work.work);
> > > > +	struct intel_encoder *encoder = &dig_port->base;
> > > > +	struct drm_modeset_acquire_ctx ctx;
> > > > +	int ret;
> > > > +
> > > > +	intel_modeset_lock_ctx_retry(&ctx, NULL, 0, ret)
> > > > +		if (dig_port->dp.attached_connector)
> > > > +			ret = intel_dp_retrain_link(encoder, &ctx);
> > > > +}
> > > > +
> > > > +void intel_ddi_init_link_check_work(struct intel_digital_port *dig_port)
> > > > +{
> > > > +	INIT_DELAYED_WORK(&dig_port->check_link_work, intel_ddi_link_check_work_fn);
> > > > +}
> > > > +
> > > > +void intel_ddi_flush_link_check_work(struct intel_digital_port *dig_port)
> > > > +{
> > > > +	cancel_delayed_work_sync(&dig_port->check_link_work);
> > > > +}
> > > > +
> > > > +void intel_ddi_queue_link_check(struct intel_digital_port *dig_port, int delay_ms)
> > > > +{
> > > > +	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> > > > +
> > > > +	mod_delayed_work(i915->unordered_wq,
> > > > +			 &dig_port->check_link_work, msecs_to_jiffies(delay_ms));
> > > > +}
> > > > +
> > > >  static int intel_hdmi_reset_link(struct intel_encoder *encoder,
> > > >  				 struct drm_modeset_acquire_ctx *ctx)
> > > >  {
> > > > @@ -4911,6 +4943,8 @@ void intel_ddi_init(struct drm_i915_private *dev_priv,
> > > >  
> > > >  	dig_port->aux_ch = AUX_CH_NONE;
> > > >  
> > > > +	intel_ddi_init_link_check_work(dig_port);
> > > > +
> > > >  	encoder = &dig_port->base;
> > > >  	encoder->devdata = devdata;
> > > >  
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.h b/drivers/gpu/drm/i915/display/intel_ddi.h
> > > > index 434de7196875a..b67714483f3cc 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_ddi.h
> > > > +++ b/drivers/gpu/drm/i915/display/intel_ddi.h
> > > > @@ -15,6 +15,7 @@ struct intel_bios_encoder_data;
> > > >  struct intel_connector;
> > > >  struct intel_crtc;
> > > >  struct intel_crtc_state;
> > > > +struct intel_digital_port;
> > > >  struct intel_dp;
> > > >  struct intel_dpll_hw_state;
> > > >  struct intel_encoder;
> > > > @@ -53,6 +54,9 @@ void hsw_prepare_dp_ddi_buffers(struct intel_encoder *encoder,
> > > >  				const struct intel_crtc_state *crtc_state);
> > > >  void intel_wait_ddi_buf_idle(struct drm_i915_private *dev_priv,
> > > >  			     enum port port);
> > > > +void intel_ddi_init_link_check_work(struct intel_digital_port *dig_port);
> > > > +void intel_ddi_flush_link_check_work(struct intel_digital_port *dig_port);
> > > > +void intel_ddi_queue_link_check(struct intel_digital_port *dig_port, int delay_ms);
> > > >  void intel_ddi_init(struct drm_i915_private *dev_priv,
> > > >  		    const struct intel_bios_encoder_data *devdata);
> > > >  bool intel_ddi_get_hw_state(struct intel_encoder *encoder, enum pipe *pipe);
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > index 1e44a23ca2125..9317c1ae04efe 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > @@ -1880,6 +1880,9 @@ struct intel_digital_port {
> > > >  
> > > >  	struct intel_tc_port *tc;
> > > >  
> > > > +	/* Check and recover a bad link status on DP and HDMI ports. */
> > > > +	struct delayed_work check_link_work;
> > > > +
> > > >  	/* protects num_hdcp_streams reference count, hdcp_port_data and hdcp_auth_status */
> > > >  	struct mutex hdcp_mutex;
> > > >  	/* the number of pipes using HDCP signalling out of this port */
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > index 120f7b420807b..8da277f0c2735 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > @@ -75,6 +75,7 @@
> > > >  #include "intel_hotplug_irq.h"
> > > >  #include "intel_lspcon.h"
> > > >  #include "intel_lvds.h"
> > > > +#include "intel_modeset_lock.h"
> > > >  #include "intel_panel.h"
> > > >  #include "intel_pch_display.h"
> > > >  #include "intel_pps.h"
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > > index edc970036866a..ad1fbb150ff90 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > > @@ -25,6 +25,7 @@
> > > >  #include "intel_display_types.h"
> > > >  #include "intel_dp.h"
> > > >  #include "intel_dp_link_training.h"
> > > > +#include "intel_ddi.h"
> > > >  #include "intel_panel.h"
> > > >  
> > > >  #define LT_MSG_PREFIX			"[CONNECTOR:%d:%s][ENCODER:%d:%s][%s] "
> > > > @@ -1464,6 +1465,7 @@ void intel_dp_start_link_train(struct intel_dp *intel_dp,
> > > >  			       const struct intel_crtc_state *crtc_state)
> > > >  {
> > > >  	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> > > > +	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> > > >  	bool passed;
> > > >  
> > > >  	/*
> > > > @@ -1483,6 +1485,11 @@ void intel_dp_start_link_train(struct intel_dp *intel_dp,
> > > >  	else
> > > >  		passed = intel_dp_link_train_all_phys(intel_dp, crtc_state, lttpr_count);
> > > >  
> > > > +	if (passed) {
> > > > +		intel_ddi_queue_link_check(dig_port, 2000);
> > > > +		return;
> > > > +	}
> > > > +
> > > >  	/*
> > > >  	 * Ignore the link failure in CI
> > > >  	 *
> > > > @@ -1495,13 +1502,12 @@ void intel_dp_start_link_train(struct intel_dp *intel_dp,
> > > >  	 * For test cases which rely on the link training or processing of HPDs
> > > >  	 * ignore_long_hpd flag can unset from the testcase.
> > > >  	 */
> > > > -	if (!passed && i915->display.hotplug.ignore_long_hpd) {
> > > > +	if (i915->display.hotplug.ignore_long_hpd) {
> > > >  		lt_dbg(intel_dp, DP_PHY_DPRX, "Ignore the link failure\n");
> > > >  		return;
> > > >  	}
> > > >  
> > > > -	if (!passed)
> > > > -		intel_dp_schedule_fallback_link_training(intel_dp, crtc_state);
> > > > +	intel_dp_schedule_fallback_link_training(intel_dp, crtc_state);
> > > >  }
> > > >  
> > > >  void intel_dp_128b132b_sdp_crc16(struct intel_dp *intel_dp,
> > > > -- 
> > > > 2.43.3
> > > 
> > > -- 
> > > Ville Syrjälä
> > > Intel
> 
> -- 
> Ville Syrjälä
> Intel
