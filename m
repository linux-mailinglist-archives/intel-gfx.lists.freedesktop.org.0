Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 830791B5974
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2020 12:42:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C95E16E183;
	Thu, 23 Apr 2020 10:42:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60CF06E183
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Apr 2020 10:42:15 +0000 (UTC)
IronPort-SDR: AZVCEMUvSeSC8br37BVlT18I4ZEngoJhGsaSe0lhBV12dxAjHBF5OdHRz4gk4c1uqxAz5mqKi2
 pX2k5s4C0tjw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2020 03:42:14 -0700
IronPort-SDR: hCmYLdQFedueeOarJz+FGGSida9Li/o02CLXdVWS43gISHqGx86NQxelzF/fzI04BxCWttw8qB
 A600222pFJAg==
X-IronPort-AV: E=Sophos;i="5.73,307,1583222400"; d="scan'208";a="402879147"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2020 03:42:13 -0700
Date: Thu, 23 Apr 2020 13:41:48 +0300
From: Imre Deak <imre.deak@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200423104148.GA9592@ideak-desk.fi.intel.com>
References: <20200422194002.206744-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200422194002.206744-1-jose.souza@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/hdmi: Get digital_port only
 once in intel_ddi_pre_enable_hdmi()
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 22, 2020 at 12:40:01PM -0700, Jos=E9 Roberto de Souza wrote:
> Getting it only once also removing intel_hdmi that is used only once
> and can be easily accessed by dig_port->hdmi.
> =

> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 11 ++++-------
>  1 file changed, 4 insertions(+), 7 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index c086ae5eb12f..255dc796ede5 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3310,13 +3310,11 @@ static void intel_ddi_pre_enable_hdmi(struct inte=
l_atomic_state *state,
>  				      const struct intel_crtc_state *crtc_state,
>  				      const struct drm_connector_state *conn_state)
>  {
> -	struct intel_digital_port *intel_dig_port =3D enc_to_dig_port(encoder);
> -	struct intel_hdmi *intel_hdmi =3D &intel_dig_port->hdmi;
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> -	int level =3D intel_ddi_hdmi_level(encoder);
>  	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
> +	int level =3D intel_ddi_hdmi_level(encoder);
>  =

> -	intel_dp_dual_mode_set_tmds_output(intel_hdmi, true);
> +	intel_dp_dual_mode_set_tmds_output(&dig_port->hdmi, true);
>  	intel_ddi_clk_select(encoder, crtc_state);
>  =

>  	intel_display_power_get(dev_priv, dig_port->ddi_io_power_domain);
> @@ -3341,9 +3339,8 @@ static void intel_ddi_pre_enable_hdmi(struct intel_=
atomic_state *state,
>  =

>  	intel_ddi_enable_pipe_clock(encoder, crtc_state);
>  =

> -	intel_dig_port->set_infoframes(encoder,
> -				       crtc_state->has_infoframe,
> -				       crtc_state, conn_state);
> +	dig_port->set_infoframes(encoder, crtc_state->has_infoframe, crtc_state,
> +				 conn_state);
>  }
>  =

>  static void intel_ddi_pre_enable(struct intel_atomic_state *state,
> -- =

> 2.26.2
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
