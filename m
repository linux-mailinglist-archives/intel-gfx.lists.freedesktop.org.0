Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eIMdMggYxWnr6QQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 12:27:04 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32ED433475F
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 12:27:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 908CB10E387;
	Thu, 26 Mar 2026 11:27:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fBIka3XV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B60DF10E2E2;
 Thu, 26 Mar 2026 11:27:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774524421; x=1806060421;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=4HViDecbJjvH3ULD5+7vX4WLwFuDByxpaJHZnv/28G0=;
 b=fBIka3XVeGm8NdbTaSEw94gj++UX58sO2AAoFLh8uPbfhb6i12YBd7Y2
 f8KaDvIS9s0iwHAxk1PT2q1UEkg6wtEOHbMzcbFAO7Ti+YrL0JZex+lO5
 ZNlZqwWGru3UoqFqHZXLpf61rsDmWEYidUf0Vf724P8ARPNfbS0/i4ILj
 pvmv9VD2WEyAsYbJWze8rfqMDMTZ+GTbYDRAskDoDSi/jAwe+Nev7u3vn
 sq/iR9t94jwAl9Qz9ORUBkW46J2pA9vbaglLT1dBNdrLS9gqaCVDJN5dw
 DVkgFECUgVExJIqoTilS1fTSrNuKwAYf8kEEWAswGSke3qwfxnLyoBsqG g==;
X-CSE-ConnectionGUID: So7x/x0jQ1ylauV8HoV72g==
X-CSE-MsgGUID: KOuSAh9VQwqsCgwnfPstpw==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="79484239"
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="79484239"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 04:27:00 -0700
X-CSE-ConnectionGUID: eK1lWn+WTHSy7FiKYXDxWA==
X-CSE-MsgGUID: 4oNCOkf/S2yiluwP3wGPfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="220568514"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.184])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 04:26:58 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 04/12] drm/i915/mchbar: WARN when accessing non-MCHBAR
 registers via intel_mchbar_read*()
In-Reply-To: <20260325185342.11482-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260325185342.11482-1-ville.syrjala@linux.intel.com>
 <20260325185342.11482-5-ville.syrjala@linux.intel.com>
Date: Thu, 26 Mar 2026 13:26:54 +0200
Message-ID: <f69c1ac36824b0f707275dcdd5f666412c11c040@intel.com>
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
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 32ED433475F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, 25 Mar 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> The intel_mchbar_read*() functions should only be used for
> accessing MCHBAR registers. Warn if someone tries to use
> them for other registers.
>
> I suppose we could even have a dedicated type for MCHBAR
> registers. But that is true for many other special register
> types as well, and so far we haven't bothered adding any
> special types.

There's the i915_mcr_reg_t, and xe uses bits in the offset to identify
the type. But let's roll with this for now.

>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_mchbar.c | 49 +++++++++++++++++++++
>  1 file changed, 49 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_mchbar.c b/drivers/gpu/dr=
m/i915/display/intel_mchbar.c
> index 950a36d586c3..82b47c00101a 100644
> --- a/drivers/gpu/drm/i915/display/intel_mchbar.c
> +++ b/drivers/gpu/drm/i915/display/intel_mchbar.c
> @@ -3,15 +3,60 @@
>   * Copyright =C2=A9 2026 Intel Corporation
>   */
>=20=20
> +#include <linux/minmax.h>
> +
> +#include <drm/drm_print.h>
> +
>  #include "intel_display_core.h"
>  #include "intel_mchbar.h"
> +#include "intel_mchbar_regs.h"
>  #include "intel_uncore.h"
>=20=20
> +static bool has_mchbar_mirror(struct intel_display *display)
> +{
> +	return DISPLAY_VER(display) < 14;
> +}
> +
> +static u32 mchbar_mirror_base(struct intel_display *display)
> +{
> +	if (DISPLAY_VER(display) >=3D 6)
> +		return MCHBAR_MIRROR_BASE_SNB;
> +	else
> +		return MCHBAR_MIRROR_BASE;
> +}
> +
> +static u32 mchbar_mirror_end(struct intel_display *display)
> +{
> +	if (DISPLAY_VER(display) >=3D 12 && !display->platform.rocketlake)
> +		return MCHBAR_MIRROR_END_TGL;
> +	else if (DISPLAY_VER(display) >=3D 11)
> +		return MCHBAR_MIRROR_END_ICL_RKL;
> +	else if (DISPLAY_VER(display) >=3D 6)
> +		return MCHBAR_MIRROR_END_SNB;
> +	else
> +		return MCHBAR_MIRROR_END;
> +}
> +
> +static u32 mchbar_mirror_len(struct intel_display *display)
> +{
> +	return mchbar_mirror_end(display) - mchbar_mirror_base(display) + 1;
> +}
> +
> +static bool is_mchbar_reg(struct intel_display *display, i915_reg_t reg)
> +{
> +	return has_mchbar_mirror(display) &&
> +		in_range32(i915_mmio_reg_offset(reg),
> +			   mchbar_mirror_base(display),
> +			   mchbar_mirror_len(display));

Pedantically reg offset + size (2, 4 or 8 bytes) could overflow the
range even if the reg offset is within range for 1 byte access.

Not a big deal I guess.

> +}
> +
>  u16 intel_mchbar_read16(struct intel_display *display,
>  			i915_reg_t reg)
>  {
>  	struct intel_uncore *uncore =3D to_intel_uncore(display->drm);
>=20=20
> +	drm_WARN_ON(display->drm, !is_mchbar_reg(display, reg));

Is the backtrace enough to pinpoint the offending register? No need to
use drm_WARN() with a message indicating the reg? *shrug*

Overall,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> +
>  	return intel_uncore_read16(uncore, reg);
>  }
>=20=20
> @@ -20,6 +65,8 @@ u32 intel_mchbar_read(struct intel_display *display,
>  {
>  	struct intel_uncore *uncore =3D to_intel_uncore(display->drm);
>=20=20
> +	drm_WARN_ON(display->drm, !is_mchbar_reg(display, reg));
> +
>  	return intel_uncore_read(uncore, reg);
>  }
>=20=20
> @@ -28,5 +75,7 @@ u64 intel_mchbar_read64(struct intel_display *display,
>  {
>  	struct intel_uncore *uncore =3D to_intel_uncore(display->drm);
>=20=20
> +	drm_WARN_ON(display->drm, !is_mchbar_reg(display, reg));
> +
>  	return intel_uncore_read64(uncore, reg);
>  }

--=20
Jani Nikula, Intel
