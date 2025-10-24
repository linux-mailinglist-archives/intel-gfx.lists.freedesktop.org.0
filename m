Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F0DFC063C4
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Oct 2025 14:25:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C66B710EA64;
	Fri, 24 Oct 2025 12:25:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XSxQc51H";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76C7410E1E9;
 Fri, 24 Oct 2025 12:25:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761308717; x=1792844717;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=Ey3lCVmT7mBE8DcbAHu6OQaneEdmLc84JLZNf7mQqCU=;
 b=XSxQc51HYPdN7VENIC2g0yWwHqdXQPQSNZCDg4nVdDOzusi306nit5e4
 qK6pyv+fnhevollma1onnevA2pxstkorm4ouITstqDIB9Nr+bX4KKSTbw
 zqGDWDPfto14PTI7Lc80PeM5PEb4b9JH4+k+s8ITZU4RQDxBnjlyWQ5Ie
 1IXoZPDH9op98HBl0SJ6nskD12BGCv/Flf+7C+dlAyymxspNiyBtsG5Mv
 YyZxMz/70ExbMWgTJfle2bdkip/Y93FQ5YQG8XMZN1G3nYfOwB5RcwoZm
 GmAFKjwvbYiDnOJXhLnYdhpco8sJVpvSNdS8x7SGwPAWcY9aWT1N7HtEI w==;
X-CSE-ConnectionGUID: LFtiDoTGT6aSR5Vhdwx/pA==
X-CSE-MsgGUID: LWazVPOXQHy+ISM92J34cA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="74610152"
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="74610152"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 05:25:16 -0700
X-CSE-ConnectionGUID: 9CLcLvOvSzeUN8v2qn4MGw==
X-CSE-MsgGUID: CB9GCf4iTW2ATsjLZj2IJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="185191988"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.230])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 05:25:13 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>, Lucas De Marchi
 <lucas.demarchi@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Ville
 =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v2 1/6] drm/{i915,xe}/display: pass parent interface to
 display probe
In-Reply-To: <20251024093113.1119070-2-jouni.hogander@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251024093113.1119070-1-jouni.hogander@intel.com>
 <20251024093113.1119070-2-jouni.hogander@intel.com>
Date: Fri, 24 Oct 2025 15:25:10 +0300
Message-ID: <84eb76de8a2d457bdbea9986267b184fc6467e8c@intel.com>
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
> From: Jani Nikula <jani.nikula@intel.com>
>
> Let's gradually start calling i915 and xe parent, or core, drivers from
> display via function pointers passed at display probe.
>
> Going forward, the struct intel_display_parent_interface is expected to
> include const pointers to sub-structs by functionality, for example:
>
> struct intel_display_rpm {
> 	struct ref_tracker *(*get)(struct drm_device *drm);
> 	/* ... */
> };
>
> struct intel_display_parent_interface {
> 	/* ... */
> 	const struct intel_display_rpm *rpm;
> };
>
> This is a baby step towards not building display as part of both i915
> and xe drivers, but rather making it an independent driver interfacing
> with the two.
>
> v2: unrelated include removal dropped
>
> Cc: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_core.h |  4 +++
>  .../drm/i915/display/intel_display_device.c   |  5 +++-
>  .../drm/i915/display/intel_display_device.h   |  4 ++-
>  drivers/gpu/drm/i915/display/intel_fb.c       |  1 +
>  .../drm/i915/display/skl_universal_plane.c    |  1 +
>  drivers/gpu/drm/i915/i915_driver.c            | 11 +++++++-
>  drivers/gpu/drm/i915/i915_driver.h            |  2 ++
>  .../gpu/drm/i915/selftests/mock_gem_device.c  |  4 ++-
>  drivers/gpu/drm/xe/display/xe_display.c       |  6 ++++-
>  include/drm/intel/display_parent_interface.h  | 26 +++++++++++++++++++
>  10 files changed, 59 insertions(+), 5 deletions(-)
>  create mode 100644 include/drm/intel/display_parent_interface.h
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/=
gpu/drm/i915/display/intel_display_core.h
> index 32664098b4078..893279be84091 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -41,6 +41,7 @@ struct intel_cdclk_vals;
>  struct intel_color_funcs;
>  struct intel_crtc;
>  struct intel_crtc_state;
> +struct intel_display_parent_interface;
>  struct intel_dmc;
>  struct intel_dpll_global_funcs;
>  struct intel_dpll_mgr;
> @@ -291,6 +292,9 @@ struct intel_display {
>  	/* Intel PCH: where the south display engine lives */
>  	enum intel_pch pch_type;
>=20=20
> +	/* Parent, or core, driver functions exposed to display */
> +	const struct intel_display_parent_interface *parent;
> +
>  	/* Display functions */
>  	struct {
>  		/* Top level crtc-ish functions */
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/driver=
s/gpu/drm/i915/display/intel_display_device.c
> index f3f1f25b0f383..328447a5e5e8c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -1647,7 +1647,8 @@ static void display_platforms_or(struct intel_displ=
ay_platforms *dst,
>  	bitmap_or(dst->bitmap, dst->bitmap, src->bitmap, display_platforms_num_=
bits());
>  }
>=20=20
> -struct intel_display *intel_display_device_probe(struct pci_dev *pdev)
> +struct intel_display *intel_display_device_probe(struct pci_dev *pdev,
> +						 const struct intel_display_parent_interface *parent)
>  {
>  	struct intel_display *display;
>  	const struct intel_display_device_info *info;
> @@ -1663,6 +1664,8 @@ struct intel_display *intel_display_device_probe(st=
ruct pci_dev *pdev)
>  	/* Add drm device backpointer as early as possible. */
>  	display->drm =3D pci_get_drvdata(pdev);
>=20=20
> +	display->parent =3D parent;
> +
>  	intel_display_params_copy(&display->params);
>=20=20
>  	if (has_no_display(pdev)) {
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/driver=
s/gpu/drm/i915/display/intel_display_device.h
> index 8fdb8a0a42821..a009082e3107b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -13,6 +13,7 @@
>=20=20
>  struct drm_printer;
>  struct intel_display;
> +struct intel_display_parent_interface;
>  struct pci_dev;
>=20=20
>  /*
> @@ -312,7 +313,8 @@ struct intel_display_device_info {
>=20=20
>  bool intel_display_device_present(struct intel_display *display);
>  bool intel_display_device_enabled(struct intel_display *display);
> -struct intel_display *intel_display_device_probe(struct pci_dev *pdev);
> +struct intel_display *intel_display_device_probe(struct pci_dev *pdev,
> +						 const struct intel_display_parent_interface *parent);
>  void intel_display_device_remove(struct intel_display *display);
>  void intel_display_device_info_runtime_init(struct intel_display *displa=
y);
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i9=
15/display/intel_fb.c
> index 6ade38198f396..f4512fb38a778 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -9,6 +9,7 @@
>  #include <drm/drm_blend.h>
>  #include <drm/drm_gem.h>
>  #include <drm/drm_modeset_helper.h>
> +#include <drm/intel/display_parent_interface.h>

Argh, I keep spotting rebase leftovers from my own patch. *facepalm*.

>=20=20
>  #include "i915_utils.h"
>  #include "intel_bo.h"
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers=
/gpu/drm/i915/display/skl_universal_plane.c
> index 765d288cce2b0..c70bde90b9a9e 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -8,6 +8,7 @@
>  #include <drm/drm_damage_helper.h>
>  #include <drm/drm_fourcc.h>
>  #include <drm/drm_print.h>
> +#include <drm/intel/display_parent_interface.h>

Ditto.

Obviously, I can't r-b this either, it being my code.

BR,
Jani.

>=20=20
>  #include "pxp/intel_pxp.h"
>  #include "i915_utils.h"
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i9=
15_driver.c
> index e19a08893b998..b295326eb4331 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -47,6 +47,7 @@
>  #include <drm/drm_managed.h>
>  #include <drm/drm_probe_helper.h>
>  #include <drm/intel/display_member.h>
> +#include <drm/intel/display_parent_interface.h>
>=20=20
>  #include "display/i9xx_display_sr.h"
>  #include "display/intel_bw.h"
> @@ -738,6 +739,14 @@ static void i915_welcome_messages(struct drm_i915_pr=
ivate *dev_priv)
>  			 "DRM_I915_DEBUG_RUNTIME_PM enabled\n");
>  }
>=20=20
> +static const struct intel_display_parent_interface parent =3D {
> +};
> +
> +const struct intel_display_parent_interface *i915_driver_parent_interfac=
e(void)
> +{
> +	return &parent;
> +}
> +
>  /* Ensure drm and display members are placed properly. */
>  INTEL_DISPLAY_MEMBER_STATIC_ASSERT(struct drm_i915_private, drm, display=
);
>=20=20
> @@ -762,7 +771,7 @@ i915_driver_create(struct pci_dev *pdev, const struct=
 pci_device_id *ent)
>  	/* Set up device info and initial runtime info. */
>  	intel_device_info_driver_create(i915, pdev->device, match_info);
>=20=20
> -	display =3D intel_display_device_probe(pdev);
> +	display =3D intel_display_device_probe(pdev, &parent);
>  	if (IS_ERR(display))
>  		return ERR_CAST(display);
>=20=20
> diff --git a/drivers/gpu/drm/i915/i915_driver.h b/drivers/gpu/drm/i915/i9=
15_driver.h
> index 1e95ecb2a163f..9551519ab4297 100644
> --- a/drivers/gpu/drm/i915/i915_driver.h
> +++ b/drivers/gpu/drm/i915/i915_driver.h
> @@ -12,6 +12,7 @@ struct pci_dev;
>  struct pci_device_id;
>  struct drm_i915_private;
>  struct drm_printer;
> +struct intel_display_parent_interface;
>=20=20
>  #define DRIVER_NAME		"i915"
>  #define DRIVER_DESC		"Intel Graphics"
> @@ -24,6 +25,7 @@ void i915_driver_shutdown(struct drm_i915_private *i915=
);
>=20=20
>  int i915_driver_resume_switcheroo(struct drm_i915_private *i915);
>  int i915_driver_suspend_switcheroo(struct drm_i915_private *i915, pm_mes=
sage_t state);
> +const struct intel_display_parent_interface *i915_driver_parent_interfac=
e(void);
>=20=20
>  void
>  i915_print_iommu_status(struct drm_i915_private *i915, struct drm_printe=
r *p);
> diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/g=
pu/drm/i915/selftests/mock_gem_device.c
> index fb8751bd5df0a..b59626c4994cb 100644
> --- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> +++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> @@ -33,6 +33,7 @@
>  #include "gt/intel_gt.h"
>  #include "gt/intel_gt_requests.h"
>  #include "gt/mock_engine.h"
> +#include "i915_driver.h"
>  #include "intel_memory_region.h"
>  #include "intel_region_ttm.h"
>=20=20
> @@ -183,7 +184,8 @@ struct drm_i915_private *mock_gem_device(void)
>  	/* Set up device info and initial runtime info. */
>  	intel_device_info_driver_create(i915, pdev->device, &mock_info);
>=20=20
> -	display =3D intel_display_device_probe(pdev);
> +	/* FIXME: Can we run selftests using a mock device without display? */
> +	display =3D intel_display_device_probe(pdev, i915_driver_parent_interfa=
ce());
>  	if (IS_ERR(display))
>  		goto err_device;
>=20=20
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe=
/display/xe_display.c
> index 5a02754d0610e..0e38c96eb6def 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -14,6 +14,7 @@
>  #include <drm/drm_managed.h>
>  #include <drm/drm_probe_helper.h>
>  #include <drm/intel/display_member.h>
> +#include <drm/intel/display_parent_interface.h>
>  #include <uapi/drm/xe_drm.h>
>=20=20
>  #include "soc/intel_dram.h"
> @@ -514,6 +515,9 @@ static void display_device_remove(struct drm_device *=
dev, void *arg)
>  	intel_display_device_remove(display);
>  }
>=20=20
> +static const struct intel_display_parent_interface parent =3D {
> +};
> +
>  /**
>   * xe_display_probe - probe display and create display struct
>   * @xe: XE device instance
> @@ -534,7 +538,7 @@ int xe_display_probe(struct xe_device *xe)
>  	if (!xe->info.probe_display)
>  		goto no_display;
>=20=20
> -	display =3D intel_display_device_probe(pdev);
> +	display =3D intel_display_device_probe(pdev, &parent);
>  	if (IS_ERR(display))
>  		return PTR_ERR(display);
>=20=20
> diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/i=
ntel/display_parent_interface.h
> new file mode 100644
> index 0000000000000..28c976815327a
> --- /dev/null
> +++ b/include/drm/intel/display_parent_interface.h
> @@ -0,0 +1,26 @@
> +/* SPDX-License-Identifier: MIT */
> +/* Copyright =C2=A9 2025 Intel Corporation x*/
> +
> +#ifndef __DISPLAY_PARENT_INTERFACE_H__
> +#define __DISPLAY_PARENT_INTERFACE_H__
> +
> +#include <linux/types.h>
> +
> +struct drm_device;
> +
> +/**
> + * struct intel_display_parent_interface - services parent driver provid=
es to display
> + *
> + * The parent, or core, driver provides a pointer to this structure to d=
isplay
> + * driver when calling intel_display_device_probe(). The display driver =
uses it
> + * to access services provided by the parent driver. The structure may c=
ontain
> + * sub-struct pointers to group function pointers by functionality.
> + *
> + * All function and sub-struct pointers must be initialized and callable=
 unless
> + * explicitly marked as "optional" below. The display driver will only N=
ULL
> + * check the optional pointers.
> + */
> +struct intel_display_parent_interface {
> +};
> +
> +#endif

--=20
Jani Nikula, Intel
