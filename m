Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 725188D4C2C
	for <lists+intel-gfx@lfdr.de>; Thu, 30 May 2024 15:00:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6ED3811BE91;
	Thu, 30 May 2024 13:00:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nmKEFJdg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEB3111BE91
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 May 2024 13:00:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717074052; x=1748610052;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=l+fZZb8ObPkrM07qTrFaRatMwCfXrHQ0JUjpbkrRJ4o=;
 b=nmKEFJdgfs+nMmrDs1/9gYLFP6Qq6v5xdv0eKDWNARAotAzIeRcDgv6f
 9weEFstmu8y5PZ0VyQOp+8smo6k7dVn0IWD18PyPs/TH47werEe2Z13Mw
 WprVwW0lU7ajbFHPUEdgGvenTWYdM3oS6DqgTKwnER+V80y4dojMAsM4O
 gWGlXVcap0SUfKyxtKoSsQOeD2hzxRIIru62/mZ8ONIINwKaTYD8GwZ48
 5chAUL9tiRFqd9gPN3rDYiRC5qJzVW0VL/tZBdunrdHcVdzZDbpy87Ayh
 ee9/MpCZmX1T9rC3S5jAkj0vIA5dhvkE1qUVr1iaV1ANU5mbPe3ey4P86 w==;
X-CSE-ConnectionGUID: A8VUa9H0Sxu5n/s5ddSAJg==
X-CSE-MsgGUID: 9ksqPhEYQx+0pEsivlplIg==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="11802143"
X-IronPort-AV: E=Sophos;i="6.08,201,1712646000"; d="scan'208";a="11802143"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2024 06:00:50 -0700
X-CSE-ConnectionGUID: lO8WUSEcRief+I0eo9F4TA==
X-CSE-MsgGUID: QL3KfAwsSDqNUYl3Oe/iXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,201,1712646000"; d="scan'208";a="40693052"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2024 06:00:47 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 3/3] drm/i915: Plumb the full atomic state into
 skl_ddb_add_affected_planes()
In-Reply-To: <20240528184945.24083-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240528184945.24083-1-ville.syrjala@linux.intel.com>
 <20240528184945.24083-3-ville.syrjala@linux.intel.com>
Date: Thu, 30 May 2024 16:00:44 +0300
Message-ID: <87sexzh2tf.fsf@intel.com>
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

On Tue, 28 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> skl_ddb_add_affected_planes() needs the full atomic state. Instead
> of digging that out from dubious sources plumb it in explicitly.
>
> The wm counterpart (skl_wm_add_affected_planes()) already does
> things in the proper way.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 19 +++++++++----------
>  1 file changed, 9 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/d=
rm/i915/display/skl_watermark.c
> index 2064f72da675..a2726364b34d 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -2429,12 +2429,14 @@ bool skl_ddb_allocation_overlaps(const struct skl=
_ddb_entry *ddb,
>  }
>=20=20
>  static int
> -skl_ddb_add_affected_planes(const struct intel_crtc_state *old_crtc_stat=
e,
> -			    struct intel_crtc_state *new_crtc_state)
> +skl_ddb_add_affected_planes(struct intel_atomic_state *state,
> +			    struct intel_crtc *crtc)
>  {
> -	struct intel_atomic_state *state =3D to_intel_atomic_state(new_crtc_sta=
te->uapi.state);
> -	struct intel_crtc *crtc =3D to_intel_crtc(new_crtc_state->uapi.crtc);
> -	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> +	struct drm_i915_private *i915 =3D to_i915(state->base.dev);
> +	const struct intel_crtc_state *old_crtc_state =3D
> +		intel_atomic_get_old_crtc_state(state, crtc);
> +	struct intel_crtc_state *new_crtc_state =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
>  	struct intel_plane *plane;
>=20=20
>  	for_each_intel_plane_on_crtc(&i915->drm, crtc, plane) {
> @@ -2489,7 +2491,6 @@ skl_compute_ddb(struct intel_atomic_state *state)
>  	struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>  	const struct intel_dbuf_state *old_dbuf_state;
>  	struct intel_dbuf_state *new_dbuf_state =3D NULL;
> -	const struct intel_crtc_state *old_crtc_state;
>  	struct intel_crtc_state *new_crtc_state;
>  	struct intel_crtc *crtc;
>  	int ret, i;
> @@ -2577,14 +2578,12 @@ skl_compute_ddb(struct intel_atomic_state *state)
>  			return ret;
>  	}
>=20=20
> -	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
> -					    new_crtc_state, i) {
> +	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
>  		ret =3D skl_crtc_allocate_plane_ddb(state, crtc);
>  		if (ret)
>  			return ret;
>=20=20
> -		ret =3D skl_ddb_add_affected_planes(old_crtc_state,
> -						  new_crtc_state);
> +		ret =3D skl_ddb_add_affected_planes(state, crtc);
>  		if (ret)
>  			return ret;
>  	}

--=20
Jani Nikula, Intel
