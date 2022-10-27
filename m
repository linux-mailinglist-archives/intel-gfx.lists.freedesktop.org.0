Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C94C060FA8D
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Oct 2022 16:39:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE1E310E655;
	Thu, 27 Oct 2022 14:39:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12E9110E653
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Oct 2022 14:39:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666881540; x=1698417540;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=AOC0t9hwrLE3isOv2vvF8fEDowjqgycsSWXtks8GyYs=;
 b=VDqT9X8FZyQTNMMxK/Dy9xbHeiSr7Ahn+1Cg42K4uMwKv4fhGw7YbEH/
 A1wPb8rL522VlAqtfyZcTFofUdGBX5xQjUPaqCiEPmpg6Ooi/0RqlJLv+
 ORIFgizPrMwyaulL5Rbyp5Nrn2zwpCeP25F/r/pu5W9bdnEjJuYeec4uN
 IimVIoFvZA9bVSKZdTMrCz0zYWqtXTgaZhJH3bsyuV/DuEiojdjIOd0Jp
 qXeJKXronIX4pauUhSOLIUkYntYloCyZttZuXC4wnsp1fBPFkTDb/5A81
 PfETSmCIracLImW5VQigvCqHWqZtsRH3gh08AcihKnYSAovLWHZ6If9FB A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="291542188"
X-IronPort-AV: E=Sophos;i="5.95,217,1661842800"; d="scan'208";a="291542188"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2022 07:38:59 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="701366252"
X-IronPort-AV: E=Sophos;i="5.95,217,1661842800"; d="scan'208";a="701366252"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.147])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2022 07:38:58 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221026101134.20865-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221026101134.20865-1-ville.syrjala@linux.intel.com>
 <20221026101134.20865-5-ville.syrjala@linux.intel.com>
Date: Thu, 27 Oct 2022 17:38:53 +0300
Message-ID: <87k04lcow2.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 4/8] drm/i915/sdvo: Simplify output setup
 debugs
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

On Wed, 26 Oct 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Get rid of this funny byte based dumping of invalid output
> flags and just dump it as a single hex numbers. Also do that
> early since all the rest is going to get skipped anyway of
> the thing is zero.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_sdvo.c | 25 ++++++++++-------------
>  1 file changed, 11 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/=
i915/display/intel_sdvo.c
> index 1eaaa7ec580e..d432f70001b7 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -199,7 +199,7 @@ to_intel_sdvo_connector(struct drm_connector *connect=
or)
>  	container_of((conn_state), struct intel_sdvo_connector_state, base.base)
>=20=20
>  static bool
> -intel_sdvo_output_setup(struct intel_sdvo *intel_sdvo, u16 flags);
> +intel_sdvo_output_setup(struct intel_sdvo *intel_sdvo);
>  static bool
>  intel_sdvo_tv_create_property(struct intel_sdvo *intel_sdvo,
>  			      struct intel_sdvo_connector *intel_sdvo_connector,
> @@ -2937,11 +2937,18 @@ static u16 intel_sdvo_filter_output_flags(u16 fla=
gs)
>  }
>=20=20
>  static bool
> -intel_sdvo_output_setup(struct intel_sdvo *intel_sdvo, u16 flags)
> +intel_sdvo_output_setup(struct intel_sdvo *intel_sdvo)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(intel_sdvo->base.base.dev);
> +	u16 flags;
>=20=20
> -	flags =3D intel_sdvo_filter_output_flags(flags);
> +	flags =3D intel_sdvo_filter_output_flags(intel_sdvo->caps.output_flags);
> +
> +	if (flags =3D=3D 0) {
> +		DRM_DEBUG_KMS("%s: Unknown SDVO output type (0x%04x)\n",
> +			      SDVO_NAME(intel_sdvo), intel_sdvo->caps.output_flags);
> +		return false;
> +	}
>=20=20
>  	intel_sdvo->controlled_output =3D flags;
>=20=20
> @@ -2984,15 +2991,6 @@ intel_sdvo_output_setup(struct intel_sdvo *intel_s=
dvo, u16 flags)
>  		if (!intel_sdvo_lvds_init(intel_sdvo, 1))
>  			return false;
>=20=20
> -	if (flags =3D=3D 0) {
> -		unsigned char bytes[2];
> -
> -		memcpy(bytes, &intel_sdvo->caps.output_flags, 2);
> -		DRM_DEBUG_KMS("%s: Unknown SDVO output type (0x%02x%02x)\n",
> -			      SDVO_NAME(intel_sdvo),
> -			      bytes[0], bytes[1]);
> -		return false;
> -	}
>  	intel_sdvo->base.pipe_mask =3D ~0;
>=20=20
>  	return true;
> @@ -3368,8 +3366,7 @@ bool intel_sdvo_init(struct drm_i915_private *dev_p=
riv,
>  	intel_sdvo->colorimetry_cap =3D
>  		intel_sdvo_get_colorimetry_cap(intel_sdvo);
>=20=20
> -	if (intel_sdvo_output_setup(intel_sdvo,
> -				    intel_sdvo->caps.output_flags) !=3D true) {
> +	if (!intel_sdvo_output_setup(intel_sdvo)) {
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "SDVO output failed to setup on %s\n",
>  			    SDVO_NAME(intel_sdvo));

--=20
Jani Nikula, Intel Open Source Graphics Center
