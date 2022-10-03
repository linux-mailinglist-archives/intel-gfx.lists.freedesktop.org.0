Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78C825F2F5B
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Oct 2022 13:11:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7B1B89F1B;
	Mon,  3 Oct 2022 11:11:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71B5089F1B
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Oct 2022 11:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664795513; x=1696331513;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=ihsHxfxt+cTzsznNZq1rLhW7kw79fudpn7MmrWjr7kw=;
 b=SYG1Xpmn6KGp+Jbw2sNQ4zK4Q+bDGu7cDDJWlcaEZzHI/I7m3x+GjSCY
 WVg5edAJYydujl68KhOW/3UnqvsiYqSxxnLHAo0Bj4DUTpsYBY6Lrmz45
 ED5c8isHXbeUF/BU81XtRXHhYArEpp0lfxNPA/DUzRNF49KBaCaSqS6jt
 FQVB1eyd/SzyuenC6VgPGFFIz2/eD932LkYkoZu2yaAwqEblTQOAh2x4H
 ha5n35Htc04PA0KQFhl/SbmFVfdu5axQY7FuEWOLea7Q+PP8NFq0XH414
 Xk32hK+jrWd+5Gku06hmHhaTfxBwXlCbnJc/a8l0S/1UlC4mNm8cHZ5GY g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10488"; a="366649945"
X-IronPort-AV: E=Sophos;i="5.93,365,1654585200"; d="scan'208";a="366649945"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 04:11:49 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10488"; a="618695727"
X-IronPort-AV: E=Sophos;i="5.93,365,1654585200"; d="scan'208";a="618695727"
Received: from zlukwins-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.60.249])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 04:11:47 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220927182455.3422-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220927182455.3422-1-ville.syrjala@linux.intel.com>
Date: Mon, 03 Oct 2022 14:11:44 +0300
Message-ID: <875yh1w49b.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Reject excessive dotclocks early
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

On Tue, 27 Sep 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Make sure modes with crazy big dotclocks are rejected early,
> so as to not cause problems for subsequent code via integer
> overflows and whatnot.
>
> These would eventually be rejected in intel_crtc_compute_pipe_mode()
> but that is now too late as we do the clock computations a bit
> earlier than that. And we don't want to just reorder the two since
> we still want to check the final computed dotclock against the
> hardware limit to make sure we didn't end up above the limit due
> to rounding/etc.
>
> Fixes: 0ff0e219d9b8 ("drm/i915: Compute clocks earlier")
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Too bad we can't really simplify and remove the check from connector
mode valid hooks. Or we could but it gets tricky with the bigjoiner 2x
stuff.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index eb8eaeb19881..04e8fa953bc7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -8130,6 +8130,17 @@ static void intel_setup_outputs(struct drm_i915_pr=
ivate *dev_priv)
>  	drm_helper_move_panel_connectors_to_head(&dev_priv->drm);
>  }
>=20=20
> +static int max_dotclock(struct drm_i915_private *i915)
> +{
> +	int max_dotclock =3D i915->max_dotclk_freq;
> +
> +	/* icl+ might use bigjoiner */
> +	if (DISPLAY_VER(i915) >=3D 11)
> +		max_dotclock *=3D 2;
> +
> +	return max_dotclock;
> +}
> +
>  static enum drm_mode_status
>  intel_mode_valid(struct drm_device *dev,
>  		 const struct drm_display_mode *mode)
> @@ -8167,6 +8178,13 @@ intel_mode_valid(struct drm_device *dev,
>  			   DRM_MODE_FLAG_CLKDIV2))
>  		return MODE_BAD;
>=20=20
> +	/*
> +	 * Reject clearly excessive dotclocks early to
> +	 * avoid having to worry about huge integers later.
> +	 */
> +	if (mode->clock > max_dotclock(dev_priv))
> +		return MODE_CLOCK_HIGH;
> +
>  	/* Transcoder timing limits */
>  	if (DISPLAY_VER(dev_priv) >=3D 11) {
>  		hdisplay_max =3D 16384;

--=20
Jani Nikula, Intel Open Source Graphics Center
