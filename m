Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B6A91338C71
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Mar 2021 13:13:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 229C56E107;
	Fri, 12 Mar 2021 12:12:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3860A6E107
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Mar 2021 12:12:58 +0000 (UTC)
IronPort-SDR: JDhqIkLulePPcdfyoSIZ7HVLHbN/fW/pjffXbRVifUnszxg2Ku5SNRXhir3goGC/V4QEtB7GM5
 6O42j5aOUF1w==
X-IronPort-AV: E=McAfee;i="6000,8403,9920"; a="188187899"
X-IronPort-AV: E=Sophos;i="5.81,243,1610438400"; d="scan'208";a="188187899"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2021 04:12:57 -0800
IronPort-SDR: xmKW6GK7B1Ion3Pn+8PznTL63443jUAJovI/Ty2MUt8FwPyktdUq9CNlJDZ8R2C1OH+1Py8Hwz
 s3du1c91/SWg==
X-IronPort-AV: E=Sophos;i="5.81,243,1610438400"; d="scan'208";a="600580062"
Received: from unknown (HELO intel.com) ([10.237.72.91])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2021 04:12:56 -0800
Date: Fri, 12 Mar 2021 14:14:52 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20210312121452.GC12252@intel.com>
References: <20210305153610.12177-1-ville.syrjala@linux.intel.com>
 <20210305153610.12177-5-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210305153610.12177-5-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 4/6] drm/i915: Calculate min_ddb_alloc for
 trans_wm
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

On Fri, Mar 05, 2021 at 05:36:08PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Let's make all the "do we have enough DDB for this WM level?"
> checks use min_ddb_alloc. To achieve that we need to populate
> this for the transition watermarks as well.
> =

> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/intel_pm.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> =

> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index 36601e0a5073..38a6feced74f 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -4986,13 +4986,13 @@ skl_allocate_plane_ddb(struct intel_atomic_state =
*state,
>  		struct skl_plane_wm *wm =3D
>  			&crtc_state->wm.skl.optimal.planes[plane_id];
>  =

> -		if (wm->trans_wm.plane_res_b >=3D total[plane_id])
> +		if (wm->trans_wm.min_ddb_alloc > total[plane_id])
>  			memset(&wm->trans_wm, 0, sizeof(wm->trans_wm));
>  =

>  		if (wm->sagv.wm0.min_ddb_alloc > total[plane_id])
>  			memset(&wm->sagv.wm0, 0, sizeof(wm->sagv.wm0));
>  =

> -		if (wm->sagv.trans_wm.plane_res_b >=3D total[plane_id])
> +		if (wm->sagv.trans_wm.min_ddb_alloc > total[plane_id])
>  			memset(&wm->sagv.trans_wm, 0, sizeof(wm->sagv.trans_wm));
>  	}
>  =

> @@ -5404,13 +5404,15 @@ static void skl_compute_transition_wm(struct drm_=
i915_private *dev_priv,
>  	} else {
>  		res_blocks =3D wm0_sel_res_b + trans_offset_b;
>  	}
> +	res_blocks++;
>  =

>  	/*
>  	 * Just assume we can enable the transition watermark.  After
>  	 * computing the DDB we'll come back and disable it if that
>  	 * assumption turns out to be false.
>  	 */
> -	trans_wm->plane_res_b =3D res_blocks + 1;
> +	trans_wm->plane_res_b =3D res_blocks;
> +	trans_wm->min_ddb_alloc =3D max_t(u16, wm0->min_ddb_alloc, res_blocks +=
 1);
>  	trans_wm->plane_en =3D true;
>  }
>  =

> -- =

> 2.26.2
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
