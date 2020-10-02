Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44D2728110B
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Oct 2020 13:13:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FD366E92C;
	Fri,  2 Oct 2020 11:13:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC5AA6E92C
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Oct 2020 11:13:15 +0000 (UTC)
IronPort-SDR: XcIa7PDdIrm2IUbCccbu8ifJEQOng3ueHA4t7aNrJGJFS0s9oHbrb/PeL67CwdL8bHeCY67Hay
 RDmQ99l3s+FA==
X-IronPort-AV: E=McAfee;i="6000,8403,9761"; a="162199331"
X-IronPort-AV: E=Sophos;i="5.77,327,1596524400"; d="scan'208";a="162199331"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2020 04:13:12 -0700
IronPort-SDR: nAaQpf2hKGyPv+q3y/x4IT1fXKFf3OHoPlkI7x69qjiz7d+nvO7j3mkZKBqr1birKcVPj8NAOG
 U0wHLrchVFjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,327,1596524400"; d="scan'208";a="351562261"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 02 Oct 2020 04:13:09 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 02 Oct 2020 14:13:09 +0300
Date: Fri, 2 Oct 2020 14:13:09 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Vandita Kulkarni <vandita.kulkarni@intel.com>
Message-ID: <20201002111309.GC6112@intel.com>
References: <20200924124209.17916-1-vandita.kulkarni@intel.com>
 <20200924124209.17916-6-vandita.kulkarni@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200924124209.17916-6-vandita.kulkarni@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [V14 5/5] drm/i915/dsi: Enable software vblank
 counter
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

On Thu, Sep 24, 2020 at 06:12:09PM +0530, Vandita Kulkarni wrote:
> In case of DSI cmd mode, we get hw vblank counter
> updated after the TE comes in, if we try to read
> the hw vblank counter in te handler we wouldnt have
> the udpated vblank counter yet.
> This will lead to a state where we would send the
> vblank event to the user space in the next te,
> though the frame update would have completed in
> the first TE duration itself.
> Hence switch to using software timestamp based
> vblank counter.
> =

> v2: Use mode_flags from crtc_state (Ville)
> =

> Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 11 +++++++++++
>  drivers/gpu/drm/i915/i915_irq.c              |  4 ++++
>  2 files changed, 15 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 5a9d933e425a..bb495947ccd5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1808,6 +1808,17 @@ enum pipe intel_crtc_pch_transcoder(struct intel_c=
rtc *crtc)
>  static u32 intel_crtc_max_vblank_count(const struct intel_crtc_state *cr=
tc_state)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	u32 mode_flags =3D crtc->mode_flags;

That is still not crtc_state despite what the changelog says.

> +
> +	/*
> +	 * From Gen 11, In case of dsi cmd mode, frame counter wouldnt
> +	 * have updated at the beginning of TE, if we want to use
> +	 * the hw counter, then we would find it updated in only
> +	 * the next TE, hence switching to sw counter.
> +	 */
> +	if (mode_flags & (I915_MODE_FLAG_DSI_USE_TE0 | I915_MODE_FLAG_DSI_USE_T=
E1))
> +		return 0;
>  =

>  	/*
>  	 * On i965gm the hardware frame counter reads
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_=
irq.c
> index c2e4b227bdf3..634c60befe7e 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -682,8 +682,12 @@ u32 i915_get_vblank_counter(struct drm_crtc *crtc)
>  u32 g4x_get_vblank_counter(struct drm_crtc *crtc)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->dev);
> +	struct drm_vblank_crtc *vblank =3D &dev_priv->drm.vblank[drm_crtc_index=
(crtc)];
>  	enum pipe pipe =3D to_intel_crtc(crtc)->pipe;
>  =

> +	if (!vblank->max_vblank_count)
> +		return 0;
> +
>  	return I915_READ(PIPE_FRMCOUNT_G4X(pipe));
>  }
>  =

> -- =

> 2.21.0.5.gaeb582a

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
