Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFBD1435EF5
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Oct 2021 12:21:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DD616E427;
	Thu, 21 Oct 2021 10:21:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BB6E6E427
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Oct 2021 10:21:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10143"; a="229267527"
X-IronPort-AV: E=Sophos;i="5.87,169,1631602800"; d="scan'208";a="229267527"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2021 03:21:48 -0700
X-IronPort-AV: E=Sophos;i="5.87,169,1631602800"; d="scan'208";a="495068561"
Received: from ssuryana-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.45.34])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2021 03:21:45 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: jose.souza@intel.com, mika.kahola@intel.com, wan-gyeong.mun@intel.com
In-Reply-To: <20211021101024.13112-2-jouni.hogander@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211021101024.13112-1-jouni.hogander@intel.com>
 <20211021101024.13112-2-jouni.hogander@intel.com>
Date: Thu, 21 Oct 2021 13:21:42 +0300
Message-ID: <87tuhan0eh.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display: Add initial selective
 fetch support for biplanar formats
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

On Thu, 21 Oct 2021, Jouni H=C3=B6gander <jouni.hogander@intel.com> wrote:
> Biplanar formats are using two planes (Y and UV). This patch adds handling
> of Y selective fetch area by utilizing existing linked plane mechanism.
> Also UV plane Y offset configuration is modified according to Bspec.

FYI, it's fine to add the bspec reference as a tag in the commit
message, e.g.

Bspec: 12345

See git log --grep=3D"^Bspec:" for examples.

No need to resend for this.

BR,
Jani.

>
> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 30 +++++++++++++++++++++---
>  1 file changed, 27 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i=
915/display/intel_psr.c
> index 49c2dfbd4055..469bf95178f3 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1467,10 +1467,19 @@ void intel_psr2_program_plane_sel_fetch(struct in=
tel_plane *plane,
>  	val |=3D plane_state->uapi.dst.x1;
>  	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_POS(pipe, plane->id), val);
>=20=20
> -	/* TODO: consider auxiliary surfaces */
> -	x =3D plane_state->uapi.src.x1 >> 16;
> -	y =3D (plane_state->uapi.src.y1 >> 16) + clip->y1;
> +	x =3D plane_state->view.color_plane[color_plane].x;
> +
> +	/*
> +	 * From Bspec: UV surface Start Y Position =3D half of Y plane Y
> +	 * start position.
> +	 */
> +	if (!color_plane)
> +		y =3D plane_state->view.color_plane[color_plane].y + clip->y1;
> +	else
> +		y =3D plane_state->view.color_plane[color_plane].y + clip->y1 / 2;
> +
>  	val =3D y << 16 | x;
> +
>  	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_OFFSET(pipe, plane->id),
>  			  val);
>=20=20
> @@ -1700,6 +1709,7 @@ int intel_psr2_sel_fetch_update(struct intel_atomic=
_state *state,
>  	for_each_oldnew_intel_plane_in_state(state, plane, old_plane_state,
>  					     new_plane_state, i) {
>  		struct drm_rect *sel_fetch_area, inter;
> +		struct intel_plane *linked =3D new_plane_state->planar_linked_plane;
>=20=20
>  		if (new_plane_state->uapi.crtc !=3D crtc_state->uapi.crtc ||
>  		    !new_plane_state->uapi.visible)
> @@ -1718,6 +1728,20 @@ int intel_psr2_sel_fetch_update(struct intel_atomi=
c_state *state,
>  		sel_fetch_area->y1 =3D inter.y1 - new_plane_state->uapi.dst.y1;
>  		sel_fetch_area->y2 =3D inter.y2 - new_plane_state->uapi.dst.y1;
>  		crtc_state->update_planes |=3D BIT(plane->id);
> +
> +		/*
> +		 * Sel_fetch_area is calculated for UV plane. Use
> +		 * same area for Y plane as well.
> +		 */
> +		if (linked) {
> +			struct intel_plane_state *linked_new_plane_state =3D
> +			  intel_atomic_get_new_plane_state(state, linked);
> +			struct drm_rect *linked_sel_fetch_area =3D
> +			  &linked_new_plane_state->psr2_sel_fetch_area;
> +
> +			linked_sel_fetch_area->y1 =3D sel_fetch_area->y1;
> +			linked_sel_fetch_area->y2 =3D sel_fetch_area->y2;
> +		}
>  	}
>=20=20
>  skip_sel_fetch_set_loop:

--=20
Jani Nikula, Intel Open Source Graphics Center
