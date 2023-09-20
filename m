Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83ED17A7739
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Sep 2023 11:23:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9148B10E472;
	Wed, 20 Sep 2023 09:23:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C458610E472
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Sep 2023 09:23:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695201818; x=1726737818;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=w/uEjDMOpH4C/hss0fRGQ5Ju+p1lHCJKN+ht942IuVE=;
 b=DXA8btG5FS//IuR5AyvwiTTUt+6mSfCUrj65Y+vAZsqLJqCAFPKcx0jI
 VjWGFTHTGjnI4j4knlUalzwknNemnINga/xeFbQXgp9v/k8R3/S+O1AbM
 kT/bbaQtey3iWdo/0LFz7gjCn6OgI2D5DSw6sL5xjm8CIuK7e5IaoDETx
 vgn528tSxyRIXvcX1hwPC1x+U+pFcgoHYVAZQGqPCK8bELE6GnCAV4oJa
 W9P27n5+8U2U50LeV0b5YmgP5oEwllbILdy2B1JM6TfWrxPcOxVFCCy1S
 5av8KiPVYJIA62iF3NdvIdGBjqcC7cAbrYV5NF2nTLeqHfXib/NhVOh12 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="384017141"
X-IronPort-AV: E=Sophos;i="6.02,161,1688454000"; d="scan'208";a="384017141"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 02:23:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="861908557"
X-IronPort-AV: E=Sophos;i="6.02,161,1688454000"; d="scan'208";a="861908557"
Received: from ptelkov-mobl2.ccr.corp.intel.com (HELO localhost)
 ([10.252.38.103])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 02:23:36 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230913150356.9477-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230913150356.9477-1-ville.syrjala@linux.intel.com>
Date: Wed, 20 Sep 2023 12:23:34 +0300
Message-ID: <87il85ryeh.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Check lane count when
 determining FEC support
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
Cc: Luca Coelho <luciano.coelho@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 13 Sep 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> ICL doesn't support FEC with a x1 DP link. Make sure
> we don't try to enable FEC in such cases.

The question is, should we rather require x2 link for FEC?

I suppose x1 link with DSC+FEC is an unlikely scenario with our current
link bandwidth policy, so probably not a big deal.

BR,
Jani.

>
> Requires a bit of reordering to make sure we've computed lane_count
> before checking it.
>
> Cc: Luca Coelho <luciano.coelho@intel.com>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 21 +++++++++++----------
>  1 file changed, 11 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 55ba6eeaa810..2cde8ac513bb 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1363,7 +1363,8 @@ static bool intel_dp_source_supports_fec(struct int=
el_dp *intel_dp,
>  	if (DISPLAY_VER(dev_priv) >=3D 12)
>  		return true;
>=20=20
> -	if (DISPLAY_VER(dev_priv) =3D=3D 11 && encoder->port !=3D PORT_A)
> +	if (DISPLAY_VER(dev_priv) =3D=3D 11 &&
> +	    encoder->port !=3D PORT_A && pipe_config->lane_count !=3D 1)
>  		return true;
>=20=20
>  	return false;
> @@ -2105,15 +2106,6 @@ int intel_dp_dsc_compute_config(struct intel_dp *i=
ntel_dp,
>  		&pipe_config->hw.adjusted_mode;
>  	int ret;
>=20=20
> -	pipe_config->fec_enable =3D !intel_dp_is_edp(intel_dp) &&
> -		intel_dp_supports_fec(intel_dp, pipe_config);
> -
> -	if (!intel_dp_supports_dsc(intel_dp, pipe_config))
> -		return -EINVAL;
> -
> -	if (!intel_dp_dsc_supports_format(intel_dp, pipe_config->output_format))
> -		return -EINVAL;
> -
>  	/*
>  	 * compute pipe bpp is set to false for DP MST DSC case
>  	 * and compressed_bpp is calculated same time once
> @@ -2134,6 +2126,15 @@ int intel_dp_dsc_compute_config(struct intel_dp *i=
ntel_dp,
>  		}
>  	}
>=20=20
> +	pipe_config->fec_enable =3D !intel_dp_is_edp(intel_dp) &&
> +		intel_dp_supports_fec(intel_dp, pipe_config);
> +
> +	if (!intel_dp_supports_dsc(intel_dp, pipe_config))
> +		return -EINVAL;
> +
> +	if (!intel_dp_dsc_supports_format(intel_dp, pipe_config->output_format))
> +		return -EINVAL;
> +
>  	/* Calculate Slice count */
>  	if (intel_dp_is_edp(intel_dp)) {
>  		pipe_config->dsc.slice_count =3D

--=20
Jani Nikula, Intel
