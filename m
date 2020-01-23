Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DFF11469B2
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 14:51:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A41C76FCC2;
	Thu, 23 Jan 2020 13:51:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BEA26FCC7
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jan 2020 13:50:59 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jan 2020 05:50:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,354,1574150400"; d="scan'208";a="216263127"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 23 Jan 2020 05:50:55 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 23 Jan 2020 15:50:54 +0200
Date: Thu, 23 Jan 2020 15:50:54 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <20200123135054.GN13686@intel.com>
References: <20200123132659.725-1-anshuman.gupta@intel.com>
 <20200123132659.725-5-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200123132659.725-5-anshuman.gupta@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [RFC 4/6] drm/i915: Get right max plane stride
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

On Thu, Jan 23, 2020 at 06:56:57PM +0530, Anshuman Gupta wrote:
> intel_plane_fb_max_stride should return the max stride of
> primary plane for first available pipe in intel device info
> pipe_mask.
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index b250b31f6000..b9209b7e71d7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2703,12 +2703,15 @@ u32 intel_plane_fb_max_stride(struct drm_i915_pri=
vate *dev_priv,
>  {
>  	struct intel_crtc *crtc;
>  	struct intel_plane *plane;
> +	enum pipe pipe;
>  =

>  	/*
>  	 * We assume the primary plane for pipe A has
> -	 * the highest stride limits of them all.
> +	 * the highest stride limits of them all,
> +	 * if in case pipe A is disabled, use the first pipe from pipe_mask.
>  	 */
> -	crtc =3D intel_get_crtc_for_pipe(dev_priv, PIPE_A);
> +	pipe =3D ffs(INTEL_INFO(dev_priv)->pipe_mask) - 1;
> +	crtc =3D intel_get_crtc_for_pipe(dev_priv, pipe);

I'd probably just add a small helper for this. Eg.:

intel_get_first_crtc()
{
	return to_intel_crtc(drm_crtc_from_index(0))
}

>  	if (!crtc)
>  		return 0;
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
