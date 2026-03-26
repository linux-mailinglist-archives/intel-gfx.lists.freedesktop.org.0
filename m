Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CFaZFwkcxWnr6QQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 12:44:09 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80885334A90
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 12:44:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED2FC10E984;
	Thu, 26 Mar 2026 11:44:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GW7KOjmN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84C5410E984;
 Thu, 26 Mar 2026 11:44:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774525446; x=1806061446;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=0vD/C9vDNM7vTA6VT0Cy2gjLtI1jDLYpRbCuTgJ21sQ=;
 b=GW7KOjmN3lzmImE1tqmwuXY4gQZ+TCmwptiZgkQ3n8oS5Vns27c3bAW+
 ik4OscrHlGR2wuFXe8odVWM4xHF8vPr6tPXw1mdhPC6OMcgCKdp77ttY3
 xul3csg16cvdwHLsifNh/7Id180HK3e4zVhC3ApUkxyITYWADJO6wRYDl
 /3zpMHHVAuOgVVcJ1Z/PTcsNA7Si0pJAhJ67m+CgGdYfcJdaEs4c6KL5R
 9hNjIaqUHfNaOpbya2fU5bS3SI/xRozzlFV1HPiSU+Op+sCe28QvaCI65
 Z9Cw7NybrexBtExfmfioKg/2lsLhinYWM1ishWPHuelOhfxT+iVy6OENJ Q==;
X-CSE-ConnectionGUID: UYGHaFa0SGGW7+DNjeu0ww==
X-CSE-MsgGUID: jWem+ff/R0SULxMPG2D93A==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="92959116"
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="92959116"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 04:44:06 -0700
X-CSE-ConnectionGUID: gHb+3o0PTV+VcCymqdJHWA==
X-CSE-MsgGUID: d91V1hItSwe9YMiwC7ozFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="221676719"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.184])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 04:44:04 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 11/12] drm/i915/mchbar: Use intel_de_read*() for MCHBAR
 register accesses
In-Reply-To: <20260325185342.11482-12-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260325185342.11482-1-ville.syrjala@linux.intel.com>
 <20260325185342.11482-12-ville.syrjala@linux.intel.com>
Date: Thu, 26 Mar 2026 13:44:00 +0200
Message-ID: <15e3d586adcfd3188b4753518757477dfcfaecd9@intel.com>
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
X-Rspamd-Queue-Id: 80885334A90
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, 25 Mar 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Replace the naked intel_uncore_read*() with intel_de_read*()
> in the MCHBAR code.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_mchbar.c | 14 ++++----------
>  1 file changed, 4 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_mchbar.c b/drivers/gpu/dr=
m/i915/display/intel_mchbar.c
> index 82b47c00101a..da74147f471e 100644
> --- a/drivers/gpu/drm/i915/display/intel_mchbar.c
> +++ b/drivers/gpu/drm/i915/display/intel_mchbar.c
> @@ -7,10 +7,10 @@
>=20=20
>  #include <drm/drm_print.h>
>=20=20
> +#include "intel_de.h"
>  #include "intel_display_core.h"
>  #include "intel_mchbar.h"
>  #include "intel_mchbar_regs.h"
> -#include "intel_uncore.h"
>=20=20
>  static bool has_mchbar_mirror(struct intel_display *display)
>  {
> @@ -53,29 +53,23 @@ static bool is_mchbar_reg(struct intel_display *displ=
ay, i915_reg_t reg)
>  u16 intel_mchbar_read16(struct intel_display *display,
>  			i915_reg_t reg)
>  {
> -	struct intel_uncore *uncore =3D to_intel_uncore(display->drm);
> -
>  	drm_WARN_ON(display->drm, !is_mchbar_reg(display, reg));
>=20=20
> -	return intel_uncore_read16(uncore, reg);
> +	return intel_de_read16(display, reg);
>  }
>=20=20
>  u32 intel_mchbar_read(struct intel_display *display,
>  		      i915_reg_t reg)
>  {
> -	struct intel_uncore *uncore =3D to_intel_uncore(display->drm);
> -
>  	drm_WARN_ON(display->drm, !is_mchbar_reg(display, reg));
>=20=20
> -	return intel_uncore_read(uncore, reg);
> +	return intel_de_read(display, reg);
>  }
>=20=20
>  u64 intel_mchbar_read64(struct intel_display *display,
>  			i915_reg_t reg)
>  {
> -	struct intel_uncore *uncore =3D to_intel_uncore(display->drm);
> -
>  	drm_WARN_ON(display->drm, !is_mchbar_reg(display, reg));
>=20=20
> -	return intel_uncore_read64(uncore, reg);
> +	return intel_de_read64_2x32(display, reg);
>  }

--=20
Jani Nikula, Intel
