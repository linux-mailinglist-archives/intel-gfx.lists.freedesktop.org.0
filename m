Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 409598C9BC6
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 13:02:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA3E210E187;
	Mon, 20 May 2024 11:02:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WNjXC0mU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47A2510E585
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2024 11:02:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716202961; x=1747738961;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=2sL2KVm27uBQj/otdx2Y4aVqWUq8XBGdkr4X1A+9bUI=;
 b=WNjXC0mUNJQTgtIYX8ciOgtR7Vc092L+xTdjQLBdZPbzRo2MgnNhFb94
 T0/IcUMIjq1IC3WtEvyONBFFn5fgABwlzfy/FOqVVWwUfVT5b3vjgLB9V
 Qh+9lJAw2GkIWQUa53ft1aaXeT/F34NHQu3bTM99LqLbM3ZJOcEI7zVmS
 CgRLNfPV/LXE0nIUjir7adn57SLB+7pDoM2BK6pGboyzjFhD8DxsvUylR
 hAcBikoFDVPQaiAljeFHYhDAWEhKl1NAMepHvvQZxAUWv+n4HYwOYwZyF
 6Jnevma/qho5OxPvPSlKcyMQBrUeBWJk4n4dwEiYtNRgBubTM0CwHYrXa Q==;
X-CSE-ConnectionGUID: frjGqBgdSRqpqplesfrOSg==
X-CSE-MsgGUID: 5D54e0J5Ss2ZES/A0sS51g==
X-IronPort-AV: E=McAfee;i="6600,9927,11077"; a="22931250"
X-IronPort-AV: E=Sophos;i="6.08,174,1712646000"; d="scan'208";a="22931250"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 04:02:36 -0700
X-CSE-ConnectionGUID: BV/EdRqvT3+O4ZndpQiIrw==
X-CSE-MsgGUID: rSUya02cSW6oBcOYS1mVLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,174,1712646000"; d="scan'208";a="37318924"
Received: from unknown (HELO localhost) ([10.245.246.99])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 04:02:34 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 7/7] drm/i915: Remove bogus MST check in
 intel_dp_has_audio()
In-Reply-To: <20240517145356.26103-8-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240517145356.26103-1-ville.syrjala@linux.intel.com>
 <20240517145356.26103-8-ville.syrjala@linux.intel.com>
Date: Mon, 20 May 2024 14:02:30 +0300
Message-ID: <87cypgu4op.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Fri, 17 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> No idea what this MST checks is doing in intel_dp_has_audio().
> Looks completely pointless, so get rid of it.

2e775f2d41ef ("drm/i915/display: update intel_dp_has_audio to support MST")
6297ee90f682 ("drm/i915/display: configure SDP split for DP-MST")

The division of changes here is not ideal, but I presume the goal was to
not do functional changes compared to intel_dp_mst_has_audio(). Which
may or may not be a good reason...

BR,
Jani.

>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index af298d5017d9..4a486bb6d48c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2806,7 +2806,6 @@ intel_dp_drrs_compute_config(struct intel_connector=
 *connector,
>  }
>=20=20
>  static bool intel_dp_has_audio(struct intel_encoder *encoder,
> -			       struct intel_crtc_state *crtc_state,
>  			       const struct drm_connector_state *conn_state)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> @@ -2815,8 +2814,7 @@ static bool intel_dp_has_audio(struct intel_encoder=
 *encoder,
>  	struct intel_connector *connector =3D
>  		to_intel_connector(conn_state->connector);
>=20=20
> -	if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST) &&
> -	    !intel_dp_port_has_audio(i915, encoder->port))
> +	if (!intel_dp_port_has_audio(i915, encoder->port))
>  		return false;
>=20=20
>  	if (intel_conn_state->force_audio =3D=3D HDMI_AUDIO_AUTO)
> @@ -2875,7 +2873,7 @@ intel_dp_audio_compute_config(struct intel_encoder =
*encoder,
>  			      struct drm_connector_state *conn_state)
>  {
>  	pipe_config->has_audio =3D
> -		intel_dp_has_audio(encoder, pipe_config, conn_state) &&
> +		intel_dp_has_audio(encoder, conn_state) &&
>  		intel_audio_compute_config(encoder, pipe_config, conn_state);
>=20=20
>  	pipe_config->sdp_split_enable =3D pipe_config->has_audio &&

--=20
Jani Nikula, Intel
