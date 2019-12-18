Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AD9D124E95
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 18:00:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B8556E914;
	Wed, 18 Dec 2019 17:00:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6035E6E914
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Dec 2019 17:00:38 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Dec 2019 09:00:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,330,1571727600"; d="scan'208";a="247951018"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 18 Dec 2019 09:00:20 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 18 Dec 2019 19:00:19 +0200
Date: Wed, 18 Dec 2019 19:00:19 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20191218170019.GO1208@intel.com>
References: <20191216220742.34332-1-jose.souza@intel.com>
 <20191216220742.34332-10-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191216220742.34332-10-jose.souza@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v3 10/11] drm/i915/display: Check if pipe
 fastset is allowed by external dependencies
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Dec 16, 2019 at 02:07:41PM -0800, Jos=E9 Roberto de Souza wrote:
> Check if fastset is allowed by external dependencies like other pipes
> and transcoders.
> =

> Right now this patch only forces a fullmodeset in MST slaves of MST
> masters that needs a fullmodeset but it will be needed for port sync
> as well.
> =

> v3:
> - moved handling to intel_atomic_check() this way is guarantee that
> all pipes will have its state computed
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Manasi Navare <manasi.d.navare@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 63 ++++++++++++++++----
>  1 file changed, 50 insertions(+), 13 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index f1c0687bf69b..2627a7bcb45c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -13941,19 +13941,6 @@ static void intel_crtc_check_fastset(const struc=
t intel_crtc_state *old_crtc_sta
>  =

>  	new_crtc_state->uapi.mode_changed =3D false;
>  	new_crtc_state->update_pipe =3D true;
> -
> -	/*
> -	 * If we're not doing the full modeset we want to
> -	 * keep the current M/N values as they may be
> -	 * sufficiently different to the computed values
> -	 * to cause problems.
> -	 *
> -	 * FIXME: should really copy more fuzzy state here
> -	 */
> -	new_crtc_state->fdi_m_n =3D old_crtc_state->fdi_m_n;
> -	new_crtc_state->dp_m_n =3D old_crtc_state->dp_m_n;
> -	new_crtc_state->dp_m2_n2 =3D old_crtc_state->dp_m2_n2;
> -	new_crtc_state->has_drrs =3D old_crtc_state->has_drrs;
>  }
>  =

>  static int intel_crtc_add_planes_to_state(struct intel_atomic_state *sta=
te,
> @@ -14121,6 +14108,56 @@ static int intel_atomic_check(struct drm_device =
*dev,
>  			any_ms =3D true;
>  	}
>  =

> +	/**
> +	 * Check if fastset is allowed by external dependencies like other
> +	 * pipes and transcoders.
> +	 *
> +	 * Right now it only forces a fullmodeset when the MST master
> +	 * transcoder did not changed but the pipe of the master transcoder
> +	 * needs a fullmodeset so all slaves also needs to do a fullmodeset.
> +	 */
> +	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> +		struct intel_crtc_state *new_crtc_state_iter;
> +		struct intel_crtc *crtc_iter;
> +		int j;
> +
> +		if (!intel_dp_mst_is_slave_trans(new_crtc_state) ||
> +		    needs_modeset(new_crtc_state))

shouldn't this be
if (!mst_master || !needs_modeset)
	continue;
?

> +			continue;
> +
> +		for_each_new_intel_crtc_in_state(state, crtc_iter,
> +						 new_crtc_state_iter, j) {
> +			if (new_crtc_state->mst_master_transcoder !=3D
> +			    new_crtc_state_iter->cpu_transcoder)
> +				continue;
> +
> +			if (needs_modeset(new_crtc_state_iter)) {
> +				new_crtc_state->uapi.mode_changed =3D true;
> +				new_crtc_state->update_pipe =3D false;
> +			}
> +			break;

Hmm. So I guess the break here is because we're going to keep iterating
the outer loop anyway? Don't think that works with the s/slave/master/
fix above.

I suggest moving this inner loop into a separate function entirely.
Could simply pass in the master_transcoder to that function and then
we wouldn't even have this clash with variable names for the two
crtcs/crtc_states.

Somethig like (with better funciton names ofc :)

mst_modeset_slaves(state, master_transcoder)
{
	for_each() {
		if (master_transcoder =3D=3D crtc_state->master_transcoder)
			modeset=3D1;
	}
}

atomic_check()
{
	for_each()
		compute();

	for_each() {
		if (master && needs_modeset()
			mst_modeset_slaves(state, crtc_state->cpu_transcoder);
	}

	for_each() {
		if (fastset)
			copy();
	}
}

Or do we also need to force a modeset for the master if a slave needs a
modeset? I'm trying to think if there's a way that we could end up with
a slave changing its master (thus needing modeset) without the master
being flagged for modeset...

> +		}
> +	}
> +
> +	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
> +					    new_crtc_state, i) {
> +		if (needs_modeset(new_crtc_state))
> +			continue;
> +
> +		/*
> +		 * If we're not doing the full modeset we want to
> +		 * keep the current M/N values as they may be
> +		 * sufficiently different to the computed values
> +		 * to cause problems.
> +		 *
> +		 * FIXME: should really copy more fuzzy state here
> +		 */
> +		new_crtc_state->fdi_m_n =3D old_crtc_state->fdi_m_n;
> +		new_crtc_state->dp_m_n =3D old_crtc_state->dp_m_n;
> +		new_crtc_state->dp_m2_n2 =3D old_crtc_state->dp_m2_n2;
> +		new_crtc_state->has_drrs =3D old_crtc_state->has_drrs;

A separate function for this fastset state copy might also be nice so we
don't have to see these mundane details in this higher level code.

> +	}
> +
>  	if (any_ms && !check_digital_port_conflicts(state)) {
>  		DRM_DEBUG_KMS("rejecting conflicting digital port configuration\n");
>  		ret =3D EINVAL;
> -- =

> 2.24.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
