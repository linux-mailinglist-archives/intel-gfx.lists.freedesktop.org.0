Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9koWA++fMmq22wUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 15:23:59 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FC4369A0FA
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 15:23:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=oEpRNQN+;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F40F10EA0E;
	Wed, 17 Jun 2026 13:23:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA5D210EA0E;
 Wed, 17 Jun 2026 13:23:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781702635; x=1813238635;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=NFuPzNVoPy928QM0/n5m193x/SzxqJEqM78ZiNd8ngU=;
 b=oEpRNQN+6vnKya4eL8Qz4d+ew4lSMmIRTLZs/GJF5UxI/ZX5yl4BzZAM
 U8ezIQ8W5natt9OzBjVMN6nsaKAGJEkGTNHE2K4B7U0DxhnE7Am6VLbBu
 06d7N7OR5Qc34054HWm5U0mpOnTou0Chv1LheE2QaQHD9O6HSG8Bs5AN5
 COCBRtW6Z0rowYzfkqbnjTHKAaSEWG2GPu4fzKcDdTLN4cgHpTbw3pTpq
 vyso1WnjW7xywliylufdO+GTug5tmYKZbuIOn+I96d4bEybSHqmulQga/
 3qOprZGPR6OjxUp7NJWclh7DuvEHdpKXLPMK+2JD0+/V9uzuyOhNtCf+5 Q==;
X-CSE-ConnectionGUID: vRuaeghQT+uoV4sp3ixxXw==
X-CSE-MsgGUID: vX0tUzOBQCWzscxc5UcW8A==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="82280963"
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="82280963"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 06:23:54 -0700
X-CSE-ConnectionGUID: sv74SwPjT9iRR/eN1L1TdA==
X-CSE-MsgGUID: IYZQb1IkSKWsbNgOqdpq4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="286180620"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.158])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 06:23:53 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 14/14] drm/i915/cdclk: Hoist intel_cdclk_{pre,
 post}_notify() calls upwards
In-Reply-To: <20260610170652.5320-15-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260610170652.5320-1-ville.syrjala@linux.intel.com>
 <20260610170652.5320-15-ville.syrjala@linux.intel.com>
Date: Wed, 17 Jun 2026 16:23:50 +0300
Message-ID: <749171478f44c8af1524742f95efb63bf7be7da0@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5FC4369A0FA

On Wed, 10 Jun 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Now that intel_cdclk_{pre,post}_notify() are implemented via vfuncs
> there is no need to keep them inside the .set_cdclk() hooks. Move
> the calls one level up to intel_cdclk_set_cdclk().
>
> We do need to adjust {skl,bxt}_cdclk_(un)init_hw() to call the wrapper
> rather than the low level implementation directly, or else they would
> not do the pcode notification anymore.
>
> The two slight functions changes here are:
> - bdw_set_cdclk() might theoretically bail out after doing the
>   pre notification, but that codepath would only come into play
>   if the hardware is seriously misprogrammed, so should never happen
> - cdclk hw readout is still done from .set_cdclk(), so that now
>   happens before the post notify vs. previously the readout happened
>   before it. This should not matter as the readout is not affected
>   by the post notify (since we can't actually read out anything from
>   pcode).

Fingers crossed.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 33 ++++++----------------
>  1 file changed, 9 insertions(+), 24 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm=
/i915/display/intel_cdclk.c
> index 4154b4888eff..617ad154505c 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -209,7 +209,12 @@ static void intel_cdclk_set_cdclk(struct intel_displ=
ay *display,
>  				  const struct intel_cdclk_config *cdclk_config,
>  				  enum pipe pipe)
>  {
> +	if (intel_cdclk_pre_notify(display))
> +		return;
> +
>  	display->cdclk.funcs->set_cdclk(display, cdclk_config, pipe);
> +
> +	intel_cdclk_post_notify(display, cdclk_config);
>  }
>=20=20
>  static int intel_cdclk_modeset_calc_cdclk(struct intel_atomic_state *sta=
te)
> @@ -933,10 +938,6 @@ static void bdw_set_cdclk(struct intel_display *disp=
lay,
>  		     "trying to change cdclk frequency with cdclk not enabled\n"))
>  		return;
>=20=20
> -	ret =3D intel_cdclk_pre_notify(display);
> -	if (ret)
> -		return;
> -
>  	intel_de_rmw(display, LCPLL_CTL,
>  		     0, LCPLL_CD_SOURCE_FCLK);
>=20=20
> @@ -960,8 +961,6 @@ static void bdw_set_cdclk(struct intel_display *displ=
ay,
>  	if (ret)
>  		drm_err(display->drm, "Switching back to LCPLL failed\n");
>=20=20
> -	intel_cdclk_post_notify(display, cdclk_config);
> -
>  	intel_de_write(display, CDCLK_FREQ,
>  		       DIV_ROUND_CLOSEST(cdclk, 1000) - 1);
>=20=20
> @@ -1218,7 +1217,6 @@ static void skl_set_cdclk(struct intel_display *dis=
play,
>  	int cdclk =3D cdclk_config->cdclk;
>  	int vco =3D cdclk_config->vco;
>  	u32 freq_select, cdclk_ctl;
> -	int ret;
>=20=20
>  	/*
>  	 * Based on WA#1183 CDCLK rates 308 and 617MHz CDCLK rates are
> @@ -1231,10 +1229,6 @@ static void skl_set_cdclk(struct intel_display *di=
splay,
>  	drm_WARN_ON_ONCE(display->drm,
>  			 display->platform.skylake && vco =3D=3D 8640000);
>=20=20
> -	ret =3D intel_cdclk_pre_notify(display);
> -	if (ret)
> -		return;
> -
>  	freq_select =3D skl_cdclk_freq_sel(display, cdclk, vco);
>=20=20
>  	if (display->cdclk.hw.vco !=3D 0 &&
> @@ -1270,8 +1264,6 @@ static void skl_set_cdclk(struct intel_display *dis=
play,
>  	intel_de_write(display, CDCLK_CTL, cdclk_ctl);
>  	intel_de_posting_read(display, CDCLK_CTL);
>=20=20
> -	intel_cdclk_post_notify(display, cdclk_config);
> -
>  	intel_update_cdclk(display);
>  }
>=20=20
> @@ -1343,7 +1335,7 @@ static void skl_cdclk_init_hw(struct intel_display =
*display)
>  	cdclk_config.cdclk =3D skl_calc_cdclk(0, cdclk_config.vco);
>  	cdclk_config.voltage_level =3D skl_calc_voltage_level(cdclk_config.cdcl=
k);
>=20=20
> -	skl_set_cdclk(display, &cdclk_config, INVALID_PIPE);
> +	intel_cdclk_set_cdclk(display, &cdclk_config, INVALID_PIPE);
>  }
>=20=20
>  static void skl_cdclk_uninit_hw(struct intel_display *display)
> @@ -1354,7 +1346,7 @@ static void skl_cdclk_uninit_hw(struct intel_displa=
y *display)
>  	cdclk_config.vco =3D 0;
>  	cdclk_config.voltage_level =3D skl_calc_voltage_level(cdclk_config.cdcl=
k);
>=20=20
> -	skl_set_cdclk(display, &cdclk_config, INVALID_PIPE);
> +	intel_cdclk_set_cdclk(display, &cdclk_config, INVALID_PIPE);
>  }
>=20=20
>  struct intel_cdclk_vals {
> @@ -2308,11 +2300,6 @@ static void bxt_set_cdclk(struct intel_display *di=
splay,
>  {
>  	struct intel_cdclk_config mid_cdclk_config;
>  	int cdclk =3D cdclk_config->cdclk;
> -	int ret;
> -
> -	ret =3D intel_cdclk_pre_notify(display);
> -	if (ret)
> -		return;
>=20=20
>  	if (DISPLAY_VER(display) >=3D 20 && cdclk < display->cdclk.hw.cdclk)
>  		xe2lpd_mdclk_cdclk_ratio_program(display, cdclk_config);
> @@ -2328,8 +2315,6 @@ static void bxt_set_cdclk(struct intel_display *dis=
play,
>  	if (DISPLAY_VER(display) >=3D 20 && cdclk > display->cdclk.hw.cdclk)
>  		xe2lpd_mdclk_cdclk_ratio_program(display, cdclk_config);
>=20=20
> -	intel_cdclk_post_notify(display, cdclk_config);
> -
>  	intel_update_cdclk(display);
>=20=20
>  	/*
> @@ -2413,7 +2398,7 @@ static void bxt_cdclk_init_hw(struct intel_display =
*display)
>  	cdclk_config.voltage_level =3D
>  		intel_cdclk_calc_voltage_level(display, cdclk_config.cdclk);
>=20=20
> -	bxt_set_cdclk(display, &cdclk_config, INVALID_PIPE);
> +	intel_cdclk_set_cdclk(display, &cdclk_config, INVALID_PIPE);
>  }
>=20=20
>  static void bxt_cdclk_uninit_hw(struct intel_display *display)
> @@ -2425,7 +2410,7 @@ static void bxt_cdclk_uninit_hw(struct intel_displa=
y *display)
>  	cdclk_config.voltage_level =3D
>  		intel_cdclk_calc_voltage_level(display, cdclk_config.cdclk);
>=20=20
> -	bxt_set_cdclk(display, &cdclk_config, INVALID_PIPE);
> +	intel_cdclk_set_cdclk(display, &cdclk_config, INVALID_PIPE);
>  }
>=20=20
>  /**

--=20
Jani Nikula, Intel
