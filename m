Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAC3E60FAB6
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Oct 2022 16:45:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77B9F10E65B;
	Thu, 27 Oct 2022 14:45:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FA4110E00F
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Oct 2022 14:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666881908; x=1698417908;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=ZIW1Q+BwWa6XRB5E8wk/WVyTR8gAUwo1bhcEVxeLP20=;
 b=NVaSJndd+l7Tglz62PCjIAqBxs7Y5mePPEEaPlP+iTV2OFwbVbqoXhye
 Lim7wD1pTLTNkSOwEYqyXQSB2vLn1Y7J6YysasTbdISftz0ibOllidC6J
 d8rDqhMo6I0fugHvfRFmjKkyG9M5SKF+S1IQeDbbm5S3HgK0dBAkPEcXx
 Cp+Ty0SB97SE9x0qqR9KgXtFsbfby0JNtKMF9HZLVoLyWtzes44rXkv8G
 6MiTRtmqJVcOKK+sa2KUhLWd7Z4Uy9GEsllo5/UTtmE+Lgzg2djEzW/bD
 Tq7EM7QNfGQHpnhIdS+jEqvP8bhdLBUZfx+4WrmvEfYLuyhMAuD1nFrKZ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="308234035"
X-IronPort-AV: E=Sophos;i="5.95,217,1661842800"; d="scan'208";a="308234035"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2022 07:45:08 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="961647010"
X-IronPort-AV: E=Sophos;i="5.95,217,1661842800"; d="scan'208";a="961647010"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.147])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2022 07:45:07 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221026101134.20865-8-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221026101134.20865-1-ville.syrjala@linux.intel.com>
 <20221026101134.20865-8-ville.syrjala@linux.intel.com>
Date: Thu, 27 Oct 2022 17:45:02 +0300
Message-ID: <87bkpxcolt.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 7/8] drm/i915/sdvo: Reduce copy-pasta in
 output setup
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
> Avoid having to call the output init function for each
> output type separately. We can just call the right one
> based on the "class" of the output.
>
> Technically we could just walk the bits of the bitmask
> but that could change the order in which we initialize
> the outputs. To avoid any behavioural changes keep to
> the same explicit probe order as before.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_sdvo.c | 66 +++++++++++------------
>  1 file changed, 33 insertions(+), 33 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/=
i915/display/intel_sdvo.c
> index 4784c05a1b71..58d147cc7633 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -2922,11 +2922,38 @@ static u16 intel_sdvo_filter_output_flags(u16 fla=
gs)
>  	return flags;
>  }
>=20=20
> +static bool intel_sdvo_output_init(struct intel_sdvo *sdvo, u16 type)
> +{
> +	if (type & SDVO_TMDS_MASK)
> +		return intel_sdvo_dvi_init(sdvo, type);
> +	else if (type & SDVO_TV_MASK)
> +		return intel_sdvo_tv_init(sdvo, type);
> +	else if (type & SDVO_RGB_MASK)
> +		return intel_sdvo_analog_init(sdvo, type);
> +	else if (type & SDVO_LVDS_MASK)
> +		return intel_sdvo_lvds_init(sdvo, type);
> +	else
> +		return false;
> +}
> +
>  static bool
>  intel_sdvo_output_setup(struct intel_sdvo *intel_sdvo)
>  {
> +	static const u16 probe_order[] =3D {
> +		SDVO_OUTPUT_TMDS0,
> +		SDVO_OUTPUT_TMDS1,
> +		/* TV has no XXX1 function block */
> +		SDVO_OUTPUT_SVID0,
> +		SDVO_OUTPUT_CVBS0,
> +		SDVO_OUTPUT_YPRPB0,
> +		SDVO_OUTPUT_RGB0,
> +		SDVO_OUTPUT_RGB1,
> +		SDVO_OUTPUT_LVDS0,
> +		SDVO_OUTPUT_LVDS1,
> +	};
>  	struct drm_i915_private *i915 =3D to_i915(intel_sdvo->base.base.dev);
>  	u16 flags;
> +	int i;
>=20=20
>  	flags =3D intel_sdvo_filter_output_flags(intel_sdvo->caps.output_flags);
>=20=20
> @@ -2940,42 +2967,15 @@ intel_sdvo_output_setup(struct intel_sdvo *intel_=
sdvo)
>=20=20
>  	intel_sdvo_select_ddc_bus(i915, intel_sdvo);
>=20=20
> -	if (flags & SDVO_OUTPUT_TMDS0)
> -		if (!intel_sdvo_dvi_init(intel_sdvo, SDVO_OUTPUT_TMDS0))
> -			return false;
> -
> -	if (flags & SDVO_OUTPUT_TMDS1)
> -		if (!intel_sdvo_dvi_init(intel_sdvo, SDVO_OUTPUT_TMDS1))
> -			return false;
> -
> -	/* TV has no XXX1 function block */
> -	if (flags & SDVO_OUTPUT_SVID0)
> -		if (!intel_sdvo_tv_init(intel_sdvo, SDVO_OUTPUT_SVID0))
> -			return false;
> -
> -	if (flags & SDVO_OUTPUT_CVBS0)
> -		if (!intel_sdvo_tv_init(intel_sdvo, SDVO_OUTPUT_CVBS0))
> -			return false;
> +	for (i =3D 0; i < ARRAY_SIZE(probe_order); i++) {
> +		u16 type =3D flags & probe_order[i];
>=20=20
> -	if (flags & SDVO_OUTPUT_YPRPB0)
> -		if (!intel_sdvo_tv_init(intel_sdvo, SDVO_OUTPUT_YPRPB0))
> -			return false;
> -
> -	if (flags & SDVO_OUTPUT_RGB0)
> -		if (!intel_sdvo_analog_init(intel_sdvo, SDVO_OUTPUT_RGB0))
> -			return false;
> -
> -	if (flags & SDVO_OUTPUT_RGB1)
> -		if (!intel_sdvo_analog_init(intel_sdvo, SDVO_OUTPUT_RGB1))
> -			return false;
> -
> -	if (flags & SDVO_OUTPUT_LVDS0)
> -		if (!intel_sdvo_lvds_init(intel_sdvo, SDVO_OUTPUT_LVDS0))
> -			return false;
> +		if (!type)
> +			continue;
>=20=20
> -	if (flags & SDVO_OUTPUT_LVDS1)
> -		if (!intel_sdvo_lvds_init(intel_sdvo, SDVO_OUTPUT_LVDS1))
> +		if (!intel_sdvo_output_init(intel_sdvo, type))
>  			return false;
> +	}
>=20=20
>  	intel_sdvo->base.pipe_mask =3D ~0;

--=20
Jani Nikula, Intel Open Source Graphics Center
