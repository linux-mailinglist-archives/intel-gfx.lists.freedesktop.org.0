Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 32B7F1FD165
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2020 17:57:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87F6B6E104;
	Wed, 17 Jun 2020 15:57:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BD036E104
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jun 2020 15:57:23 +0000 (UTC)
IronPort-SDR: wanDSWASQNfAwG6AH+5clC8tIADhdgGgOJg6hCHs+lLqFUoR5bpZCL8okJirP38aMYt7dSdazY
 oKGma2Qiy3OQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2020 08:57:22 -0700
IronPort-SDR: rJHR6b2ITT7k34QHdocZP76rt4Ry236xNHSZmEXcROWEEeCE3ctSFQRnnOX7Hi36A6EruN7Sp1
 rpt6eSNYLBrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,523,1583222400"; d="scan'208";a="261765998"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 17 Jun 2020 08:57:20 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 17 Jun 2020 18:57:19 +0300
Date: Wed, 17 Jun 2020 18:57:19 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Karthik B S <karthik.b.s@intel.com>
Message-ID: <20200617155719.GN6112@intel.com>
References: <20200528053931.29282-1-karthik.b.s@intel.com>
 <20200528053931.29282-4-karthik.b.s@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200528053931.29282-4-karthik.b.s@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v3 3/5] drm/i915: Add checks specific to
 async flips
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
Cc: intel-gfx@lists.freedesktop.org, paulo.r.zanoni@intel.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, May 28, 2020 at 11:09:29AM +0530, Karthik B S wrote:
> Support added only for async flips on primary plane.
> If flip is requested on any other plane, reject it.
> =

> Make sure there is no change in fbc, offset and framebuffer modifiers
> when async flip is requested.
> =

> If any of these are modified, reject async flip.
> =

> v2: -Replace DRM_ERROR (Paulo)
>     -Add check for changes in OFFSET, FBC, RC(Paulo)
> =

> v3: -Removed TODO as benchmarking tests have been run now.
> =

> Signed-off-by: Karthik B S <karthik.b.s@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 55 ++++++++++++++++++++
>  1 file changed, 55 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index eb1c360431ae..2307f924732c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -14798,6 +14798,53 @@ static bool intel_cpu_transcoders_need_modeset(s=
truct intel_atomic_state *state,
>  	return false;
>  }
>  =

> +static int intel_atomic_check_async(struct intel_atomic_state *state)
> +{
> +	struct drm_plane *plane;
> +	struct drm_plane_state *plane_state;
> +	struct intel_crtc_state *old_crtc_state, *new_crtc_state;
> +	struct intel_plane_state *new_plane_state, *old_plane_state;
> +	struct intel_crtc *crtc;
> +	struct intel_plane *intel_plane;
> +	int i, j;
> +
> +	/*FIXME: Async flip is only supported for primary plane currently
> +	 * Support for overlays to be added.
> +	 */
> +	for_each_new_plane_in_state(&state->base, plane, plane_state, j) {
> +		if (plane->type !=3D DRM_PLANE_TYPE_PRIMARY) {

I think skl+ can do async flips on any universal planes. Earlier
platforms were limited to primary only I think. Can't remember if g4x
already had usable async flip via mmio. Pretty sure at least ilk+ had
it.

Also intel_ types are preferred, so this should use those, and I
think since we're talking about hw planes we should rather check for
PLANE_PRIMARY here.

> +			DRM_DEBUG_KMS("Async flips is NOT supported for non-primary plane\n");
> +			return -EINVAL;
> +		}
> +	}
> +
> +	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
> +					    new_crtc_state, i) {
> +		if (old_crtc_state->enable_fbc !=3D new_crtc_state->enable_fbc) {

enable_fbc is bork, so this probably doesn't do anything particularly
sensible.

> +			DRM_DEBUG_KMS("FBC status cannot be changed in async flip\n");
> +			return -EINVAL;
> +		}
> +	}
> +
> +	for_each_oldnew_intel_plane_in_state(state, intel_plane, old_plane_stat=
e,
> +					     new_plane_state, i) {
> +		if ((old_plane_state->color_plane[0].x !=3D
> +		     new_plane_state->color_plane[0].x) ||
> +		    (old_plane_state->color_plane[0].y !=3D
> +		     new_plane_state->color_plane[0].y)) {

Don't think we've even calculated those by the time you call this. So
this stuff has to be called much later I think.

> +			DRM_DEBUG_KMS("Offsets cannot be changed in async\n");
> +			return -EINVAL;
> +		}
> +
> +		if (old_plane_state->uapi.fb->modifier !=3D
> +		    new_plane_state->uapi.fb->modifier) {

We seem to be missing a lot of state here. Basically I think async flip
can *only* change the plane surface address, so anything else changing
we should reject. I guess if this comes in via the legacy page flip path
the code/helpers do prevent most other things changing, but not sure.
I don't really like relying on such core checks since someone could
blindly expose this via the atomic ioctl without having those same
restrictions in place.

We might also want a dedicated plane hook for async flips since writing
all the plane registers for these is rather pointless. I'm not even sure
what happens with all the other double buffered registers if you write
them and then do an async surface address update.

Also if we want more accurate timestmaps based on the flip timestamp
register then we're going to have to limit async flips to single plane
per pipe at a time becasue the timestamp can only be sampled from
a single plane.

> +			DRM_DEBUG_KMS("Framebuffer modifiers cannot be changed in async flip\=
n");
> +			return -EINVAL;
> +		}
> +	}
> +	return 0;
> +}
> +
>  /**
>   * intel_atomic_check - validate state object
>   * @dev: drm device
> @@ -14825,6 +14872,14 @@ static int intel_atomic_check(struct drm_device =
*dev,
>  	if (ret)
>  		goto fail;
>  =

> +	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> +		if (new_crtc_state->uapi.async_flip) {
> +			ret =3D intel_atomic_check_async(state);

Kinda redundant to call this multiple times. I think the async_flip flag
is actually misplaced. It should probably be in the drm_atomic_state
instead of the crtc state.

Also still not a huge fan of using the "async flip" termonology in
the drm core. IMO we should just adopt the vulkan terminology for
this stuff so it's obviuos what people mean when they talk about these
things.

> +			if  (ret)
> +				goto fail;
> +		}
> +	}
> +
>  	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
>  					    new_crtc_state, i) {
>  		if (!needs_modeset(new_crtc_state)) {
> -- =

> 2.17.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
