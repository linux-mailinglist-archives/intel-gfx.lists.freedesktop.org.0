Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D05181B5A20
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2020 13:12:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 343DC89D46;
	Thu, 23 Apr 2020 11:12:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 101DC89D46
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Apr 2020 11:12:07 +0000 (UTC)
IronPort-SDR: ltoXoQNj98l7VAVSGZJt6jg9oYZ0b99BmAgHcutWtdqdI4dLaneC80UNajj9wuYXTwXuRi5FMV
 a6yLHpwicvGg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2020 04:12:07 -0700
IronPort-SDR: fcDECaqPRwsYDeB5Uy/vshWov3hxFEtJgOgUSBwXS5F0gr5Aa9T+8vo0cnbozt06cY3wbxF8hu
 VexE8AQrL71w==
X-IronPort-AV: E=Sophos;i="5.73,307,1583222400"; d="scan'208";a="430283577"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2020 04:12:06 -0700
Date: Thu, 23 Apr 2020 14:11:41 +0300
From: Imre Deak <imre.deak@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200423111141.GB9592@ideak-desk.fi.intel.com>
References: <20200422194002.206744-1-jose.souza@intel.com>
 <20200422194002.206744-2-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200422194002.206744-2-jose.souza@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/hdmi: Add missing sequence
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

On Wed, Apr 22, 2020 at 12:40:02PM -0700, Jos=E9 Roberto de Souza wrote:
> It was missing the step 7.b - "If not type-C static connection,
> configure PORT_CL_DW10 Static Power Down to power up all lanes of the
> DDI".
> =

> BSpec: 53339
> BSpec: 49191
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 255dc796ede5..d1c8a17fc8ea 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3312,6 +3312,7 @@ static void intel_ddi_pre_enable_hdmi(struct intel_=
atomic_state *state,
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
> +	enum phy phy =3D intel_port_to_phy(dev_priv, encoder->port);
>  	int level =3D intel_ddi_hdmi_level(encoder);
>  =

>  	intel_dp_dual_mode_set_tmds_output(&dig_port->hdmi, true);
> @@ -3339,6 +3340,15 @@ static void intel_ddi_pre_enable_hdmi(struct intel=
_atomic_state *state,
>  =

>  	intel_ddi_enable_pipe_clock(encoder, crtc_state);
>  =

> +	if (intel_phy_is_combo(dev_priv, phy)) {
> +		bool lane_reversal =3D
> +			dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
> +
> +		intel_combo_phy_power_up_lanes(dev_priv, phy, false,
> +					       crtc_state->lane_count,
> +					       lane_reversal);
> +	}
> +

I suppose there isn't a problem to call this here, but the spec requires
us to do it after enabling the pipe (vs. the pipe clock) in
intel_enable_ddi_hdmi(). I'd follow the spec, until it states that
calling it earlier is ok; I found similar notes for the port enabling
steps elsewhere.

>  	dig_port->set_infoframes(encoder, crtc_state->has_infoframe, crtc_state,
>  				 conn_state);
>  }
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
