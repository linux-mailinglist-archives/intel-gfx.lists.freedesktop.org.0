Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4419345B84C
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Nov 2021 11:23:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB53A6EA23;
	Wed, 24 Nov 2021 10:23:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E898E6EA23
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Nov 2021 10:23:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10177"; a="298656234"
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="298656234"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2021 02:23:12 -0800
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="497626371"
Received: from moconno1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.21.40])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2021 02:23:11 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20211118093907.18510-1-stanislav.lisovskiy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211118093907.18510-1-stanislav.lisovskiy@intel.com>
Date: Wed, 24 Nov 2021 12:23:08 +0200
Message-ID: <87wnkxlunn.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg2: Implement WM0 cursor WA for
 DG2
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

On Thu, 18 Nov 2021, Stanislav Lisovskiy <stanislav.lisovskiy@intel.com> wr=
ote:
> Bug in the register unit which results in WM1 register
> used when only WM0 is enabled on cursor.
> Software workaround is when only WM0 enabled on cursor,
> copy contents of CUR_WM_0[30:0] (exclude the enable bit)
> into CUR_WM_1[30:0].
>
> v2:  - s/dev_priv/i915/ (Ville Syrj=C3=A4l=C3=A4)
>      - Removed unneeded brackets (Ville Syrj=C3=A4l=C3=A4)
>
> HSDES: 14012656716
>
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_pm.c | 18 +++++++++++++-----
>  1 file changed, 13 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index 89dc7f69baf3..01fa3fac1b57 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -5095,6 +5095,18 @@ skl_check_nv12_wm_level(struct skl_wm_level *wm, s=
truct skl_wm_level *uv_wm,
>  	}
>  }
>=20=20
> +static bool icl_need_wm1_wa(struct drm_i915_private *i915,
> +			    enum plane_id plane_id)

Commit subject having "WM0 cursor WA" and the function saying "wm1_wa"
looks like a discrepancy to the casual reader.

BR,
Jani.

> +{
> +	/*
> +	 * Wa_1408961008:icl, ehl
> +	 * Wa_14012656716:tgl, adl
> +	 * Underruns with WM1+ disabled
> +	 */
> +	return DISPLAY_VER(i915) =3D=3D 11 ||
> +	       (IS_DISPLAY_VER(i915, 12, 13) && plane_id =3D=3D PLANE_CURSOR);
> +}
> +
>  static int
>  skl_allocate_plane_ddb(struct intel_atomic_state *state,
>  		       struct intel_crtc *crtc)
> @@ -5265,11 +5277,7 @@ skl_allocate_plane_ddb(struct intel_atomic_state *=
state,
>  			skl_check_nv12_wm_level(&wm->wm[level], &wm->uv_wm[level],
>  						total[plane_id], uv_total[plane_id]);
>=20=20
> -			/*
> -			 * Wa_1408961008:icl, ehl
> -			 * Underruns with WM1+ disabled
> -			 */
> -			if (DISPLAY_VER(dev_priv) =3D=3D 11 &&
> +			if (icl_need_wm1_wa(dev_priv, plane_id) &&
>  			    level =3D=3D 1 && wm->wm[0].enable) {
>  				wm->wm[level].blocks =3D wm->wm[0].blocks;
>  				wm->wm[level].lines =3D wm->wm[0].lines;

--=20
Jani Nikula, Intel Open Source Graphics Center
