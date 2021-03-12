Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05013338CA2
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Mar 2021 13:24:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C4906F5F4;
	Fri, 12 Mar 2021 12:24:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E3066F5F4
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Mar 2021 12:24:05 +0000 (UTC)
IronPort-SDR: mICqIlTsYMufijDxhTYVaRPqKOm+bcDZZxCoBcAZvfIu01vDEFbTmyBpaBm5PtJ5W4sb4guuo/
 DcSiYkIHoutA==
X-IronPort-AV: E=McAfee;i="6000,8403,9920"; a="188919486"
X-IronPort-AV: E=Sophos;i="5.81,243,1610438400"; d="scan'208";a="188919486"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2021 04:24:04 -0800
IronPort-SDR: H4NMz8O0epenVkWpPVQs4aRAfa9i1knc+X3ZK/xyNPddD/N5MN2nDu1ff1K897uzsehl/r4Spd
 eOy4/l5/fxVA==
X-IronPort-AV: E=Sophos;i="5.81,243,1610438400"; d="scan'208";a="600582036"
Received: from unknown (HELO intel.com) ([10.237.72.91])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2021 04:24:03 -0800
Date: Fri, 12 Mar 2021 14:25:31 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20210312122531.GA12297@intel.com>
References: <20210305153610.12177-1-ville.syrjala@linux.intel.com>
 <20210305153610.12177-6-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210305153610.12177-6-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915: Extract skl_check_wm_level()
 and skl_check_nv12_wm_level()
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Mar 05, 2021 at 05:36:09PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Make the code more typo proof by extracting small helpers that
> do the "do we have enough DDB for the WM level?" checks in
> a consistent manner.
> =

> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/intel_pm.c | 58 ++++++++++++++++++++-------------
>  1 file changed, 35 insertions(+), 23 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index 38a6feced74f..3e26d8b667a1 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -4782,6 +4782,36 @@ skl_plane_trans_wm(const struct skl_pipe_wm *pipe_=
wm,
>  	return &wm->trans_wm;
>  }
>  =

> +/*
> + * We only disable the watermarks for each plane if
> + * they exceed the ddb allocation of said plane. This
> + * is done so that we don't end up touching cursor
> + * watermarks needlessly when some other plane reduces
> + * our max possible watermark level.
> + *
> + * Bspec has this to say about the PLANE_WM enable bit:
> + * "All the watermarks at this level for all enabled
> + *  planes must be enabled before the level will be used."
> + * So this is actually safe to do.
> + */
> +static void
> +skl_check_wm_level(struct skl_wm_level *wm, u64 total)
> +{
> +	if (wm->min_ddb_alloc > total)
> +		memset(wm, 0, sizeof(*wm));
> +}
> +
> +static void
> +skl_check_nv12_wm_level(struct skl_wm_level *wm, struct skl_wm_level *uv=
_wm,
> +			u64 total, u64 uv_total)
> +{
> +	if (wm->min_ddb_alloc > total ||
> +	    uv_wm->min_ddb_alloc > uv_total) {
> +		memset(wm, 0, sizeof(*wm));
> +		memset(uv_wm, 0, sizeof(*uv_wm));
> +	}
> +}
> +
>  static int
>  skl_allocate_plane_ddb(struct intel_atomic_state *state,
>  		       struct intel_crtc *crtc)
> @@ -4949,21 +4979,8 @@ skl_allocate_plane_ddb(struct intel_atomic_state *=
state,
>  			struct skl_plane_wm *wm =3D
>  				&crtc_state->wm.skl.optimal.planes[plane_id];
>  =

> -			/*
> -			 * We only disable the watermarks for each plane if
> -			 * they exceed the ddb allocation of said plane. This
> -			 * is done so that we don't end up touching cursor
> -			 * watermarks needlessly when some other plane reduces
> -			 * our max possible watermark level.
> -			 *
> -			 * Bspec has this to say about the PLANE_WM enable bit:
> -			 * "All the watermarks at this level for all enabled
> -			 *  planes must be enabled before the level will be used."
> -			 * So this is actually safe to do.
> -			 */
> -			if (wm->wm[level].min_ddb_alloc > total[plane_id] ||
> -			    wm->uv_wm[level].min_ddb_alloc > uv_total[plane_id])
> -				memset(&wm->wm[level], 0, sizeof(wm->wm[level]));
> +			skl_check_nv12_wm_level(&wm->wm[level], &wm->uv_wm[level],
> +						total[plane_id], uv_total[plane_id]);
>  =

>  			/*
>  			 * Wa_1408961008:icl, ehl
> @@ -4986,14 +5003,9 @@ skl_allocate_plane_ddb(struct intel_atomic_state *=
state,
>  		struct skl_plane_wm *wm =3D
>  			&crtc_state->wm.skl.optimal.planes[plane_id];
>  =

> -		if (wm->trans_wm.min_ddb_alloc > total[plane_id])
> -			memset(&wm->trans_wm, 0, sizeof(wm->trans_wm));
> -
> -		if (wm->sagv.wm0.min_ddb_alloc > total[plane_id])
> -			memset(&wm->sagv.wm0, 0, sizeof(wm->sagv.wm0));
> -
> -		if (wm->sagv.trans_wm.min_ddb_alloc > total[plane_id])
> -			memset(&wm->sagv.trans_wm, 0, sizeof(wm->sagv.trans_wm));
> +		skl_check_wm_level(&wm->trans_wm, total[plane_id]);
> +		skl_check_wm_level(&wm->sagv.wm0, total[plane_id]);
> +		skl_check_wm_level(&wm->sagv.trans_wm, total[plane_id]);
>  	}
>  =

>  	return 0;
> -- =

> 2.26.2
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
