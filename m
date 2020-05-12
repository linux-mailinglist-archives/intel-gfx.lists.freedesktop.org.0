Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 560B21CF36E
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2020 13:36:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 886126E0E4;
	Tue, 12 May 2020 11:36:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D614D6E8BE
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 May 2020 11:36:07 +0000 (UTC)
IronPort-SDR: /QGOFLQSOY/d3gCZjmuFWRT2OqfShMSymrUnxP/MW5O0A8Gp5Mja0riOqK63u5KcuPf11x+6Tf
 3fCLEfaOdfaQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2020 04:35:56 -0700
IronPort-SDR: gzVlvfHPmp4x+iwGWN67mIiQer6Rd8TvK9jkDX9FzHAcKNl48f0UkX1cFeNkq4JCgCazPwXi2Z
 eYL/X6kxiV0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,383,1583222400"; d="scan'208";a="265474599"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 12 May 2020 04:35:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 12 May 2020 14:35:52 +0300
Date: Tue, 12 May 2020 14:35:52 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200512113552.GL6112@intel.com>
References: <20200507144503.15506-1-stanislav.lisovskiy@intel.com>
 <20200507144503.15506-2-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200507144503.15506-2-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v28 1/6] drm/i915: Introduce
 skl_plane_wm_level accessor.
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

On Thu, May 07, 2020 at 05:44:58PM +0300, Stanislav Lisovskiy wrote:
> For future Gen12 SAGV implementation we need to
> seemlessly alter wm levels calculated, depending
> on whether we are allowed to enable SAGV or not.
> =

> So this accessor will give additional flexibility
> to do that.
> =

> Currently this accessor is still simply working
> as "pass-through" function. This will be changed
> in next coming patches from this series.
> =

> v2: - plane_id -> plane->id(Ville Syrj=E4l=E4)
>     - Moved wm_level var to have more local scope
>       (Ville Syrj=E4l=E4)
>     - Renamed yuv to color_plane(Ville Syrj=E4l=E4) in
>       skl_plane_wm_level
> =

> v3: - plane->id -> plane_id(this time for real, Ville Syrj=E4l=E4)
>     - Changed colorplane id type from boolean to int as index
>       (Ville Syrj=E4l=E4)
>     - Moved crtc_state param so that it is first now
>       (Ville Syrj=E4l=E4)
>     - Moved wm_level declaration to tigher scope in
>       skl_write_plane_wm(Ville Syrj=E4l=E4)
> =

> v4: - Started to use enum values for color plane
>     - Do sizeof for a type what we are memset'ing
>     - Zero out wm_uv as well(Ville Syrj=E4l=E4)
> =

> v5: - Fixed rebase conflict caused by COLOR_PLANE_*
>       enum removal
> =

> v6: - Do not use skl_plane_wm_level accessor in skl_allocate_pipe_ddb
> =

> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_pm.c | 26 ++++++++++++++++++++++++--
>  1 file changed, 24 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index 416cb1a1e7cb..8a86298962dc 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -4632,6 +4632,18 @@ icl_get_total_relative_data_rate(struct intel_crtc=
_state *crtc_state,
>  	return total_data_rate;
>  }
>  =

> +static const struct skl_wm_level *
> +skl_plane_wm_level(const struct intel_crtc_state *crtc_state,
> +		   enum plane_id plane_id,
> +		   int level,
> +		   int color_plane)
> +{
> +	const struct skl_plane_wm *wm =3D
> +		&crtc_state->wm.skl.optimal.planes[plane_id];
> +
> +	return color_plane =3D=3D 0 ? &wm->wm[level] : &wm->uv_wm[level];

uv_wm still not a thing as far as the hw is concerned, so can't see why
we'd have this here.

> +}
> +
>  static int
>  skl_allocate_pipe_ddb(struct intel_crtc_state *crtc_state)
>  {
> @@ -5439,8 +5451,13 @@ void skl_write_plane_wm(struct intel_plane *plane,
>  		&crtc_state->wm.skl.plane_ddb_uv[plane_id];
>  =

>  	for (level =3D 0; level <=3D max_level; level++) {
> +		const struct skl_wm_level *wm_level;
> +		int color_plane =3D 0;
> +
> +		wm_level =3D skl_plane_wm_level(crtc_state, plane_id, level, color_pla=
ne);
> +
>  		skl_write_wm_level(dev_priv, PLANE_WM(pipe, plane_id, level),
> -				   &wm->wm[level]);
> +				   wm_level);
>  	}
>  	skl_write_wm_level(dev_priv, PLANE_WM_TRANS(pipe, plane_id),
>  			   &wm->trans_wm);
> @@ -5473,8 +5490,13 @@ void skl_write_cursor_wm(struct intel_plane *plane,
>  		&crtc_state->wm.skl.plane_ddb_y[plane_id];
>  =

>  	for (level =3D 0; level <=3D max_level; level++) {
> +		const struct skl_wm_level *wm_level;
> +		int color_plane =3D 0;
> +
> +		wm_level =3D skl_plane_wm_level(crtc_state, plane_id, level, color_pla=
ne);
> +
>  		skl_write_wm_level(dev_priv, CUR_WM(pipe, level),
> -				   &wm->wm[level]);
> +				   wm_level);
>  	}
>  	skl_write_wm_level(dev_priv, CUR_WM_TRANS(pipe), &wm->trans_wm);
>  =

> -- =

> 2.24.1.485.gad05a3d8e5

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
