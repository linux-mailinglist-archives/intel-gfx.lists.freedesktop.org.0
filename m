Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DCB8474976B
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jul 2023 10:24:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6890C10E480;
	Thu,  6 Jul 2023 08:24:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 935CE10E472
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jul 2023 08:24:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688631846; x=1720167846;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=73MzatCyMWOJGM+1dhymeNiKq/QHlZ33Nk4+R5WQvgg=;
 b=Xqa4EQpT2NaOhyjt6xgr/WGGz5PYXPcU5dsa9raRak7hShTlNeQTHN4p
 6AU3gfO3nKJNsvWtU1zXg13CWy26wmsRfUd0v2OeVfIrNgXVF+qNdXrXp
 ADBF2ViCXFZZ9xp0Tcw+QHf1h+oYvdwnWQkQTQBWoPFb+QJLmSw3lMqZY
 5axbhbMeitG/qUhsMaHDK85++53iXvmcvY6qp2dgMDcMnxiJXYQg3tEVp
 MXyIU5i3zzDibxC5NW1gNmjEttt2ZRUTcKZdqTXIXBj+cUtH3Elrmnt1I
 JHAy0yDEHRjjY7B+64VrM7U030hl1OD612h1OR9MXzunvbjC4wYsKvfd+ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="367028230"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="367028230"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2023 01:24:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="789467951"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="789467951"
Received: from jmvuilla-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.41.105])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2023 01:24:04 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230705202122.17915-9-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230705202122.17915-1-ville.syrjala@linux.intel.com>
 <20230705202122.17915-9-ville.syrjala@linux.intel.com>
Date: Thu, 06 Jul 2023 11:24:02 +0300
Message-ID: <874jmhzbvh.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 08/13] drm/i915/sdvo: Nuke attached_output
 tracking
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 05 Jul 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Instead of operating on the output the user specified (via the
> connector) the current code tends to operate on whichever outputs
> it has detected as attached. That is not how the kms uapi is supposed
> to work. So simply get rid of attached_outputs and instead directly
> operate on the output the user has specified.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Acked-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_sdvo.c | 31 ++++++++++++-----------
>  1 file changed, 16 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/=
i915/display/intel_sdvo.c
> index fcf3a95393d9..29762716a067 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -103,12 +103,6 @@ struct intel_sdvo {
>  	/* Pixel clock limitations reported by the SDVO device, in kHz */
>  	int pixel_clock_min, pixel_clock_max;
>=20=20
> -	/*
> -	* For multiple function SDVO device,
> -	* this is for current attached outputs.
> -	*/
> -	u16 attached_output;
> -
>  	/*
>  	 * Hotplug activation bits for this device
>  	 */
> @@ -1223,12 +1217,13 @@ static bool intel_sdvo_set_tv_format(struct intel=
_sdvo *intel_sdvo,
>=20=20
>  static bool
>  intel_sdvo_set_output_timings_from_mode(struct intel_sdvo *intel_sdvo,
> +					struct intel_sdvo_connector *intel_sdvo_connector,
>  					const struct drm_display_mode *mode)
>  {
>  	struct intel_sdvo_dtd output_dtd;
>=20=20
>  	if (!intel_sdvo_set_target_output(intel_sdvo,
> -					  intel_sdvo->attached_output))
> +					  intel_sdvo_connector->output_flag))
>  		return false;
>=20=20
>  	intel_sdvo_get_dtd_from_mode(&output_dtd, mode);
> @@ -1369,7 +1364,9 @@ static int intel_sdvo_compute_config(struct intel_e=
ncoder *encoder,
>  	 * the sequence to do it. Oh well.
>  	 */
>  	if (IS_TV(intel_sdvo_connector)) {
> -		if (!intel_sdvo_set_output_timings_from_mode(intel_sdvo, mode))
> +		if (!intel_sdvo_set_output_timings_from_mode(intel_sdvo,
> +							     intel_sdvo_connector,
> +							     mode))
>  			return -EINVAL;
>=20=20
>  		(void) intel_sdvo_get_preferred_input_mode(intel_sdvo,
> @@ -1387,7 +1384,9 @@ static int intel_sdvo_compute_config(struct intel_e=
ncoder *encoder,
>  		if (ret)
>  			return ret;
>=20=20
> -		if (!intel_sdvo_set_output_timings_from_mode(intel_sdvo, fixed_mode))
> +		if (!intel_sdvo_set_output_timings_from_mode(intel_sdvo,
> +							     intel_sdvo_connector,
> +							     fixed_mode))
>  			return -EINVAL;
>=20=20
>  		(void) intel_sdvo_get_preferred_input_mode(intel_sdvo,
> @@ -1528,7 +1527,7 @@ static void intel_sdvo_pre_enable(struct intel_atom=
ic_state *state,
>  	 * channel on the motherboard.  In a two-input device, the first input
>  	 * will be SDVOB and the second SDVOC.
>  	 */
> -	in_out.in0 =3D intel_sdvo->attached_output;
> +	in_out.in0 =3D intel_sdvo_connector->output_flag;
>  	in_out.in1 =3D 0;
>=20=20
>  	intel_sdvo_set_value(intel_sdvo,
> @@ -1537,7 +1536,7 @@ static void intel_sdvo_pre_enable(struct intel_atom=
ic_state *state,
>=20=20
>  	/* Set the output timings to the screen */
>  	if (!intel_sdvo_set_target_output(intel_sdvo,
> -					  intel_sdvo->attached_output))
> +					  intel_sdvo_connector->output_flag))
>  		return;
>=20=20
>  	/* lvds has a special fixed output timing. */
> @@ -1874,6 +1873,8 @@ static void intel_enable_sdvo(struct intel_atomic_s=
tate *state,
>  	struct drm_device *dev =3D encoder->base.dev;
>  	struct drm_i915_private *dev_priv =3D to_i915(dev);
>  	struct intel_sdvo *intel_sdvo =3D to_sdvo(encoder);
> +	struct intel_sdvo_connector *intel_sdvo_connector =3D
> +		to_intel_sdvo_connector(conn_state->connector);
>  	struct intel_crtc *crtc =3D to_intel_crtc(pipe_config->uapi.crtc);
>  	u32 temp;
>  	bool input1, input2;
> @@ -1903,7 +1904,7 @@ static void intel_enable_sdvo(struct intel_atomic_s=
tate *state,
>  	if (0)
>  		intel_sdvo_set_encoder_power_state(intel_sdvo,
>  						   DRM_MODE_DPMS_ON);
> -	intel_sdvo_set_active_outputs(intel_sdvo, intel_sdvo->attached_output);
> +	intel_sdvo_set_active_outputs(intel_sdvo, intel_sdvo_connector->output_=
flag);
>=20=20
>  	if (pipe_config->has_audio)
>  		intel_sdvo_enable_audio(intel_sdvo, pipe_config, conn_state);
> @@ -2158,8 +2159,6 @@ intel_sdvo_detect(struct drm_connector *connector, =
bool force)
>  	if (response =3D=3D 0)
>  		return connector_status_disconnected;
>=20=20
> -	intel_sdvo->attached_output =3D response;
> -
>  	if ((intel_sdvo_connector->output_flag & response) =3D=3D 0)
>  		ret =3D connector_status_disconnected;
>  	else if (IS_TMDS(intel_sdvo_connector))
> @@ -2287,6 +2286,8 @@ static const struct drm_display_mode sdvo_tv_modes[=
] =3D {
>  static int intel_sdvo_get_tv_modes(struct drm_connector *connector)
>  {
>  	struct intel_sdvo *intel_sdvo =3D intel_attached_sdvo(to_intel_connecto=
r(connector));
> +	struct intel_sdvo_connector *intel_sdvo_connector =3D
> +		to_intel_sdvo_connector(connector);
>  	const struct drm_connector_state *conn_state =3D connector->state;
>  	struct intel_sdvo_sdtv_resolution_request tv_res;
>  	u32 reply =3D 0, format_map =3D 0;
> @@ -2304,7 +2305,7 @@ static int intel_sdvo_get_tv_modes(struct drm_conne=
ctor *connector)
>  	memcpy(&tv_res, &format_map,
>  	       min(sizeof(format_map), sizeof(struct intel_sdvo_sdtv_resolution=
_request)));
>=20=20
> -	if (!intel_sdvo_set_target_output(intel_sdvo, intel_sdvo->attached_outp=
ut))
> +	if (!intel_sdvo_set_target_output(intel_sdvo, intel_sdvo_connector->out=
put_flag))
>  		return 0;
>=20=20
>  	BUILD_BUG_ON(sizeof(tv_res) !=3D 3);

--=20
Jani Nikula, Intel Open Source Graphics Center
