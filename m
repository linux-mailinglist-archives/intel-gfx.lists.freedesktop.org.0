Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64A91C5DCFB
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Nov 2025 16:18:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D8BD10EAB0;
	Fri, 14 Nov 2025 15:18:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kChQ7KyT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4610010EAAF;
 Fri, 14 Nov 2025 15:18:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763133536; x=1794669536;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=ky+eU1K5tX8Hb3RSN0/GHmad5pEDm6ftOXn9LeKr0ps=;
 b=kChQ7KyTl4wf3xaLO1CZ8syRUUspSXJp/0+EOISQzT8THqLtUx446qIl
 GBNes1XPIQ1tXuG1d0sSGD8kBjepv3WcWBHddQuBWthY0dqQ0kGbmRvXx
 Pzd6wxL+FQjRrbP9mru52YxmN/EaqZWpqq6vHKIMKQO+39kTlZkT0D3oV
 pdk02qi6PXoiLf3Py2k+5o6wZhqCvkHj/tLUp3WYU8rfp/7vV13BM3Fjx
 E6TpPVBnfzOxD5yFgNMPD3uJz+AzkheA7KCa29N8Qlyg3mzeEJuh078gR
 UZfKcUpkuycQm/JrekwOoxdZMCm+suET94vzYEoq6licE/zrXIuE1i/v0 g==;
X-CSE-ConnectionGUID: Jr1M9YuVRT6NLQ/wa4V78A==
X-CSE-MsgGUID: E/l+1y3oTxe2Hvq7VZNZQw==
X-IronPort-AV: E=McAfee;i="6800,10657,11613"; a="64936932"
X-IronPort-AV: E=Sophos;i="6.19,305,1754982000"; d="scan'208";a="64936932"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 07:18:55 -0800
X-CSE-ConnectionGUID: cm/15TLqQM63qKbAN8yFZg==
X-CSE-MsgGUID: EsiFC9YSSn2U/1V+/OPJ6g==
X-ExtLoop1: 1
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.202])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 07:18:53 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com
Subject: Re: [PATCH v2] FIXME drm/i915: add .has_fenced_regions to parent
 interface
In-Reply-To: <20251114151611.1187018-1-jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <ee77882f46d6f68893337801439609bec2f08e9f.1763115899.git.jani.nikula@intel.com>
 <20251114151611.1187018-1-jani.nikula@intel.com>
Date: Fri, 14 Nov 2025 17:18:48 +0200
Message-ID: <403be06f2d14441a96eb597c86a9bbe292a31525@intel.com>
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


Note: This is the real thing, FIXME slipped through.

On Fri, 14 Nov 2025, Jani Nikula <jani.nikula@intel.com> wrote:
> Add .has_fenced_regions() to display parent interface, removing more
> dependencies on struct drm_i915_private, i915_drv.h, and
> gt/intel_gt_types.h.
>
> This allows us to remove the xe compat gt/intel_gt_types.h.
>
> v2: s/fence_support_legacy/has_fenced_regions/ (Ville)
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c              |  8 ++------
>  drivers/gpu/drm/i915/display/intel_parent.c           |  5 +++++
>  drivers/gpu/drm/i915/display/intel_parent.h           |  2 ++
>  drivers/gpu/drm/i915/i915_driver.c                    |  6 ++++++
>  .../drm/xe/compat-i915-headers/gt/intel_gt_types.h    | 11 -----------
>  include/drm/intel/display_parent_interface.h          |  3 +++
>  6 files changed, 18 insertions(+), 17 deletions(-)
>  delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/gt/intel_gt_ty=
pes.h
>
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i=
915/display/intel_fbc.c
> index ab0bcea5aa89..2facd368a068 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -47,9 +47,6 @@
>=20=20
>  #include "gem/i915_gem_stolen.h"
>=20=20
> -#include "gt/intel_gt_types.h"
> -
> -#include "i915_drv.h"
>  #include "i915_vma.h"
>  #include "i9xx_plane_regs.h"
>  #include "intel_de.h"
> @@ -64,6 +61,7 @@
>  #include "intel_fbc_regs.h"
>  #include "intel_frontbuffer.h"
>  #include "intel_parent.h"
> +#include "intel_step.h"
>=20=20
>  #define for_each_fbc_id(__display, __fbc_id) \
>  	for ((__fbc_id) =3D INTEL_FBC_A; (__fbc_id) < I915_MAX_FBCS; (__fbc_id)=
++) \
> @@ -267,9 +265,7 @@ static u16 intel_fbc_override_cfb_stride(const struct=
 intel_plane_state *plane_s
>=20=20
>  static bool intel_fbc_has_fences(struct intel_display *display)
>  {
> -	struct drm_i915_private __maybe_unused *i915 =3D to_i915(display->drm);
> -
> -	return intel_gt_support_legacy_fencing(to_gt(i915));
> +	return intel_parent_has_fenced_regions(display);
>  }
>=20=20
>  static u32 i8xx_fbc_ctl(struct intel_fbc *fbc)
> diff --git a/drivers/gpu/drm/i915/display/intel_parent.c b/drivers/gpu/dr=
m/i915/display/intel_parent.c
> index 3786fd42827d..535065e57213 100644
> --- a/drivers/gpu/drm/i915/display/intel_parent.c
> +++ b/drivers/gpu/drm/i915/display/intel_parent.c
> @@ -36,3 +36,8 @@ bool intel_parent_vgpu_active(struct intel_display *dis=
play)
>  {
>  	return display->parent->vgpu_active && display->parent->vgpu_active(dis=
play->drm);
>  }
> +
> +bool intel_parent_has_fenced_regions(struct intel_display *display)
> +{
> +	return display->parent->has_fenced_regions && display->parent->has_fenc=
ed_regions(display->drm);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_parent.h b/drivers/gpu/dr=
m/i915/display/intel_parent.h
> index 222c95836d35..04320d937777 100644
> --- a/drivers/gpu/drm/i915/display/intel_parent.h
> +++ b/drivers/gpu/drm/i915/display/intel_parent.h
> @@ -13,4 +13,6 @@ void intel_parent_irq_synchronize(struct intel_display =
*display);
>=20=20
>  bool intel_parent_vgpu_active(struct intel_display *display);
>=20=20
> +bool intel_parent_has_fenced_regions(struct intel_display *display);
> +
>  #endif /* __INTEL_PARENT_H__ */
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i9=
15_driver.c
> index f21f1919a225..9ba46850da72 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -744,10 +744,16 @@ static bool vgpu_active(struct drm_device *drm)
>  	return intel_vgpu_active(to_i915(drm));
>  }
>=20=20
> +static bool has_fenced_regions(struct drm_device *drm)
> +{
> +	return intel_gt_support_legacy_fencing(to_gt(to_i915(drm)));
> +}
> +
>  static const struct intel_display_parent_interface parent =3D {
>  	.rpm =3D &i915_display_rpm_interface,
>  	.irq =3D &i915_display_irq_interface,
>  	.vgpu_active =3D vgpu_active,
> +	.has_fenced_regions =3D has_fenced_regions,
>  };
>=20=20
>  const struct intel_display_parent_interface *i915_driver_parent_interfac=
e(void)
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/gt/intel_gt_types.h b=
/drivers/gpu/drm/xe/compat-i915-headers/gt/intel_gt_types.h
> deleted file mode 100644
> index c15806d6c4f7..000000000000
> --- a/drivers/gpu/drm/xe/compat-i915-headers/gt/intel_gt_types.h
> +++ /dev/null
> @@ -1,11 +0,0 @@
> -/* SPDX-License-Identifier: MIT */
> -/*
> - * Copyright =C2=A9 2023 Intel Corporation
> - */
> -
> -#ifndef __INTEL_GT_TYPES__
> -#define __INTEL_GT_TYPES__
> -
> -#define intel_gt_support_legacy_fencing(gt) 0
> -
> -#endif
> diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/i=
ntel/display_parent_interface.h
> index f3834f36ce74..927d964f2071 100644
> --- a/include/drm/intel/display_parent_interface.h
> +++ b/include/drm/intel/display_parent_interface.h
> @@ -51,6 +51,9 @@ struct intel_display_parent_interface {
>=20=20
>  	/** @vgpu_active: Is vGPU active? Optional. */
>  	bool (*vgpu_active)(struct drm_device *drm);
> +
> +	/** @has_fenced_regions: Support legacy fencing? Optional. */
> +	bool (*has_fenced_regions)(struct drm_device *drm);
>  };
>=20=20
>  #endif

--=20
Jani Nikula, Intel
