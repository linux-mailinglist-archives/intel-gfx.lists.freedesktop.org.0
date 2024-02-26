Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A57C486816E
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Feb 2024 20:49:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 155DD10E10D;
	Mon, 26 Feb 2024 19:49:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LZ49/TGD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4584310E28C
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Feb 2024 19:49:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708976944; x=1740512944;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=rBI48hzwEX9TwZMhwnXYVOYbLKXcwanMA4LYG/W/Xmg=;
 b=LZ49/TGD0JIBCPDayhGJCOave7rGQbzeBLksGa8Bw/kp08iGfiwl02QY
 SZS0/BlmF53q76iRCh4Fn/ad/sWN2Sm5lxNNbRLzfT2buJ5Omlf9pjL/l
 usCoCZzPrvAHniDzWQsbhRf+R7G9F6lPun5tf0ST6cTNC+L6iJD6BSanH
 m+pBO8wenhdEwKZhkSJ7gTa9C36w04JsmxeK+Z5oZjvyhmejWY+cnQcdR
 k32RA323zWweNet6pct8icD5mG/j5c5HuzsaPhY+snnvglbyn1GeC81YY
 i0YYRx5muy2w3L5AViqzLHO6LVchAJ1+6A2JOSrTPKqmdb9HTDhuTBVqJ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="13997210"
X-IronPort-AV: E=Sophos;i="6.06,186,1705392000"; d="scan'208";a="13997210"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2024 11:49:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,186,1705392000"; d="scan'208";a="11456071"
Received: from hibeid-mobl.amr.corp.intel.com (HELO localhost)
 ([10.252.46.254])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2024 11:49:01 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 1/2] drm/i915: Stop doing double audio enable/disable on
 SDVO and g4x+ DP
In-Reply-To: <20240226193251.29619-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240226193251.29619-1-ville.syrjala@linux.intel.com>
Date: Mon, 26 Feb 2024 21:49:02 +0200
Message-ID: <87v86bknv5.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Mon, 26 Feb 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Looks like I misplaced a few hunks when I moved the audio
> enable/disable out from the encoder enable/disable hooks.
> So we are now doing a double audio enable/disable on SDVO
> and g4x+ DP. Probably harmless as doing it twice shouldn't
> really change anything, but let's do it just once, as intended.
>
> Fixes: cff742cc6851 ("drm/i915: Hoist the encoder->audio_{enable,disable}=
() calls higher up")
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Hrmh, I'll scold the reviewer next time I look in the mirror.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/g4x_dp.c     | 2 --
>  drivers/gpu/drm/i915/display/intel_sdvo.c | 4 ----
>  2 files changed, 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915=
/display/g4x_dp.c
> index dfe0b07a122d..06ec04e667e3 100644
> --- a/drivers/gpu/drm/i915/display/g4x_dp.c
> +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
> @@ -717,7 +717,6 @@ static void g4x_enable_dp(struct intel_atomic_state *=
state,
>  {
>  	intel_enable_dp(state, encoder, pipe_config, conn_state);
>  	intel_edp_backlight_on(pipe_config, conn_state);
> -	encoder->audio_enable(encoder, pipe_config, conn_state);
>  }
>=20=20
>  static void vlv_enable_dp(struct intel_atomic_state *state,
> @@ -726,7 +725,6 @@ static void vlv_enable_dp(struct intel_atomic_state *=
state,
>  			  const struct drm_connector_state *conn_state)
>  {
>  	intel_edp_backlight_on(pipe_config, conn_state);
> -	encoder->audio_enable(encoder, pipe_config, conn_state);
>  }
>=20=20
>  static void g4x_pre_enable_dp(struct intel_atomic_state *state,
> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/=
i915/display/intel_sdvo.c
> index 5f9e748adc89..0cd9c183f621 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -1842,8 +1842,6 @@ static void intel_disable_sdvo(struct intel_atomic_=
state *state,
>  	struct intel_crtc *crtc =3D to_intel_crtc(old_crtc_state->uapi.crtc);
>  	u32 temp;
>=20=20
> -	encoder->audio_disable(encoder, old_crtc_state, conn_state);
> -
>  	intel_sdvo_set_active_outputs(intel_sdvo, 0);
>  	if (0)
>  		intel_sdvo_set_encoder_power_state(intel_sdvo,
> @@ -1935,8 +1933,6 @@ static void intel_enable_sdvo(struct intel_atomic_s=
tate *state,
>  		intel_sdvo_set_encoder_power_state(intel_sdvo,
>  						   DRM_MODE_DPMS_ON);
>  	intel_sdvo_set_active_outputs(intel_sdvo, intel_sdvo_connector->output_=
flag);
> -
> -	encoder->audio_enable(encoder, pipe_config, conn_state);
>  }
>=20=20
>  static enum drm_mode_status

--=20
Jani Nikula, Intel
