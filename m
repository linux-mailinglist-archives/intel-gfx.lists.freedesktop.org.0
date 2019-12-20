Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D6D7128051
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2019 17:04:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7377D6E0ED;
	Fri, 20 Dec 2019 16:04:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE3796E0ED
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Dec 2019 16:04:37 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Dec 2019 08:04:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,336,1571727600"; d="scan'208";a="248728393"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 20 Dec 2019 08:04:34 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 20 Dec 2019 18:04:34 +0200
Date: Fri, 20 Dec 2019 18:04:34 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20191220160434.GQ1208@intel.com>
References: <20191220152954.83276-1-jose.souza@intel.com>
 <20191220152954.83276-6-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191220152954.83276-6-jose.souza@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v5 6/7] drm/i915/display: Check if pipe
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

On Fri, Dec 20, 2019 at 07:29:53AM -0800, Jos=E9 Roberto de Souza wrote:
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

> v4:
> - added a function to return if MST master neeeds modeset to simply
> code in intel_atomic_check()
> =

> v5:
> - fixed and moved code to check if MST master needs a modeset
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Manasi Navare <manasi.d.navare@intel.com>
> Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 70 ++++++++++++++++----
>  1 file changed, 57 insertions(+), 13 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 24841dde490b..11f2c13ec23e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -13909,19 +13909,6 @@ static void intel_crtc_check_fastset(const struc=
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
> @@ -14032,6 +14019,20 @@ static int intel_atomic_check_crtcs(struct intel=
_atomic_state *state)
>  	return 0;
>  }
>  =

> +static bool intel_cpu_transcoder_needs_modeset(struct intel_atomic_state=
 *state,
> +					       enum transcoder transcoder)
> +{
> +	struct intel_crtc_state *new_crtc_state;
> +	struct intel_crtc *crtc;
> +	int i;
> +
> +	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
> +		if (new_crtc_state->cpu_transcoder =3D=3D transcoder)
> +			return needs_modeset(new_crtc_state);
> +
> +	return false;
> +}

I would highly recommend splitting this patch into two before pushing
so that the check vs. copy split goes in first, then the MST thing on
top. That way if we have to revert either MST or port sync then at
least we keep this part and won't break the other feature in the
process.

> +
>  /**
>   * intel_atomic_check - validate state object
>   * @dev: drm device
> @@ -14089,6 +14090,49 @@ static int intel_atomic_check(struct drm_device =
*dev,
>  			any_ms =3D true;
>  	}

Was going to say this any_ms thing has to move, but I guess not really
since the below loop won't do anything unless we still have at least
one crtc needing a modeset. Probably should move it, but can be done
later.

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
> +		enum transcoder master =3D new_crtc_state->mst_master_transcoder;
> +
> +		if (!new_crtc_state->uapi.enable ||

These uapi.enable checks seem fishy. Should at least be hw.enable since
we're past .compute_config() stage already.

> +		    !intel_dp_mst_is_slave_trans(new_crtc_state) ||
> +		    needs_modeset(new_crtc_state))
> +			continue;
> +
> +		if (intel_cpu_transcoder_needs_modeset(state, master)) {
> +			new_crtc_state->uapi.mode_changed =3D true;
> +			new_crtc_state->update_pipe =3D false;
> +		}
> +	}
> +
> +	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
> +					    new_crtc_state, i) {
> +		if (!new_crtc_state->uapi.enable ||
> +		    needs_modeset(new_crtc_state) ||
> +		    !new_crtc_state->update_pipe)
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

Still sad.

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
