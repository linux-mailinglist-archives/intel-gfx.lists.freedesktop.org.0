Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Cg3qLc1lKmrnogMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 09:37:49 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DE0C66F707
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 09:37:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="a/fz1/8t";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8BE210ED36;
	Thu, 11 Jun 2026 07:37:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B8FC10ED35;
 Thu, 11 Jun 2026 07:37:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781163467; x=1812699467;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=aJUxNZ7r1gQQ/R8W/m177IavXXVC4zX9K7OtdATX4qc=;
 b=a/fz1/8tvQqz9c5oAXa8B2hYMlHXVr8o+NrKo5+B+tdWwHsAnSmVA9mF
 g5wl7w5Im/sVCIVg8zT40bX7WksSawnHIZNFtJcuMK4ACKh+v0QulmvrQ
 PGewFLvkJrxIm26I31ajtOw/zgwOoVYClmZ8qndZQgViLC6iHEc2Gc8F6
 ld1zhC+BMatlJgvnVfRuaSsY43J07kb+XPjr/rQRbqYrP6kt4D96E8iAY
 BPZzqAqICfx3udGJAbsC/cespbuvQwHfPfZeSKm+uF2Kj0JgXz2HCGBdg
 ERIKlNF+l0wBnCtGW46mk8xevCr95SqoGzS5fD7sMHte7PnJTuqour0l+ w==;
X-CSE-ConnectionGUID: G0ardqQFQbexdqYprMWGSQ==
X-CSE-MsgGUID: 7DEP+89aRTKa+m+Nw1SgAQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="93077869"
X-IronPort-AV: E=Sophos;i="6.24,198,1774335600"; d="scan'208";a="93077869"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 00:37:46 -0700
X-CSE-ConnectionGUID: OLDUUa+PSHm77e0VxOMEOQ==
X-CSE-MsgGUID: OPtk5qLuRwa672lTmvqxoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,198,1774335600"; d="scan'208";a="251500490"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.160])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 00:37:45 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 06/14] drm/i915/cdclk: Drop pointless platform check
 from bxt_set_cdclk()
In-Reply-To: <20260610170652.5320-7-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260610170652.5320-1-ville.syrjala@linux.intel.com>
 <20260610170652.5320-7-ville.syrjala@linux.intel.com>
Date: Thu, 11 Jun 2026 10:37:42 +0300
Message-ID: <5e418b255197c951671b470cbbeb8cda5a701c6a@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,linux.intel.com:from_mime,lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4DE0C66F707

On Wed, 10 Jun 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Overwrite cdclk.hw.voltage_level from intel_update_cdclk() at the
> end on bxt_set_cdclk() also on bxt/glk. While this isn't actually
> necessary due to bxt/glk not having any extra DDI based voltage
> level requirements, it does avoid one less silly 'if' in the code.
>
> On icl+ the value derived by bxt_get_cdclk() may not be correct
> if the voltage level was bumped up due to DDI requirements, thus
> overwriting the assumed value is crucial there.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 11 +++++------
>  1 file changed, 5 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm=
/i915/display/intel_cdclk.c
> index ecb6be3383ca..bbf3603f889b 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -2308,12 +2308,11 @@ static void bxt_set_cdclk(struct intel_display *d=
isplay,
>=20=20
>  	intel_update_cdclk(display);
>=20=20
> -	if (DISPLAY_VER(display) >=3D 11)
> -		/*
> -		 * Can't read out the voltage level :(
> -		 * Let's just assume everything is as expected.
> -		 */
> -		display->cdclk.hw.voltage_level =3D cdclk_config->voltage_level;
> +	/*
> +	 * Can't read out the voltage level :(
> +	 * Let's just assume everything is as expected.
> +	 */
> +	display->cdclk.hw.voltage_level =3D cdclk_config->voltage_level;
>  }
>=20=20
>  static void bxt_sanitize_cdclk(struct intel_display *display)

--=20
Jani Nikula, Intel
