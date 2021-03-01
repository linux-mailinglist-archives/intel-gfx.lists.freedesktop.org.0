Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C10CD327972
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Mar 2021 09:41:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2ADB86E506;
	Mon,  1 Mar 2021 08:41:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFAAF6E506
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Mar 2021 08:41:32 +0000 (UTC)
IronPort-SDR: k2Gel1CrtOsTzHeULg38RiDQmluL1D7a4joPBWExroZNdn8kwiATPaVTBypWGYUpdSPt16wHU/
 IA9g6DHnoIYQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9909"; a="185720961"
X-IronPort-AV: E=Sophos;i="5.81,215,1610438400"; d="scan'208";a="185720961"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2021 00:41:32 -0800
IronPort-SDR: eL6Vv3OlGZqVF6+CJWxioKhkHrQRV5tGutK20oAc84NpTfkT4LPb5ff9WgAT7nqcqIUHuj9Nmm
 22H8KungnU/g==
X-IronPort-AV: E=Sophos;i="5.81,215,1610438400"; d="scan'208";a="595282580"
Received: from unknown (HELO intel.com) ([10.237.72.91])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2021 00:41:31 -0800
Date: Mon, 1 Mar 2021 10:42:57 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20210301084134.GA22011@intel.com>
References: <20210226153204.1270-1-ville.syrjala@linux.intel.com>
 <20210226153204.1270-3-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210226153204.1270-3-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 2/7] drm/i915: Zero out SAGV wm when we
 don't have enough DDB for it
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

On Fri, Feb 26, 2021 at 05:31:59PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Let's handle the SAGV WM0 more like the other wm levels and just
> totally zero it out when we don't have the DDB space to back it
> up.

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> =

> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/intel_pm.c | 11 ++++++-----
>  1 file changed, 6 insertions(+), 5 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index 2d0e3e7f11b8..c341fa957884 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -3921,12 +3921,10 @@ static bool tgl_crtc_can_enable_sagv(const struct=
 intel_crtc_state *crtc_state)
>  		return true;
>  =

>  	for_each_plane_id_on_crtc(crtc, plane_id) {
> -		const struct skl_ddb_entry *plane_alloc =3D
> -			&crtc_state->wm.skl.plane_ddb_y[plane_id];
>  		const struct skl_plane_wm *wm =3D
>  			&crtc_state->wm.skl.optimal.planes[plane_id];
>  =

> -		if (skl_ddb_entry_size(plane_alloc) < wm->sagv_wm0.min_ddb_alloc)
> +		if (wm->wm[0].plane_en && !wm->sagv_wm0.plane_en)
>  			return false;
>  	}
>  =

> @@ -4957,8 +4955,8 @@ skl_allocate_plane_ddb(struct intel_atomic_state *s=
tate,
>  	}
>  =

>  	/*
> -	 * Go back and disable the transition watermark if it turns out we
> -	 * don't have enough DDB blocks for it.
> +	 * Go back and disable the transition and SAGV watermarks
> +	 * if it turns out we don't have enough DDB blocks for them.
>  	 */
>  	for_each_plane_id_on_crtc(crtc, plane_id) {
>  		struct skl_plane_wm *wm =3D
> @@ -4966,6 +4964,9 @@ skl_allocate_plane_ddb(struct intel_atomic_state *s=
tate,
>  =

>  		if (wm->trans_wm.plane_res_b >=3D total[plane_id])
>  			memset(&wm->trans_wm, 0, sizeof(wm->trans_wm));
> +
> +		if (wm->sagv_wm0.plane_res_b >=3D total[plane_id])
> +			memset(&wm->sagv_wm0, 0, sizeof(wm->sagv_wm0));
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
