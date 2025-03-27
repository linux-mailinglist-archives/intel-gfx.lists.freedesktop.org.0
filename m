Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A936AA72AE3
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Mar 2025 08:56:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E21E10E864;
	Thu, 27 Mar 2025 07:56:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b/Sl61FY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3817A10E860;
 Thu, 27 Mar 2025 07:56:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743062206; x=1774598206;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=Hk5wwWr6FgprKIKYssGs22nrCcPa/+/aue4dME9Ptv0=;
 b=b/Sl61FYUQYXNeVY6gLsCF1F+ycmzChI6HtDXBFAEk/thAlEpk99uQj0
 +NeVfy38tcJcDA6VE4EwqPR3gw+6LZfIQ0Jt065V/uM/gYWL+qPwuUQcc
 o6bRrjPMO6lRNTni8bZjtuaJTCnTf8z9/tF83sZTeknx0qgt+k987cnuM
 RQS16KNriTkI5fPEDq+fizsxgjWTg7Qu31ZKC3WKD7zlPa4har+0l06kM
 Nci2hC7kDnmPdGDCp4WBCaacRHBvcFBwc7N7OmvnG7+kc/cTakpGXWdKP
 jNQZyU1206jUXOdw9m3sRTtm0lA2Yl0veUKfK84ti6ppkxqgWzRKokOqs g==;
X-CSE-ConnectionGUID: as5QYG8sQuW4+qx0l828Aw==
X-CSE-MsgGUID: vNiZ+XhHTmyBp0/McRRGyQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11385"; a="61774540"
X-IronPort-AV: E=Sophos;i="6.14,280,1736841600"; d="scan'208";a="61774540"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2025 00:56:45 -0700
X-CSE-ConnectionGUID: O/ldccTXSuaUgvwLzHaDVA==
X-CSE-MsgGUID: RqX7WhiKR321XIXlgoDNLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,279,1736841600"; d="scan'208";a="124827107"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.17])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2025 00:56:44 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 01/14] drm/i915: Drop the cached per-pipe min_cdclk[]
 from bw state
In-Reply-To: <20250326162544.3642-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250326162544.3642-1-ville.syrjala@linux.intel.com>
 <20250326162544.3642-2-ville.syrjala@linux.intel.com>
Date: Thu, 27 Mar 2025 09:56:41 +0200
Message-ID: <87a5967vpi.fsf@intel.com>
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

On Wed, 26 Mar 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> intel_bw_crtc_min_cdclk() only depends on the pipe data rate,
> which we already have stashed in bw_state->data_rate[]. So
> stashing the resulting min_cdclk[] as well is redundant. Get
> rid of it.

Yay, always a fan of removing intermediate state.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 17 ++++++++---------
>  drivers/gpu/drm/i915/display/intel_bw.h |  1 -
>  2 files changed, 8 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i9=
15/display/intel_bw.c
> index bb81efec08a0..15c2377193f7 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -825,14 +825,13 @@ static unsigned int intel_bw_crtc_data_rate(const s=
truct intel_crtc_state *crtc_
>  }
>=20=20
>  /* "Maximum Pipe Read Bandwidth" */
> -static int intel_bw_crtc_min_cdclk(const struct intel_crtc_state *crtc_s=
tate)
> +static int intel_bw_crtc_min_cdclk(struct intel_display *display,
> +				   unsigned int data_rate)
>  {
> -	struct intel_display *display =3D to_intel_display(crtc_state);
> -
>  	if (DISPLAY_VER(display) < 12)
>  		return 0;
>=20=20
> -	return DIV_ROUND_UP_ULL(mul_u32_u32(intel_bw_crtc_data_rate(crtc_state)=
, 10), 512);
> +	return DIV_ROUND_UP_ULL(mul_u32_u32(data_rate, 10), 512);
>  }
>=20=20
>  static unsigned int intel_bw_num_active_planes(struct intel_display *dis=
play,
> @@ -1170,7 +1169,8 @@ static bool intel_bw_state_changed(struct intel_dis=
play *display,
>  				return true;
>  		}
>=20=20
> -		if (old_bw_state->min_cdclk[pipe] !=3D new_bw_state->min_cdclk[pipe])
> +		if (intel_bw_crtc_min_cdclk(display, old_bw_state->data_rate[pipe]) !=
=3D
> +		    intel_bw_crtc_min_cdclk(display, new_bw_state->data_rate[pipe]))
>  			return true;
>  	}
>=20=20
> @@ -1271,7 +1271,9 @@ int intel_bw_min_cdclk(struct intel_display *displa=
y,
>  	min_cdclk =3D intel_bw_dbuf_min_cdclk(display, bw_state);
>=20=20
>  	for_each_pipe(display, pipe)
> -		min_cdclk =3D max(min_cdclk, bw_state->min_cdclk[pipe]);
> +		min_cdclk =3D max(min_cdclk,
> +				intel_bw_crtc_min_cdclk(display,
> +							bw_state->data_rate[pipe]));
>=20=20
>  	return min_cdclk;
>  }
> @@ -1299,9 +1301,6 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_sta=
te *state,
>  		old_bw_state =3D intel_atomic_get_old_bw_state(state);
>=20=20
>  		skl_crtc_calc_dbuf_bw(new_bw_state, crtc_state);
> -
> -		new_bw_state->min_cdclk[crtc->pipe] =3D
> -			intel_bw_crtc_min_cdclk(crtc_state);
>  	}
>=20=20
>  	if (!old_bw_state)
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i9=
15/display/intel_bw.h
> index c18126c83d2e..3e4397c85774 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.h
> +++ b/drivers/gpu/drm/i915/display/intel_bw.h
> @@ -54,7 +54,6 @@ struct intel_bw_state {
>  	 */
>  	bool force_check_qgv;
>=20=20
> -	int min_cdclk[I915_MAX_PIPES];
>  	unsigned int data_rate[I915_MAX_PIPES];
>  	u8 num_active_planes[I915_MAX_PIPES];
>  };

--=20
Jani Nikula, Intel
