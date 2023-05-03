Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8F746F53C1
	for <lists+intel-gfx@lfdr.de>; Wed,  3 May 2023 10:54:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B04310E21F;
	Wed,  3 May 2023 08:54:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0836D10E20F
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 May 2023 08:53:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683104039; x=1714640039;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=trml87V1lx0DArR8o+kC+2uWaGlTVIj5qoMrzhleJU8=;
 b=f+ykHWYBokvXWoWQ/fayvi3gz4VQAah84JqnXJ7xm4Vm8RZ/QKKMzAo2
 pj3HMWDpXl0w1D9pADYDwzv2CY6J2+9V2M2928aZ0zQ81SeH0yAfs8enw
 bS5BN4eBVpMJNtD8KmHULSgPFommN6+g36WmYmWHrBZvCizF13Adb+LDv
 Qcmp1xOJUeoTysn8gblQFXtkSWn8/Wx9ZNVrxfx7JTf9pfkVmZmHcs4h1
 cMf0EQRUIeIaopQOlCdhOqBZX4g240wDeZfqIJqB3r0UKGLBCJDboA6YZ
 Vs1JUMKeMOhVgmKSd910/f1qcLIOHnTsJ1Q+jN7/kLAZWMKn+G5L+PjB6 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="350679940"
X-IronPort-AV: E=Sophos;i="5.99,246,1677571200"; d="scan'208";a="350679940"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2023 01:53:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="727066406"
X-IronPort-AV: E=Sophos;i="5.99,246,1677571200"; d="scan'208";a="727066406"
Received: from ebrosekx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.204])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2023 01:53:56 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230425105450.18441-13-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230425105450.18441-1-ville.syrjala@linux.intel.com>
 <20230425105450.18441-13-ville.syrjala@linux.intel.com>
Date: Wed, 03 May 2023 11:53:53 +0300
Message-ID: <871qjx23tq.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 12/14] drm/i915/dsi: Move panel reset+power
 off to be the last thing
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
> Follow what Windows does and do the DSI panel reset+power off
> after everything else.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c | 14 ++++++++------
>  1 file changed, 8 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i91=
5/display/icl_dsi.c
> index d133cd450271..30b1ad51b0c5 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -1291,12 +1291,6 @@ static void gen11_dsi_powerdown_panel(struct intel=
_encoder *encoder)
>  	struct intel_dsi *intel_dsi =3D enc_to_intel_dsi(encoder);
>=20=20
>  	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_DISPLAY_OFF);
> -	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_ASSERT_RESET);
> -
> -	msleep(intel_dsi->panel_off_delay);
> -	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_POWER_OFF);
> -
> -	intel_dsi->panel_power_off_time =3D ktime_get_boottime();
>=20=20
>  	/* ensure cmds dispatched to panel */
>  	wait_for_cmds_dispatched_to_panel(encoder);
> @@ -1408,6 +1402,7 @@ static void gen11_dsi_post_disable(struct intel_ato=
mic_state *state,
>  				   const struct intel_crtc_state *old_crtc_state,
>  				   const struct drm_connector_state *old_conn_state)
>  {
> +	struct intel_dsi *intel_dsi =3D enc_to_intel_dsi(encoder);
>  	struct intel_crtc *crtc =3D to_intel_crtc(old_conn_state->crtc);
>=20=20
>  	intel_crtc_vblank_off(old_crtc_state);
> @@ -1434,6 +1429,13 @@ static void gen11_dsi_post_disable(struct intel_at=
omic_state *state,
>=20=20
>  	/* step4: disable IO power */
>  	gen11_dsi_disable_io_power(encoder);
> +
> +	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_ASSERT_RESET);
> +
> +	intel_dsi_msleep(intel_dsi, intel_dsi->panel_off_delay);

Rebase fail? This replaces msleep again with intel_dsi_msleep.

Otherwise,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> +	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_POWER_OFF);
> +
> +	intel_dsi->panel_power_off_time =3D ktime_get_boottime();
>  }
>=20=20
>  static enum drm_mode_status gen11_dsi_mode_valid(struct drm_connector *c=
onnector,

--=20
Jani Nikula, Intel Open Source Graphics Center
