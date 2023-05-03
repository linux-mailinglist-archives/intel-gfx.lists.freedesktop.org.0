Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D9956F53A4
	for <lists+intel-gfx@lfdr.de>; Wed,  3 May 2023 10:49:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B335E10E20A;
	Wed,  3 May 2023 08:49:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 840B510E20A
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 May 2023 08:49:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683103742; x=1714639742;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=/YGOTE2WaNdoZweTYCYgpDP4lajIBAx9h+JbteQiR4A=;
 b=StoDXLzVXdrK7zl92ZGLHx94SScXHXCTwAMj1Ewdfe5qwkUQ2sgMFyxU
 Aa9jMyu9CtgGAaIB7fuFX+2cnpjhqrz2kvcIWz3T9hVwqgQLIfGbgK7R8
 RzKhCp4+35H7Y/NZEfagQMOb5Kezwgmvrlfwv02fYll9mBmzbuSjhPxDT
 Tq7z4YE+w/JYKOu4OCrioU2t9uxIzlKFSJKrCE0VX19ZbhH63srjtMRty
 AWvu0gWhAZplG1ZenNu8f7MgyezEgE9pD9TZhs1KAeDM2TvuBrYRIoe1A
 GmRHJ8mDILwpt6q599twr/dcF6OFIaCKb08p7wzWAf2EqRkyBLUVwSsrN w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="411754131"
X-IronPort-AV: E=Sophos;i="5.99,246,1677571200"; d="scan'208";a="411754131"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2023 01:49:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="766060911"
X-IronPort-AV: E=Sophos;i="5.99,246,1677571200"; d="scan'208";a="766060911"
Received: from ebrosekx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.204])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2023 01:49:00 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230425105450.18441-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230425105450.18441-1-ville.syrjala@linux.intel.com>
 <20230425105450.18441-2-ville.syrjala@linux.intel.com>
Date: Wed, 03 May 2023 11:48:58 +0300
Message-ID: <87a5yl241x.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 01/14] drm/i915/icl: Do panel power on +
 reset deassert earlier on icl+
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

On Tue, 25 Apr 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Looks like we're trying to talk to the DSI panel even before turning
> it on, on icl+. Bspec doesn't actually specify when these should be
> done, but certainly we need to turn the panel on at least before
> talking to it. So let's move the power on + reset deassert steps to
> be the first thing we do. This is also what Windows does.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Needs a rebase on c8c2969bfcba ("drm/i915/dsi: Use unconditional
msleep() instead of intel_dsi_msleep()") but otherwise,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i91=
5/display/icl_dsi.c
> index ad78148e0788..d424d30a01e8 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -1138,10 +1138,6 @@ static void gen11_dsi_powerup_panel(struct intel_e=
ncoder *encoder)
>  				"error setting max return pkt size%d\n", tmp);
>  	}
>=20=20
> -	/* panel power on related mipi dsi vbt sequences */
> -	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_POWER_ON);
> -	intel_dsi_msleep(intel_dsi, intel_dsi->panel_on_delay);
> -	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_DEASSERT_RESET);
>  	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_INIT_OTP);
>  	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_DISPLAY_ON);
>=20=20
> @@ -1154,6 +1150,12 @@ static void gen11_dsi_pre_pll_enable(struct intel_=
atomic_state *state,
>  				     const struct intel_crtc_state *crtc_state,
>  				     const struct drm_connector_state *conn_state)
>  {
> +	struct intel_dsi *intel_dsi =3D enc_to_intel_dsi(encoder);
> +
> +	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_POWER_ON);
> +	intel_dsi_msleep(intel_dsi, intel_dsi->panel_on_delay);
> +	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_DEASSERT_RESET);
> +
>  	/* step2: enable IO power */
>  	gen11_dsi_enable_io_power(encoder);

--=20
Jani Nikula, Intel Open Source Graphics Center
