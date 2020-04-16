Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70C671AB66D
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2020 05:57:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C23096EAC3;
	Thu, 16 Apr 2020 03:56:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B87C6EAC3
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Apr 2020 03:56:58 +0000 (UTC)
IronPort-SDR: fmng11oVeMoehIyga9+ZZosmqcalRmtmm9PxzThZNOkIrCy7WBbVVLrTNvuhLPKV7HJWmEuW9w
 o5xAFd9g8RVA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2020 20:56:57 -0700
IronPort-SDR: 1lFs/VFJfxVhwN3QpIh016j0DCq42xIUXaPDB+Cc3PvVdMT+HgBOK/i0g3jQIbjCbvoYqItQk/
 0P1HNGNiu4jw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,388,1580803200"; d="scan'208";a="271943611"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by orsmga002.jf.intel.com with ESMTP; 15 Apr 2020 20:56:57 -0700
Date: Wed, 15 Apr 2020 20:56:57 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200416035657.GS2715344@mdroper-desk1.amr.corp.intel.com>
References: <20200414230442.262092-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200414230442.262092-1-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/display: Load DP_TP_CTL/STATUS
 offset before use it
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 14, 2020 at 04:04:40PM -0700, Jos=E9 Roberto de Souza wrote:
> Right now dp.regs.dp_tp_ctl/status are only set during the encoder
> pre_enable() hook, what is causing all reads and writes to those
> registers to go to offset 0x0 before pre_enable() is executed.
> =

> So if i915 takes the BIOS state and don't do a modeset any following
> link retraing will fail.
> =

> In the case that i915 needs to do a modeset, the DDI disable sequence
> will write to a wrong register not disabling DP 'Transport Enable' in
> DP_TP_CTL, making a HDMI modeset in the same port/transcoder to
> not light up the monitor.

So to clarify I understand the problematic sequence properly:
 * i915 inherits already-enabled display from BIOS; pre_enable is never
   called
 * we do a modeset, so we have to disable the display and then try to re-en=
able
     - intel_disable_ddi_buf() writes to offset 0 rather than the proper
       register offset when attempting to reprogram DP_TP_CTL and
       disable DP
     - when we re-enable, the old, still-active DP settings in hardware
       cause problems and the display doesn't light up

A couple clarifying questions:
 - It seems like we should have seen unclaimed register warnings from
   the bogus writes to offset 0 during disable.  Any idea why those
   didn't show up?
 - In the commit message you mention that it's the DP Transport Enable
   that's the culprit here, which breaks future attempts to light up
   HDMI.   I assume this means that we're also switching which pipe
   we're driving the port with, not just doing any modeset?  Otherwise
   DP would stay DP, HDMI would stay HDMI, and we wouldn't see this
   problem with DP being active on an HDMI monitor (although we'd still
   be writing to an invalid register offset during our first DP disable
   which might cause other problems).  Might be worth adding a mention
   of the pipe change to the commit message to clarify.

The changes here look correct to me; we'll ensure the DP registers have
proper offsets before we do our first modeset, and then the rest of the
runtime behavior thereafter should be unchanged.  So

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>


> =

> So here for GENs older than 12, that have those registers fixed at
> port offset range it is loading at encoder/port init while for GEN12
> it will keep setting it at encoder pre_enable() and during HW state
> readout.
> =

> Fixes: 4444df6e205b ("drm/i915/tgl: move DP_TP_* to transcoder")
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 14 +++++++++++---
>  drivers/gpu/drm/i915/display/intel_dp.c  |  5 ++---
>  2 files changed, 13 insertions(+), 6 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index be6c61bcbc9c..1aab93a94f40 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3252,9 +3252,6 @@ static void hsw_ddi_pre_enable_dp(struct intel_atom=
ic_state *state,
>  	intel_dp_set_link_params(intel_dp, crtc_state->port_clock,
>  				 crtc_state->lane_count, is_mst);
>  =

> -	intel_dp->regs.dp_tp_ctl =3D DP_TP_CTL(port);
> -	intel_dp->regs.dp_tp_status =3D DP_TP_STATUS(port);
> -
>  	intel_edp_panel_on(intel_dp);
>  =

>  	intel_ddi_clk_select(encoder, crtc_state);
> @@ -4061,12 +4058,18 @@ void intel_ddi_get_config(struct intel_encoder *e=
ncoder,
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	struct intel_crtc *intel_crtc =3D to_intel_crtc(pipe_config->uapi.crtc);
>  	enum transcoder cpu_transcoder =3D pipe_config->cpu_transcoder;
> +	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
>  	u32 temp, flags =3D 0;
>  =

>  	/* XXX: DSI transcoder paranoia */
>  	if (drm_WARN_ON(&dev_priv->drm, transcoder_is_dsi(cpu_transcoder)))
>  		return;
>  =

> +	if (INTEL_GEN(dev_priv) >=3D 12) {
> +		intel_dp->regs.dp_tp_ctl =3D TGL_DP_TP_CTL(cpu_transcoder);
> +		intel_dp->regs.dp_tp_status =3D TGL_DP_TP_STATUS(cpu_transcoder);
> +	}
> +
>  	intel_dsc_get_config(encoder, pipe_config);
>  =

>  	temp =3D intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder));
> @@ -4396,6 +4399,7 @@ static const struct drm_encoder_funcs intel_ddi_fun=
cs =3D {
>  static struct intel_connector *
>  intel_ddi_init_dp_connector(struct intel_digital_port *intel_dig_port)
>  {
> +	struct drm_i915_private *dev_priv =3D to_i915(intel_dig_port->base.base=
.dev);
>  	struct intel_connector *connector;
>  	enum port port =3D intel_dig_port->base.port;
>  =

> @@ -4406,6 +4410,10 @@ intel_ddi_init_dp_connector(struct intel_digital_p=
ort *intel_dig_port)
>  	intel_dig_port->dp.output_reg =3D DDI_BUF_CTL(port);
>  	intel_dig_port->dp.prepare_link_retrain =3D
>  		intel_ddi_prepare_link_retrain;
> +	if (INTEL_GEN(dev_priv) < 12) {
> +		intel_dig_port->dp.regs.dp_tp_ctl =3D DP_TP_CTL(port);
> +		intel_dig_port->dp.regs.dp_tp_status =3D DP_TP_STATUS(port);
> +	}
>  =

>  	if (!intel_dp_init_connector(intel_dig_port, connector)) {
>  		kfree(connector);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index d4fcc9583869..03591ab76b0d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2671,9 +2671,6 @@ static void intel_dp_prepare(struct intel_encoder *=
encoder,
>  				 intel_crtc_has_type(pipe_config,
>  						     INTEL_OUTPUT_DP_MST));
>  =

> -	intel_dp->regs.dp_tp_ctl =3D DP_TP_CTL(port);
> -	intel_dp->regs.dp_tp_status =3D DP_TP_STATUS(port);
> -
>  	/*
>  	 * There are four kinds of DP registers:
>  	 *
> @@ -8470,6 +8467,8 @@ bool intel_dp_init(struct drm_i915_private *dev_pri=
v,
>  =

>  	intel_dig_port->dp.output_reg =3D output_reg;
>  	intel_dig_port->max_lanes =3D 4;
> +	intel_dig_port->dp.regs.dp_tp_ctl =3D DP_TP_CTL(port);
> +	intel_dig_port->dp.regs.dp_tp_status =3D DP_TP_STATUS(port);
>  =

>  	intel_encoder->type =3D INTEL_OUTPUT_DP;
>  	intel_encoder->power_domain =3D intel_port_to_power_domain(port);
> -- =

> 2.26.0
> =


-- =

Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
