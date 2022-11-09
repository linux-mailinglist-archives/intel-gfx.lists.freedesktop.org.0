Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27532622EF8
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Nov 2022 16:24:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A78710E5E5;
	Wed,  9 Nov 2022 15:24:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A169F10E5E5
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Nov 2022 15:24:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668007485; x=1699543485;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=dm26CK0uFTZHIrzax2/9NsiPo/T2ePbnHApemE9YY7Y=;
 b=HUujROa3PYLZRlJUGAWASD+PZ+YjUvCtIoKcjuJfEubOJIO9WJLAdbtj
 lGnURNtQm0n4SBzimfOPafiaJfBgl4wC7uOQ5p359DSBpmO0mGMffGq7f
 sliKeb8o/7xBAkCI40CJEEXDuKzVKAcMAAj8t5nKLWT21xKuhtvd10+fA
 syjIb40vV7EaIXUQkbkL21iEtjNyrMsTO7iWidU4kcW41RNZ/B2u+DMoi
 9QD1wXcfjjoH5qM0BCsWV0LIaDgkWXsT2F48Bu8Ysais5y+DgZcrBORwa
 61Gwiu4Pl8AMlw0q9H2x0qc4dfBJi/1EANEqwuxlGwzDPFCQ4wQ1G0Bfh Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="373149967"
X-IronPort-AV: E=Sophos;i="5.96,151,1665471600"; d="scan'208";a="373149967"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 07:24:34 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="636777295"
X-IronPort-AV: E=Sophos;i="5.96,151,1665471600"; d="scan'208";a="636777295"
Received: from skorobko-mobl2.ccr.corp.intel.com (HELO localhost)
 ([10.252.15.56])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 07:24:33 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221109111649.23062-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221109111649.23062-1-ville.syrjala@linux.intel.com>
 <20221109111649.23062-4-ville.syrjala@linux.intel.com>
Date: Wed, 09 Nov 2022 17:24:31 +0200
Message-ID: <87zgd05exc.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 3/6] drm/i915: Generalize the PPS
 vlv_pipe_check() stuff
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

On Wed, 09 Nov 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Restate the vlv_pipe_check() stuff in terms of PPS index
> (rather than pipe, which it is on VLV/CHV) so that we can
> reuse this same mechanim on other platforms as well.
>
> Cc: Animesh Manna <animesh.manna@intel.com>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_pps.c | 27 ++++++++++--------------
>  1 file changed, 11 insertions(+), 16 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i=
915/display/intel_pps.c
> index 22f5e08d396b..84265096f751 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -233,31 +233,26 @@ bxt_power_sequencer_idx(struct intel_dp *intel_dp)
>  	return backlight_controller;
>  }
>=20=20
> -typedef bool (*vlv_pipe_check)(struct drm_i915_private *dev_priv,
> -			       enum pipe pipe);
> +typedef bool (*pps_check)(struct drm_i915_private *dev_priv, int pps_idx=
);
>=20=20
> -static bool vlv_pipe_has_pp_on(struct drm_i915_private *dev_priv,
> -			       enum pipe pipe)
> +static bool pps_has_pp_on(struct drm_i915_private *dev_priv, int pps_idx)
>  {
> -	return intel_de_read(dev_priv, PP_STATUS(pipe)) & PP_ON;
> +	return intel_de_read(dev_priv, PP_STATUS(pps_idx)) & PP_ON;
>  }
>=20=20
> -static bool vlv_pipe_has_vdd_on(struct drm_i915_private *dev_priv,
> -				enum pipe pipe)
> +static bool pps_has_vdd_on(struct drm_i915_private *dev_priv, int pps_id=
x)
>  {
> -	return intel_de_read(dev_priv, PP_CONTROL(pipe)) & EDP_FORCE_VDD;
> +	return intel_de_read(dev_priv, PP_CONTROL(pps_idx)) & EDP_FORCE_VDD;
>  }
>=20=20
> -static bool vlv_pipe_any(struct drm_i915_private *dev_priv,
> -			 enum pipe pipe)
> +static bool pps_any(struct drm_i915_private *dev_priv, int pps_idx)
>  {
>  	return true;
>  }
>=20=20
>  static enum pipe
>  vlv_initial_pps_pipe(struct drm_i915_private *dev_priv,
> -		     enum port port,
> -		     vlv_pipe_check pipe_check)
> +		     enum port port, pps_check check)
>  {
>  	enum pipe pipe;
>=20=20
> @@ -268,7 +263,7 @@ vlv_initial_pps_pipe(struct drm_i915_private *dev_pri=
v,
>  		if (port_sel !=3D PANEL_PORT_SELECT_VLV(port))
>  			continue;
>=20=20
> -		if (!pipe_check(dev_priv, pipe))
> +		if (!check(dev_priv, pipe))
>  			continue;
>=20=20
>  		return pipe;
> @@ -289,15 +284,15 @@ vlv_initial_power_sequencer_setup(struct intel_dp *=
intel_dp)
>  	/* try to find a pipe with this port selected */
>  	/* first pick one where the panel is on */
>  	intel_dp->pps.pps_pipe =3D vlv_initial_pps_pipe(dev_priv, port,
> -						      vlv_pipe_has_pp_on);
> +						      pps_has_pp_on);
>  	/* didn't find one? pick one where vdd is on */
>  	if (intel_dp->pps.pps_pipe =3D=3D INVALID_PIPE)
>  		intel_dp->pps.pps_pipe =3D vlv_initial_pps_pipe(dev_priv, port,
> -							      vlv_pipe_has_vdd_on);
> +							      pps_has_vdd_on);
>  	/* didn't find one? pick one with just the correct port */
>  	if (intel_dp->pps.pps_pipe =3D=3D INVALID_PIPE)
>  		intel_dp->pps.pps_pipe =3D vlv_initial_pps_pipe(dev_priv, port,
> -							      vlv_pipe_any);
> +							      pps_any);
>=20=20
>  	/* didn't find one? just let vlv_power_sequencer_pipe() pick one when n=
eeded */
>  	if (intel_dp->pps.pps_pipe =3D=3D INVALID_PIPE) {

--=20
Jani Nikula, Intel Open Source Graphics Center
