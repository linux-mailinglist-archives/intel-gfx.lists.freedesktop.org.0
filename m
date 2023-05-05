Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B6586F875E
	for <lists+intel-gfx@lfdr.de>; Fri,  5 May 2023 19:17:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14B4210E64A;
	Fri,  5 May 2023 17:17:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D04FA10E64A
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 May 2023 17:17:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683307061; x=1714843061;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=GhlUnRaHnVFlh5wNchJMQ7Kgqk2atbTk9q6uKku7HsA=;
 b=jzVmQo0mMnMM8YeIa3F0zDvrH+X46g/zqaQfw6UHhsWDfuHA78WNZk1x
 zqJTYpZjOt3mOXLdhfEsEWJuyIOb5YyE1zhsyqtfZmLRYDE3I+2MtT6PW
 WubbN098eJ3z2ib/Hqxf2Nw/jacEvtU+Px0hYVA86PGgxQvaDBxEoOn1x
 6xsTLLTidgGIkCuGA4to+cc1JmvqFPq08D4Cl62C/zsdf9xvtxp5Ypp9H
 VnWqb1/dIxbmWGPa+RyhYwEd5phaghp23e446o19Rv6iN+8ZurIyNhHTm
 Ir8xTKjng5KC6jIPGrRzOaxnoOkgJ0R/sP5NvdXM1ZUe36z7NOF2TTYVJ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10701"; a="348083531"
X-IronPort-AV: E=Sophos;i="5.99,252,1677571200"; d="scan'208";a="348083531"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 10:17:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10701"; a="697673537"
X-IronPort-AV: E=Sophos;i="5.99,252,1677571200"; d="scan'208";a="697673537"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga002.jf.intel.com with SMTP; 05 May 2023 10:17:38 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 May 2023 20:17:37 +0300
Date: Fri, 5 May 2023 20:17:37 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>
Message-ID: <ZFU6MdrxsW7G8nO7@intel.com>
References: <20221107194604.15227-1-ville.syrjala@linux.intel.com>
 <20221107194604.15227-6-ville.syrjala@linux.intel.com>
 <DM4PR11MB636050E0C82E5BC1F23454B2F46D9@DM4PR11MB6360.namprd11.prod.outlook.com>
 <ZFTjBcK+Ps+mgPhn@intel.com>
 <DM4PR11MB6360EB6036423174860EC319F4729@DM4PR11MB6360.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DM4PR11MB6360EB6036423174860EC319F4729@DM4PR11MB6360.namprd11.prod.outlook.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915: Pick one HDMI port for
 infoframe/audio transmission on g4x
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

On Fri, May 05, 2023 at 11:15:18AM +0000, Shankar, Uma wrote:
> 
> 
> > -----Original Message-----
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Sent: Friday, May 5, 2023 4:36 PM
> > To: Shankar, Uma <uma.shankar@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org
> > Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915: Pick one HDMI port for
> > infoframe/audio transmission on g4x
> > 
> > On Thu, May 04, 2023 at 09:13:27PM +0000, Shankar, Uma wrote:
> > >
> > >
> > > > -----Original Message-----
> > > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> > > > Of Ville Syrjala
> > > > Sent: Tuesday, November 8, 2022 1:16 AM
> > > > To: intel-gfx@lists.freedesktop.org
> > > > Subject: [Intel-gfx] [PATCH 5/5] drm/i915: Pick one HDMI port for
> > > > infoframe/audio transmission on g4x
> > > >
> > > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > >
> > > > On g4x the hardware has only one audio/video DIP block. Thus only
> > > > one HDMI port can transmit audio/infoframes at a time.
> > > > Currently we pretend that multiple ports can do it at the same time,
> > > > but that doesn't actually work for two reasons:
> > > > - the state of the single hw block will get clobbered by
> > > >   the multiple ports, leading to state checker failures
> > > > - the hardware will automagically disable audio/infoframe
> > > >   transmission when enabled on multiple ports
> > > >
> > > > To fix this let's allow only one of the ports to transmit audio/infoframes at a
> > time.
> > > > We'll just go over all the HDMI ports and pick the first one that is
> > > > otherwise capable of audio/infoframes. Further HDMI ports will be
> > > > treated as if they had a DVI sink connected.
> > > >
> > > > In order to compute this consistently we'll also need to always add
> > > > all HDMI ports to the atomic state.
> > >
> > > Hi Ville,
> > > Approach and idea looks nice. One query I had on this is, if we have 2
> > > HDMI ports/sink enabled and we treat one of them as DVI due to this
> > > limitation. Later if the monitor being treated as HDMI is unplugged, will we get the
> > audio on the other monitor without modeset.
> > 
> > Yes. When disabling the HDMI connector g4x_hdmi_connector_atomic_check() will
> > add both connectors to the state, and HDMI vs. DVI decisions is redone for both
> > connectors.
> 
> Oh ok, got it. Thanks Ville for the clarification.
> 
> Looks Good to me.
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>

Thanks for the reviews Jani & Uma.
Remainder of the series pushed to drm-intel-next.

> 
> > >
> > > Regards,
> > > Uma Shankar
> > >
> > > > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/g4x_hdmi.c   | 114 +++++++++++++++++++++-
> > > >  drivers/gpu/drm/i915/display/g4x_hdmi.h   |   4 +
> > > >  drivers/gpu/drm/i915/display/intel_hdmi.c |  14 ++-
> > > >  3 files changed, 129 insertions(+), 3 deletions(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c
> > > > b/drivers/gpu/drm/i915/display/g4x_hdmi.c
> > > > index fd23aa03cdc4..28d477d7c7e3 100644
> > > > --- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
> > > > +++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
> > > > @@ -6,6 +6,7 @@
> > > >   */
> > > >
> > > >  #include "g4x_hdmi.h"
> > > > +#include "intel_atomic.h"
> > > >  #include "intel_audio.h"
> > > >  #include "intel_connector.h"
> > > >  #include "intel_crtc.h"
> > > > @@ -78,17 +79,66 @@ static bool intel_hdmi_get_hw_state(struct
> > > > intel_encoder *encoder,
> > > >  	return ret;
> > > >  }
> > > >
> > > > +static bool connector_is_hdmi(struct drm_connector *connector) {
> > > > +	struct intel_encoder *encoder =
> > > > +		intel_attached_encoder(to_intel_connector(connector));
> > > > +
> > > > +	return encoder && encoder->type == INTEL_OUTPUT_HDMI; }
> > > > +
> > > > +static bool g4x_compute_has_hdmi_sink(struct intel_atomic_state *state,
> > > > +				      struct intel_crtc *this_crtc) {
> > > > +	const struct drm_connector_state *conn_state;
> > > > +	struct drm_connector *connector;
> > > > +	int i;
> > > > +
> > > > +	/*
> > > > +	 * On g4x only one HDMI port can transmit infoframes/audio at
> > > > +	 * any given time. Select the first suitable port for this duty.
> > > > +	 *
> > > > +	 * See also g4x_hdmi_connector_atomic_check().
> > > > +	 */
> > > > +	for_each_new_connector_in_state(&state->base, connector,
> > > > +conn_state, i)
> > > > {
> > > > +		struct intel_encoder *encoder = to_intel_encoder(conn_state-
> > > > >best_encoder);
> > > > +		const struct intel_crtc_state *crtc_state;
> > > > +		struct intel_crtc *crtc;
> > > > +
> > > > +		if (!connector_is_hdmi(connector))
> > > > +			continue;
> > > > +
> > > > +		crtc = to_intel_crtc(conn_state->crtc);
> > > > +		if (!crtc)
> > > > +			continue;
> > > > +
> > > > +		crtc_state = intel_atomic_get_new_crtc_state(state, crtc);
> > > > +
> > > > +		if (!intel_hdmi_compute_has_hdmi_sink(encoder, crtc_state,
> > > > conn_state))
> > > > +			continue;
> > > > +
> > > > +		return crtc == this_crtc;
> > > > +	}
> > > > +
> > > > +	return false;
> > > > +}
> > > > +
> > > >  static int g4x_hdmi_compute_config(struct intel_encoder *encoder,
> > > >  				   struct intel_crtc_state *crtc_state,
> > > >  				   struct drm_connector_state *conn_state)  {
> > > > +	struct intel_atomic_state *state =
> > > > +to_intel_atomic_state(crtc_state-
> > > > >uapi.state);
> > > > +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> > > >  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> > > >
> > > >  	if (HAS_PCH_SPLIT(i915))
> > > >  		crtc_state->has_pch_encoder = true;
> > > >
> > > > -	crtc_state->has_hdmi_sink =
> > > > -		intel_hdmi_compute_has_hdmi_sink(encoder, crtc_state,
> > > > conn_state);
> > > > +	if (IS_G4X(i915))
> > > > +		crtc_state->has_hdmi_sink = g4x_compute_has_hdmi_sink(state,
> > > > crtc);
> > > > +	else
> > > > +		crtc_state->has_hdmi_sink =
> > > > +			intel_hdmi_compute_has_hdmi_sink(encoder, crtc_state,
> > > > conn_state);
> > > >
> > > >  	return intel_hdmi_compute_config(encoder, crtc_state, conn_state);
> > > > } @@
> > > > -532,6 +582,66 @@ intel_hdmi_hotplug(struct intel_encoder *encoder,
> > > >  	return state;
> > > >  }
> > > >
> > > > +int g4x_hdmi_connector_atomic_check(struct drm_connector *connector,
> > > > +				    struct drm_atomic_state *state) {
> > > > +	struct drm_i915_private *i915 = to_i915(state->dev);
> > > > +	struct drm_connector_list_iter conn_iter;
> > > > +	struct drm_connector *conn;
> > > > +	int ret;
> > > > +
> > > > +	ret = intel_digital_connector_atomic_check(connector, state);
> > > > +	if (ret)
> > > > +		return ret;
> > > > +
> > > > +	if (!IS_G4X(i915))
> > > > +		return 0;
> > > > +
> > > > +	if (!intel_connector_needs_modeset(to_intel_atomic_state(state),
> > > > connector))
> > > > +		return 0;
> > > > +
> > > > +	/*
> > > > +	 * On g4x only one HDMI port can transmit infoframes/audio
> > > > +	 * at any given time. Make sure all enabled HDMI ports are
> > > > +	 * included in the state so that it's possible to select
> > > > +	 * one of them for this duty.
> > > > +	 *
> > > > +	 * See also g4x_compute_has_hdmi_sink().
> > > > +	 */
> > > > +	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
> > > > +	drm_for_each_connector_iter(conn, &conn_iter) {
> > > > +		struct drm_connector_state *conn_state;
> > > > +		struct drm_crtc_state *crtc_state;
> > > > +		struct drm_crtc *crtc;
> > > > +
> > > > +		if (!connector_is_hdmi(conn))
> > > > +			continue;
> > > > +
> > > > +		drm_dbg_kms(&i915->drm, "Adding [CONNECTOR:%d:%s]\n",
> > > > +			    conn->base.id, conn->name);
> > > > +
> > > > +		conn_state = drm_atomic_get_connector_state(state, conn);
> > > > +		if (IS_ERR(conn_state)) {
> > > > +			ret = PTR_ERR(conn_state);
> > > > +			break;
> > > > +		}
> > > > +
> > > > +		crtc = conn_state->crtc;
> > > > +		if (!crtc)
> > > > +			continue;
> > > > +
> > > > +		crtc_state = drm_atomic_get_new_crtc_state(state, crtc);
> > > > +		crtc_state->mode_changed = true;
> > > > +
> > > > +		ret = drm_atomic_add_affected_planes(state, crtc);
> > > > +		if (ret)
> > > > +			break;
> > > > +	}
> > > > +	drm_connector_list_iter_end(&conn_iter);
> > > > +
> > > > +	return ret;
> > > > +}
> > > > +
> > > >  void g4x_hdmi_init(struct drm_i915_private *dev_priv,
> > > >  		   i915_reg_t hdmi_reg, enum port port)  { diff --git
> > > > a/drivers/gpu/drm/i915/display/g4x_hdmi.h
> > > > b/drivers/gpu/drm/i915/display/g4x_hdmi.h
> > > > index db9a93bc9321..1e3ea7f3c846 100644
> > > > --- a/drivers/gpu/drm/i915/display/g4x_hdmi.h
> > > > +++ b/drivers/gpu/drm/i915/display/g4x_hdmi.h
> > > > @@ -11,9 +11,13 @@
> > > >  #include "i915_reg_defs.h"
> > > >
> > > >  enum port;
> > > > +struct drm_atomic_state;
> > > > +struct drm_connector;
> > > >  struct drm_i915_private;
> > > >
> > > >  void g4x_hdmi_init(struct drm_i915_private *dev_priv,
> > > >  		   i915_reg_t hdmi_reg, enum port port);
> > > > +int g4x_hdmi_connector_atomic_check(struct drm_connector *connector,
> > > > +				    struct drm_atomic_state *state);
> > > >
> > > >  #endif
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c
> > > > b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > > > index 2425a9f59b90..d93aab847548 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > > > @@ -40,6 +40,7 @@
> > > >  #include <drm/drm_edid.h>
> > > >  #include <drm/intel_lpe_audio.h>
> > > >
> > > > +#include "g4x_hdmi.h"
> > > >  #include "i915_debugfs.h"
> > > >  #include "i915_drv.h"
> > > >  #include "intel_atomic.h"
> > > > @@ -2590,10 +2591,21 @@ static const struct drm_connector_funcs
> > > > intel_hdmi_connector_funcs = {
> > > >  	.atomic_duplicate_state = intel_digital_connector_duplicate_state,
> > > >  };
> > > >
> > > > +static int intel_hdmi_connector_atomic_check(struct drm_connector
> > *connector,
> > > > +					     struct drm_atomic_state *state) {
> > > > +	struct drm_i915_private *i915 = to_i915(state->dev);
> > > > +
> > > > +	if (HAS_DDI(i915))
> > > > +		return intel_digital_connector_atomic_check(connector, state);
> > > > +	else
> > > > +		return g4x_hdmi_connector_atomic_check(connector, state); }
> > > > +
> > > >  static const struct drm_connector_helper_funcs
> > > > intel_hdmi_connector_helper_funcs = {
> > > >  	.get_modes = intel_hdmi_get_modes,
> > > >  	.mode_valid = intel_hdmi_mode_valid,
> > > > -	.atomic_check = intel_digital_connector_atomic_check,
> > > > +	.atomic_check = intel_hdmi_connector_atomic_check,
> > > >  };
> > > >
> > > >  static void
> > > > --
> > > > 2.37.4
> > >
> > 
> > --
> > Ville Syrjälä
> > Intel

-- 
Ville Syrjälä
Intel
