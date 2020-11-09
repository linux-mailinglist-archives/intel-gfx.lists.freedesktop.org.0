Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F0EF2AC78D
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Nov 2020 22:45:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C3A1890F0;
	Mon,  9 Nov 2020 21:45:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2796F890F0
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Nov 2020 21:45:37 +0000 (UTC)
IronPort-SDR: b24Y7YBIZuRTeorc9EW8gb+iCmktBSy61NAa2lAe7S0P8/iQVSwfZF6A/rzVjJ+kM2ZeTiFPai
 U+WA+rVKk9vA==
X-IronPort-AV: E=McAfee;i="6000,8403,9800"; a="170029057"
X-IronPort-AV: E=Sophos;i="5.77,464,1596524400"; d="scan'208";a="170029057"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2020 13:45:36 -0800
IronPort-SDR: /ghHouVdnh93avPQc3S77exE8uVk0g9TjW6FetEQlOHcWptInHI9SDDFCN60zRJdzVuqjdivGz
 mO4mOH5jAP8Q==
X-IronPort-AV: E=Sophos;i="5.77,464,1596524400"; d="scan'208";a="530924820"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2020 13:45:36 -0800
Date: Mon, 9 Nov 2020 13:47:52 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20201109214752.GB17448@labuser-Z97X-UD5H>
References: <20201106173042.7534-1-ville.syrjala@linux.intel.com>
 <20201106173042.7534-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201106173042.7534-2-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915: Pass intel_atomic_state around
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

On Fri, Nov 06, 2020 at 07:30:37PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Pass the whole intel_atomic_state to skl_build_pipe_wm()
> and skl_allocate_pipe_ddb() so we can start to iterate
> stuff containerd in the commit.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

This looks good to me,

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/intel_pm.c | 24 +++++++++++++-----------
>  1 file changed, 13 insertions(+), 11 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index f54375b11964..e9ac6f1a5d28 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -4791,9 +4791,11 @@ skl_plane_wm_level(const struct intel_crtc_state *=
crtc_state,
>  }
>  =

>  static int
> -skl_allocate_pipe_ddb(struct intel_crtc_state *crtc_state)
> +skl_allocate_pipe_ddb(struct intel_atomic_state *state,
> +		      struct intel_crtc *crtc)
>  {
> -	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	struct intel_crtc_state *crtc_state =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	struct skl_ddb_entry *alloc =3D &crtc_state->wm.skl.ddb;
>  	u16 alloc_size, start =3D 0;
> @@ -5583,9 +5585,12 @@ static int icl_build_plane_wm(struct intel_crtc_st=
ate *crtc_state,
>  	return 0;
>  }
>  =

> -static int skl_build_pipe_wm(struct intel_crtc_state *crtc_state)
> +static int skl_build_pipe_wm(struct intel_atomic_state *state,
> +			     struct intel_crtc *crtc)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +	struct intel_crtc_state *crtc_state =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
>  	struct skl_pipe_wm *pipe_wm =3D &crtc_state->wm.skl.optimal;
>  	struct intel_plane *plane;
>  	const struct intel_plane_state *plane_state;
> @@ -5794,7 +5799,7 @@ skl_compute_ddb(struct intel_atomic_state *state)
>  =

>  	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
>  					    new_crtc_state, i) {
> -		ret =3D skl_allocate_pipe_ddb(new_crtc_state);
> +		ret =3D skl_allocate_pipe_ddb(state, crtc);
>  		if (ret)
>  			return ret;
>  =

> @@ -6092,7 +6097,6 @@ skl_compute_wm(struct intel_atomic_state *state)
>  {
>  	struct intel_crtc *crtc;
>  	struct intel_crtc_state *new_crtc_state;
> -	struct intel_crtc_state *old_crtc_state;
>  	int ret, i;
>  =

>  	ret =3D skl_ddb_add_affected_pipes(state);
> @@ -6104,9 +6108,8 @@ skl_compute_wm(struct intel_atomic_state *state)
>  	 * Note that skl_ddb_add_affected_pipes may have added more CRTC's that
>  	 * weren't otherwise being modified if pipe allocations had to change.
>  	 */
> -	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
> -					    new_crtc_state, i) {
> -		ret =3D skl_build_pipe_wm(new_crtc_state);
> +	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> +		ret =3D skl_build_pipe_wm(state, crtc);
>  		if (ret)
>  			return ret;
>  	}
> @@ -6124,8 +6127,7 @@ skl_compute_wm(struct intel_atomic_state *state)
>  	 * based on how much ddb is available. Now we can actually
>  	 * check if the final watermarks changed.
>  	 */
> -	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
> -					    new_crtc_state, i) {
> +	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
>  		ret =3D skl_wm_add_affected_planes(state, crtc);
>  		if (ret)
>  			return ret;
> -- =

> 2.26.2
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
