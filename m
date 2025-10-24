Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB3DBC06406
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Oct 2025 14:28:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CBEC10E1E9;
	Fri, 24 Oct 2025 12:28:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nql9v8q0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B913C10E1E9;
 Fri, 24 Oct 2025 12:28:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761308933; x=1792844933;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=at9WQdVZRf5MUgr/Q34QKNznQ7t6yczHMjLjRyoqCnI=;
 b=nql9v8q0hcjuHGK3jYGnf2K9naTSsTqIakIvje/MrrZ6+1aXpHBH6O9T
 6WIreAuv/C/C0bp+6qWemgVrCV363L1j0yE1Gf6at+SwW4iejcII5Q7d0
 IiMHA5F8PiBV+ikzYo6A82JTtrx9myW4LcO28HdZSrMYQseTTAlLd96ca
 MV20dHxWzRgwzFDQ2aQQo+CmvEdQE0mgcLk5zC0TglySMwm3EBw9/Gezs
 Bc3hUcj3v1vTXl7zC26uFlGoyEn8fYYYsL60ON0BgGWbzhGNNp5XYTui+
 hzfFtslrBjPITMBgKM4iHEolPiiWV6FRbQaPn2AxG+YhKpcRH64dKYg+w w==;
X-CSE-ConnectionGUID: cHmhEpnDSHqOnPR2mKrfKw==
X-CSE-MsgGUID: UeWFuxNYRReg/XwWJkGXRQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="74610341"
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="74610341"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 05:28:53 -0700
X-CSE-ConnectionGUID: PLGhS8jwQ5uLxwgnou23VQ==
X-CSE-MsgGUID: CXO6/4qBQR2glhtLurp1Og==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="208063724"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.230])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 05:28:50 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: Re: [PATCH v2 6/6] drm/xe/display: Use display parent interface for
 xe runtime pm
In-Reply-To: <20251024093113.1119070-7-jouni.hogander@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251024093113.1119070-1-jouni.hogander@intel.com>
 <20251024093113.1119070-7-jouni.hogander@intel.com>
Date: Fri, 24 Oct 2025 15:28:47 +0300
Message-ID: <14c4e68a77d2006222956ff3fcb9691cef2a91ed@intel.com>
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

On Fri, 24 Oct 2025, Jouni H=C3=B6gander <jouni.hogander@intel.com> wrote:
> Start using display parent interface for xe runtime pm.
>
> v2: keep xe_display_rpm.c
>
> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/xe/Makefile                 |  1 +
>  drivers/gpu/drm/xe/display/xe_display_rpm.c | 65 ---------------------
>  2 files changed, 1 insertion(+), 65 deletions(-)
>
> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
> index 82c6b3d296769..a39caed9f3d35 100644
> --- a/drivers/gpu/drm/xe/Makefile
> +++ b/drivers/gpu/drm/xe/Makefile
> @@ -256,6 +256,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) +=3D \
>  	i915-display/intel_display_power.o \
>  	i915-display/intel_display_power_map.o \
>  	i915-display/intel_display_power_well.o \
> +	i915-display/intel_display_rpm.o \
>  	i915-display/intel_display_trace.o \
>  	i915-display/intel_display_wa.o \
>  	i915-display/intel_dkl_phy.o \
> diff --git a/drivers/gpu/drm/xe/display/xe_display_rpm.c b/drivers/gpu/dr=
m/xe/display/xe_display_rpm.c
> index 72a351e26a008..977f1dafdde07 100644
> --- a/drivers/gpu/drm/xe/display/xe_display_rpm.c
> +++ b/drivers/gpu/drm/xe/display/xe_display_rpm.c
> @@ -9,71 +9,6 @@
>  #include "xe_device_types.h"
>  #include "xe_pm.h"
>=20=20
> -static struct xe_device *display_to_xe(struct intel_display *display)
> -{
> -	return to_xe_device(display->drm);
> -}
> -
> -struct ref_tracker *intel_display_rpm_get_raw(struct intel_display *disp=
lay)
> -{
> -	return intel_display_rpm_get(display);
> -}
> -
> -void intel_display_rpm_put_raw(struct intel_display *display, struct ref=
_tracker *wakeref)
> -{
> -	intel_display_rpm_put(display, wakeref);
> -}
> -
> -struct ref_tracker *intel_display_rpm_get(struct intel_display *display)
> -{
> -	return xe_pm_runtime_resume_and_get(display_to_xe(display)) ? INTEL_WAK=
EREF_DEF : NULL;
> -}
> -
> -struct ref_tracker *intel_display_rpm_get_if_in_use(struct intel_display=
 *display)
> -{
> -	return xe_pm_runtime_get_if_in_use(display_to_xe(display)) ? INTEL_WAKE=
REF_DEF : NULL;
> -}
> -
> -struct ref_tracker *intel_display_rpm_get_noresume(struct intel_display =
*display)
> -{
> -	xe_pm_runtime_get_noresume(display_to_xe(display));
> -
> -	return INTEL_WAKEREF_DEF;
> -}
> -
> -void intel_display_rpm_put(struct intel_display *display, struct ref_tra=
cker *wakeref)
> -{
> -	if (wakeref)
> -		xe_pm_runtime_put(display_to_xe(display));
> -}
> -
> -void intel_display_rpm_put_unchecked(struct intel_display *display)
> -{
> -	xe_pm_runtime_put(display_to_xe(display));
> -}
> -
> -bool intel_display_rpm_suspended(struct intel_display *display)
> -{
> -	struct xe_device *xe =3D display_to_xe(display);
> -
> -	return pm_runtime_suspended(xe->drm.dev);
> -}
> -
> -void assert_display_rpm_held(struct intel_display *display)
> -{
> -	/* FIXME */
> -}
> -
> -void intel_display_rpm_assert_block(struct intel_display *display)
> -{
> -	/* FIXME */
> -}
> -
> -void intel_display_rpm_assert_unblock(struct intel_display *display)
> -{
> -	/* FIXME */
> -}
> -
>  static struct ref_tracker *xe_display_rpm_get(const struct drm_device *d=
rm)
>  {
>  	return xe_pm_runtime_resume_and_get(to_xe_device(drm)) ? INTEL_WAKEREF_=
DEF : NULL;

--=20
Jani Nikula, Intel
