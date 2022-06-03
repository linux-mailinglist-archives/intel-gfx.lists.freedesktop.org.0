Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A07453C6B4
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jun 2022 10:01:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 240AF10EE0D;
	Fri,  3 Jun 2022 08:01:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6798310EE0D
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jun 2022 08:01:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654243281; x=1685779281;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=X15NL/4wdI3Z4k+ODHcSKtSGjNUavh4LTtrqdsxEhfs=;
 b=eSpozI7VubLyzF3RVvMlue/YDp9aNTKV8dy/o5cmcQGE+uX0RLNHHqA+
 CWTP26M00e5K97vAlkYaHzFXhKvgjVij4plrOCZqMbsLDjPdFwsxE/nfh
 2wTJY4BuQZLIKYso6UtflZmPIy2V3/D/rmsAEtIBO6XqGbNTkm8e+SNno
 mp04gPcNWjnbbGDCEp73eMHTBr9jTPsA3nvBBextAwmr7Vaqiqp7DZ02O
 omyMDpXrO/fU0wuE0SNH6BPhO72HNL80y3uhMAD9ynZuPtu35kJcRndlW
 RXZbQevrVnNDWmQpGt77W0aI4gsf1J2n/Hi+c9+RA4JoD0ydLnMybFv5f A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10366"; a="273761429"
X-IronPort-AV: E=Sophos;i="5.91,274,1647327600"; d="scan'208";a="273761429"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2022 01:01:20 -0700
X-IronPort-AV: E=Sophos;i="5.91,274,1647327600"; d="scan'208";a="607284836"
Received: from richardf-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.55.27])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2022 01:01:19 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220602205649.11283-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220601151907.18725-3-ville.syrjala@linux.intel.com>
 <20220602205649.11283-1-ville.syrjala@linux.intel.com>
Date: Fri, 03 Jun 2022 11:01:16 +0300
Message-ID: <87sfomnpkj.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 2/3] drm/i915: Update eDP fast link
 training link rate parsing
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

On Thu, 02 Jun 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> We're not parsing the 5.4 Gbps value for the old eDP fast link
> training link rate, nor are we parsing the new fast link training
> link rate field. Remedy both.
>
> Also we'll now use the actual link rate instead of the DPCD BW
> register value.
>
> Note that we're not even using this information for anything
> currently, so should perhaps just nuke it all unless someone
> is planning on implementing fast link training finally...
>
> v2: Stop using the DPCD BW values (Jani)
>     *20 instead of *2 to get the rate in correct units (Jani)
>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bios.c     | 32 ++++++++++++-------
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h |  1 +
>  2 files changed, 21 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index c42b9e7d0dce..425e91d8cd2f 100644
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
> +			edp->edp_fast_link_training_rate[panel_type] * 20;
> +	} else {
> +		switch (edp_link_params->rate) {
> +		case EDP_RATE_1_62:
> +			panel->vbt.edp.rate =3D 162000;
> +			break;
> +		case EDP_RATE_2_7:
> +			panel->vbt.edp.rate =3D 270000;
> +			break;
> +		case EDP_RATE_5_4:
> +			panel->vbt.edp.rate =3D 540000;
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
