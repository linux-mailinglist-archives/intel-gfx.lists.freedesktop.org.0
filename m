Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D78D3AF0FF1
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Jul 2025 11:29:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38F8F10E070;
	Wed,  2 Jul 2025 09:29:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CGaAEAiJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB17B10E070;
 Wed,  2 Jul 2025 09:29:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751448562; x=1782984562;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=1t5qCkUmvwdVE/CwWvq+JZiX08/MVXkGddQ1AvMhmJ4=;
 b=CGaAEAiJgouX4YnanEYbQa6ynfcre1Q5Rd5QC705pas1eE6aZ8TvSfdt
 wZSK0QXT52VuxYaeRKTu4w0dKPzyoz8Stblxsyn6LmkY62LUOUHXJ9pY4
 iP56J3M+ZqWB9g+aqK++OJ+nA5DIncprwRU9xB7z62qw951Cl09NwtvME
 9zQ038JSAKRloKYA1f9G+adyu7NP1WlIccyKs6Q93PmmKEHkab+UJ10OS
 Ih1p+KS/cmVfu1jyLfnZo2s2wkZo5idk0vcdUjtLALtA5uoVr+5dcz32H
 HAWIQPkm2bleY44BnwPSjUgIIFZ777RQ+Wkrp3MR2Cjm6ryxq7KqKTOr9 w==;
X-CSE-ConnectionGUID: iCBy7r3/TYuLqo9uWj/BLw==
X-CSE-MsgGUID: spOp8ghDT8SsALNruVuhYQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11481"; a="53451137"
X-IronPort-AV: E=Sophos;i="6.16,281,1744095600"; d="scan'208";a="53451137"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2025 02:29:17 -0700
X-CSE-ConnectionGUID: XgCqnSoKTKuUIRrVk6Ma2w==
X-CSE-MsgGUID: nRYl0kXBS+62irG7KIgrwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,281,1744095600"; d="scan'208";a="159730692"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.29])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2025 02:29:10 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, gustavo.sousa@intel.com, Ankit Nautiyal
 <ankit.k.nautiyal@intel.com>
Subject: Re: [PATCH 1/2] drm/i915/display_wa: Add helpers to check wa
In-Reply-To: <20250702084620.3837426-2-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250702084620.3837426-1-ankit.k.nautiyal@intel.com>
 <20250702084620.3837426-2-ankit.k.nautiyal@intel.com>
Date: Wed, 02 Jul 2025 12:29:05 +0300
Message-ID: <3629b8ed33726fffd08182fa8d91c9464b0b26a0@intel.com>
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

On Wed, 02 Jul 2025, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> Introduce a generic helper to check display workarounds using an enum.
>
> Convert Wa_16023588340 to use the new interface, simplifying WA checks
> and making future additions easier.
>
> v2: Use drm_WARN instead of MISSING_CASE and simplify intel_display_wa
> macro. (Jani)
>
> Suggested-by: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_wa.c | 15 +++++++++++++++
>  drivers/gpu/drm/i915/display/intel_display_wa.h |  9 +++++++++
>  drivers/gpu/drm/i915/display/intel_fbc.c        |  2 +-
>  3 files changed, 25 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gp=
u/drm/i915/display/intel_display_wa.c
> index f57280e9d041..f5e8d58d9a68 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
> @@ -3,6 +3,8 @@
>   * Copyright =C2=A9 2023 Intel Corporation
>   */
>=20=20
> +#include "drm/drm_print.h"

The headers in include/ are always included with <>,
i.e. <drm/drm_print.h>.

With that,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> +
>  #include "i915_reg.h"
>  #include "intel_de.h"
>  #include "intel_display_core.h"
> @@ -39,3 +41,16 @@ void intel_display_wa_apply(struct intel_display *disp=
lay)
>  	else if (DISPLAY_VER(display) =3D=3D 11)
>  		gen11_display_wa_apply(display);
>  }
> +
> +bool __intel_display_wa(struct intel_display *display, enum intel_displa=
y_wa wa)
> +{
> +	switch (wa) {
> +	case INTEL_DISPLAY_WA_16023588340:
> +		return intel_display_needs_wa_16023588340(display);
> +	default:
> +		drm_WARN(display->drm, 1, "Missing Wa number: %d\n", wa);
> +		break;
> +	}
> +
> +	return false;
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gp=
u/drm/i915/display/intel_display_wa.h
> index babd9d16603d..146ee70d66f7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
> @@ -21,4 +21,13 @@ static inline bool intel_display_needs_wa_16023588340(=
struct intel_display *disp
>  bool intel_display_needs_wa_16023588340(struct intel_display *display);
>  #endif
>=20=20
> +enum intel_display_wa {
> +	INTEL_DISPLAY_WA_16023588340,
> +};
> +
> +bool __intel_display_wa(struct intel_display *display, enum intel_displa=
y_wa wa);
> +
> +#define intel_display_wa(__display, __wa) \
> +	__intel_display_wa((__display), INTEL_DISPLAY_WA_##__wa)
> +
>  #endif
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i=
915/display/intel_fbc.c
> index 6e26cb4c5724..e2e03af520b2 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -1464,7 +1464,7 @@ static int intel_fbc_check_plane(struct intel_atomi=
c_state *state,
>  		return 0;
>  	}
>=20=20
> -	if (intel_display_needs_wa_16023588340(display)) {
> +	if (intel_display_wa(display, 16023588340)) {
>  		plane_state->no_fbc_reason =3D "Wa_16023588340";
>  		return 0;
>  	}

--=20
Jani Nikula, Intel
