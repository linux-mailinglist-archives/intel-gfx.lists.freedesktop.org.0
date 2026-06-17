Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id iHwvOsaeMmp+2wUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 15:19:02 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0301769A081
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 15:19:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=MZgrwehh;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A55F310EA03;
	Wed, 17 Jun 2026 13:18:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFECF10E0D8;
 Wed, 17 Jun 2026 13:18:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781702339; x=1813238339;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=TB/YOKKLyz8Nn3g5C0h2oZY8H+FqOBrCG8SXugtxkp8=;
 b=MZgrwehhuiYMGNeBOcoF4ABnENGCx7BOzuTDf2obCoBSHOBHBNlEvc6B
 8M3oso9TwBXZMcqbGaBGeAg3FA+dmhJiQMFXTH9WaKHcNmPe1I+bcYBtE
 m3Dq95teFLRALSeCQdH+XRKuQ0Gv0VZZ5xGgAzrzTw1jgtnpTTZYHWXkS
 gYhyV7uUEs/+PdNp8avKVQxITC4va2KYReGEiw9KIsKwws709y4OCCP6N
 cxY0ZQLuWdaApkhABINFoKKYYY8PUVitw8nG68umwOA/U+c2XSbOnn5Ky
 OyeFZbUZUS8hxXkBq5dWFagT9dMnTUBNmkxsok4ljEphOkxi+uzflXmLc Q==;
X-CSE-ConnectionGUID: qWzLKU3VR9mV9Lgh5s/YvA==
X-CSE-MsgGUID: mN8gQVILQqq8blNx0tTSfA==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="85053381"
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="85053381"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 06:18:58 -0700
X-CSE-ConnectionGUID: sLV+jpOeQlG2P0O2Ifez5A==
X-CSE-MsgGUID: P4TxI3S/TsmbyC6N6FzBbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="243904070"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.158])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 06:18:57 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 13/14] drm/i915/cdclk: Introduce CDCLK .{pre,
 post}_notify() vfuncs
In-Reply-To: <20260610170652.5320-14-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260610170652.5320-1-ville.syrjala@linux.intel.com>
 <20260610170652.5320-14-ville.syrjala@linux.intel.com>
Date: Wed, 17 Jun 2026 16:18:54 +0300
Message-ID: <fd9d5ed61dc55e9c7f11a42f4dd231babe115c7c@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid,linux.intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0301769A081

On Wed, 10 Jun 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Turn the cdclk pcode pre/post notify functiosn into vfuncs.

*functions

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> Mainly to get rid of the hideous if-ladders in bxt_set_cdclk().
>
> DG2 is currently doing its own thing with its pcode notify funcs so
> can't be converted yet. And MTL+ go via the pmdemand stuff so this
> is all supposedly handled elsewhere.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 122 ++++++++++++---------
>  1 file changed, 73 insertions(+), 49 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm=
/i915/display/intel_cdclk.c
> index 749e366e60ab..4154b4888eff 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -163,6 +163,9 @@ struct intel_cdclk_funcs {
>  	void (*set_cdclk)(struct intel_display *display,
>  			  const struct intel_cdclk_config *cdclk_config,
>  			  enum pipe pipe);
> +	int (*pre_notify)(struct intel_display *display);
> +	int (*post_notify)(struct intel_display *display,
> +			   const struct intel_cdclk_config *cdclk_config);
>  	int (*modeset_calc_cdclk)(struct intel_atomic_state *state);
>  	u8 (*calc_voltage_level)(int cdclk);
>  };
> @@ -173,6 +176,35 @@ void intel_cdclk_get_cdclk(struct intel_display *dis=
play,
>  	display->cdclk.funcs->get_cdclk(display, cdclk_config);
>  }
>=20=20
> +static int intel_cdclk_pre_notify(struct intel_display *display)
> +{
> +	int ret;
> +
> +	if (!display->cdclk.funcs->pre_notify)
> +		return 0;
> +
> +	ret =3D display->cdclk.funcs->pre_notify(display);
> +	if (ret)
> +		drm_err(display->drm,
> +			"Failed to inform system about start of CDCLK change (%d)\n", ret);
> +
> +	return ret;
> +}
> +
> +static void intel_cdclk_post_notify(struct intel_display *display,
> +				    const struct intel_cdclk_config *cdclk_config)
> +{
> +	int ret;
> +
> +	if (!display->cdclk.funcs->post_notify)
> +		return;
> +
> +	ret =3D display->cdclk.funcs->post_notify(display, cdclk_config);
> +	if (ret)
> +		drm_err(display->drm,
> +			"Failed to inform system about end of CDCLK change (%d)\n", ret);
> +}
> +
>  static void intel_cdclk_set_cdclk(struct intel_display *display,
>  				  const struct intel_cdclk_config *cdclk_config,
>  				  enum pipe pipe)
> @@ -901,12 +933,9 @@ static void bdw_set_cdclk(struct intel_display *disp=
lay,
>  		     "trying to change cdclk frequency with cdclk not enabled\n"))
>  		return;
>=20=20
> -	ret =3D bdw_cdclk_pcode_pre_notify(display);
> -	if (ret) {
> -		drm_err(display->drm,
> -			"Failed to inform PCODE about start of CDCLK change (%d)\n", ret);
> +	ret =3D intel_cdclk_pre_notify(display);
> +	if (ret)
>  		return;
> -	}
>=20=20
>  	intel_de_rmw(display, LCPLL_CTL,
>  		     0, LCPLL_CD_SOURCE_FCLK);
> @@ -931,10 +960,7 @@ static void bdw_set_cdclk(struct intel_display *disp=
lay,
>  	if (ret)
>  		drm_err(display->drm, "Switching back to LCPLL failed\n");
>=20=20
> -	ret =3D bdw_cdclk_pcode_post_notify(display, cdclk_config);
> -	if (ret)
> -		drm_err(display->drm,
> -			"Failed to inform PCODE about end of CDCLK change (%d)\n", ret);
> +	intel_cdclk_post_notify(display, cdclk_config);
>=20=20
>  	intel_de_write(display, CDCLK_FREQ,
>  		       DIV_ROUND_CLOSEST(cdclk, 1000) - 1);
> @@ -1205,12 +1231,9 @@ static void skl_set_cdclk(struct intel_display *di=
splay,
>  	drm_WARN_ON_ONCE(display->drm,
>  			 display->platform.skylake && vco =3D=3D 8640000);
>=20=20
> -	ret =3D skl_cdclk_pcode_pre_notify(display);
> -	if (ret) {
> -		drm_err(display->drm,
> -			"Failed to inform PCODE about start of CDCLK change (%d)\n", ret);
> +	ret =3D intel_cdclk_pre_notify(display);
> +	if (ret)
>  		return;
> -	}
>=20=20
>  	freq_select =3D skl_cdclk_freq_sel(display, cdclk, vco);
>=20=20
> @@ -1247,10 +1270,7 @@ static void skl_set_cdclk(struct intel_display *di=
splay,
>  	intel_de_write(display, CDCLK_CTL, cdclk_ctl);
>  	intel_de_posting_read(display, CDCLK_CTL);
>=20=20
> -	ret =3D skl_cdclk_pcode_post_notify(display, cdclk_config);
> -	if (ret)
> -		drm_err(display->drm,
> -			"Failed to inform PCODE about end of CDCLK change (%d)\n", ret);
> +	intel_cdclk_post_notify(display, cdclk_config);
>=20=20
>  	intel_update_cdclk(display);
>  }
> @@ -2290,24 +2310,9 @@ static void bxt_set_cdclk(struct intel_display *di=
splay,
>  	int cdclk =3D cdclk_config->cdclk;
>  	int ret;
>=20=20
> -	/*
> -	 * Inform power controller of upcoming frequency change.
> -	 * Display versions 14 and beyond do not follow the PUnit
> -	 * mailbox communication, skip
> -	 * this step.
> -	 */
> -	if (DISPLAY_VER(display) >=3D 14 || display->platform.dg2)
> -		ret =3D 0; /* NOOP */
> -	else if (DISPLAY_VER(display) >=3D 11)
> -		ret =3D skl_cdclk_pcode_pre_notify(display);
> -	else
> -		ret =3D bxt_cdclk_pcode_pre_notify(display);
> -
> -	if (ret) {
> -		drm_err(display->drm,
> -			"Failed to inform PCODE about start of CDCLK change (%d)\n", ret);
> +	ret =3D intel_cdclk_pre_notify(display);
> +	if (ret)
>  		return;
> -	}
>=20=20
>  	if (DISPLAY_VER(display) >=3D 20 && cdclk < display->cdclk.hw.cdclk)
>  		xe2lpd_mdclk_cdclk_ratio_program(display, cdclk_config);
> @@ -2323,16 +2328,7 @@ static void bxt_set_cdclk(struct intel_display *di=
splay,
>  	if (DISPLAY_VER(display) >=3D 20 && cdclk > display->cdclk.hw.cdclk)
>  		xe2lpd_mdclk_cdclk_ratio_program(display, cdclk_config);
>=20=20
> -	if (DISPLAY_VER(display) >=3D 14 || display->platform.dg2)
> -		ret =3D 0; /* NOOP */
> -	else if (DISPLAY_VER(display) >=3D 11)
> -		ret =3D skl_cdclk_pcode_post_notify(display, cdclk_config);
> -	else
> -		ret =3D bxt_cdclk_pcode_post_notify(display, cdclk_config);
> -
> -	if (ret)
> -		drm_err(display->drm,
> -			"Failed to inform PCODE about end of CDCLK change (%d)\n", ret);
> +	intel_cdclk_post_notify(display, cdclk_config);
>=20=20
>  	intel_update_cdclk(display);
>=20=20
> @@ -3929,9 +3925,25 @@ static const struct intel_cdclk_funcs xe3lpd_cdclk=
_funcs =3D {
>  	.calc_voltage_level =3D xe3lpd_calc_voltage_level,
>  };
>=20=20
> +static const struct intel_cdclk_funcs mtl_cdclk_funcs =3D {
> +	.get_cdclk =3D bxt_get_cdclk,
> +	.set_cdclk =3D bxt_set_cdclk,
> +	.modeset_calc_cdclk =3D bxt_modeset_calc_cdclk,
> +	.calc_voltage_level =3D rplu_calc_voltage_level,
> +};
> +
> +static const struct intel_cdclk_funcs dg2_cdclk_funcs =3D {
> +	.get_cdclk =3D bxt_get_cdclk,
> +	.set_cdclk =3D bxt_set_cdclk,
> +	.modeset_calc_cdclk =3D bxt_modeset_calc_cdclk,
> +	.calc_voltage_level =3D tgl_calc_voltage_level,
> +};
> +
>  static const struct intel_cdclk_funcs rplu_cdclk_funcs =3D {
>  	.get_cdclk =3D bxt_get_cdclk,
>  	.set_cdclk =3D bxt_set_cdclk,
> +	.pre_notify =3D skl_cdclk_pcode_pre_notify,
> +	.post_notify =3D skl_cdclk_pcode_post_notify,
>  	.modeset_calc_cdclk =3D bxt_modeset_calc_cdclk,
>  	.calc_voltage_level =3D rplu_calc_voltage_level,
>  };
> @@ -3939,6 +3951,8 @@ static const struct intel_cdclk_funcs rplu_cdclk_fu=
ncs =3D {
>  static const struct intel_cdclk_funcs tgl_cdclk_funcs =3D {
>  	.get_cdclk =3D bxt_get_cdclk,
>  	.set_cdclk =3D bxt_set_cdclk,
> +	.pre_notify =3D skl_cdclk_pcode_pre_notify,
> +	.post_notify =3D skl_cdclk_pcode_post_notify,
>  	.modeset_calc_cdclk =3D bxt_modeset_calc_cdclk,
>  	.calc_voltage_level =3D tgl_calc_voltage_level,
>  };
> @@ -3946,6 +3960,8 @@ static const struct intel_cdclk_funcs tgl_cdclk_fun=
cs =3D {
>  static const struct intel_cdclk_funcs ehl_cdclk_funcs =3D {
>  	.get_cdclk =3D bxt_get_cdclk,
>  	.set_cdclk =3D bxt_set_cdclk,
> +	.pre_notify =3D skl_cdclk_pcode_pre_notify,
> +	.post_notify =3D skl_cdclk_pcode_post_notify,
>  	.modeset_calc_cdclk =3D bxt_modeset_calc_cdclk,
>  	.calc_voltage_level =3D ehl_calc_voltage_level,
>  };
> @@ -3953,6 +3969,8 @@ static const struct intel_cdclk_funcs ehl_cdclk_fun=
cs =3D {
>  static const struct intel_cdclk_funcs icl_cdclk_funcs =3D {
>  	.get_cdclk =3D bxt_get_cdclk,
>  	.set_cdclk =3D bxt_set_cdclk,
> +	.pre_notify =3D skl_cdclk_pcode_pre_notify,
> +	.post_notify =3D skl_cdclk_pcode_post_notify,
>  	.modeset_calc_cdclk =3D bxt_modeset_calc_cdclk,
>  	.calc_voltage_level =3D icl_calc_voltage_level,
>  };
> @@ -3960,6 +3978,8 @@ static const struct intel_cdclk_funcs icl_cdclk_fun=
cs =3D {
>  static const struct intel_cdclk_funcs bxt_cdclk_funcs =3D {
>  	.get_cdclk =3D bxt_get_cdclk,
>  	.set_cdclk =3D bxt_set_cdclk,
> +	.pre_notify =3D bxt_cdclk_pcode_pre_notify,
> +	.post_notify =3D bxt_cdclk_pcode_post_notify,
>  	.modeset_calc_cdclk =3D bxt_modeset_calc_cdclk,
>  	.calc_voltage_level =3D bxt_calc_voltage_level,
>  };
> @@ -3967,12 +3987,16 @@ static const struct intel_cdclk_funcs bxt_cdclk_f=
uncs =3D {
>  static const struct intel_cdclk_funcs skl_cdclk_funcs =3D {
>  	.get_cdclk =3D skl_get_cdclk,
>  	.set_cdclk =3D skl_set_cdclk,
> +	.pre_notify =3D skl_cdclk_pcode_pre_notify,
> +	.post_notify =3D skl_cdclk_pcode_post_notify,
>  	.modeset_calc_cdclk =3D skl_modeset_calc_cdclk,
>  };
>=20=20
>  static const struct intel_cdclk_funcs bdw_cdclk_funcs =3D {
>  	.get_cdclk =3D bdw_get_cdclk,
>  	.set_cdclk =3D bdw_set_cdclk,
> +	.pre_notify =3D bdw_cdclk_pcode_pre_notify,
> +	.post_notify =3D bdw_cdclk_pcode_post_notify,
>  	.modeset_calc_cdclk =3D bdw_modeset_calc_cdclk,
>  };
>=20=20
> @@ -4078,16 +4102,16 @@ void intel_init_cdclk_hooks(struct intel_display =
*display)
>  		display->cdclk.funcs =3D &xe3lpd_cdclk_funcs;
>  		display->cdclk.table =3D xe3lpd_cdclk_table;
>  	} else if (DISPLAY_VER(display) >=3D 20) {
> -		display->cdclk.funcs =3D &rplu_cdclk_funcs;
> +		display->cdclk.funcs =3D &mtl_cdclk_funcs;
>  		display->cdclk.table =3D xe2lpd_cdclk_table;
>  	} else if (DISPLAY_VERx100(display) >=3D 1401) {
> -		display->cdclk.funcs =3D &rplu_cdclk_funcs;
> +		display->cdclk.funcs =3D &mtl_cdclk_funcs;
>  		display->cdclk.table =3D xe2hpd_cdclk_table;
>  	} else if (DISPLAY_VER(display) >=3D 14) {
> -		display->cdclk.funcs =3D &rplu_cdclk_funcs;
> +		display->cdclk.funcs =3D &mtl_cdclk_funcs;
>  		display->cdclk.table =3D mtl_cdclk_table;
>  	} else if (display->platform.dg2) {
> -		display->cdclk.funcs =3D &tgl_cdclk_funcs;
> +		display->cdclk.funcs =3D &dg2_cdclk_funcs;
>  		display->cdclk.table =3D dg2_cdclk_table;
>  	} else if (display->platform.alderlake_p) {
>  		/* Wa_22011320316:adl-p[a0] */

--=20
Jani Nikula, Intel
