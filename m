Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 846EB77D173
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Aug 2023 20:02:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BB8C10E16F;
	Tue, 15 Aug 2023 18:02:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7575210E16F
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Aug 2023 18:02:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692122555; x=1723658555;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=b1bxpYjrFnJdGR+diE35qx2+We5x5IQ0Eg5M80TAwWg=;
 b=OZVW7FnqZTmbLORDt/hqUZUqq+hJZu3bDJZ+0nwWT+/dLHFTWkaR00Xv
 5XDWAvcozH8KgjzEfUKsiASiKkY9UTgt4L2FxmB+dhMde5sB8Wm25iPET
 CbglDKkoLpev+juIiinJcsER2Vn4crS7hdMGMBRdPnlfPsYBwzCWxGk/3
 CabbTc4c8MV/0pfa2Ea4Gb8mxklM6H87jhTGqzrZnzWLc23WFGSWvr3V/
 4tk5U/P3jNsz37QA+DEhlRI5HiG1Ad3JfNHoxRIBIizgeWCYJmy2KiisB
 jsmn1PluVpiHxP37wfGE91ocrfOh4fdge5VL0WHmaSiTXDxtNBW+UazBQ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="372340980"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="372340980"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 11:02:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="710815820"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="710815820"
Received: from zlukwins-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.51.48])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 11:02:31 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Manasi Navare <navaremanasi@chromium.org>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230814191609.3299378-1-navaremanasi@chromium.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230814191609.3299378-1-navaremanasi@chromium.org>
Date: Tue, 15 Aug 2023 21:02:27 +0300
Message-ID: <87edk4b2vg.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/display: Dual refresh rate
 fastset fixes with VRR fastset
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
Cc: Drew Davenport <ddavenport@chromium.org>, Sean Paul <seanpaul@chromium.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 14 Aug 2023, Manasi Navare <navaremanasi@chromium.org> wrote:
> Dual refresh rate (DRR) fastset seamlessly lets refresh rate
> throttle without needing a full modeset.

Is this something different from DRRS, or Dynamic Refresh Rate
Switching?

> However with the recent VRR fastset patches that got merged this
> logic was broken.

Which commits exactly? "recent patches" is a bit vague.

Is there a gitlab issue for this? Is it [1] or is that different?

[1] https://gitlab.freedesktop.org/drm/intel/-/issues/8851

> This is broken because now with VRR fastset
> VRR parameters are calculated by default at the nominal refresh rate say =
120Hz.
> Now when DRR throttle happens to switch refresh rate to 60Hz, crtc clock
> changes and this throws a mismatch in VRR parameters and fastset logic
> for DRR gets thrown off and full modeset is indicated.
>
> This patch fixes this by ignoring the pipe mismatch for VRR parameters
> in the case of DRR and when VRR is not enabled. With this fix, DRR
> will still throttle seamlessly as long as VRR is not enabled.
>
> This will still need a full modeset for both DRR and VRR operating togeth=
er
> during the refresh rate throttle and then enabling VRR since now VRR
> parameters need to be recomputed with new crtc clock and written to HW.
>
> This DRR + VRR fastset in conjunction needs more work in the driver and
> will be fixed in later patches.

I admit I have a hard time wrapping my head around the above explanation
with the code changes. :/

I'm hoping describing the "what broke" along with a regressing commit
would help it.

BR,
Jani.


>
> v3:
> Compute new VRR params whenever there is fastset and its non DRRS.
> This will ensure it computes while switching to a fixed RR (Mitul)
>
> v2:
> Check for pipe config mismatch in crtc clock whenever VRR is enabled
>
> Cc: Drew Davenport <ddavenport@chromium.org>
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Cc: Sean Paul <seanpaul@chromium.org>
> Cc: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> Signed-off-by: Manasi Navare <navaremanasi@chromium.org>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 14 ++++++++------
>  1 file changed, 8 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 763ab569d8f3..2cf3b22adaf7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5352,7 +5352,7 @@ intel_pipe_config_compare(const struct intel_crtc_s=
tate *current_config,
>  	if (IS_G4X(dev_priv) || DISPLAY_VER(dev_priv) >=3D 5)
>  		PIPE_CONF_CHECK_I(pipe_bpp);
>=20=20
> -	if (!fastset || !pipe_config->seamless_m_n) {
> +	if (!fastset || !pipe_config->seamless_m_n || pipe_config->vrr.enable) {
>  		PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_clock);
>  		PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_clock);
>  	}
> @@ -5387,11 +5387,13 @@ intel_pipe_config_compare(const struct intel_crtc=
_state *current_config,
>=20=20
>  	if (!fastset)
>  		PIPE_CONF_CHECK_BOOL(vrr.enable);
> -	PIPE_CONF_CHECK_I(vrr.vmin);
> -	PIPE_CONF_CHECK_I(vrr.vmax);
> -	PIPE_CONF_CHECK_I(vrr.flipline);
> -	PIPE_CONF_CHECK_I(vrr.pipeline_full);
> -	PIPE_CONF_CHECK_I(vrr.guardband);
> +	if ((fastset && !pipe_config->seamless_m_n) || pipe_config->vrr.enable)=
 {
> +		PIPE_CONF_CHECK_I(vrr.vmin);
> +		PIPE_CONF_CHECK_I(vrr.vmax);
> +		PIPE_CONF_CHECK_I(vrr.flipline);
> +		PIPE_CONF_CHECK_I(vrr.pipeline_full);
> +		PIPE_CONF_CHECK_I(vrr.guardband);
> +	}
>=20=20
>  #undef PIPE_CONF_CHECK_X
>  #undef PIPE_CONF_CHECK_I

--=20
Jani Nikula, Intel Open Source Graphics Center
