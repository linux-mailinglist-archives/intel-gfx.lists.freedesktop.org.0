Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C92254DF8B
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jun 2022 12:52:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F63911A1C5;
	Thu, 16 Jun 2022 10:52:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A783711A1C3
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jun 2022 10:52:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655376769; x=1686912769;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=T1WEfnR/vx/Jwhx926e+iKS4jENcgK9CVmjGD4N30kA=;
 b=mxXYi+Eb2m3+S8y5rD38zKmYWy2fXBXQnqdRLzf5e3fKiNKRHRCyQOE/
 8cFqsCa1HxiFJcFEGyUbQ7ccy/a6EEVo5li7A+gkYgxU6VEBUpvrEV2OS
 K/9nzmNPbXyFjMZH1VQFvdlieY2k9yg+4czQRMJiQze+OpTe4no8cNzgb
 hBdhMRqPzCPXws4qHChiCoBLaVCX6G5QFSTBZlA3Gl710XnKgzcRAqByA
 UB6+AfzyX67bN0HlmBryX1X3Fm8lrY3mCMXtJZushp6N/kFmfBxvwwIfa
 7YD/f8f7V7+c49El6IlDBb/Usr48NvgxNwC2uFuiSVjAA+0pY6ME3cawS w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10379"; a="267910261"
X-IronPort-AV: E=Sophos;i="5.91,304,1647327600"; d="scan'208";a="267910261"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 03:52:48 -0700
X-IronPort-AV: E=Sophos;i="5.91,304,1647327600"; d="scan'208";a="641488552"
Received: from malashi-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.57.133])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 03:52:41 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220615174851.20658-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220615174851.20658-1-ville.syrjala@linux.intel.com>
Date: Thu, 16 Jun 2022 13:52:38 +0300
Message-ID: <87fsk4x4ll.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Extract
 intel_sanitize_fifo_underrun_reporting()
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

On Wed, 15 Jun 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Pull the underrun status sanitation into its own helper.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

On the series,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

I'll respin my state readout extraction on top of this once you've
merged.

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 65 +++++++++++---------
>  1 file changed, 37 insertions(+), 28 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 7d9c8aeef686..e38d0a85889b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -9897,11 +9897,46 @@ static struct intel_connector *intel_encoder_find=
_connector(struct intel_encoder
>  	return NULL;
>  }
>=20=20
> +static void intel_sanitize_fifo_underrun_reporting(const struct intel_cr=
tc_state *crtc_state)
> +{
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> +
> +	if (!crtc_state->hw.active && !HAS_GMCH(i915))
> +		return;
> +
> +	/*
> +	 * We start out with underrun reporting disabled to avoid races.
> +	 * For correct bookkeeping mark this on active crtcs.
> +	 *
> +	 * Also on gmch platforms we dont have any hardware bits to
> +	 * disable the underrun reporting. Which means we need to start
> +	 * out with underrun reporting disabled also on inactive pipes,
> +	 * since otherwise we'll complain about the garbage we read when
> +	 * e.g. coming up after runtime pm.
> +	 *
> +	 * No protection against concurrent access is required - at
> +	 * worst a fifo underrun happens which also sets this to false.
> +	 */
> +	crtc->cpu_fifo_underrun_disabled =3D true;
> +
> +	/*
> +	 * We track the PCH trancoder underrun reporting state
> +	 * within the crtc. With crtc for pipe A housing the underrun
> +	 * reporting state for PCH transcoder A, crtc for pipe B housing
> +	 * it for PCH transcoder B, etc. LPT-H has only PCH transcoder A,
> +	 * and marking underrun reporting as disabled for the non-existing
> +	 * PCH transcoders B and C would prevent enabling the south
> +	 * error interrupt (see cpt_can_enable_serr_int()).
> +	 */
> +	if (intel_has_pch_trancoder(i915, crtc->pipe))
> +		crtc->pch_fifo_underrun_disabled =3D true;
> +}
> +
>  static void intel_sanitize_crtc(struct intel_crtc *crtc,
>  				struct drm_modeset_acquire_ctx *ctx)
>  {
>  	struct drm_device *dev =3D crtc->base.dev;
> -	struct drm_i915_private *dev_priv =3D to_i915(dev);
>  	struct intel_crtc_state *crtc_state =3D to_intel_crtc_state(crtc->base.=
state);
>=20=20
>  	if (crtc_state->hw.active) {
> @@ -9928,33 +9963,7 @@ static void intel_sanitize_crtc(struct intel_crtc =
*crtc,
>  	    !intel_crtc_is_bigjoiner_slave(crtc_state))
>  		intel_crtc_disable_noatomic(crtc, ctx);
>=20=20
> -	if (crtc_state->hw.active || HAS_GMCH(dev_priv)) {
> -		/*
> -		 * We start out with underrun reporting disabled to avoid races.
> -		 * For correct bookkeeping mark this on active crtcs.
> -		 *
> -		 * Also on gmch platforms we dont have any hardware bits to
> -		 * disable the underrun reporting. Which means we need to start
> -		 * out with underrun reporting disabled also on inactive pipes,
> -		 * since otherwise we'll complain about the garbage we read when
> -		 * e.g. coming up after runtime pm.
> -		 *
> -		 * No protection against concurrent access is required - at
> -		 * worst a fifo underrun happens which also sets this to false.
> -		 */
> -		crtc->cpu_fifo_underrun_disabled =3D true;
> -		/*
> -		 * We track the PCH trancoder underrun reporting state
> -		 * within the crtc. With crtc for pipe A housing the underrun
> -		 * reporting state for PCH transcoder A, crtc for pipe B housing
> -		 * it for PCH transcoder B, etc. LPT-H has only PCH transcoder A,
> -		 * and marking underrun reporting as disabled for the non-existing
> -		 * PCH transcoders B and C would prevent enabling the south
> -		 * error interrupt (see cpt_can_enable_serr_int()).
> -		 */
> -		if (intel_has_pch_trancoder(dev_priv, crtc->pipe))
> -			crtc->pch_fifo_underrun_disabled =3D true;
> -	}
> +	intel_sanitize_fifo_underrun_reporting(crtc_state);
>  }
>=20=20
>  static bool has_bogus_dpll_config(const struct intel_crtc_state *crtc_st=
ate)

--=20
Jani Nikula, Intel Open Source Graphics Center
