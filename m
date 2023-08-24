Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 51583786DCE
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 13:28:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8CBC10E522;
	Thu, 24 Aug 2023 11:27:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA6DE10E522
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 11:27:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692876475; x=1724412475;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=DYrYxEC1F8dnd0kYbG1xh2azwFRVBePOk/G4/X7BVlk=;
 b=M4GG1lwIOW7Yha/re9Foow/XKhY+/xiSCyv2osg/LM11bv0w/LxgKG67
 n/sUMLShQRp7oL1E+NywKhPwyNLah/s0G3Sfmbw4xxwj3+PUvaKdwIeyw
 8YVoPfPYWTRw0mey8EjXFjwHVIw8P4v+kU5Y2GRUM4UinhaTKwl7wSK7i
 J7Hgp+d2bOLNe2qrZ8/DgldwlMOdcU96SeDd9+J+Voj59ZftxQ9/o0P5S
 d1A8TtSO/yr6mhjQrNhFmeJnPFDWdZbO5hLNOTuPxiqBc+a49RE3HuFvO
 Fx8IqbVIPxn7w8kMst6Pt5o9FBJ+RcbsTORT0OGdCLNWtDbu0xfg21jJ5 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="353951022"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="353951022"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 04:27:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="910873755"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="910873755"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.162])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 04:27:52 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Manasi Navare <navaremanasi@chromium.org>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230818190501.241062-1-navaremanasi@chromium.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230818190501.241062-1-navaremanasi@chromium.org>
Date: Thu, 24 Aug 2023 14:27:49 +0300
Message-ID: <87fs484r4a.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v4] drm/i915/display: Dual refresh rate
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

On Fri, 18 Aug 2023, Manasi Navare <navaremanasi@chromium.org> wrote:
> Dual refresh rate (DRR) fastset seamlessly lets refresh rate
> throttle without needing a full modeset.
> However with the recent VRR fastset patches that got merged this
> logic was broken. This is broken because now with VRR fastset
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
>
> v3:
> Compute new VRR params whenever there is fastset and its non DRRS.
> This will ensure it computes while switching to a fixed RR (Mitul)
>
> v2:
> Check for pipe config mismatch in crtc clock whenever VRR is enabled
>
> Fixes: 1af1d18825d3 ("drm/i915/vrr: Allow VRR to be toggled during fastse=
ts")

How could this have broken fastsets, when this made it possible to do
vrr enable/disable fastsets to begin with? I was hoping to get a
regressing commit to make this easier to reason.

> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/9154
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

I just don't get the conditions here and above. For example, why
wouldn't we check the parameters e.g. on full modeset that disables vrr?

I think we'll need a matrix of the features, which of them can be
combined together, which are mutually exclusive, and which are expected
to be fastsets.

BR,
Jani.


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
