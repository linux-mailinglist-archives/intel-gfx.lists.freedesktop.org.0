Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B6E7D379AE9
	for <lists+intel-gfx@lfdr.de>; Tue, 11 May 2021 01:48:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA2E16E975;
	Mon, 10 May 2021 23:48:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AE366E975
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 May 2021 23:48:00 +0000 (UTC)
IronPort-SDR: Fhntn/kEOTSqKnS4gH8LlHgh4GxEz/HV2o5C+OY9YaSA+5/m6ArpZCmlwycFd+RNETUI76o5M5
 yOcc08XxUmmQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9980"; a="186448057"
X-IronPort-AV: E=Sophos;i="5.82,288,1613462400"; d="scan'208";a="186448057"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2021 16:47:57 -0700
IronPort-SDR: NEtUEh3GJhUAPcjUbhGb2Dq6tUyGdPDsQlTytDyu6d1fN9aZ5vOx3oi582TRrOqeudfRLsbk1F
 NF3mORmrjyjg==
X-IronPort-AV: E=Sophos;i="5.82,288,1613462400"; d="scan'208";a="436367424"
Received: from invictus.jf.intel.com (HELO InViCtUs) ([10.165.21.205])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2021 16:47:57 -0700
Date: Mon, 10 May 2021 16:47:56 -0700
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20210510234756.GB31357@InViCtUs>
References: <20210418002126.87882-1-jose.souza@intel.com>
 <20210418002126.87882-2-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210418002126.87882-2-jose.souza@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915/display: Replace
 intel_psr_enabled() calls by intel_crtc_state check
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, Apr 17, 2021 at 05:21:23PM -0700, Jos=E9 Roberto de Souza wrote:
> All of this places don't need to intel_psr_enabled() that will lock
> psr mutex, check state and unlock.
> =

> Instead it can directly check PSR state in intel_crtc_state, the only
> place that was not possible was intel_read_dp_vsc_sdp() but since
> "drm/i915/display: Fill PSR state during hardware configuration read
> out" it is possible.
> =

Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 5ee953aaa00c..72bcc10cae4f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2861,7 +2861,6 @@ void intel_dp_set_infoframes(struct intel_encoder *=
encoder,
>  			     const struct drm_connector_state *conn_state)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> -	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
>  	i915_reg_t reg =3D HSW_TVIDEO_DIP_CTL(crtc_state->cpu_transcoder);
>  	u32 dip_enable =3D VIDEO_DIP_ENABLE_AVI_HSW | VIDEO_DIP_ENABLE_GCP_HSW |
>  			 VIDEO_DIP_ENABLE_VS_HSW | VIDEO_DIP_ENABLE_GMP_HSW |
> @@ -2870,7 +2869,7 @@ void intel_dp_set_infoframes(struct intel_encoder *=
encoder,
>  =

>  	/* TODO: Add DSC case (DIP_ENABLE_PPS) */
>  	/* When PSR is enabled, this routine doesn't disable VSC DIP */
> -	if (intel_psr_enabled(intel_dp))
> +	if (crtc_state->has_psr)
>  		val &=3D ~dip_enable;
>  	else
>  		val &=3D ~(dip_enable | VIDEO_DIP_ENABLE_VSC_HSW);
> @@ -2885,7 +2884,7 @@ void intel_dp_set_infoframes(struct intel_encoder *=
encoder,
>  	intel_de_posting_read(dev_priv, reg);
>  =

>  	/* When PSR is enabled, VSC SDP is handled by PSR routine */
> -	if (!intel_psr_enabled(intel_dp))
> +	if (!crtc_state->has_psr)
>  		intel_write_dp_sdp(encoder, crtc_state, DP_SDP_VSC);
>  =

>  	intel_write_dp_sdp(encoder, crtc_state, HDMI_PACKET_TYPE_GAMUT_METADATA=
);
> @@ -3012,14 +3011,13 @@ static void intel_read_dp_vsc_sdp(struct intel_en=
coder *encoder,
>  				  struct drm_dp_vsc_sdp *vsc)
>  {
>  	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
> -	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	unsigned int type =3D DP_SDP_VSC;
>  	struct dp_sdp sdp =3D {};
>  	int ret;
>  =

>  	/* When PSR is enabled, VSC SDP is handled by PSR routine */
> -	if (intel_psr_enabled(intel_dp))
> +	if (crtc_state->has_psr)
>  		return;
>  =

>  	if ((crtc_state->infoframes.enable &
> -- =

> 2.31.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
