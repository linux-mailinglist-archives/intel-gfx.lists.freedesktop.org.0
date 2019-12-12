Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AA0D11D887
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 22:28:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97EC86E1F5;
	Thu, 12 Dec 2019 21:28:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7625B6E1F5
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 21:28:34 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Dec 2019 13:28:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,307,1571727600"; d="scan'208";a="204106543"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 12 Dec 2019 13:28:31 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 12 Dec 2019 23:28:30 +0200
Date: Thu, 12 Dec 2019 23:28:30 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20191212212830.GW1208@intel.com>
References: <20191211184526.142413-1-jose.souza@intel.com>
 <20191211184526.142413-10-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191211184526.142413-10-jose.souza@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 rebased 10/11] drm/i915/display: Check if
 pipe fastset is allowed by external dependencies
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

On Wed, Dec 11, 2019 at 10:45:25AM -0800, Jos=E9 Roberto de Souza wrote:
> Check if fastset is allowed by external dependencies like other pipes
> and transcoders.
> =

> Right now it only forces a fullmodeset when the MST master transcoder
> did not changed but the pipe of the master transcoder needs a
> fullmodeset so all slaves also needs to do a fullmodeset.
> But it will probably be need for port sync as well.
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Manasi Navare <manasi.d.navare@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 41 ++++++++++++++++++++
>  1 file changed, 41 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 092412b10d7c..0c24d7dfa152 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -13930,11 +13930,52 @@ static int calc_watermark_data(struct intel_ato=
mic_state *state)
>  	return 0;
>  }
>  =

> +/**
> + * Check if fastset is allowed by external dependencies like other pipes=
 and
> + * transcoders.
> + *
> + * Right now it only forces a fullmodeset when the MST master transcoder=
 did
> + * not changed but the pipe of the master transcoder needs a fullmodeset=
 so
> + * all slaves also needs to do a fullmodeset.
> + */
> +static bool
> +intel_crtc_check_external_dependencies_fastset(const struct intel_crtc_s=
tate *old_crtc_state,
> +					       struct intel_crtc_state *new_crtc_state)
> +{
> +	struct intel_atomic_state *state =3D to_intel_atomic_state(new_crtc_sta=
te->uapi.state);
> +	struct drm_i915_private *dev_priv =3D to_i915(new_crtc_state->uapi.crtc=
->dev);
> +	struct intel_crtc_state *new_crtc_state_iter;
> +	struct intel_crtc *crtc_iter;
> +	int i;
> +
> +	if (INTEL_GEN(dev_priv) < 12)
> +		return true;
> +
> +	if (!intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DP_MST) ||
> +	    intel_dp_mst_is_master_trans(new_crtc_state))
> +		return true;
> +
> +	for_each_new_intel_crtc_in_state(state, crtc_iter, new_crtc_state_iter,=
 i) {
> +		if (new_crtc_state_iter->cpu_transcoder !=3D
> +		    new_crtc_state->mst_master_transcoder)
> +			continue;
> +
> +		return !needs_modeset(new_crtc_state_iter);
> +	}
> +
> +	DRM_ERROR("Master MST transcoder of pipe not found\n");
> +	return false;
> +}
> +
>  static void intel_crtc_check_fastset(const struct intel_crtc_state *old_=
crtc_state,
>  				     struct intel_crtc_state *new_crtc_state)
>  {
>  	if (!intel_pipe_config_compare(old_crtc_state, new_crtc_state, true))
>  		return;
> +	if (!intel_crtc_check_external_dependencies_fastset(old_crtc_state,
> +							    new_crtc_state))
> +		return;

I don't think this will work. We've not yet .compute_config()'d
everything so the master assignments are still up in the air.

I think we need the logic higher up in intel_atomic_check():

for_each_crtc()
	compute_config()
	if (can_fastset())
		needs_modeset=3Dfalse
		update_pipe=3Dtrue;
	}
}

for_each_crtc()
	if (mst_slave && master.needs_modeset() {
		needs_modeset=3Dtrue;
		update_pipe=3Dfalse;
	}

for_each_crtc()
	if (update_pipe)
		copy_over_old_state();

	=

+ we should probably rename/split update_pipes or add some
lkind of needs_fastset() wrapper to make this less confusing.


> +
>  =

>  	new_crtc_state->uapi.mode_changed =3D false;
>  	new_crtc_state->update_pipe =3D true;
> -- =

> 2.24.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
