Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D50D368D1EB
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Feb 2023 09:59:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AD9010E0F5;
	Tue,  7 Feb 2023 08:59:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5329510E0F5
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Feb 2023 08:59:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675760381; x=1707296381;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=Mhr1M712RKqFAQzZ3eran9Q5URn95PBivVcfZ9t9EqQ=;
 b=ZP1zUEhKUmBAygKizzLN1BfYtQppiGzRCWco6rmaogNClS6RIW73WRYQ
 kLfpRoCfU8wJPV55aax5BLiKQm9A4EBDAV8+gorFHebYTm2sLKb+tC4Hv
 xsXdDXgwbZDnjmDW+lk3NqVM1L0KBe3yat6GEbLNS0MmVabxJG0LEtlJb
 8yDgKy/5GK7Dc51y1vo24VsHP/ZGBDcPNnCYEYUBtjdEracATikaRiJ/G
 CoZvcYDteuLU64iAMZO9xIz37Q2ujOqr+Mk7q1hWdtZ46M/t3pS/ApXCk
 2EslA/zmEhzV7TzrzGG9VSZnBRZQ3Htqp1NmMEZgjGB14Vcyldv0YQih3 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="328093773"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="328093773"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 00:59:40 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="912253918"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="912253918"
Received: from tronach-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.11])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 00:59:38 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230207064337.18697-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230207064337.18697-1-ville.syrjala@linux.intel.com>
 <20230207064337.18697-2-ville.syrjala@linux.intel.com>
Date: Tue, 07 Feb 2023 10:59:36 +0200
Message-ID: <877cwtzw93.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Fix VBT DSI DVO port handling
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

On Tue, 07 Feb 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Turns out modern (icl+) VBTs still declare their DSI ports
> as MIPI-A and MIPI-C despite the PHYs now being A and B.
> Remap appropriately to allow the panels declared as MIPI-C
> to work.
>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8016
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 33 ++++++++++++++++-------
>  1 file changed, 23 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index e6ca51232dcf..06a2d98d2277 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -2467,6 +2467,22 @@ static enum port dvo_port_to_port(struct drm_i915_=
private *i915,
>  					  dvo_port);
>  }
>=20=20
> +static enum port
> +dsi_dvo_port_to_port(struct drm_i915_private *i915, u8 dvo_port)
> +{
> +	switch (dvo_port) {
> +	case DVO_PORT_MIPIA:
> +		return PORT_A;

I think I would add:

	case DVO_PORT_MIPIB:
		if (DISPLAY_VER(i915) >=3D 11)
			return PORT_B;
		else
			return PORT_NONE;

just in case.

With that,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> +	case DVO_PORT_MIPIC:
> +		if (DISPLAY_VER(i915) >=3D 11)
> +			return PORT_B;
> +		else
> +			return PORT_C;
> +	default:
> +		return PORT_NONE;
> +	}
> +}
> +
>  static int parse_bdb_230_dp_max_link_rate(const int vbt_max_link_rate)
>  {
>  	switch (vbt_max_link_rate) {
> @@ -3442,19 +3458,16 @@ bool intel_bios_is_dsi_present(struct drm_i915_pr=
ivate *i915,
>=20=20
>  		dvo_port =3D child->dvo_port;
>=20=20
> -		if (dvo_port =3D=3D DVO_PORT_MIPIA ||
> -		    (dvo_port =3D=3D DVO_PORT_MIPIB && DISPLAY_VER(i915) >=3D 11) ||
> -		    (dvo_port =3D=3D DVO_PORT_MIPIC && DISPLAY_VER(i915) < 11)) {
> -			if (port)
> -				*port =3D dvo_port - DVO_PORT_MIPIA;
> -			return true;
> -		} else if (dvo_port =3D=3D DVO_PORT_MIPIB ||
> -			   dvo_port =3D=3D DVO_PORT_MIPIC ||
> -			   dvo_port =3D=3D DVO_PORT_MIPID) {
> +		if (dsi_dvo_port_to_port(i915, dvo_port) =3D=3D PORT_NONE) {

Yeah that monstrosity should've been a separate function a long time ago!

>  			drm_dbg_kms(&i915->drm,
>  				    "VBT has unsupported DSI port %c\n",
>  				    port_name(dvo_port - DVO_PORT_MIPIA));
> +			continue;
>  		}
> +
> +		if (port)
> +			*port =3D dsi_dvo_port_to_port(i915, dvo_port);
> +		return true;
>  	}
>=20=20
>  	return false;
> @@ -3539,7 +3552,7 @@ bool intel_bios_get_dsc_params(struct intel_encoder=
 *encoder,
>  		if (!(child->device_type & DEVICE_TYPE_MIPI_OUTPUT))
>  			continue;
>=20=20
> -		if (child->dvo_port - DVO_PORT_MIPIA =3D=3D encoder->port) {
> +		if (dsi_dvo_port_to_port(i915, child->dvo_port) =3D=3D encoder->port) {
>  			if (!devdata->dsc)
>  				return false;

--=20
Jani Nikula, Intel Open Source Graphics Center
