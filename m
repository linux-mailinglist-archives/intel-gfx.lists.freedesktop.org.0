Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1442214BE49
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 18:05:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F97C6E0EB;
	Tue, 28 Jan 2020 17:05:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8E838989F
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2020 17:05:41 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jan 2020 09:05:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,374,1574150400"; d="scan'208";a="222808504"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 28 Jan 2020 09:05:39 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 28 Jan 2020 19:05:38 +0200
Date: Tue, 28 Jan 2020 19:05:38 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>
Message-ID: <20200128170538.GN13686@intel.com>
References: <20200117091627.1697-1-matthew.s.atwood@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200117091627.1697-1-matthew.s.atwood@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Add Wa_1606054188;tgl
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

On Fri, Jan 17, 2020 at 04:16:28AM -0500, Matt Atwood wrote:
> On Tiger Lake we do not support source keying in the pixel formats P010,
> P012, P016.
> =

> Bspec: 52890
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_sprite.c | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/dr=
m/i915/display/intel_sprite.c
> index fca77ec1e0dd..67176524e60f 100644
> --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> @@ -2049,6 +2049,19 @@ static int skl_plane_check_fb(const struct intel_c=
rtc_state *crtc_state,
>  	unsigned int rotation =3D plane_state->hw.rotation;
>  	struct drm_format_name_buf format_name;
>  =

> +	/* Wa_1606054188;tgl
> +	 *
> +	 * TODO: Add format RGB64i when implemented
> +	 *
> +	 */
> +	if (IS_GEN(dev_priv, 12) &&
> +	    (plane_state->ckey.flags & I915_SET_COLORKEY_SOURCE))
> +		if (fb->format->format & (DRM_FORMAT_P010 | DRM_FORMAT_P012
> +		    | DRM_FORMAT_P016)) {

if (a && b && c)

Needless parens.

Continuing | should go to the end. Also alignment is borked.

> +			DRM_DEBUG_KMS("GEN12 does not support source color key planes in form=
ats P01x\n");

Feels a bit overly verbose:
"Source color keying not supported with P01x formats\n"

> +			return -EINVAL;
> +		}
> +
>  	if (!fb)
>  		return 0;

What Manasi said. In fact pls move the thing to the end of the function
because I have more color key checks queued up in a branch and IIRC
I put them to the very end of the function.

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
