Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BD625528446
	for <lists+intel-gfx@lfdr.de>; Mon, 16 May 2022 14:36:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F055A10E3AD;
	Mon, 16 May 2022 12:36:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9041010E2D5
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 May 2022 12:36:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652704566; x=1684240566;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=UglE8CrcBiJK3EoNw4fGgJTYwi9YpPJq9KUyd71NdQs=;
 b=DL5e0FPziXcUn7wTIVDcnZHj/Uqb9zQoN/Havm+YxNJdvkOCSvrxjCYG
 YAx4WE1TyHW3pN1IOsa5G6kZIpI3xAumq7O4imibX1CP/sIg4aZ3feZKP
 rPVPnnw6xNRYuCbkuaahhuTQrNRW8TJKxkujkKkD6xgT6HEEal6Zgpk/d
 v0iFXmPOt+gurLd70/MWYMsUgpixQlADYW8s0aJhCqCZMpUFsQF6yStXT
 xvE85/EIsOJwqs3C3kCxQVsYFAa+1IX1v5abKC558/VwGuWUx8OfLHfsV
 EO8ag8Wmo9KSagEnVvo4hZequKFx1p1kTd+bfbmtFJshU8ISebWYQMtYk A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10348"; a="251331682"
X-IronPort-AV: E=Sophos;i="5.91,229,1647327600"; d="scan'208";a="251331682"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2022 05:36:06 -0700
X-IronPort-AV: E=Sophos;i="5.91,229,1647327600"; d="scan'208";a="568295949"
Received: from akuriata-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.145.127])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2022 05:36:04 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220503182242.18797-7-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
 <20220503182242.18797-7-ville.syrjala@linux.intel.com>
Date: Mon, 16 May 2022 15:36:01 +0300
Message-ID: <87y1z1fydq.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 06/26] drm/i915: Extract
 PIPE_CONF_CHECK_RECT()
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

On Tue, 03 May 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Deduplicate the drm_rect comparisons.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index e38d93beafdd..1093665122a4 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -6088,6 +6088,13 @@ intel_pipe_config_compare(const struct intel_crtc_=
state *current_config,
>  	PIPE_CONF_CHECK_I(name.crtc_vsync_end); \
>  } while (0)
>=20=20
> +#define PIPE_CONF_CHECK_RECT(name) do { \
> +	PIPE_CONF_CHECK_I(name.x1); \
> +	PIPE_CONF_CHECK_I(name.x2); \
> +	PIPE_CONF_CHECK_I(name.y1); \
> +	PIPE_CONF_CHECK_I(name.y2); \
> +} while (0)
> +
>  /* This is required for BDW+ where there is only one set of registers for
>   * switching between high and low RR.
>   * This macro can be used whenever a comparison has to be made between o=
ne
> @@ -6250,18 +6257,10 @@ intel_pipe_config_compare(const struct intel_crtc=
_state *current_config,
>  	PIPE_CONF_CHECK_BOOL(pch_pfit.force_thru);
>=20=20
>  	if (!fastset) {
> -		PIPE_CONF_CHECK_I(pipe_src.x1);
> -		PIPE_CONF_CHECK_I(pipe_src.y1);
> -		PIPE_CONF_CHECK_I(pipe_src.x2);
> -		PIPE_CONF_CHECK_I(pipe_src.y2);
> +		PIPE_CONF_CHECK_RECT(pipe_src);
>=20=20
>  		PIPE_CONF_CHECK_BOOL(pch_pfit.enabled);
> -		if (current_config->pch_pfit.enabled) {

Dropping the if is not what it says on the box. I guess it should be
fine though since we only populate the values if pfit is enabled
AFAICT. (Maybe this is what we should do in general to ensure we're not
reading stuff to state when some feature isn't enabled?)

With the commit message amended,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> -			PIPE_CONF_CHECK_I(pch_pfit.dst.x1);
> -			PIPE_CONF_CHECK_I(pch_pfit.dst.y1);
> -			PIPE_CONF_CHECK_I(pch_pfit.dst.x2);
> -			PIPE_CONF_CHECK_I(pch_pfit.dst.y2);
> -		}
> +		PIPE_CONF_CHECK_RECT(pch_pfit.dst);
>=20=20
>  		PIPE_CONF_CHECK_I(scaler_state.scaler_id);
>  		PIPE_CONF_CHECK_CLOCK_FUZZY(pixel_rate);
> @@ -6383,6 +6382,7 @@ intel_pipe_config_compare(const struct intel_crtc_s=
tate *current_config,
>  #undef PIPE_CONF_CHECK_CLOCK_FUZZY
>  #undef PIPE_CONF_CHECK_COLOR_LUT
>  #undef PIPE_CONF_CHECK_TIMINGS
> +#undef PIPE_CONF_CHECK_RECT
>  #undef PIPE_CONF_QUIRK
>=20=20
>  	return ret;

--=20
Jani Nikula, Intel Open Source Graphics Center
