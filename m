Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 63F3B30280F
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 17:40:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57E186E1A8;
	Mon, 25 Jan 2021 16:40:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C0526E1A8
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Jan 2021 16:40:36 +0000 (UTC)
IronPort-SDR: o1yOgO7rkptwpBS2JwkNNob62hg/AtHZe2QLOmFgDDXkPju9INF5MuYEdDn9wxslI6bLUsSypf
 3CwmkBcJ6wWw==
X-IronPort-AV: E=McAfee;i="6000,8403,9875"; a="241292072"
X-IronPort-AV: E=Sophos;i="5.79,374,1602572400"; d="scan'208";a="241292072"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2021 08:40:34 -0800
IronPort-SDR: T8phcNObC7FP2flaFo1dEn4Fs3UNb073h8fFPMEa1ZLv+H5pjB+NT76qfsfSvCx+Y51qtlyfyN
 tbf+omc2TTcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,374,1602572400"; d="scan'208";a="472385959"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 25 Jan 2021 08:40:28 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 25 Jan 2021 18:40:27 +0200
Date: Mon, 25 Jan 2021 18:40:27 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YA70e4YGxQaJ66zJ@intel.com>
References: <cover.1611589818.git.jani.nikula@intel.com>
 <abbfe5a4a18f8258a92c06e7fbd4ea695bd3ca48.1611589818.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <abbfe5a4a18f8258a92c06e7fbd4ea695bd3ca48.1611589818.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 2/9] drm/i915/edp: reject modes with
 dimensions other than fixed mode
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
Cc: intel-gfx@lists.freedesktop.org, Nischal Varide <nischal.varide@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 25, 2021 at 05:52:26PM +0200, Jani Nikula wrote:
> Be more strict about filtering modes for eDP.
> =

> Cc: Nischal Varide <nischal.varide@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 8979996f1747..6afea0681ce9 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -787,10 +787,10 @@ intel_dp_mode_valid(struct drm_connector *connector,
>  		return MODE_H_ILLEGAL;
>  =

>  	if (intel_dp_is_edp(intel_dp) && fixed_mode) {
> -		if (mode->hdisplay > fixed_mode->hdisplay)
> +		if (mode->hdisplay !=3D fixed_mode->hdisplay)
>  			return MODE_PANEL;
>  =

> -		if (mode->vdisplay > fixed_mode->vdisplay)
> +		if (mode->vdisplay !=3D fixed_mode->vdisplay)
>  			return MODE_PANEL;

Yeah, I think this makes sense since we never use anything
but the fixed_mode for the actual timings. I don't think I've
ever seen a display that would advertise multiple resolution.
And I think that would actually indicate that the panel can
really accept different resolutions, which we would never do
anyway.

The old behaviour would make more sense if we allowed userspace
to add custom modes to the mode list. But we don't. All custom
pfit scaled modes I think are always a purely userspace thing
(based on the presence of the scaling mode prop).

We should probably do this for the output types as well.
Not quite sure what to do about SDVO (and maybe DVO) so
probably ignore those for now.


>  =

>  		target_clock =3D fixed_mode->clock;
> -- =

> 2.20.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
