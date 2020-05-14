Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1251F1D362A
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2020 18:13:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32AE86EB81;
	Thu, 14 May 2020 16:13:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8948D6E075
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 May 2020 16:13:34 +0000 (UTC)
IronPort-SDR: WtBB+OIMirOSSwgKCsxDAUifOa5Gh9qWK8AMVDSfzIo6YCZGgquuyHE/1YRiaM/N/JqouEhaJ+
 Zhu4xR3Lx6Rw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2020 09:13:33 -0700
IronPort-SDR: 7xSEwcFD6Nfut2l+Kml1hn6KBq5IfualM77nmK8hoqovEAaQsoFE+bU6d+yhuNczgRBKPcqt3T
 k7nMKqMIBj5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,392,1583222400"; d="scan'208";a="251727668"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 14 May 2020 09:13:31 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 14 May 2020 19:13:30 +0300
Date: Thu, 14 May 2020 19:13:30 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200514161330.GH6112@intel.com>
References: <20200514074853.9508-1-stanislav.lisovskiy@intel.com>
 <20200514074853.9508-2-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200514074853.9508-2-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v30 1/3] drm/i915: Add TGL+ SAGV support
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

On Thu, May 14, 2020 at 10:48:51AM +0300, Stanislav Lisovskiy wrote:
> Starting from TGL we need to have a separate wm0
> values for SAGV and non-SAGV which affects
> how calculations are done.
> =

> v2: Remove long lines
> v3: Removed COLOR_PLANE enum references
> v4, v5, v6: Fixed rebase conflict
> v7: - Removed skl_plane_wm_level accessor from skl_allocate_pipe_ddb(Vill=
e)
>     - Removed sagv_uv_wm0(Ville)
>     - can_sagv->use_sagv_wm(Ville)
> =

> v8: - Moved tgl_crtc_can_enable_sagv function up(Ville)
>     - Changed comment regarding pipe_wm usage(Ville)
>     - Call intel_can_enable_sagv and tgl_compute_sagv_wm only
>       for Gen12(Ville)
>     - Some sagv debugs removed(Ville)
>     - skl_print_wm_changes improvements(Ville)
>     - Do assignment instead of memcpy in
>       skl_pipe_wm_get_hw_state(Ville)
> =

> v9: - Removed can_sagv variable(Ville)
>     - Removed spurious line(Ville)
>     - Changed u32 to unsigned int as agreed(Ville)
>     - Assign sagv only for gen12 in
>       skl_pipe_wm_get_hw_state(Ville)
> =

> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  |   8 +-
>  .../drm/i915/display/intel_display_types.h    |   2 +
>  drivers/gpu/drm/i915/intel_pm.c               | 110 +++++++++++++++---
>  3 files changed, 101 insertions(+), 19 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 432b4eeaf9f6..b128fc859b20 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -13961,7 +13961,9 @@ static void verify_wm_state(struct intel_crtc *cr=
tc,
>  		/* Watermarks */
>  		for (level =3D 0; level <=3D max_level; level++) {
>  			if (skl_wm_level_equals(&hw_plane_wm->wm[level],
> -						&sw_plane_wm->wm[level]))
> +						&sw_plane_wm->wm[level]) ||
> +			    (level =3D=3D 0 && skl_wm_level_equals(&hw_plane_wm->wm[level],
> +							       &sw_plane_wm->sagv_wm0)))
>  				continue;
>  =

>  			drm_err(&dev_priv->drm,
> @@ -14016,7 +14018,9 @@ static void verify_wm_state(struct intel_crtc *cr=
tc,
>  		/* Watermarks */
>  		for (level =3D 0; level <=3D max_level; level++) {
>  			if (skl_wm_level_equals(&hw_plane_wm->wm[level],
> -						&sw_plane_wm->wm[level]))
> +						&sw_plane_wm->wm[level]) ||
> +			    (level =3D=3D 0 && skl_wm_level_equals(&hw_plane_wm->wm[level],
> +							       &sw_plane_wm->sagv_wm0)))
>  				continue;
>  =

>  			drm_err(&dev_priv->drm,
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 87876fce91a5..2bf3d4cb4ea9 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -688,11 +688,13 @@ struct skl_plane_wm {
>  	struct skl_wm_level wm[8];
>  	struct skl_wm_level uv_wm[8];
>  	struct skl_wm_level trans_wm;
> +	struct skl_wm_level sagv_wm0;
>  	bool is_planar;
>  };
>  =

>  struct skl_pipe_wm {
>  	struct skl_plane_wm planes[I915_MAX_PLANES];
> +	bool use_sagv_wm;
>  };
>  =

>  enum vlv_wm_level {
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index f7bd1dbb625e..c52b941df5d6 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -3853,9 +3853,38 @@ static bool skl_crtc_can_enable_sagv(const struct =
intel_crtc_state *crtc_state)
>  	return true;
>  }
>  =

> +static bool tgl_crtc_can_enable_sagv(const struct intel_crtc_state *crtc=
_state)
> +{
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	enum plane_id plane_id;
> +
> +	if (!crtc_state->hw.active)
> +		return true;
> +
> +	for_each_plane_id_on_crtc(crtc, plane_id) {
> +		const struct skl_ddb_entry *plane_alloc =3D
> +			&crtc_state->wm.skl.plane_ddb_y[plane_id];
> +		const struct skl_plane_wm *wm =3D
> +			&crtc_state->wm.skl.optimal.planes[plane_id];
> +
> +		if (skl_ddb_entry_size(plane_alloc) < wm->sagv_wm0.min_ddb_alloc)
> +			return false;
> +	}
> +
> +	return true;
> +}
> +
>  static bool intel_crtc_can_enable_sagv(const struct intel_crtc_state *cr=
tc_state)
>  {
> -	return skl_crtc_can_enable_sagv(crtc_state);
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +
> +	if (INTEL_GEN(dev_priv) >=3D 12)
> +		return tgl_crtc_can_enable_sagv(crtc_state);
> +	else
> +		return skl_crtc_can_enable_sagv(crtc_state);
> +
> +	return false;

This one is obviously dead -> nuked while applying. Also
nuked the unused NUM_SAGV_POINTS and duplicate prototypes
for intel_sagv_{pre,post}_plane_update() from the second
patch.

In general I'd suggest you should try to read your own patches
a few more times as if you were reviewing them yourself to avoid
these sort of trivial things from coming up so often. Some of
that is probably down to fatigue with this particular series,
but I feel I've seen a hint of a pattern in other series as well.
I've found the practice of reviewing my own patches quite decent
at catching silly things at least, and sometimes it does reveal
more fundemental issues too.


Phew. All pushed to dinq now. Thanks for sticking with it. Took
us a "while" but I think we ended up with pretty decent code that
should be reasonaly easy to maintain from here on out.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
