Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ALxuIGIYxWnr6QQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 12:28:34 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 572FB3347F5
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 12:28:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90CAD10E8F0;
	Thu, 26 Mar 2026 11:28:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Zj4qv4ZP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7DD610E286;
 Thu, 26 Mar 2026 11:28:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774524511; x=1806060511;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=rGchh/ve3v0fvNonhoBVpSssmde1xfo5gC+FV+pPCv0=;
 b=Zj4qv4ZPSaf+xRi2x/J1yfKpiIJXn+NEJ+J5gDLuaAS79XBzGN3kNcY5
 LIYbH0coDcTG8+Dq98kjuBNnme29rEM1wScIq2jdCOCRPZ332GLSEDDjP
 NcnWGSi0YfXrTyJYcfUBPcEtG5WDq5Ib7i+7C5yUsezIPpqo1f0wChY+g
 0dFix3v5439hBnFvjHwRyLt6IUuAtb8JCAUqKHJRcazYeVonyJafift8a
 tMQ/klDs4lS8rWCUoyTPIavwEL3g8j6lVPlWwTb6AOkB7yb28H5Jf3amt
 MHn17M3bkp732Oq8dj8+7n0n2qobmkXnllEkKB6SQc2UOQDBF5TzCRlv0 Q==;
X-CSE-ConnectionGUID: yko/GGxWS2aVTIDunCu/RQ==
X-CSE-MsgGUID: cime1YjcTdSyFRK52a1QIQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="75467651"
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="75467651"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 04:28:31 -0700
X-CSE-ConnectionGUID: BJEO8VWmQsGMnxZ7n6Md6A==
X-CSE-MsgGUID: 4oiGqBLkTom7bjK6IvfSqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="229917520"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.184])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 04:28:29 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 05/12] drm/i915/mchbar: Use intel_mchbar_read() instead
 of intel_de_read()
In-Reply-To: <20260325185342.11482-6-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260325185342.11482-1-ville.syrjala@linux.intel.com>
 <20260325185342.11482-6-ville.syrjala@linux.intel.com>
Date: Thu, 26 Mar 2026 13:28:24 +0200
Message-ID: <ced1b7895b2394312d2fd90c9d32b462b7944255@intel.com>
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 572FB3347F5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, 25 Mar 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> We are doing a few accesses to MCHBAR registers with intel_de_read().
> Use the dedicated intel_mchbar_read() instead.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c         | 5 +++--
>  drivers/gpu/drm/i915/display/intel_display_power.c | 3 ++-
>  2 files changed, 5 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm=
/i915/display/intel_cdclk.c
> index 121a12c5b8ac..2a17e9b22740 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -41,6 +41,7 @@
>  #include "intel_display_utils.h"
>  #include "intel_display_wa.h"
>  #include "intel_dram.h"
> +#include "intel_mchbar.h"
>  #include "intel_mchbar_regs.h"
>  #include "intel_parent.h"
>  #include "intel_pci_config.h"
> @@ -376,8 +377,8 @@ static unsigned int intel_hpll_vco(struct intel_displ=
ay *display)
>  	else
>  		return 0;
>=20=20
> -	tmp =3D intel_de_read(display, display->platform.pineview ||
> -			    display->platform.mobile ? HPLLVCO_MOBILE : HPLLVCO);
> +	tmp =3D intel_mchbar_read(display, display->platform.pineview ||
> +				display->platform.mobile ? HPLLVCO_MOBILE : HPLLVCO);
>=20=20
>  	vco =3D vco_table[tmp & 0x7];
>  	if (vco =3D=3D 0)
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers=
/gpu/drm/i915/display/intel_display_power.c
> index ec96b141c74c..8da2990395e0 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -24,6 +24,7 @@
>  #include "intel_display_wa.h"
>  #include "intel_dmc.h"
>  #include "intel_dram.h"
> +#include "intel_mchbar.h"
>  #include "intel_mchbar_regs.h"
>  #include "intel_parent.h"
>  #include "intel_pch_refclk.h"
> @@ -1252,7 +1253,7 @@ static void assert_can_disable_lcpll(struct intel_d=
isplay *display)
>  static u32 hsw_read_dcomp(struct intel_display *display)
>  {
>  	if (display->platform.haswell)
> -		return intel_de_read(display, D_COMP_HSW);
> +		return intel_mchbar_read(display, D_COMP_HSW);
>  	else
>  		return intel_de_read(display, D_COMP_BDW);
>  }

--=20
Jani Nikula, Intel
