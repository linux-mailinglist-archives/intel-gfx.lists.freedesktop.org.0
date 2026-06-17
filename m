Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id E4oeFuOcMmpB2wUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 15:10:59 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98182699FCB
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 15:10:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=BWC1kgqE;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01C2610E44F;
	Wed, 17 Jun 2026 13:10:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E96710E44F;
 Wed, 17 Jun 2026 13:10:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781701856; x=1813237856;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=66DieTQS9SNDa5CIIxxGx6YeLqFgK6xGTk9XIbw4a8k=;
 b=BWC1kgqE2mqHwbjjBVUfF90j/52wtAaL4VA0/YemTKz2bD6d4W9xHM6Y
 +2uINqYLjOEWMzsWkCtusOCNX7kS94OBUBu6ZwGmJRlKy/gXlhJnOutsJ
 pH9mip8XAXYaSOjrQEwNCMZQZhss8ywOOtDm41DEZZVne7ZUOLJbDZLWn
 6zutDDxT01upZQ2utaDgdz4btM2l7Hq3MIYn6T5GR9VFAXowyvJ1n1UcQ
 W68IdNjwGGbQ4V9L6An2xm0cNObpkyIYG0gomIS6kO/bZX/XDfStNSn0G
 7Ya+K1YuFUrtVrcef8WcF5qzKcItQR5zMe8BZF00O7DxdOZAyAEn+wRKT A==;
X-CSE-ConnectionGUID: T41Wo11VQDG6/fXrZuV39Q==
X-CSE-MsgGUID: ISvGa2rBSBup8tEypZNE1g==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="82394983"
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="82394983"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 06:10:56 -0700
X-CSE-ConnectionGUID: /hGKOnHUTAWsPHupERikrw==
X-CSE-MsgGUID: wHNFH61WTx2rtm2gUcmvKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="247928900"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.158])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 06:10:54 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 08/14] drm/i915/cdclk: Unify the pcode pre/post notify
 in bxt_set_cdclk()
In-Reply-To: <20260610170652.5320-9-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260610170652.5320-1-ville.syrjala@linux.intel.com>
 <20260610170652.5320-9-ville.syrjala@linux.intel.com>
Date: Wed, 17 Jun 2026 16:10:51 +0300
Message-ID: <83484d329e38dfc0fadeba0d1f08bf3456ea4245@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,linux.intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 98182699FCB

On Wed, 10 Jun 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> The control flow between the pcode pre and post notifications ibn

*in

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> bxt_set_cdclk() is written in two different ways, even though
> they end up doing the same thing. Unify the code.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 16 ++++++----------
>  1 file changed, 6 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm=
/i915/display/intel_cdclk.c
> index 659c1c0e3432..09981a112db4 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -2237,7 +2237,7 @@ static void bxt_set_cdclk(struct intel_display *dis=
play,
>  {
>  	struct intel_cdclk_config mid_cdclk_config;
>  	int cdclk =3D cdclk_config->cdclk;
> -	int ret =3D 0;
> +	int ret;
>=20=20
>  	/*
>  	 * Inform power controller of upcoming frequency change.
> @@ -2246,7 +2246,7 @@ static void bxt_set_cdclk(struct intel_display *dis=
play,
>  	 * this step.
>  	 */
>  	if (DISPLAY_VER(display) >=3D 14 || display->platform.dg2)
> -		; /* NOOP */
> +		ret =3D 0; /* NOOP */
>  	else if (DISPLAY_VER(display) >=3D 11)
>  		ret =3D intel_parent_pcode_request(display, SKL_PCODE_CDCLK_CONTROL,
>  						 SKL_CDCLK_PREPARE_FOR_CHANGE,
> @@ -2282,15 +2282,12 @@ static void bxt_set_cdclk(struct intel_display *d=
isplay,
>  	if (DISPLAY_VER(display) >=3D 20 && cdclk > display->cdclk.hw.cdclk)
>  		xe2lpd_mdclk_cdclk_ratio_program(display, cdclk_config);
>=20=20
> -	if (DISPLAY_VER(display) >=3D 14)
> -		/*
> -		 * NOOP - No Pcode communication needed for
> -		 * Display versions 14 and beyond
> -		 */;
> -	else if (DISPLAY_VER(display) >=3D 11 && !display->platform.dg2)
> +	if (DISPLAY_VER(display) >=3D 14 || display->platform.dg2)
> +		ret =3D 0; /* NOOP */
> +	else if (DISPLAY_VER(display) >=3D 11)
>  		ret =3D intel_parent_pcode_write(display, SKL_PCODE_CDCLK_CONTROL,
>  					       cdclk_config->voltage_level);
> -	if (DISPLAY_VER(display) < 11) {
> +	else
>  		/*
>  		 * The timeout isn't specified, the 2ms used here is based on
>  		 * experiment.
> @@ -2300,7 +2297,6 @@ static void bxt_set_cdclk(struct intel_display *dis=
play,
>  		ret =3D intel_parent_pcode_write_timeout(display,
>  						       HSW_PCODE_DE_WRITE_FREQ_REQ,
>  						       cdclk_config->voltage_level, 2);
> -	}
>  	if (ret)
>  		drm_err(display->drm,
>  			"PCode CDCLK freq set failed, (err %d, freq %d)\n",

--=20
Jani Nikula, Intel
