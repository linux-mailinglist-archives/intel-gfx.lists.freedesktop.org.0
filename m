Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 04A931A87E8
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2020 19:48:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 626CC6E511;
	Tue, 14 Apr 2020 17:48:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B27F06E50C
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Apr 2020 17:48:01 +0000 (UTC)
IronPort-SDR: 559LlXN4zYRoGAtcSjvxbmQv0fafZ92gfRkW18JxVjd7ONpTS9iYe2Sy+gtoxAgzW70NsUc5Up
 c9Sx4lSf0BKQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2020 10:47:59 -0700
IronPort-SDR: kbt4pQc1GcXrDOCpx3Lp9rsqqncTyoyteYq8Qdc0CJKTgOOzVNDOdBTI3L7CqVU7wLuMMlwyE/
 r2OZxAUdWGuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,383,1580803200"; d="scan'208";a="245481374"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 14 Apr 2020 10:47:56 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 14 Apr 2020 20:47:56 +0300
Date: Tue, 14 Apr 2020 20:47:56 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200414174756.GH6112@intel.com>
References: <20200409154730.18568-1-stanislav.lisovskiy@intel.com>
 <20200409154730.18568-2-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200409154730.18568-2-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v22 01/13] drm/i915: Start passing latency
 as parameter
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Apr 09, 2020 at 06:47:18PM +0300, Stanislav Lisovskiy wrote:
> We need to start passing memory latency as a
> parameter when calculating plane wm levels,
> as latency can get changed in different
> circumstances(for example with or without SAGV).
> So we need to be more flexible on that matter.
> =

> v2: Changed latency type from u32 to unsigned int(Ville Syrj=E4l=E4)
> =

> Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Pushed this one. Thanks.

> ---
>  drivers/gpu/drm/i915/intel_pm.c | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index 8375054ba27d..b632b6bb9c3e 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -4016,6 +4016,7 @@ static int skl_compute_wm_params(const struct intel=
_crtc_state *crtc_state,
>  				 int color_plane);
>  static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_sta=
te,
>  				 int level,
> +				 unsigned int latency,
>  				 const struct skl_wm_params *wp,
>  				 const struct skl_wm_level *result_prev,
>  				 struct skl_wm_level *result /* out */);
> @@ -4038,7 +4039,9 @@ skl_cursor_allocation(const struct intel_crtc_state=
 *crtc_state,
>  	drm_WARN_ON(&dev_priv->drm, ret);
>  =

>  	for (level =3D 0; level <=3D max_level; level++) {
> -		skl_compute_plane_wm(crtc_state, level, &wp, &wm, &wm);
> +		unsigned int latency =3D dev_priv->wm.skl_latency[level];
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
> +				 unsigned int latency,
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
> +		unsigned int latency =3D dev_priv->wm.skl_latency[level];
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
