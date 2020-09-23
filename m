Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FAFC2754FD
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Sep 2020 11:59:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3ED06E90A;
	Wed, 23 Sep 2020 09:59:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 867E66E90A
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Sep 2020 09:59:43 +0000 (UTC)
IronPort-SDR: 2Sw7vqG3z02sakmmL1WhGRwZmutMYaKmIlN/fzWG+5oi3ptZAm+rMJ15VRUTgr2OSHQ64GpTfh
 H6R2anVzpGsw==
X-IronPort-AV: E=McAfee;i="6000,8403,9752"; a="158200303"
X-IronPort-AV: E=Sophos;i="5.77,293,1596524400"; d="scan'208";a="158200303"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2020 02:59:43 -0700
IronPort-SDR: 3Z9/eXG4WWmNomc2Z4QKd8at3gJ2VD48CILw9wSqR9uT2ToDYwFX7WkcaltfvVHt4lPH8ovuGw
 c/U51aIRl/CQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,293,1596524400"; d="scan'208";a="348828188"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 23 Sep 2020 02:59:40 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 23 Sep 2020 12:59:39 +0300
Date: Wed, 23 Sep 2020 12:59:39 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Vandita Kulkarni <vandita.kulkarni@intel.com>
Message-ID: <20200923095939.GB6112@intel.com>
References: <20200922134426.9840-1-vandita.kulkarni@intel.com>
 <20200922134426.9840-6-vandita.kulkarni@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200922134426.9840-6-vandita.kulkarni@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [V13 5/5] drm/i915/dsi: Enable software vblank
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

On Tue, Sep 22, 2020 at 07:14:26PM +0530, Vandita Kulkarni wrote:
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

> Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 11 +++++++++++
>  drivers/gpu/drm/i915/i915_irq.c              |  4 ++++
>  2 files changed, 15 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index c4f331f2af45..8b9e59e52708 100644
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
> +	u32 flags =3D crtc->mode_flags;

That's wrong. You need to look at the crtc_state instead.

> +
> +	/*
> +	 * From Gen 11, In case of dsi cmd mode, frame counter wouldnt
> +	 * have updated at the beginning of TE, if we want to use
> +	 * the hw counter, then we would find it updated in only
> +	 * the next TE, hence switching to sw counter.
> +	 */
> +	if (flags & (I915_MODE_FLAG_DSI_USE_TE0 | I915_MODE_FLAG_DSI_USE_TE1))
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
