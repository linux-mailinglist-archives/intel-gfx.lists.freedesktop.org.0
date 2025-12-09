Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BEAB9CAFADC
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 11:47:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44E7110E500;
	Tue,  9 Dec 2025 10:47:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WcJBsVEv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD1DA10E4FB;
 Tue,  9 Dec 2025 10:47:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765277271; x=1796813271;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=hKkyE4CfIEZ5T+pV+V8ysX2WKryjoJ9uXM9lv8XuznQ=;
 b=WcJBsVEv/QAlujLQytkplWjmcAe4BCdngmCmDq1h9gNP9sM9EFR4RKOi
 Wkoc+sOjUgvX2RBvo46AIG6BEv4Ck3DZ2QhwaiNzCMcsD4jElx/N8v5GL
 L5lgRy3I+Asf2osDMO8KXdGlrh8eQEcaFvIqg1sOHFWB2u+YOrYlLAmKm
 rLWkgSUaVi9mB2kuX1Quj/c+AAZTQIWcU4mkpVHjC0nadztx0kt9Zk8Ef
 m8P5mg8DIO8ItBtk42cUZOZ2paBbF0LC2d57jrcNzMscKCogwC52E7P/r
 udVo+ZZ07PfXB4PjGZpvOlCeIWj2LmqOU5xY74LByG20yuoc+lVhlPivH w==;
X-CSE-ConnectionGUID: YXu4NBe8T2C8a+5P1pl0Nw==
X-CSE-MsgGUID: xTIjrg2LQL+NTmGlddvvhQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="78347872"
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="78347872"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 02:47:50 -0800
X-CSE-ConnectionGUID: IOWE6m0CTYGzCxyCLeyaQA==
X-CSE-MsgGUID: oKi6wIpVTM2X9eRYvC5A+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="200375642"
Received: from mwiniars-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.154])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 02:47:48 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 10/19] drm/i915/de: Simplify intel_de_read8()
In-Reply-To: <20251208182637.334-11-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251208182637.334-1-ville.syrjala@linux.intel.com>
 <20251208182637.334-11-ville.syrjala@linux.intel.com>
Date: Tue, 09 Dec 2025 12:47:44 +0200
Message-ID: <377ea121db5a593af09af8199ce318b945ba5859@intel.com>
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

On Mon, 08 Dec 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> intel_de_read8() is only needed for VGA register MMIO access
> by the CRT code on gen2/3. Remove the redundant wakelock stuff,
> and add a platform check to make sure this won't get used on
> any platform where MMIO VGA register accesses don't work.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Not a fan of adding the extra dep on drm_print.h as I've tried hard to
remove it from headers all over the place to uncover the implicit
dependencies.

Oh well, maybe this will be addressed in the upcoming mmio series?

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_de.h | 13 +++++--------
>  1 file changed, 5 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i9=
15/display/intel_de.h
> index a7ce3b875e06..5c1b37d30045 100644
> --- a/drivers/gpu/drm/i915/display/intel_de.h
> +++ b/drivers/gpu/drm/i915/display/intel_de.h
> @@ -6,6 +6,8 @@
>  #ifndef __INTEL_DE_H__
>  #define __INTEL_DE_H__
>=20=20
> +#include <drm/drm_print.h>
> +
>  #include "intel_display_core.h"
>  #include "intel_dmc_wl.h"
>  #include "intel_dsb.h"
> @@ -34,15 +36,10 @@ intel_de_read(struct intel_display *display, i915_reg=
_t reg)
>  static inline u8
>  intel_de_read8(struct intel_display *display, i915_reg_t reg)
>  {
> -	u8 val;
> +	/* this is only used on VGA registers (possible on pre-g4x) */
> +	drm_WARN_ON(display->drm, DISPLAY_VER(display) >=3D 5 || display->platf=
orm.g4x);
>=20=20
> -	intel_dmc_wl_get(display, reg);
> -
> -	val =3D intel_uncore_read8(__to_uncore(display), reg);
> -
> -	intel_dmc_wl_put(display, reg);
> -
> -	return val;
> +	return intel_uncore_read8(__to_uncore(display), reg);
>  }
>=20=20
>  static inline u64

--=20
Jani Nikula, Intel
