Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE7FBA39C01
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2025 13:19:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E840E10E69E;
	Tue, 18 Feb 2025 12:19:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ln1u/uzL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3EDF10E69E;
 Tue, 18 Feb 2025 12:19:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739881187; x=1771417187;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=TnsZVpEVHrbN2wWfKne7gOZPilXQV0j1rjXdASJC9oo=;
 b=Ln1u/uzLRiidQBvrCbO/7PKjWTI4EJIv3dsArAEpa3B8dFFQZruaiOBt
 pa4GZRrtWlAiymKrhvjBwS/CCVmQkOHEjmQU1N5ux1+tpHL3PV7ZBqX6L
 swcs/UWPXkpGs3KXp/KCnEHu2iqR+T7hh5uvOG0J+3Sv2wKFwLIGPkB/7
 F2AX/6zdUfiYj+CLQBM6+oHJgfUl5hExfSpljyJiteGZd+dpue7ylnOMO
 OtQ+RGM7c4UV9khq5usMqT5eeSksH+weJEsgpGfjzVutUwpCvjbFXzVqU
 oB25Qnwl9YNxy0bllJtUaw2Cs7+1/wG1pVOnGGPyq0l8fMCYC23bwExy5 g==;
X-CSE-ConnectionGUID: 1pFhXsWfQOCNItOELFmqJA==
X-CSE-MsgGUID: CSyOSe64QByYOpSGCJ3ahA==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="63049460"
X-IronPort-AV: E=Sophos;i="6.13,295,1732608000"; d="scan'208";a="63049460"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2025 04:19:46 -0800
X-CSE-ConnectionGUID: dsN8p3/9TkWI/T+L8Cp7lw==
X-CSE-MsgGUID: VINkf+ITREiASVu2iXLQpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="115268242"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.43])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2025 04:19:43 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>, Ville Syrjala
 <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 1/2] drm/{i915,xe}: Move intel_pch under display
In-Reply-To: <20250218010224.761209-1-rodrigo.vivi@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250218010224.761209-1-rodrigo.vivi@intel.com>
Date: Tue, 18 Feb 2025 14:19:38 +0200
Message-ID: <878qq3o36t.fsf@intel.com>
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

On Mon, 17 Feb 2025, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> The only usage of the "PCH" infra is to detect which South Display
> Engine we should be using. Move it under display so we can convert
> all its callers towards intel_display struct later.

Yeah, PCH is becoming a blocker to finishing the conversions of many
files from drm_i915_private to intel_display. We'll need to do something
like this.

I was eyeing the PCH checks outside of display, and frankly many of them
are plain wrong (done to check stuff that's unrelated to PCH, but
happens to match desired platforms), or should be in display
(e.g. gt_record_display_regs()). But there are also legitimate checks, I
think in clock gating.

The thing that gives me an uneasy feeling about this patch series at
this point in time is that i915 core still depends on the PCH
detection. This won't work for a future independent display module, so
what's the story for that? How will that pan out?

It would be logical and great to do PCH detection near the end of
intel_display_device_probe().

Cc: Ville

BR,
Jani.


>
> No functional or code change.
>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile                          | 2 +-
>  drivers/gpu/drm/i915/{soc =3D> display}/intel_pch.c      | 2 +-
>  drivers/gpu/drm/i915/{soc =3D> display}/intel_pch.h      | 2 +-
>  drivers/gpu/drm/i915/i915_drv.h                        | 3 +--
>  drivers/gpu/drm/xe/Makefile                            | 2 +-
>  drivers/gpu/drm/xe/compat-i915-headers/soc/intel_pch.h | 6 ------
>  drivers/gpu/drm/xe/xe_device_types.h                   | 2 +-
>  7 files changed, 6 insertions(+), 13 deletions(-)
>  rename drivers/gpu/drm/i915/{soc =3D> display}/intel_pch.c (99%)
>  rename drivers/gpu/drm/i915/{soc =3D> display}/intel_pch.h (98%)
>  delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/soc/intel_pch.h
>
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index ed05b131ed3a..3bac76059ba9 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -52,7 +52,6 @@ i915-y +=3D \
>  i915-y +=3D \
>  	soc/intel_dram.o \
>  	soc/intel_gmch.o \
> -	soc/intel_pch.o \
>  	soc/intel_rom.o
>=20=20
>  # core library code
> @@ -281,6 +280,7 @@ i915-y +=3D \
>  	display/intel_modeset_setup.o \
>  	display/intel_modeset_verify.o \
>  	display/intel_overlay.o \
> +	display/intel_pch.o \
>  	display/intel_pch_display.o \
>  	display/intel_pch_refclk.o \
>  	display/intel_plane_initial.o \
> diff --git a/drivers/gpu/drm/i915/soc/intel_pch.c b/drivers/gpu/drm/i915/=
display/intel_pch.c
> similarity index 99%
> rename from drivers/gpu/drm/i915/soc/intel_pch.c
> rename to drivers/gpu/drm/i915/display/intel_pch.c
> index 82dc7fbd1a3e..37766e40fd1c 100644
> --- a/drivers/gpu/drm/i915/soc/intel_pch.c
> +++ b/drivers/gpu/drm/i915/display/intel_pch.c
> @@ -1,6 +1,6 @@
>  // SPDX-License-Identifier: MIT
>  /*
> - * Copyright 2019 Intel Corporation.
> + * Copyright 2025 Intel Corporation.
>   */
>=20=20
>  #include "i915_drv.h"
> diff --git a/drivers/gpu/drm/i915/soc/intel_pch.h b/drivers/gpu/drm/i915/=
display/intel_pch.h
> similarity index 98%
> rename from drivers/gpu/drm/i915/soc/intel_pch.h
> rename to drivers/gpu/drm/i915/display/intel_pch.h
> index 635aea7a5539..b9fa2b2f07bc 100644
> --- a/drivers/gpu/drm/i915/soc/intel_pch.h
> +++ b/drivers/gpu/drm/i915/display/intel_pch.h
> @@ -1,6 +1,6 @@
>  /* SPDX-License-Identifier: MIT */
>  /*
> - * Copyright 2019 Intel Corporation.
> + * Copyright 2025 Intel Corporation.
>   */
>=20=20
>  #ifndef __INTEL_PCH__
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index ffc346379cc2..2a2db0a6859e 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -38,6 +38,7 @@
>=20=20
>  #include "display/intel_display_limits.h"
>  #include "display/intel_display_core.h"
> +#include "display/intel_pch.h"
>=20=20
>  #include "gem/i915_gem_context_types.h"
>  #include "gem/i915_gem_shrinker.h"
> @@ -49,8 +50,6 @@
>  #include "gt/intel_workarounds.h"
>  #include "gt/uc/intel_uc.h"
>=20=20
> -#include "soc/intel_pch.h"
> -
>  #include "i915_drm_client.h"
>  #include "i915_gem.h"
>  #include "i915_gpu_error.h"
> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
> index 5ce65ccb3c08..df30c4385403 100644
> --- a/drivers/gpu/drm/xe/Makefile
> +++ b/drivers/gpu/drm/xe/Makefile
> @@ -192,7 +192,6 @@ xe-$(CONFIG_DRM_XE_DISPLAY) +=3D \
>  # SOC code shared with i915
>  xe-$(CONFIG_DRM_XE_DISPLAY) +=3D \
>  	i915-soc/intel_dram.o \
> -	i915-soc/intel_pch.o \
>  	i915-soc/intel_rom.o
>=20=20
>  # Display code shared with i915
> @@ -267,6 +266,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) +=3D \
>  	i915-display/intel_panel.o \
>  	i915-display/intel_pfit.o \
>  	i915-display/intel_pmdemand.o \
> +	i915-display/intel_pch.o \
>  	i915-display/intel_pps.o \
>  	i915-display/intel_psr.o \
>  	i915-display/intel_qp_tables.o \
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/soc/intel_pch.h b/dri=
vers/gpu/drm/xe/compat-i915-headers/soc/intel_pch.h
> deleted file mode 100644
> index 9c46556d33a4..000000000000
> --- a/drivers/gpu/drm/xe/compat-i915-headers/soc/intel_pch.h
> +++ /dev/null
> @@ -1,6 +0,0 @@
> -/* SPDX-License-Identifier: MIT */
> -/*
> - * Copyright =C2=A9 2023 Intel Corporation
> - */
> -
> -#include "../../../i915/soc/intel_pch.h"
> diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe=
_device_types.h
> index 4656305dd45a..2586ffc4909b 100644
> --- a/drivers/gpu/drm/xe/xe_device_types.h
> +++ b/drivers/gpu/drm/xe/xe_device_types.h
> @@ -30,7 +30,7 @@
>  #endif
>=20=20
>  #if IS_ENABLED(CONFIG_DRM_XE_DISPLAY)
> -#include "soc/intel_pch.h"
> +#include "intel_pch.h"
>  #include "intel_display_core.h"
>  #include "intel_display_device.h"
>  #endif

--=20
Jani Nikula, Intel
