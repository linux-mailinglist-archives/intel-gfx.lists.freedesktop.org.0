Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CF2BA72AE5
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Mar 2025 08:57:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB88910E868;
	Thu, 27 Mar 2025 07:57:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Mq6eHA8V";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EB0110E865;
 Thu, 27 Mar 2025 07:57:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743062239; x=1774598239;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=pVlzSs2BNSiMD/nv+Sj7JtfaouffM3/63f3nNse1/Gs=;
 b=Mq6eHA8VpGbuojG5xbWIVDAikseSm/K0x1vbksKbyjyLDJZjHk9VUktL
 kXHlNkPS9VzIGW9Lb7nuNIRrC2ChFVZ/YBFkpRZFuzWOmWxiB4S/CNqXM
 gGK+5cJzYgr3buxMBb/zu6IhiYnhwkKr2FqEfqR4WHJ7XwDmTBOg1DsEm
 C5jL6pOryx0dvaJPqEK1EXMpU60s95HZM4SAwJFo87ik4ixC/5VK/7J/5
 YNiytASOY6tQr1FKkvqXtB5ZRiSOh21gWDgYw78U6f++BWARLB0TAr+54
 XIxs6dWoyllBClgBO29cqFuGun7oZ2O+Yi+EkD+GXOM9IiZkY1G7Yqtr9 A==;
X-CSE-ConnectionGUID: dTe+eUapSpKKH+c2bSXNbg==
X-CSE-MsgGUID: vWeehElzRWWbzx8s3mfHig==
X-IronPort-AV: E=McAfee;i="6700,10204,11385"; a="55379826"
X-IronPort-AV: E=Sophos;i="6.14,280,1736841600"; d="scan'208";a="55379826"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2025 00:57:18 -0700
X-CSE-ConnectionGUID: 2abxNThVQpuMRhE4um03hQ==
X-CSE-MsgGUID: PZcLPs6+TQqavSC1n5DEuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,280,1736841600"; d="scan'208";a="156054736"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.17])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2025 00:57:16 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 02/14] drm/i915: s/intel_crtc_bw/intel_dbuf_bw/
In-Reply-To: <20250326162544.3642-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250326162544.3642-1-ville.syrjala@linux.intel.com>
 <20250326162544.3642-3-ville.syrjala@linux.intel.com>
Date: Thu, 27 Mar 2025 09:57:13 +0200
Message-ID: <877c4a7vom.fsf@intel.com>
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
> Rename the intel_crtc_bw struct to intel_dbuf_bw to better
> reflect what it does.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 24 ++++++++++++------------
>  1 file changed, 12 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i9=
15/display/intel_bw.c
> index 15c2377193f7..b34db55f5a7e 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -1157,15 +1157,15 @@ static bool intel_bw_state_changed(struct intel_d=
isplay *display,
>  	enum pipe pipe;
>=20=20
>  	for_each_pipe(display, pipe) {
> -		const struct intel_dbuf_bw *old_crtc_bw =3D
> +		const struct intel_dbuf_bw *old_dbuf_bw =3D
>  			&old_bw_state->dbuf_bw[pipe];
> -		const struct intel_dbuf_bw *new_crtc_bw =3D
> +		const struct intel_dbuf_bw *new_dbuf_bw =3D
>  			&new_bw_state->dbuf_bw[pipe];
>  		enum dbuf_slice slice;
>=20=20
>  		for_each_dbuf_slice(display, slice) {
> -			if (old_crtc_bw->max_bw[slice] !=3D new_crtc_bw->max_bw[slice] ||
> -			    old_crtc_bw->active_planes[slice] !=3D new_crtc_bw->active_planes=
[slice])
> +			if (old_dbuf_bw->max_bw[slice] !=3D new_dbuf_bw->max_bw[slice] ||
> +			    old_dbuf_bw->active_planes[slice] !=3D new_dbuf_bw->active_planes=
[slice])
>  				return true;
>  		}
>=20=20
> @@ -1185,7 +1185,7 @@ static void skl_plane_calc_dbuf_bw(struct intel_bw_=
state *bw_state,
>  {
>  	struct intel_display *display =3D to_intel_display(crtc);
>  	struct drm_i915_private *i915 =3D to_i915(display->drm);
> -	struct intel_dbuf_bw *crtc_bw =3D &bw_state->dbuf_bw[crtc->pipe];
> +	struct intel_dbuf_bw *dbuf_bw =3D &bw_state->dbuf_bw[crtc->pipe];
>  	unsigned int dbuf_mask =3D skl_ddb_dbuf_slice_mask(i915, ddb);
>  	enum dbuf_slice slice;
>=20=20
> @@ -1194,8 +1194,8 @@ static void skl_plane_calc_dbuf_bw(struct intel_bw_=
state *bw_state,
>  	 * equal share of the total bw to each plane.
>  	 */
>  	for_each_dbuf_slice_in_mask(display, slice, dbuf_mask) {
> -		crtc_bw->max_bw[slice] =3D max(crtc_bw->max_bw[slice], data_rate);
> -		crtc_bw->active_planes[slice] |=3D BIT(plane_id);
> +		dbuf_bw->max_bw[slice] =3D max(dbuf_bw->max_bw[slice], data_rate);
> +		dbuf_bw->active_planes[slice] |=3D BIT(plane_id);
>  	}
>  }
>=20=20
> @@ -1204,10 +1204,10 @@ static void skl_crtc_calc_dbuf_bw(struct intel_bw=
_state *bw_state,
>  {
>  	struct intel_display *display =3D to_intel_display(crtc_state);
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	struct intel_dbuf_bw *crtc_bw =3D &bw_state->dbuf_bw[crtc->pipe];
> +	struct intel_dbuf_bw *dbuf_bw =3D &bw_state->dbuf_bw[crtc->pipe];
>  	enum plane_id plane_id;
>=20=20
> -	memset(crtc_bw, 0, sizeof(*crtc_bw));
> +	memset(dbuf_bw, 0, sizeof(*dbuf_bw));
>=20=20
>  	if (!crtc_state->hw.active)
>  		return;
> @@ -1249,10 +1249,10 @@ intel_bw_dbuf_min_cdclk(struct intel_display *dis=
play,
>  		 * equal share of the total bw to each plane.
>  		 */
>  		for_each_pipe(display, pipe) {
> -			const struct intel_dbuf_bw *crtc_bw =3D &bw_state->dbuf_bw[pipe];
> +			const struct intel_dbuf_bw *dbuf_bw =3D &bw_state->dbuf_bw[pipe];
>=20=20
> -			max_bw =3D max(crtc_bw->max_bw[slice], max_bw);
> -			num_active_planes +=3D hweight8(crtc_bw->active_planes[slice]);
> +			max_bw =3D max(dbuf_bw->max_bw[slice], max_bw);
> +			num_active_planes +=3D hweight8(dbuf_bw->active_planes[slice]);
>  		}
>  		max_bw *=3D num_active_planes;

--=20
Jani Nikula, Intel
