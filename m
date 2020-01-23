Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C50B146986
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 14:47:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90BA76E081;
	Thu, 23 Jan 2020 13:47:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 765556E081
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jan 2020 13:47:53 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jan 2020 05:47:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,354,1574150400"; d="scan'208";a="220668926"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 23 Jan 2020 05:47:49 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 23 Jan 2020 15:47:48 +0200
Date: Thu, 23 Jan 2020 15:47:48 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <20200123134748.GM13686@intel.com>
References: <20200123132659.725-1-anshuman.gupta@intel.com>
 <20200123132659.725-4-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200123132659.725-4-anshuman.gupta@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [RFC 3/6] drm/i915: Fix wrongly populated plane
 possible_crtcs bit mask
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 23, 2020 at 06:56:56PM +0530, Anshuman Gupta wrote:
> As a disabled pipe in pipe_mask is not having a valid intel crtc,
> driver wrongly populates the possible_crtcs mask while initializing
> the plane for a CRTC. Fixing up the plane possible_crtc mask.
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 23 ++++++++++++++++++++
>  1 file changed, 23 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index afd8d43160c6..b250b31f6000 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -16407,6 +16407,28 @@ static void intel_crtc_free(struct intel_crtc *c=
rtc)
>  	kfree(crtc);
>  }
>  =

> +static void intel_plane_possible_crtc_fixup(struct drm_i915_private *dev=
_priv)
> +{
> +	struct intel_crtc *crtc;
> +	struct intel_plane *plane;
> +
> +	/*
> +	 * if in case the disabled fused pipe is not the last pipe,
> +	 * it requires to fix the wrong populated possible_crtcs mask.
> +	 */
> +	if (is_power_of_2(INTEL_INFO(dev_priv)->pipe_mask + 1))
> +		return;

I don't undestand what you're trying to do here. Looks totally
pointless.

> +
> +	for_each_intel_crtc(&dev_priv->drm, crtc) {
> +		for_each_intel_plane_on_crtc(&dev_priv->drm, crtc, plane) {
> +			if (WARN_ON(!(plane->base.possible_crtcs & BIT(crtc->pipe))))
> +				return;

Rather ugly abuse of possible_crtcs. I would remove the current
possible_crtcs assignments totally, and just do something simple like

for_each_intel_plane() {
	crtc =3D crtc_for_pipe(plane->pipe);
	plane->possible_crtcs =3D crtc_mask(&crtc->base);
}


> +			plane->base.possible_crtcs =3D
> +					drm_crtc_mask(&crtc->base);
> +		}
> +	}
> +}
> +
>  static int intel_crtc_init(struct drm_i915_private *dev_priv, enum pipe =
pipe)
>  {
>  	struct intel_plane *primary, *cursor;
> @@ -17544,6 +17566,7 @@ int intel_modeset_init(struct drm_i915_private *i=
915)
>  		}
>  	}
>  =

> +	intel_plane_possible_crtc_fixup(i915);
>  	intel_shared_dpll_init(dev);
>  	intel_update_fdi_pll_freq(i915);
>  =

> -- =

> 2.24.0

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
