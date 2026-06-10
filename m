Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Ce77GVmhKWrYawMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 19:39:37 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C73B066C02A
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 19:39:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=NjpS82tt;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E9FD10EB3D;
	Wed, 10 Jun 2026 17:39:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 268D010EB3D;
 Wed, 10 Jun 2026 17:39:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781113174; x=1812649174;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=CKkYCWzA3rUmk+DtPETzFGM/8+X0Hd+gq/XRrX3sfmI=;
 b=NjpS82tt9osbpImVYso0HO46FYG4knwDjSUJxSLjbve1TFXch+OdpnbS
 mKUV6oZDsGHG0vf4lNeXM6PjD25RdtMlHi2/aexu3d6SXK8G2E3i2F+Aq
 0xtxH4ZuSC6EQKXpyrwK11o1rTtVp/CxjDAmPNQ7LPsH3L8nGR4Zdy6Jr
 oiwcyl+iXtbiIkOEQQsVKMp9Y7ZJJKafp3Kg4eAPYbbKSTsegMhtm8zEs
 cfyLEtmB11jS93nsywB9QExjuZ9ihlokr4YdDDv0bgBtQNm7tXoK3lwa9
 +FSn3ehnC1L8RFPnXyCmZaqLcT5F8iDYVhqWA0FQCrOcZTF2YrQv3wTQO g==;
X-CSE-ConnectionGUID: o7Qne+0cT5We+XpWQ6AVVQ==
X-CSE-MsgGUID: CODjRm6dT4OKUa/X2DTQbg==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="69454544"
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="69454544"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 10:39:34 -0700
X-CSE-ConnectionGUID: GPiCztEIQ7WPvPpKTULO5A==
X-CSE-MsgGUID: 7vM/6BIZQ+qAMcI9HRjrHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="269916374"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.244.3])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 10:39:32 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 12/14] drm/i915/cdclk: Extract bxt_cdclk_pcode_{pre,
 post}_notify()
In-Reply-To: <20260610170652.5320-13-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260610170652.5320-1-ville.syrjala@linux.intel.com>
 <20260610170652.5320-13-ville.syrjala@linux.intel.com>
Date: Wed, 10 Jun 2026 20:39:30 +0300
Message-ID: <c8197592b12f863e4492cde2f5d2e39eb38e44b3@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,linux.intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C73B066C02A

On Wed, 10 Jun 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Extract the BXT/GLK pcode notify stuff to a few small helpers.
> The plan is to unify these between all the platforms and turn
> them into vfuncs.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 42 +++++++++++++---------
>  1 file changed, 26 insertions(+), 16 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm=
/i915/display/intel_cdclk.c
> index bb47fc4c86ee..749e366e60ab 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -2226,6 +2226,29 @@ static u32 bxt_cdclk_ctl(struct intel_display *dis=
play,
>  	return val;
>  }
>=20=20
> +static int bxt_cdclk_pcode_pre_notify(struct intel_display *display)
> +{
> +	/*
> +	 * BSpec requires us to wait up to 150usec, but that leads to
> +	 * timeouts; the 2ms used here is based on experiment.
> +	 */
> +	return intel_parent_pcode_write_timeout(display, HSW_PCODE_DE_WRITE_FRE=
Q_REQ,
> +						0x80000000, 2);
> +}
> +
> +static int bxt_cdclk_pcode_post_notify(struct intel_display *display,
> +				       const struct intel_cdclk_config *cdclk_config)
> +{
> +	/*
> +	 * The timeout isn't specified, the 2ms used here is based on
> +	 * experiment.
> +	 * FIXME: Waiting for the request completion could be delayed
> +	 * until the next PCODE request based on BSpec.
> +	 */
> +	return intel_parent_pcode_write_timeout(display, HSW_PCODE_DE_WRITE_FRE=
Q_REQ,
> +						cdclk_config->voltage_level, 2);
> +}
> +
>  static void _bxt_set_cdclk(struct intel_display *display,
>  			   const struct intel_cdclk_config *cdclk_config,
>  			   enum pipe pipe)
> @@ -2278,13 +2301,7 @@ static void bxt_set_cdclk(struct intel_display *di=
splay,
>  	else if (DISPLAY_VER(display) >=3D 11)
>  		ret =3D skl_cdclk_pcode_pre_notify(display);
>  	else
> -		/*
> -		 * BSpec requires us to wait up to 150usec, but that leads to
> -		 * timeouts; the 2ms used here is based on experiment.
> -		 */
> -		ret =3D intel_parent_pcode_write_timeout(display,
> -						       HSW_PCODE_DE_WRITE_FREQ_REQ,
> -						       0x80000000, 2);
> +		ret =3D bxt_cdclk_pcode_pre_notify(display);
>=20=20
>  	if (ret) {
>  		drm_err(display->drm,
> @@ -2311,15 +2328,8 @@ static void bxt_set_cdclk(struct intel_display *di=
splay,
>  	else if (DISPLAY_VER(display) >=3D 11)
>  		ret =3D skl_cdclk_pcode_post_notify(display, cdclk_config);
>  	else
> -		/*
> -		 * The timeout isn't specified, the 2ms used here is based on
> -		 * experiment.
> -		 * FIXME: Waiting for the request completion could be delayed
> -		 * until the next PCODE request based on BSpec.
> -		 */
> -		ret =3D intel_parent_pcode_write_timeout(display,
> -						       HSW_PCODE_DE_WRITE_FREQ_REQ,
> -						       cdclk_config->voltage_level, 2);
> +		ret =3D bxt_cdclk_pcode_post_notify(display, cdclk_config);
> +
>  	if (ret)
>  		drm_err(display->drm,
>  			"Failed to inform PCODE about end of CDCLK change (%d)\n", ret);

--=20
Jani Nikula, Intel
