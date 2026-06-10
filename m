Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6xYuNQihKWrCawMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 19:38:16 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 412E966C007
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 19:38:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=gm8OjmiR;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C57C210EB30;
	Wed, 10 Jun 2026 17:38:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36DAC10E6C0;
 Wed, 10 Jun 2026 17:38:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781113093; x=1812649093;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=Sf0jn/pAn4BJalRzTGwBnPAfWFB/wt5tQ9VxWTw0epA=;
 b=gm8OjmiR2nGmu4t/b4pjH4IzGntrYfOPqy2sULwQdH3drBnwT0l3b+IA
 OoCoZK6eu6AycvOCd90gjVUuvVVdkVHdfW45zFaxIi1ueZ1iN4a4H9h/a
 u/PkZ7P29aPdwzl9DiX8V9ZhceB5Zsm1c7BTN2ou3pdoTaxh585CAF2/l
 ghHvlmaYAkqTtmq6RCl2VljkT2wfgr1ezD6CjXk5/o8iz6v+ICctFINcU
 Yb7mkkuAFh0953xaI9+QaqgEIkLVl95e+t75DcFxHS92qfMWb85cqiDCC
 WTNp3W+gqmLfCBn21pVT+oSS0K01WdvqqIBuQzWZUHETgcAQSud/9ihtQ A==;
X-CSE-ConnectionGUID: zUxHlQxCTwC3vZ8mu4LjmA==
X-CSE-MsgGUID: r5flnDhbSY+l89RUfjDVNw==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="92589820"
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="92589820"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 10:38:13 -0700
X-CSE-ConnectionGUID: bRrSmoByR+KcGWfm2DwcUw==
X-CSE-MsgGUID: Rvbj3EPwRoGanLDsazjzlA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="243284046"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.244.3])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 10:38:11 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 10/14] drm/i915/cdclk: Extract bdw_cdclk_pcode_{pre,
 post}_notify()
In-Reply-To: <20260610170652.5320-11-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260610170652.5320-1-ville.syrjala@linux.intel.com>
 <20260610170652.5320-11-ville.syrjala@linux.intel.com>
Date: Wed, 10 Jun 2026 20:38:09 +0300
Message-ID: <8f1198901587c6b2dea2a90a13d872881270d23e@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,linux.intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 412E966C007

On Wed, 10 Jun 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Extract the BSW pcode notify stuff to a few small helpers. The
> plan is to unify these between all the platforms and turn them
> into vfuncs.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 18 +++++++++++++++---
>  1 file changed, 15 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm=
/i915/display/intel_cdclk.c
> index 542724256d0f..041b1fc8b3ee 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -872,6 +872,19 @@ static u32 bdw_cdclk_freq_sel(int cdclk)
>  	}
>  }
>=20=20
> +static int bdw_cdclk_pcode_pre_notify(struct intel_display *display)
> +{
> +	return intel_parent_pcode_write(display, BDW_PCODE_DISPLAY_FREQ_CHANGE_=
REQ,
> +					0x0);
> +}
> +
> +static int bdw_cdclk_pcode_post_notify(struct intel_display *display,
> +				       const struct intel_cdclk_config *cdclk_config)
> +{
> +	return intel_parent_pcode_write(display, HSW_PCODE_DE_WRITE_FREQ_REQ,
> +					cdclk_config->voltage_level);
> +}
> +
>  static void bdw_set_cdclk(struct intel_display *display,
>  			  const struct intel_cdclk_config *cdclk_config,
>  			  enum pipe pipe)
> @@ -888,7 +901,7 @@ static void bdw_set_cdclk(struct intel_display *displ=
ay,
>  		     "trying to change cdclk frequency with cdclk not enabled\n"))
>  		return;
>=20=20
> -	ret =3D intel_parent_pcode_write(display, BDW_PCODE_DISPLAY_FREQ_CHANGE=
_REQ, 0x0);
> +	ret =3D bdw_cdclk_pcode_pre_notify(display);
>  	if (ret) {
>  		drm_err(display->drm,
>  			"Failed to inform PCODE about start of CDCLK change (%d)\n", ret);
> @@ -918,8 +931,7 @@ static void bdw_set_cdclk(struct intel_display *displ=
ay,
>  	if (ret)
>  		drm_err(display->drm, "Switching back to LCPLL failed\n");
>=20=20
> -	ret =3D intel_parent_pcode_write(display, HSW_PCODE_DE_WRITE_FREQ_REQ,
> -				       cdclk_config->voltage_level);
> +	ret =3D bdw_cdclk_pcode_post_notify(display, cdclk_config);
>  	if (ret)
>  		drm_err(display->drm,
>  			"Failed to inform PCODE about end of CDCLK change (%d)\n", ret);

--=20
Jani Nikula, Intel
