Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 209124F859C
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Apr 2022 19:11:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E63710EBE2;
	Thu,  7 Apr 2022 17:11:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A153F10EBE2
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Apr 2022 17:11:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649351494; x=1680887494;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=x5MiRT4r4MkJYyp/nCh9CcwTqg5w5HPc/htD48NhLtU=;
 b=c5/dwd0/dGqoLaux9TThI14GYmZK0GJ9q29aei8oGBNYxlovsRsCxhmO
 R8SjgaJp/Wx6J1ssI8NX97HGEdleO+3jECISXYFqkWxC0+pKyXEtKMrUV
 5mA6aQDmDnxHtxX7YP9cAZsM+4UatuxNWqNOkkV2ltiHC3Dn/1GtYOJca
 2F7ieDoqqNDDob2VAoCLmjeInoX8pVZJk/N9Ru+0AsnkvqUDBgRsdZSYf
 9d1i2rzCvd4AGWUo7qvGitraJkm1yQRh6egngOPjFNDt88OEJz44LOmnB
 48YVFv8ZzyIq6Mh+R9XnuE+HEsJ3Av1L6+U19ZHICKCSyoanwAd9Av5MS Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10310"; a="260221207"
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="260221207"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 10:11:33 -0700
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="571143243"
Received: from kgibala-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.142.48])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 10:11:32 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220405173410.11436-11-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220405173410.11436-1-ville.syrjala@linux.intel.com>
 <20220405173410.11436-11-ville.syrjala@linux.intel.com>
Date: Thu, 07 Apr 2022 20:11:29 +0300
Message-ID: <87ilrk4y4e.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 10/22] drm/i915/bios: Assume
 panel_type==0 if the VBT has bogus data
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

On Tue, 05 Apr 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Just assume panel_type=3D=3D0 always if the VBT gives us bogus data.
> We actually already do this everywhere else except in
> parse_panel_options() since we just leave i915->vbt.panel_type
> zeroed. This also seems to be what Windows does.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 11 ++++++-----
>  1 file changed, 6 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index 01e0b12e2dea..502d4c679198 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -613,13 +613,14 @@ parse_panel_options(struct drm_i915_private *i915)
>  	} else {
>  		if (lvds_options->panel_type > 0xf) {
>  			drm_dbg_kms(&i915->drm,
> -				    "Invalid VBT panel type 0x%x\n",
> +				    "Invalid VBT panel type 0x%x, assuming 0\n",
>  				    lvds_options->panel_type);
> -			return;
> +			panel_type =3D 0;
> +		} else {
> +			panel_type =3D lvds_options->panel_type;
> +			drm_dbg_kms(&i915->drm, "Panel type: %d (VBT)\n",
> +				    panel_type);
>  		}
> -		panel_type =3D lvds_options->panel_type;
> -		drm_dbg_kms(&i915->drm, "Panel type: %d (VBT)\n",
> -			    panel_type);
>  	}
>=20=20
>  	i915->vbt.panel_type =3D panel_type;

--=20
Jani Nikula, Intel Open Source Graphics Center
