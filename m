Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86A681980D3
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 18:19:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA8D16E439;
	Mon, 30 Mar 2020 16:19:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E87346E439
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Mar 2020 16:19:01 +0000 (UTC)
IronPort-SDR: XmjUydDAKvF+/wI79Z756qOg7OoxITEGdXD4FOao3XjMyq+suu1w99bzvKiggmK2kqgSl42Jw2
 ulx3gg1RWaQw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2020 09:19:01 -0700
IronPort-SDR: yl3NX82kNRvi0kTd1nEkUzMNdUE5CgM1AysEblDeQAipqYfRXkylqpGXEwEQkbFWPK/tO7UTcR
 uLx2bgqioLNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,324,1580803200"; d="scan'208";a="251935186"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 30 Mar 2020 09:18:58 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 30 Mar 2020 19:18:57 +0300
Date: Mon, 30 Mar 2020 19:18:57 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200330161857.GN13686@intel.com>
References: <20200330122354.24752-1-stanislav.lisovskiy@intel.com>
 <20200330122354.24752-3-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200330122354.24752-3-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v3 2/5] drm/i915: Force recalculate
 min_cdclk if planes config changed
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

On Mon, Mar 30, 2020 at 03:23:51PM +0300, Stanislav Lisovskiy wrote:
> In Gen11+ whenever we might exceed DBuf bandwidth we might need to
> recalculate CDCLK which DBuf bandwidth is scaled with.
> Total Dbuf bw used might change based on particular plane needs.
> =

> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 17d83f37f49f..9fd32d61ebfe 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -14623,7 +14623,7 @@ static bool active_planes_affects_min_cdclk(struc=
t drm_i915_private *dev_priv)
>  	/* See {hsw,vlv,ivb}_plane_ratio() */
>  	return IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv) ||
>  		IS_CHERRYVIEW(dev_priv) || IS_VALLEYVIEW(dev_priv) ||
> -		IS_IVYBRIDGE(dev_priv);
> +		IS_IVYBRIDGE(dev_priv) || (INTEL_GEN(dev_priv) >=3D 11);
>  }
>  =

>  static int intel_atomic_check_planes(struct intel_atomic_state *state,
> @@ -14669,7 +14669,13 @@ static int intel_atomic_check_planes(struct inte=
l_atomic_state *state,
>  		old_active_planes =3D old_crtc_state->active_planes & ~BIT(PLANE_CURSO=
R);
>  		new_active_planes =3D new_crtc_state->active_planes & ~BIT(PLANE_CURSO=
R);
>  =

> -		if (hweight8(old_active_planes) =3D=3D hweight8(new_active_planes))
> +		/*
> +		 * Not only the number of planes, but if the plane configuration had
> +		 * changed might already mean we need to recompute min CDCLK,
> +		 * because different planes might consume different amount of Dbuf ban=
dwidth
> +		 * according to formula: Bw per plane =3D Pixel rate * bpp * pipe/plan=
e scale factor
> +		 */

The set of of active planes doesn't dictate the bandwidth since it
doesn't consider most of the parameters you listed above. Ie. doesn't
seem to be the right place for this stuff.

The decision to bump the cdclk should really come from the dbuf code
not from some totally distinct piece of code. But to get this right
I have a feeling we'll need the dbuf state and totally decouple cdclk
from any_ms.

> +		if (old_active_planes =3D=3D new_active_planes)
>  			continue;
>  =

>  		ret =3D intel_crtc_add_planes_to_state(state, crtc, new_active_planes);
> -- =

> 2.24.1.485.gad05a3d8e5

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
