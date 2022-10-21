Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6070460733B
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Oct 2022 11:06:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BED510E5F6;
	Fri, 21 Oct 2022 09:06:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9225510E5F6
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Oct 2022 09:06:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666343177; x=1697879177;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=pfcXWz7sHJ1LxsAbqoyZPPTHb+IKtDd188o8nHRFej0=;
 b=UZLyiH1rieQHhTFb0GsxACAds2x1ViaBqNiu93kX9LZGMFMB/37ZCjqu
 fSxc9/kah712b9HnUmXMTDPZgsy5u1StM+k5kgHcTI1AXnh5/DZAR7qy4
 hGnyWZeXZOquzmpC74IRJqd/MEPaJfyF7LGdk/DmJ7CuC9dFIQ+l2vQXS
 ziIlCUqeWYZHTIr2tXXYKjYco3MlwM7eHm8F1HtXf9eSfVNEeaf/ewU1t
 UwW6HOSiwRarsDQ8toSWWcDa///Hw+FT4LPjb0tqqWNRciLNgbM7lKBgi
 1HsH6RxjM4hEZGqwb4jFOMCEKuML39T9MehblzfZoCiM2NJoFr/+JYMd9 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="294352658"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800"; d="scan'208";a="294352658"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2022 02:06:16 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="693594266"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800"; d="scan'208";a="693594266"
Received: from avilla3-mobl2.amr.corp.intel.com (HELO localhost)
 ([10.252.53.153])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2022 02:06:15 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221020120706.25728-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221020120706.25728-1-ville.syrjala@linux.intel.com>
Date: Fri, 21 Oct 2022 12:06:12 +0300
Message-ID: <87h6zxfsvv.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Activate DRRS after state readout
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

On Thu, 20 Oct 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> On BDW+ we have just the one set of DP M/N registers. The
> values we write into said registers depends on whether we
> want DRRS to be in high or low gear. This causes issues
> for the state checker which currently has to assume either
> set of M/N (high or low refresh rate) values may appear there.
> That sort of works for M/N itself, but all other values
> derived from the M/N (dotclock, pixel rate) are not handled
> correctly, leading to potential for state checker mismatches.
>
> Let's avoid all those problems by simply keeping DRRS in
> high gear until the state checker has done its hardware
> state readout.
>
> Note that hitting this issue presumable became very hard
> after commit 1b333c679a0f ("drm/i915: Do DRRS disable/enable
> during pre/post_plane_update()") since the state check would
> have to laze about for one full second (delay used by
> intel_drrs_schedule_work()) to see the low refresh rate.
> But it is still theoretically possible.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

This makes a whole lot of sense.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 43 ++++----------------
>  1 file changed, 7 insertions(+), 36 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 606f9140d024..906a5ad2bbfa 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1261,8 +1261,6 @@ static void intel_post_plane_update(struct intel_at=
omic_state *state,
>  	if (needs_cursorclk_wa(old_crtc_state) &&
>  	    !needs_cursorclk_wa(new_crtc_state))
>  		icl_wa_cursorclkgating(dev_priv, pipe, false);
> -
> -	intel_drrs_activate(new_crtc_state);
>  }
>=20=20
>  static void intel_crtc_enable_flip_done(struct intel_atomic_state *state,
> @@ -5646,39 +5644,6 @@ intel_pipe_config_compare(const struct intel_crtc_=
state *current_config,
>  	PIPE_CONF_CHECK_I(name.y2); \
>  } while (0)
>=20=20
> -/* This is required for BDW+ where there is only one set of registers for
> - * switching between high and low RR.
> - * This macro can be used whenever a comparison has to be made between o=
ne
> - * hw state and multiple sw state variables.
> - */
> -#define PIPE_CONF_CHECK_M_N_ALT(name, alt_name) do { \
> -	if (!intel_compare_link_m_n(&current_config->name, \
> -				    &pipe_config->name) && \
> -	    !intel_compare_link_m_n(&current_config->alt_name, \
> -				    &pipe_config->name)) { \
> -		pipe_config_mismatch(fastset, crtc, __stringify(name), \
> -				     "(expected tu %i data %i/%i link %i/%i, " \
> -				     "or tu %i data %i/%i link %i/%i, " \
> -				     "found tu %i, data %i/%i link %i/%i)", \
> -				     current_config->name.tu, \
> -				     current_config->name.data_m, \
> -				     current_config->name.data_n, \
> -				     current_config->name.link_m, \
> -				     current_config->name.link_n, \
> -				     current_config->alt_name.tu, \
> -				     current_config->alt_name.data_m, \
> -				     current_config->alt_name.data_n, \
> -				     current_config->alt_name.link_m, \
> -				     current_config->alt_name.link_n, \
> -				     pipe_config->name.tu, \
> -				     pipe_config->name.data_m, \
> -				     pipe_config->name.data_n, \
> -				     pipe_config->name.link_m, \
> -				     pipe_config->name.link_n); \
> -		ret =3D false; \
> -	} \
> -} while (0)
> -
>  #define PIPE_CONF_CHECK_FLAGS(name, mask) do { \
>  	if ((current_config->name ^ pipe_config->name) & (mask)) { \
>  		pipe_config_mismatch(fastset, crtc, __stringify(name), \
> @@ -5747,7 +5712,7 @@ intel_pipe_config_compare(const struct intel_crtc_s=
tate *current_config,
>=20=20
>  	if (HAS_DOUBLE_BUFFERED_M_N(dev_priv)) {
>  		if (!fastset || !pipe_config->seamless_m_n)
> -			PIPE_CONF_CHECK_M_N_ALT(dp_m_n, dp_m2_n2);
> +			PIPE_CONF_CHECK_M_N(dp_m_n);
>  	} else {
>  		PIPE_CONF_CHECK_M_N(dp_m_n);
>  		PIPE_CONF_CHECK_M_N(dp_m2_n2);
> @@ -7615,6 +7580,12 @@ static void intel_atomic_commit_tail(struct intel_=
atomic_state *state)
>=20=20
>  		intel_modeset_verify_crtc(crtc, state, old_crtc_state, new_crtc_state);
>=20=20
> +		/*
> +		 * Activate DRRS after state readout to avoid
> +		 * dp_m_n vs. dp_m2_n2 confusion on BDW+.
> +		 */
> +		intel_drrs_activate(new_crtc_state);
> +
>  		/*
>  		 * DSB cleanup is done in cleanup_work aligning with framebuffer
>  		 * cleanup. So copy and reset the dsb structure to sync with

--=20
Jani Nikula, Intel Open Source Graphics Center
