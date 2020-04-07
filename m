Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 19BA51A0D54
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 14:09:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74D5D89DDD;
	Tue,  7 Apr 2020 12:09:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5694689DDD
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 12:09:30 +0000 (UTC)
IronPort-SDR: xhQspXvUFsg25EMBhEQVL44G77cIfH53T2v+SA6rfCIcXYENb8wGM8QIcYyoJBZxIjX+bHxzp9
 sVsl3jHE6s0A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 05:09:29 -0700
IronPort-SDR: es8OvYG+0AUwMmCvufcHiDvclj0Y29Oa7VpAQpEHEDlt/Mc6LvoiGNH/D3EXU1dWHty+bMoTsI
 tNCBOOGOdEbw==
X-IronPort-AV: E=Sophos;i="5.72,354,1580803200"; d="scan'208";a="424726949"
Received: from vogtstef-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.249.40.153])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 05:09:28 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Vipin Anand <vipin.anand@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200326113443.30110-1-vipin.anand@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200326113443.30110-1-vipin.anand@intel.com>
Date: Tue, 07 Apr 2020 15:09:25 +0300
Message-ID: <87pncjjy4q.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm:i915:display: add checks for Gen9
 devices with hdr capability
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 26 Mar 2020, Vipin Anand <vipin.anand@intel.com> wrote:
> this patch adds hdr capabilities checks for Gen9 devices with
> lspcon support.

For a lot of the changes I don't see how you'd end up in the code paths
with LSPCON, because from the driver perspective LSPCON is DP. (We
always use PCON mode.)

There's also some conflation with the LSPCON vendor related changes that
should probably be separate, if they are valid.

This does not apply on top of current drm-tip; what is it based on?

Did you actually try this?

BR,
Jani.


>
> Signed-off-by: Vipin Anand <vipin.anand@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdmi.c   | 17 +++++++++++++----
>  drivers/gpu/drm/i915/display/intel_lspcon.c |  9 +++++++--
>  2 files changed, 20 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 9ae2f88cc925..70d0d76ed606 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -833,9 +833,12 @@ intel_hdmi_compute_drm_infoframe(struct intel_encoder *encoder,
>  {
>  	struct hdmi_drm_infoframe *frame = &crtc_state->infoframes.drm.drm;
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> +	struct intel_digital_port *intel_dig_port = enc_to_dig_port(encoder);
>  	int ret;
>  
> -	if (!(INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv)))
> +	if (!(INTEL_GEN(dev_priv) >= 10 ||
> +	      (((INTEL_GEN(dev_priv) >= 9)) &&
> +	      intel_dig_port->lspcon.active)))
>  		return true;
>  
>  	if (!crtc_state->has_infoframe)
> @@ -2102,9 +2105,12 @@ static int intel_hdmi_source_max_tmds_clock(struct intel_encoder *encoder)
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  	const struct ddi_vbt_port_info *info =
>  		&dev_priv->vbt.ddi_port_info[encoder->port];
> +	struct intel_digital_port *intel_dig_port = enc_to_dig_port(encoder);
>  	int max_tmds_clock;
>  
> -	if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
> +	if (INTEL_GEN(dev_priv) >= 10 ||
> +	    (((INTEL_GEN(dev_priv) >= 9)) &&
> +			 intel_dig_port->lspcon.active))
>  		max_tmds_clock = 594000;
>  	else if (INTEL_GEN(dev_priv) >= 8 || IS_HASWELL(dev_priv))
>  		max_tmds_clock = 300000;
> @@ -2423,6 +2429,7 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
>  	struct intel_digital_connector_state *intel_conn_state =
>  		to_intel_digital_connector_state(conn_state);
>  	bool force_dvi = intel_conn_state->force_audio == HDMI_AUDIO_OFF_DVI;
> +	struct intel_digital_port *intel_dig_port = enc_to_dig_port(encoder);
>  	int ret;
>  
>  	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
> @@ -2469,7 +2476,8 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
>  	pipe_config->lane_count = 4;
>  
>  	if (scdc->scrambling.supported && (INTEL_GEN(dev_priv) >= 10 ||
> -					   IS_GEMINILAKE(dev_priv))) {
> +					   (((INTEL_GEN(dev_priv) >= 9)) &&
> +					    intel_dig_port->lspcon.active))) {
>  		if (scdc->scrambling.low_rates)
>  			pipe_config->hdmi_scrambling = true;
>  
> @@ -3171,7 +3179,8 @@ void intel_hdmi_init_connector(struct intel_digital_port *intel_dig_port,
>  	connector->doublescan_allowed = 0;
>  	connector->stereo_allowed = 1;
>  
> -	if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
> +	if (INTEL_GEN(dev_priv) >= 10 ||
> +	    (((INTEL_GEN(dev_priv) >= 9)) && intel_dig_port->lspcon.active))
>  		connector->ycbcr_420_allowed = true;
>  
>  	intel_encoder->hpd_pin = intel_hpd_pin_default(dev_priv, port);
> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
> index 5cede4f07f22..be074acd74f3 100644
> --- a/drivers/gpu/drm/i915/display/intel_lspcon.c
> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
> @@ -116,6 +116,8 @@ static bool lspcon_detect_hdr_capability(struct intel_lspcon *lspcon)
>  	if (lspcon->vendor == LSPCON_VENDOR_MCA)
>  		ret = drm_dp_dpcd_read(&dp->aux, DPCD_MCA_LSPCON_HDR_STATUS,
>  				       &hdr_caps, 1);
> +	else if (lspcon->vendor == LSPCON_VENDOR_PARADE)
> +		return true;
>  	else
>  		return false;
>  
> @@ -474,7 +476,8 @@ void lspcon_write_infoframe(struct intel_encoder *encoder,
>  	 * Todo: Add support for Parade later
>  	 */
>  	if (type == HDMI_PACKET_TYPE_GAMUT_METADATA &&
> -	    lspcon->vendor != LSPCON_VENDOR_MCA)
> +		(lspcon->vendor != LSPCON_VENDOR_MCA ||
> +		 lspcon->vendor != LSPCON_VENDOR_PARADE))
>  		return;
>  
>  	if (lspcon->vendor == LSPCON_VENDOR_MCA) {
> @@ -646,7 +649,9 @@ bool lspcon_init(struct intel_digital_port *intel_dig_port)
>  		return false;
>  	}
>  
> -	if (lspcon->vendor == LSPCON_VENDOR_MCA && lspcon->hdr_supported)
> +	if ((lspcon->vendor == LSPCON_VENDOR_MCA ||
> +	     lspcon->vendor == LSPCON_VENDOR_PARADE) &&
> +	     lspcon->hdr_supported)
>  		drm_object_attach_property(&connector->base,
>  					   connector->dev->mode_config.hdr_output_metadata_property,
>  					   0);

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
