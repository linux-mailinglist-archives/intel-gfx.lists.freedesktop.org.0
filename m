Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C9E2653B631
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jun 2022 11:38:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7500112BA8;
	Thu,  2 Jun 2022 09:38:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BB45112BB0
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jun 2022 09:38:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654162734; x=1685698734;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=29wYg+6IlJWgQEUrOAbcCGF/RMzyl6CkFGeQ4P6freo=;
 b=jACI8quA3xPyG5kuEa/1l4xOyNRyAFtd99TepA5VfXX09wD9oxlMGqju
 FTvZcGuqzF1QYdbopUBMHHXRI+34ngr8KMW8XGmJY4VujciCZ7XnyAFov
 W1AwMB1mjAVaHnuom6T2BGQv/Kqgt0IQvyJrwXXZyNY0MoXnc6tzDcFKB
 PKcisVfIXWun6q3yLCHlYMLzCraVPLOGAyKFwudOT1nxgM1UZedwX/QJk
 7WBPZJne4VA0hCGmEQYj2cbdHITLeMmEDDusthrqE26xVfHVqs6jC35EK
 7FdI7fNeWRKkNbamdo0fgBHI9yGxAb58U5QY/6QCHAkYkLNjNj9t5nkuf Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10365"; a="275621762"
X-IronPort-AV: E=Sophos;i="5.91,270,1647327600"; d="scan'208";a="275621762"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2022 02:38:52 -0700
X-IronPort-AV: E=Sophos;i="5.91,270,1647327600"; d="scan'208";a="606756740"
Received: from fbackhou-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.46.4])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2022 02:38:51 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220601151907.18725-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220601151907.18725-1-ville.syrjala@linux.intel.com>
 <20220601151907.18725-3-ville.syrjala@linux.intel.com>
Date: Thu, 02 Jun 2022 12:38:48 +0300
Message-ID: <87pmjrpfpz.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: Update eDP fast link training
 link rate parsing
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

On Wed, 01 Jun 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> We're not parsing the 5.4 Gbps value for the old eDP fast link
> training link rate, nor are we parsing the new fast link training
> link rate field. Remedy both.
>
> Note that we're not even using this information for anything
> currently, so should perhaps just nuke it all unless someone
> is planning on implementing fast link training finally...
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c     | 32 ++++++++++++-------
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h |  1 +
>  2 files changed, 21 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index c42b9e7d0dce..d701854dc429 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -1367,18 +1367,26 @@ parse_edp(struct drm_i915_private *i915,
>=20=20
>  	panel->vbt.edp.pps =3D *edp_pps;
>=20=20
> -	switch (edp_link_params->rate) {
> -	case EDP_RATE_1_62:
> -		panel->vbt.edp.rate =3D DP_LINK_BW_1_62;
> -		break;
> -	case EDP_RATE_2_7:
> -		panel->vbt.edp.rate =3D DP_LINK_BW_2_7;
> -		break;
> -	default:
> -		drm_dbg_kms(&i915->drm,
> -			    "VBT has unknown eDP link rate value %u\n",
> -			     edp_link_params->rate);
> -		break;
> +	if (i915->vbt.version >=3D 224) {
> +		panel->vbt.edp.rate =3D
> +			edp->edp_fast_link_training_rate[panel_type] * 2;

So this is in units of 200 kHz.

> +	} else {
> +		switch (edp_link_params->rate) {
> +		case EDP_RATE_1_62:
> +			panel->vbt.edp.rate =3D DP_LINK_BW_1_62;

However the DP_LINK_BW_* stuff are the values to be written to DPCD. So
different things end up in panel->vbt.edp.rate depending on VBT
version. It's a mess. Should probably have the rate there and throw out
the DP_LINK_BW_* macros.

Otherwise, the logic seems fine.

BR,
Jani.

> +			break;
> +		case EDP_RATE_2_7:
> +			panel->vbt.edp.rate =3D DP_LINK_BW_2_7;
> +			break;
> +		case EDP_RATE_5_4:
> +			panel->vbt.edp.rate =3D DP_LINK_BW_5_4;
> +			break;
> +		default:
> +			drm_dbg_kms(&i915->drm,
> +				    "VBT has unknown eDP link rate value %u\n",
> +				    edp_link_params->rate);
> +			break;
> +		}
>  	}
>=20=20
>  	switch (edp_link_params->lanes) {
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/=
drm/i915/display/intel_vbt_defs.h
> index 14f1e1cc92c5..58aee0a040cf 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -638,6 +638,7 @@ struct bdb_sdvo_panel_dtds {
>  #define EDP_30BPP	2
>  #define EDP_RATE_1_62	0
>  #define EDP_RATE_2_7	1
> +#define EDP_RATE_5_4	2
>  #define EDP_LANE_1	0
>  #define EDP_LANE_2	1
>  #define EDP_LANE_4	3

--=20
Jani Nikula, Intel Open Source Graphics Center
