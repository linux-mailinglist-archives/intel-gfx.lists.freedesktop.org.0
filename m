Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 371E7180040
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 15:33:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 878456E30C;
	Tue, 10 Mar 2020 14:32:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C79EB6E30C
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 14:32:58 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 07:32:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,537,1574150400"; d="scan'208";a="231337620"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 10 Mar 2020 07:32:52 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 Mar 2020 16:32:51 +0200
Date: Tue, 10 Mar 2020 16:32:51 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200310143251.GG13686@intel.com>
References: <20200309161204.17792-1-stanislav.lisovskiy@intel.com>
 <20200309161204.17792-2-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200309161204.17792-2-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v19 1/8] drm/i915: Start passing latency as
 parameter
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

On Mon, Mar 09, 2020 at 06:11:57PM +0200, Stanislav Lisovskiy wrote:
> We need to start passing memory latency as a
> parameter when calculating plane wm levels,
> as latency can get changed in different
> circumstances(for example with or without SAGV).
> So we need to be more flexible on that matter.
> =

> Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_pm.c | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index 8375054ba27d..c7928c870b0a 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -4016,6 +4016,7 @@ static int skl_compute_wm_params(const struct intel=
_crtc_state *crtc_state,
>  				 int color_plane);
>  static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_sta=
te,
>  				 int level,
> +				 u32 latency,

So you didn't change the types?

>  				 const struct skl_wm_params *wp,
>  				 const struct skl_wm_level *result_prev,
>  				 struct skl_wm_level *result /* out */);
> @@ -4038,7 +4039,9 @@ skl_cursor_allocation(const struct intel_crtc_state=
 *crtc_state,
>  	drm_WARN_ON(&dev_priv->drm, ret);
>  =

>  	for (level =3D 0; level <=3D max_level; level++) {
> -		skl_compute_plane_wm(crtc_state, level, &wp, &wm, &wm);
> +		u32 latency =3D dev_priv->wm.skl_latency[level];
> +
> +		skl_compute_plane_wm(crtc_state, level, latency, &wp, &wm, &wm);
>  		if (wm.min_ddb_alloc =3D=3D U16_MAX)
>  			break;
>  =

> @@ -4972,12 +4975,12 @@ static bool skl_wm_has_lines(struct drm_i915_priv=
ate *dev_priv, int level)
>  =

>  static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_sta=
te,
>  				 int level,
> +				 u32 latency,
>  				 const struct skl_wm_params *wp,
>  				 const struct skl_wm_level *result_prev,
>  				 struct skl_wm_level *result /* out */)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);
> -	u32 latency =3D dev_priv->wm.skl_latency[level];
>  	uint_fixed_16_16_t method1, method2;
>  	uint_fixed_16_16_t selected_result;
>  	u32 res_blocks, res_lines, min_ddb_alloc =3D 0;
> @@ -5106,9 +5109,10 @@ skl_compute_wm_levels(const struct intel_crtc_stat=
e *crtc_state,
>  =

>  	for (level =3D 0; level <=3D max_level; level++) {
>  		struct skl_wm_level *result =3D &levels[level];
> +		u32 latency =3D dev_priv->wm.skl_latency[level];
>  =

> -		skl_compute_plane_wm(crtc_state, level, wm_params,
> -				     result_prev, result);
> +		skl_compute_plane_wm(crtc_state, level, latency,
> +				     wm_params, result_prev, result);
>  =

>  		result_prev =3D result;
>  	}
> -- =

> 2.24.1.485.gad05a3d8e5

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
