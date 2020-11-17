Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 26FA82B5585
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Nov 2020 01:06:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F6E26E0AF;
	Tue, 17 Nov 2020 00:06:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 506016E0AF
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Nov 2020 00:06:40 +0000 (UTC)
IronPort-SDR: SUCiGPB4PYYNwrvkH3A56n3QKIcZ1MwRN9w4LRQVm21GMbKuCr/Pof8EqR2xGXVflehJd5nLZ8
 DLwbQ8wapjoA==
X-IronPort-AV: E=McAfee;i="6000,8403,9807"; a="234987068"
X-IronPort-AV: E=Sophos;i="5.77,483,1596524400"; d="scan'208";a="234987068"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2020 16:06:32 -0800
IronPort-SDR: +ZpcDQzfmXcOMocyqvV+5MdlD6+4GIh+jDmt3HtzHr+z1kIfJBYMF4AOeG3dfghbV/O2MzukBx
 rkAmClgF8SUw==
X-IronPort-AV: E=Sophos;i="5.77,483,1596524400"; d="scan'208";a="310044298"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2020 16:06:31 -0800
Date: Mon, 16 Nov 2020 16:09:01 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20201117000901.GA29250@labuser-Z97X-UD5H>
References: <20201113220358.24794-1-ville.syrjala@linux.intel.com>
 <20201113220358.24794-17-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201113220358.24794-17-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 16/23] drm/i915: Add planes affected by
 bigjoiner to the state
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

On Sat, Nov 14, 2020 at 12:03:51AM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Make sure both the bigjoiner "master" and "slave" plane are
> in the state whenever either of them is in the state.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 42 ++++++++++++++++++++
>  1 file changed, 42 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 465877097582..1118ff73c0d4 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -15069,6 +15069,44 @@ static bool active_planes_affects_min_cdclk(stru=
ct drm_i915_private *dev_priv)
>  		IS_IVYBRIDGE(dev_priv) || (INTEL_GEN(dev_priv) >=3D 11);
>  }
>  =

> +static int intel_crtc_add_bigjoiner_planes(struct intel_atomic_state *st=
ate,
> +					   struct intel_crtc *crtc,
> +					   struct intel_crtc *other)
> +{
> +	const struct intel_plane_state *plane_state;
> +	struct intel_plane *plane;
> +	u8 plane_ids =3D 0;
> +	int i;
> +
> +	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
> +		if (plane->pipe =3D=3D crtc->pipe)
> +			plane_ids |=3D BIT(plane->id);
> +	}
> +
> +	return intel_crtc_add_planes_to_state(state, other, plane_ids);

We call this function intel_crtc_add_planes_to_state again in intel_atomic_=
check_planes again at
the end, so arent we adding the planes to state twice for both master and s=
lave?

Do we need some condition to avoid adding it again at the end of intel_atom=
ic_check_planes ?

Manasi

> +}
> +
> +static int intel_bigjoiner_add_affected_planes(struct intel_atomic_state=
 *state)
> +{
> +	const struct intel_crtc_state *crtc_state;
> +	struct intel_crtc *crtc;
> +	int i;
> +
> +	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
> +		int ret;
> +
> +		if (!crtc_state->bigjoiner)
> +			continue;
> +
> +		ret =3D intel_crtc_add_bigjoiner_planes(state, crtc,
> +						      crtc_state->bigjoiner_linked_crtc);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	return 0;
> +}
> +
>  static int intel_atomic_check_planes(struct intel_atomic_state *state)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> @@ -15082,6 +15120,10 @@ static int intel_atomic_check_planes(struct inte=
l_atomic_state *state)
>  	if (ret)
>  		return ret;
>  =

> +	ret =3D intel_bigjoiner_add_affected_planes(state);
> +	if (ret)
> +		return ret;
> +
>  	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
>  		ret =3D intel_plane_atomic_check(state, plane);
>  		if (ret) {
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
