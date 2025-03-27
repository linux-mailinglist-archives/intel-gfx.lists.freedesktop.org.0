Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E0E8A72AF0
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Mar 2025 09:00:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1918110E865;
	Thu, 27 Mar 2025 08:00:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RkxOtknT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 528A310E2BF;
 Thu, 27 Mar 2025 08:00:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743062424; x=1774598424;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=6OVd0stR6yXA1cSEhsuwIandA4QdbqIiGqn7BdVikAI=;
 b=RkxOtknT/1foZplMxzR9FXBuSFGsR9dBzsOJ3hjB+Tfi+KwZu4673ZYL
 HxpvRYhUB9TyFuJiAfNypDZ1LiY8+TgSQIae0t1wcONd+PRakvZWtQZgN
 F5n2TLM9qEeuag2wMzhJDErT9KMUPIWlRy5qWqcdGdzGUW6C+X6oa/E3E
 I8nIgBEjI9FXA2culVKA6bKRF2vj7glnFr8ISLKjTK70bBrNrtOSzOG6j
 VfUThf5rIdHHBY16gfdRggSpRzakB/KQn43aPyjNHo7+PrvD9tK0lumvj
 //6WIAJGjOJ5u/DxUUMQ4OrVM97CyNWGRcijHJT8JjtEuc9EEQvoqLPvh Q==;
X-CSE-ConnectionGUID: OPD5WyWuQvSCl0uTPgbjow==
X-CSE-MsgGUID: criP1U3QSvSErCx85Mfuxw==
X-IronPort-AV: E=McAfee;i="6700,10204,11385"; a="69742335"
X-IronPort-AV: E=Sophos;i="6.14,280,1736841600"; d="scan'208";a="69742335"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2025 01:00:24 -0700
X-CSE-ConnectionGUID: uA5flJ+bQJK4Urzn2w+tUA==
X-CSE-MsgGUID: /S6brr9WSFOA/53NdE5YzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,280,1736841600"; d="scan'208";a="125083603"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.17])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2025 01:00:23 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 05/14] drm/i915: Avoid triggering unwanted cdclk
 changes due to dbuf bandwidth changes
In-Reply-To: <20250326162544.3642-6-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250326162544.3642-1-ville.syrjala@linux.intel.com>
 <20250326162544.3642-6-ville.syrjala@linux.intel.com>
Date: Thu, 27 Mar 2025 10:00:19 +0200
Message-ID: <87y0wq6gz0.fsf@intel.com>
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
> Currently intel_bw_calc_min_cdclk() always adds the bw_state
> to the atomic state. Not only does it result in potentially
> redundant work later, it's also currently causing unwanted cdclk
> changes during driver load.

Can you elaborate how we currently end up changing cdclk even if the
dbuf bw isn't changing? Different rules wrt to GOP?

Anyway, the change make sense no matter what,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>
> Check if the dbuf bw is actually changing before we decide to
> pull in the bw state.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 17 +++++++++++++----
>  1 file changed, 13 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i9=
15/display/intel_bw.c
> index 67d088da1f38..19b516084fac 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -1294,7 +1294,8 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_sta=
te *state,
>  	struct intel_bw_state *new_bw_state =3D NULL;
>  	const struct intel_bw_state *old_bw_state =3D NULL;
>  	const struct intel_cdclk_state *cdclk_state;
> -	const struct intel_crtc_state *crtc_state;
> +	const struct intel_crtc_state *old_crtc_state;
> +	const struct intel_crtc_state *new_crtc_state;
>  	int old_min_cdclk, new_min_cdclk;
>  	struct intel_crtc *crtc;
>  	int i;
> @@ -1302,15 +1303,23 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_s=
tate *state,
>  	if (DISPLAY_VER(display) < 9)
>  		return 0;
>=20=20
> -	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
> +	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
> +					    new_crtc_state, i) {
> +		struct intel_dbuf_bw old_dbuf_bw, new_dbuf_bw;
> +
> +		skl_crtc_calc_dbuf_bw(&old_dbuf_bw, old_crtc_state);
> +		skl_crtc_calc_dbuf_bw(&new_dbuf_bw, new_crtc_state);
> +
> +		if (!intel_dbuf_bw_changed(display, &old_dbuf_bw, &new_dbuf_bw))
> +			continue;
> +
>  		new_bw_state =3D intel_atomic_get_bw_state(state);
>  		if (IS_ERR(new_bw_state))
>  			return PTR_ERR(new_bw_state);
>=20=20
>  		old_bw_state =3D intel_atomic_get_old_bw_state(state);
>=20=20
> -		skl_crtc_calc_dbuf_bw(&new_bw_state->dbuf_bw[crtc->pipe],
> -				      crtc_state);
> +		new_bw_state->dbuf_bw[crtc->pipe] =3D new_dbuf_bw;
>  	}
>=20=20
>  	if (!old_bw_state)

--=20
Jani Nikula, Intel
