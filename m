Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F13314F2DE
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 20:39:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA6E46FBE0;
	Fri, 31 Jan 2020 19:39:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FBE96FBE0
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 19:39:10 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jan 2020 11:39:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,386,1574150400"; d="scan'208";a="218706746"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 31 Jan 2020 11:39:06 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 31 Jan 2020 21:39:05 +0200
Date: Fri, 31 Jan 2020 21:39:05 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>
Message-ID: <20200131193905.GW13686@intel.com>
References: <20200201031951.3209-1-matthew.s.atwood@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200201031951.3209-1-matthew.s.atwood@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [v2] drm/i915/tgl: Add Wa_1606054188:tgl
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
Cc: intel-gfx@lists.freedesktop.org,
 Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 31, 2020 at 10:19:51PM -0500, Matt Atwood wrote:
> On Tiger Lake we do not support source keying in the pixel formats P010,
> P012, P016.
> =

> v2: Move WA to end of function. Create helper function for format
> check. Less verbose debugging messaging.
> =

> Bspec: 52890
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Manasi Navare <manasi.d.navare@intel.com>
> CC: Ville Syrj=E4l=E4 <ville.syrjala@intel.com>

Wrong address

> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_sprite.c | 22 +++++++++++++++++++++
>  1 file changed, 22 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/dr=
m/i915/display/intel_sprite.c
> index 2f277d1fc6f1..6e4d73588b48 100644
> --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> @@ -2070,6 +2070,18 @@ vlv_sprite_check(struct intel_crtc_state *crtc_sta=
te,
>  	return 0;
>  }
>  =

> +static bool intel_format_is_p01x(int format)
                                    ^^^
u32

> +{
> +	switch(format){

Missing spaces

> +		case DRM_FORMAT_P010:
> +		case DRM_FORMAT_P012:
> +		case DRM_FORMAT_P016:
> +			return true;
> +		default:
> +			return false;

Wrong indentantion

> +	}
> +}
> +
>  static int skl_plane_check_fb(const struct intel_crtc_state *crtc_state,
>  			      const struct intel_plane_state *plane_state)
>  {
> @@ -2143,6 +2155,16 @@ static int skl_plane_check_fb(const struct intel_c=
rtc_state *crtc_state,
>  		return -EINVAL;
>  	}
>  =

> +	/* Wa_1606054188:tgl
> +	 *
> +	 * TODO: Add format RGB64i when implemented.
> +	 *
> +	 */

Wrong comment format

> +	if(IS_GEN(dev_priv, 12) &&

Missing space

> +	   plane_state->ckey.flags & I915_SET_COLORKEY_SOURCE &&
> +	   intel_format_is_p01x(fb->format->format))
> +		DRM_DEBUG_KMS("Source color keying not supported with P01x formats\n");

Missing error return.

Was also going to suggest you should use drm_dbg_kms() now, but
looks like this file hasn't been converted yet. Well, I guess
there'd be no harm in using drm_dbg_kms() anyway if you want.

As for the w/a itself, not sure it's any more broken than any other
planar format (don't have the hw to test it right now). But I just
tried my wip colorkey test on glk with nv12/p010 and while it
more or less seems to work the chroma upsampling is definitely
making it impossible to test with crcs. I guess we'll get to
testing out eventually to see if it is actually more broken than
that. Certainly wouldn't be the first time the hw has issues with
the >8bpc to 8bpc conversion for the key match. Just a bit
surprising that it would be limited to just the specific combo
of tgl and P01x formats.

> +
>  	return 0;
>  }
>  =

> -- =

> 2.21.1
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
