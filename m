Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F3FF4B9ADA
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Feb 2022 09:27:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E426010EADE;
	Thu, 17 Feb 2022 08:27:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0924E10EAD9
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Feb 2022 08:27:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645086422; x=1676622422;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=RdTkeqgCbsmkkhFTU5NJznorClmMnL/pFRUEcVvbsdI=;
 b=mH1H5Mraup13U9STpGNq/wCBmwYNfs+vH9TOrNEAqH6FDffPeVN47vFG
 ZThkEQbc9X2qoDjkIjjb92+dsK6qJ4mmnQv7CZizR+Dva2smGLgjWLFWF
 aU0Nn/s6P+BA69ey7FUN28lqIwtxA7aD/sxSAo4gTGxF6Spw+n1Eb8BSH
 QXX2YPddp81p7CIyxdGjEa/RjaK5JB9ZPOOISj+ldGCG304HCPCS/3FAK
 G/LzPHBjRMz4+b9cH1/ueHuU6k7Wnwb5HyyEW2uz40bz2S3X/U9EuNnat
 tfWyadB8OMvh5gZ91KGjG6mBNK5CLagXk2fxviPwRLDuMRK3S7Jd7Mqtm Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10260"; a="314092588"
X-IronPort-AV: E=Sophos;i="5.88,375,1635231600"; d="scan'208";a="314092588"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2022 00:27:01 -0800
X-IronPort-AV: E=Sophos;i="5.88,375,1635231600"; d="scan'208";a="636970750"
Received: from acushion-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.21.45])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2022 00:27:00 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220215183208.6143-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220215183208.6143-1-ville.syrjala@linux.intel.com>
 <20220215183208.6143-5-ville.syrjala@linux.intel.com>
Date: Thu, 17 Feb 2022 10:26:57 +0200
Message-ID: <871r01525q.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 04/12] drm/i915: Extract
 intel_splitter_adjust_timings()
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 15 Feb 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Let's not replicate the same piece of code to expand
> the MSO segment timings to full width in many places.
> Pull it into a helper

Did I duplicate that? Yuck.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 54 ++++++++++----------
>  1 file changed, 26 insertions(+), 28 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 5da8db3dda8f..70017526fa81 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2724,6 +2724,30 @@ static void intel_crtc_compute_pixel_rate(struct i=
ntel_crtc_state *crtc_state)
>  			ilk_pipe_pixel_rate(crtc_state);
>  }
>=20=20
> +static void intel_splitter_adjust_timings(const struct intel_crtc_state =
*crtc_state,
> +					  struct drm_display_mode *mode)
> +{
> +	int overlap =3D crtc_state->splitter.pixel_overlap;
> +	int n =3D crtc_state->splitter.link_count;
> +
> +	if (!crtc_state->splitter.enable)
> +		return;
> +
> +	/*
> +	 * eDP MSO uses segment timings from EDID for transcoder
> +	 * timings, but full mode for everything else.
> +	 *
> +	 * h_full =3D (h_segment - pixel_overlap) * link_count
> +	 */
> +	mode->crtc_hdisplay =3D (mode->crtc_hdisplay - overlap) * n;
> +	mode->crtc_hblank_start =3D (mode->crtc_hblank_start - overlap) * n;
> +	mode->crtc_hblank_end =3D (mode->crtc_hblank_end - overlap) * n;
> +	mode->crtc_hsync_start =3D (mode->crtc_hsync_start - overlap) * n;
> +	mode->crtc_hsync_end =3D (mode->crtc_hsync_end - overlap) * n;
> +	mode->crtc_htotal =3D (mode->crtc_htotal - overlap) * n;
> +	mode->crtc_clock *=3D n;
> +}
> +
>  static void intel_crtc_readout_derived_state(struct intel_crtc_state *cr=
tc_state)
>  {
>  	struct drm_display_mode *mode =3D &crtc_state->hw.mode;
> @@ -2747,22 +2771,7 @@ static void intel_crtc_readout_derived_state(struc=
t intel_crtc_state *crtc_state
>  	}
>=20=20
>  	if (crtc_state->splitter.enable) {
> -		int n =3D crtc_state->splitter.link_count;
> -		int overlap =3D crtc_state->splitter.pixel_overlap;
> -
> -		/*
> -		 * eDP MSO uses segment timings from EDID for transcoder
> -		 * timings, but full mode for everything else.
> -		 *
> -		 * h_full =3D (h_segment - pixel_overlap) * link_count
> -		 */
> -		pipe_mode->crtc_hdisplay =3D (pipe_mode->crtc_hdisplay - overlap) * n;
> -		pipe_mode->crtc_hblank_start =3D (pipe_mode->crtc_hblank_start - overl=
ap) * n;
> -		pipe_mode->crtc_hblank_end =3D (pipe_mode->crtc_hblank_end - overlap) =
* n;
> -		pipe_mode->crtc_hsync_start =3D (pipe_mode->crtc_hsync_start - overlap=
) * n;
> -		pipe_mode->crtc_hsync_end =3D (pipe_mode->crtc_hsync_end - overlap) * =
n;
> -		pipe_mode->crtc_htotal =3D (pipe_mode->crtc_htotal - overlap) * n;
> -		pipe_mode->crtc_clock *=3D n;
> +		intel_splitter_adjust_timings(crtc_state, pipe_mode);
>=20=20
>  		intel_mode_from_crtc_timings(pipe_mode, pipe_mode);
>  		intel_mode_from_crtc_timings(adjusted_mode, pipe_mode);
> @@ -2807,18 +2816,7 @@ static int intel_crtc_compute_config(struct intel_=
crtc *crtc,
>  		crtc_state->pipe_src_w /=3D 2;
>  	}
>=20=20
> -	if (crtc_state->splitter.enable) {
> -		int n =3D crtc_state->splitter.link_count;
> -		int overlap =3D crtc_state->splitter.pixel_overlap;
> -
> -		pipe_mode->crtc_hdisplay =3D (pipe_mode->crtc_hdisplay - overlap) * n;
> -		pipe_mode->crtc_hblank_start =3D (pipe_mode->crtc_hblank_start - overl=
ap) * n;
> -		pipe_mode->crtc_hblank_end =3D (pipe_mode->crtc_hblank_end - overlap) =
* n;
> -		pipe_mode->crtc_hsync_start =3D (pipe_mode->crtc_hsync_start - overlap=
) * n;
> -		pipe_mode->crtc_hsync_end =3D (pipe_mode->crtc_hsync_end - overlap) * =
n;
> -		pipe_mode->crtc_htotal =3D (pipe_mode->crtc_htotal - overlap) * n;
> -		pipe_mode->crtc_clock *=3D n;
> -	}
> +	intel_splitter_adjust_timings(crtc_state, pipe_mode);
>=20=20
>  	intel_mode_from_crtc_timings(pipe_mode, pipe_mode);

--=20
Jani Nikula, Intel Open Source Graphics Center
