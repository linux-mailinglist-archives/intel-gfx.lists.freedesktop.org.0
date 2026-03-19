Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sBrCGO0CvGmurAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2026 15:06:37 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B217B2CC622
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2026 15:06:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D13410E8D3;
	Thu, 19 Mar 2026 14:06:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jafrzALz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 800D510E8D3;
 Thu, 19 Mar 2026 14:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773929194; x=1805465194;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=5pcybKuXT2ddbp6oHMVaDe0Bq0CB4C7p2591jEk/fcE=;
 b=jafrzALzTvJ/k2keS6X1Mb/qZxSkTnxQLfx1o8LavXriV0YSz9XZgmxN
 KjvPhMvYVZPb4Nylh3ItEGzWInD1UKX6qJEbZH7Q9u8r6nbowsDdGKuoX
 d8kZ2C8YoKedmEbw5M9KcCUQBt3RuSzO5P/I5Qlc5BjKIPrjtYoLEyb4g
 fOPVBXMqxlDU5Tp8S2fggMmTciucOgpNWW6t0W0iUun0rEibz5J5mjo4a
 9Hm9B4UQnG5R4/wMCPouNfgsKRTRmoYfnbVTyrMOE7/eL3H019o/v3gzz
 OgA13fgueQhc7Yj7x3aM5MVWyThdT6B6Uj5sUyxqHnWotcZfH0DxKUpRe A==;
X-CSE-ConnectionGUID: izpmb18mSr2sarMPnqPW/w==
X-CSE-MsgGUID: YtzUiTdhRvOzo3CuQR7x7w==
X-IronPort-AV: E=McAfee;i="6800,10657,11734"; a="86476676"
X-IronPort-AV: E=Sophos;i="6.23,129,1770624000"; d="scan'208";a="86476676"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 07:06:33 -0700
X-CSE-ConnectionGUID: abB8O8SxQa6eHBQo3kIovw==
X-CSE-MsgGUID: WJo6LgPoTaSuFvA5sHne8g==
X-ExtLoop1: 1
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.152])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 07:06:31 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 5/9] drm/i915/wm: Nuke wm->uv_wm[]
In-Reply-To: <20260319114034.7093-6-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260319114034.7093-1-ville.syrjala@linux.intel.com>
 <20260319114034.7093-6-ville.syrjala@linux.intel.com>
Date: Thu, 19 Mar 2026 16:06:26 +0200
Message-ID: <129f10d3e4ad2c245799d6b017bef7182b615eac@intel.com>
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	HAS_ORG_HEADER(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_THREE(0.00)[3];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: B217B2CC622
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 19 Mar 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> We currently keep around the full watermarks for the UV plane
> on pre-icl, even though the hardware doesn't need most of this
> information. The only thing we need to keep is the min_ddb_alloc
> for the UV plane. Move that into the main wm->wm[].min_ddb_alloc_uv
> alongside the other min_ddb_alloc (used for Y/RGB).
>
> This makes our state tracking match the hardware more closely,
> and avoids having to justify everwhere why uv_wm[] is being
> ignored.

Somehow found this change difficult to follow, but didn't spot anything
obviously wrong either.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  .../drm/i915/display/intel_display_types.h    |  2 +-
>  drivers/gpu/drm/i915/display/skl_watermark.c  | 43 ++++++++-----------
>  2 files changed, 19 insertions(+), 26 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 93b8b2f91484..e2496db1642a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -835,6 +835,7 @@ struct intel_pipe_wm {
>=20=20
>  struct skl_wm_level {
>  	u16 min_ddb_alloc;
> +	u16 min_ddb_alloc_uv; /* for pre-icl */
>  	u16 blocks;
>  	u8 lines;
>  	bool enable;
> @@ -845,7 +846,6 @@ struct skl_wm_level {
>=20=20
>  struct skl_plane_wm {
>  	struct skl_wm_level wm[8];
> -	struct skl_wm_level uv_wm[8];
>  	struct skl_wm_level trans_wm;
>  	struct {
>  		struct skl_wm_level wm0;
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/d=
rm/i915/display/skl_watermark.c
> index 7c4c42dde991..8b1b371fbfab 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -1356,14 +1356,13 @@ skl_check_wm_level(struct skl_wm_level *wm, const=
 struct skl_ddb_entry *ddb)
>  }
>=20=20
>  static void
> -skl_check_wm_level_nv12(struct skl_wm_level *wm, struct skl_wm_level *uv=
_wm,
> -			const struct skl_ddb_entry *ddb_y, const struct skl_ddb_entry *ddb)
> +skl_check_wm_level_nv12(struct skl_wm_level *wm,
> +			const struct skl_ddb_entry *ddb_y,
> +			const struct skl_ddb_entry *ddb)
>  {
>  	if (wm->min_ddb_alloc > skl_ddb_entry_size(ddb_y) ||
> -	    uv_wm->min_ddb_alloc > skl_ddb_entry_size(ddb)) {
> +	    wm->min_ddb_alloc_uv > skl_ddb_entry_size(ddb))
>  		memset(wm, 0, sizeof(*wm));
> -		memset(uv_wm, 0, sizeof(*uv_wm));
> -	}
>  }
>=20=20
>  static bool skl_need_wm_copy_wa(struct intel_display *display, int level,
> @@ -1427,11 +1426,10 @@ static void
>  skl_allocate_plane_ddb_nv12(struct skl_plane_ddb_iter *iter,
>  			    const struct skl_wm_level *wm,
>  			    struct skl_ddb_entry *ddb_y, u64 data_rate_y,
> -			    const struct skl_wm_level *uv_wm,
>  			    struct skl_ddb_entry *ddb, u64 data_rate)
>  {
>  	_skl_allocate_plane_ddb(iter, wm->min_ddb_alloc, ddb_y, data_rate_y);
> -	_skl_allocate_plane_ddb(iter, uv_wm->min_ddb_alloc, ddb, data_rate);
> +	_skl_allocate_plane_ddb(iter, wm->min_ddb_alloc_uv, ddb, data_rate);
>  }
>=20=20
>  static int
> @@ -1499,7 +1497,7 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_sta=
te *state,
>  			}
>=20=20
>  			blocks +=3D wm->wm[level].min_ddb_alloc;
> -			blocks +=3D wm->uv_wm[level].min_ddb_alloc;
> +			blocks +=3D wm->wm[level].min_ddb_alloc_uv;
>  		}
>=20=20
>  		if (blocks <=3D iter.size) {
> @@ -1543,7 +1541,6 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_sta=
te *state,
>  		    crtc_state->nv12_planes & BIT(plane_id))
>  			skl_allocate_plane_ddb_nv12(&iter, &wm->wm[level],
>  						    ddb_y, crtc_state->rel_data_rate_y[plane_id],
> -						    &wm->uv_wm[level],
>  						    ddb, crtc_state->rel_data_rate[plane_id]);
>  		else
>  			skl_allocate_plane_ddb(&iter, &wm->wm[level],
> @@ -1573,9 +1570,7 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_sta=
te *state,
>=20=20
>  			if (DISPLAY_VER(display) < 11 &&
>  			    crtc_state->nv12_planes & BIT(plane_id))
> -				skl_check_wm_level_nv12(&wm->wm[level],
> -							&wm->uv_wm[level],
> -							ddb_y, ddb);
> +				skl_check_wm_level_nv12(&wm->wm[level], ddb_y, ddb);
>  			else
>  				skl_check_wm_level(&wm->wm[level], ddb);
>=20=20
> @@ -2084,9 +2079,11 @@ static int skl_build_plane_wm_uv(struct intel_crtc=
_state *crtc_state,
>  				 const struct intel_plane_state *plane_state,
>  				 struct intel_plane *plane)
>  {
> +	struct intel_display *display =3D to_intel_display(crtc_state);
>  	struct skl_plane_wm *wm =3D &crtc_state->wm.skl.raw.planes[plane->id];
> +	struct skl_wm_level uv_wm[ARRAY_SIZE(wm->wm)] =3D {};
>  	struct skl_wm_params wm_params;
> -	int ret;
> +	int ret, level;
>=20=20
>  	/* uv plane watermarks must also be validated for NV12/Planar */
>  	ret =3D skl_compute_plane_wm_params(crtc_state, plane_state,
> @@ -2094,7 +2091,14 @@ static int skl_build_plane_wm_uv(struct intel_crtc=
_state *crtc_state,
>  	if (ret)
>  		return ret;
>=20=20
> -	skl_compute_wm_levels(crtc_state, plane, &wm_params, wm->uv_wm);
> +	skl_compute_wm_levels(crtc_state, plane, &wm_params, uv_wm);
> +
> +	/*
> +	 * Only keep the min_ddb_alloc for UV as
> +	 * the hardware needs nothing else.
> +	 */
> +	for (level =3D 0; level < display->wm.num_levels; level++)
> +		wm->wm[level].min_ddb_alloc_uv =3D uv_wm[level].min_ddb_alloc;
>=20=20
>  	return 0;
>  }
> @@ -2317,7 +2321,6 @@ static int skl_wm_check_vblank(struct intel_crtc_st=
ate *crtc_state)
>  			 * thing as bad via min_ddb_alloc=3DU16_MAX?
>  			 */
>  			wm->wm[level].enable =3D false;
> -			wm->uv_wm[level].enable =3D false;
>  		}
>  	}
>=20=20
> @@ -2388,11 +2391,6 @@ static bool skl_plane_wm_equals(struct intel_displ=
ay *display,
>  	int level;
>=20=20
>  	for (level =3D 0; level < display->wm.num_levels; level++) {
> -		/*
> -		 * We don't check uv_wm as the hardware doesn't actually
> -		 * use it. It only gets used for calculating the required
> -		 * ddb allocation.
> -		 */
>  		if (!skl_wm_level_equals(&wm1->wm[level], &wm2->wm[level]))
>  			return false;
>  	}
> @@ -2753,11 +2751,6 @@ static bool skl_plane_selected_wm_equals(struct in=
tel_plane *plane,
>  	int level;
>=20=20
>  	for (level =3D 0; level < display->wm.num_levels; level++) {
> -		/*
> -		 * We don't check uv_wm as the hardware doesn't actually
> -		 * use it. It only gets used for calculating the required
> -		 * ddb allocation.
> -		 */
>  		if (!skl_wm_level_equals(skl_plane_wm_level(old_pipe_wm, plane->id, le=
vel),
>  					 skl_plane_wm_level(new_pipe_wm, plane->id, level)))
>  			return false;

--=20
Jani Nikula, Intel
