Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61D2E9B61ED
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 12:35:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDC3810E78A;
	Wed, 30 Oct 2024 11:35:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V6CnVrAU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6971610E79F
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2024 11:35:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730288128; x=1761824128;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=s+W1YcG9hYxvVxT6+kylEbbMKaUoAgBcU+obyLZ/cNg=;
 b=V6CnVrAURsL8xV/Mz1Rs97y4HtCcspVVvb3XxI1fVjshyD+OwqTdehHw
 8DxGXNUxqoe0b6nah5qad0bpWc0L/3scZAXEDgz4A7nk6CnZ/GnkMVUvC
 uZAmlBmakRoWcSyeYuVCkXfBpDffsbAHddGcC/d2ftGIure2Nsv1WXjjh
 bFwK4FnMa2kBiWhCBda0+sZ5WQ8RExPEuI4CKPaAX4VKxtwAyF1B9M2cz
 0q63t7TcZ4xrtRYUqPmO+X/cXM8OCf91xfTAAOvFIJZLSPUa33J5fPp/p
 BuLDsEQmMjMXp8xj8AWTBCnwdMGiIEdCSOFydEqfiwXRT+2YMeQrh5U9y Q==;
X-CSE-ConnectionGUID: F4Vz62FpTxOUAu2HS+RGgg==
X-CSE-MsgGUID: 93wr7p0BTAWn66D10Pj+XQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11240"; a="41349438"
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="41349438"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 04:35:28 -0700
X-CSE-ConnectionGUID: TpCekvBqS3iFmLDcYv0BcA==
X-CSE-MsgGUID: sKBYgAGJQH2HDfIomCtcxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="87064670"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.122])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 04:35:26 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 07/11] drm/i915/cdclk: Factor out INTEL_OUTPUT_DSI check
 in vlv_dsi_min_cdclk()
In-Reply-To: <20241029215217.3697-8-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241029215217.3697-1-ville.syrjala@linux.intel.com>
 <20241029215217.3697-8-ville.syrjala@linux.intel.com>
Date: Wed, 30 Oct 2024 13:35:23 +0200
Message-ID: <87cyjhn7r8.fsf@intel.com>
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

On Tue, 29 Oct 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> All the if statements in vlv_dsi_min_cdclk() check for
> INTEL_OUTPUT_DSI. Make life simpler by checking that just
> once at the start.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/vlv_dsi.c | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i91=
5/display/vlv_dsi.c
> index 49a895589150..708639178e29 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> @@ -1763,26 +1763,26 @@ static void vlv_dphy_param_init(struct intel_dsi =
*intel_dsi)
>  int vlv_dsi_min_cdclk(const struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);
> -	int min_cdclk =3D 0;
> +
> +	if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI))
> +		return 0;
>=20=20
>  	/*
>  	 * On Valleyview some DSI panels lose (v|h)sync when the clock is lower
>  	 * than 320000KHz.
>  	 */
> -	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI) &&
> -	    IS_VALLEYVIEW(dev_priv))
> -		min_cdclk =3D max(320000, min_cdclk);
> +	if (IS_VALLEYVIEW(dev_priv))
> +		return 320000;
>=20=20
>  	/*
>  	 * On Geminilake once the CDCLK gets as low as 79200
>  	 * picture gets unstable, despite that values are
>  	 * correct for DSI PLL and DE PLL.
>  	 */
> -	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI) &&
> -	    IS_GEMINILAKE(dev_priv))
> -		min_cdclk =3D max(158400, min_cdclk);
> +	if (IS_GEMINILAKE(dev_priv))
> +		return 158400;
>=20=20
> -	return min_cdclk;
> +	return 0;
>  }
>=20=20
>  typedef void (*vlv_dsi_dmi_quirk_func)(struct intel_dsi *intel_dsi);

--=20
Jani Nikula, Intel
