Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98751A72AE7
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Mar 2025 08:57:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0737689137;
	Thu, 27 Mar 2025 07:57:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bhPAXDBj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C779A10E86E;
 Thu, 27 Mar 2025 07:57:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743062272; x=1774598272;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=MwrBEfP3o51SmG7pc84AbBu5gKUdRiBjrWSFAfQIZgE=;
 b=bhPAXDBjhSBS3xds4YMsnjeZZbwyGTPc/d3lQTudvCH833vb8Ah6ICA2
 Dtk2J2KFjHIiYUbcyIORHWUq4CYl5e/mkg9OfiTrhxMAPecMc2kwvfgZ1
 c4o+5Kyy2MyMOwL6RTejiqiwpVJcXn9bZEmypKYtIsqOxB7otBBnhLyOR
 L8QS5zb47CLZ3nHyY8r+yDNV1mokgDSidNsxLG87Zz/jAjVI8lMkPZAw1
 +zXlyd7ygvAp0xGocPQs9bws7Cv3TpIK0x/PBD1SgheB8R0qMnDj9np9h
 QU8IuQPMlHi5fcweWU9u2eziPpSvgInkEIkHYfAl7qswx5HkhYzR3aWUQ w==;
X-CSE-ConnectionGUID: +15+3rQWTKu73qjo0YJszA==
X-CSE-MsgGUID: Xq//g1SERnK4eiVo5xFkww==
X-IronPort-AV: E=McAfee;i="6700,10204,11385"; a="48257730"
X-IronPort-AV: E=Sophos;i="6.14,280,1736841600"; d="scan'208";a="48257730"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2025 00:57:52 -0700
X-CSE-ConnectionGUID: Z8dIfX7nSaih7mEI8ZOdMw==
X-CSE-MsgGUID: WVzcX7K8TDGkI9PpeKclPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,280,1736841600"; d="scan'208";a="125277851"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.17])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2025 00:57:49 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 04/14] drm/i915: Pass intel_dbuf_bw to
 skl_*_calc_dbuf_bw() explicitly
In-Reply-To: <20250326162544.3642-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250326162544.3642-1-ville.syrjala@linux.intel.com>
 <20250326162544.3642-5-ville.syrjala@linux.intel.com>
Date: Thu, 27 Mar 2025 09:57:46 +0200
Message-ID: <871pui7vnp.fsf@intel.com>
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
> Make skl_*_calc_dbuf_bw() a bit lower level passing in the
> to be mutated dbuf_bw struct in explicitly. This will allow
> more reuse later.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 13 ++++++-------
>  1 file changed, 6 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i9=
15/display/intel_bw.c
> index 898ddaf7e76b..67d088da1f38 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -1188,7 +1188,7 @@ static bool intel_bw_state_changed(struct intel_dis=
play *display,
>  	return false;
>  }
>=20=20
> -static void skl_plane_calc_dbuf_bw(struct intel_bw_state *bw_state,
> +static void skl_plane_calc_dbuf_bw(struct intel_dbuf_bw *dbuf_bw,
>  				   struct intel_crtc *crtc,
>  				   enum plane_id plane_id,
>  				   const struct skl_ddb_entry *ddb,
> @@ -1196,7 +1196,6 @@ static void skl_plane_calc_dbuf_bw(struct intel_bw_=
state *bw_state,
>  {
>  	struct intel_display *display =3D to_intel_display(crtc);
>  	struct drm_i915_private *i915 =3D to_i915(display->drm);
> -	struct intel_dbuf_bw *dbuf_bw =3D &bw_state->dbuf_bw[crtc->pipe];
>  	unsigned int dbuf_mask =3D skl_ddb_dbuf_slice_mask(i915, ddb);
>  	enum dbuf_slice slice;
>=20=20
> @@ -1210,12 +1209,11 @@ static void skl_plane_calc_dbuf_bw(struct intel_b=
w_state *bw_state,
>  	}
>  }
>=20=20
> -static void skl_crtc_calc_dbuf_bw(struct intel_bw_state *bw_state,
> +static void skl_crtc_calc_dbuf_bw(struct intel_dbuf_bw *dbuf_bw,
>  				  const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display =3D to_intel_display(crtc_state);
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	struct intel_dbuf_bw *dbuf_bw =3D &bw_state->dbuf_bw[crtc->pipe];
>  	enum plane_id plane_id;
>=20=20
>  	memset(dbuf_bw, 0, sizeof(*dbuf_bw));
> @@ -1231,12 +1229,12 @@ static void skl_crtc_calc_dbuf_bw(struct intel_bw=
_state *bw_state,
>  		if (plane_id =3D=3D PLANE_CURSOR)
>  			continue;
>=20=20
> -		skl_plane_calc_dbuf_bw(bw_state, crtc, plane_id,
> +		skl_plane_calc_dbuf_bw(dbuf_bw, crtc, plane_id,
>  				       &crtc_state->wm.skl.plane_ddb[plane_id],
>  				       crtc_state->data_rate[plane_id]);
>=20=20
>  		if (DISPLAY_VER(display) < 11)
> -			skl_plane_calc_dbuf_bw(bw_state, crtc, plane_id,
> +			skl_plane_calc_dbuf_bw(dbuf_bw, crtc, plane_id,
>  					       &crtc_state->wm.skl.plane_ddb_y[plane_id],
>  					       crtc_state->data_rate[plane_id]);
>  	}
> @@ -1311,7 +1309,8 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_sta=
te *state,
>=20=20
>  		old_bw_state =3D intel_atomic_get_old_bw_state(state);
>=20=20
> -		skl_crtc_calc_dbuf_bw(new_bw_state, crtc_state);
> +		skl_crtc_calc_dbuf_bw(&new_bw_state->dbuf_bw[crtc->pipe],
> +				      crtc_state);
>  	}
>=20=20
>  	if (!old_bw_state)

--=20
Jani Nikula, Intel
