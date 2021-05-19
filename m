Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 273543886F5
	for <lists+intel-gfx@lfdr.de>; Wed, 19 May 2021 07:48:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C3BA6E21C;
	Wed, 19 May 2021 05:48:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AC116E21C
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 May 2021 05:48:33 +0000 (UTC)
IronPort-SDR: UmM2Z5J03sLTiDyNpjiAh5htgeUsuFOM9aSYOZkj2mtKpUd2Tm4z/Pq5zcRT0ltJYFkwbXkY9o
 CWWJ5dsMR+Bw==
X-IronPort-AV: E=McAfee;i="6200,9189,9988"; a="262127090"
X-IronPort-AV: E=Sophos;i="5.82,312,1613462400"; d="scan'208";a="262127090"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 22:48:32 -0700
IronPort-SDR: 6p2cyfsLLgkTbZS/4FIqaaUWqpAuXCqvO8SSFI7fGFIEpTlJUAZvtSfJ8ghLal7z+YADgqLY9d
 yEKo6dvCYCtQ==
X-IronPort-AV: E=Sophos;i="5.82,312,1613462400"; d="scan'208";a="612283367"
Received: from marora1-mobl1.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.254.1.180])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 22:48:32 -0700
Date: Tue, 18 May 2021 22:48:23 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>
Message-ID: <20210519054823.sj2zjjiyvrqrjssp@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20210518213444.11420-1-anusha.srivatsa@intel.com>
 <20210518213444.11420-6-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210518213444.11420-6-anusha.srivatsa@intel.com>
Subject: Re: [Intel-gfx] [CI 5/5] drm/i915/dmc: s/intel_csr.c/intel_dmc.c
 and s/intel_csr.h/intel_dmc.h
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, May 18, 2021 at 02:34:44PM -0700, Anusha Srivatsa wrote:
>Finally, rename the header and source file from csr to dmc.
>
>v2: Add file rename in Documentation.
>- Place headers in orders. (Jani)
>
>Cc: Jani Nikula <jani.nikula@linux.intel.com>
>Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
>---
> Documentation/gpu/i915.rst                           | 12 ++++++------
> drivers/gpu/drm/i915/Makefile                        |  2 +-
> drivers/gpu/drm/i915/display/intel_display.c         |  2 +-
> drivers/gpu/drm/i915/display/intel_display_debugfs.c |  2 +-
> drivers/gpu/drm/i915/display/intel_display_power.c   |  2 +-
> .../drm/i915/display/{intel_csr.c =3D> intel_dmc.c}    |  4 ++--
> .../drm/i915/display/{intel_csr.h =3D> intel_dmc.h}    |  6 +++---
> drivers/gpu/drm/i915/i915_drv.c                      |  2 +-
> drivers/gpu/drm/i915/i915_gpu_error.c                |  2 +-
> 9 files changed, 17 insertions(+), 17 deletions(-)
> rename drivers/gpu/drm/i915/display/{intel_csr.c =3D> intel_dmc.c} (99%)
> rename drivers/gpu/drm/i915/display/{intel_csr.h =3D> intel_dmc.h} (88%)
>
>diff --git a/Documentation/gpu/i915.rst b/Documentation/gpu/i915.rst
>index 486c720f3890..42ce0196930a 100644
>--- a/Documentation/gpu/i915.rst
>+++ b/Documentation/gpu/i915.rst
>@@ -210,13 +210,13 @@ DPIO
> .. kernel-doc:: drivers/gpu/drm/i915/display/intel_dpio_phy.c
>    :doc: DPIO
>
>-CSR firmware support for DMC
>-----------------------------
>+DMC Firmware Support
>+--------------------
>
>-.. kernel-doc:: drivers/gpu/drm/i915/display/intel_csr.c
>-   :doc: csr support for dmc
>+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_dmc.c
>+   :doc: DMC Firmware Support
>
>-.. kernel-doc:: drivers/gpu/drm/i915/display/intel_csr.c
>+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_dmc.c
>    :internal:
>
> Video BIOS Table (VBT)
>@@ -537,7 +537,7 @@ The HuC FW layout is the same as the GuC one, see `GuC=
 Firmware Layout`_
>
> DMC
> ---
>-See `CSR firmware support for DMC`_
>+See `DMC Firmware Support`_
>
> Tracing
> =3D=3D=3D=3D=3D=3D=3D
>diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
>index d0d936d9137b..2da5bae8fa03 100644
>--- a/drivers/gpu/drm/i915/Makefile
>+++ b/drivers/gpu/drm/i915/Makefile
>@@ -201,10 +201,10 @@ i915-y +=3D \
> 	display/intel_combo_phy.o \
> 	display/intel_connector.o \
> 	display/intel_crtc.o \
>-	display/intel_csr.o \
> 	display/intel_cursor.o \
> 	display/intel_display.o \
> 	display/intel_display_power.o \
>+	display/intel_dmc.o \
> 	display/intel_dpio_phy.o \
> 	display/intel_dpll.o \
> 	display/intel_dpll_mgr.o \
>diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/dr=
m/i915/display/intel_display.c
>index 39c9c49b378b..d98a314bb974 100644
>--- a/drivers/gpu/drm/i915/display/intel_display.c
>+++ b/drivers/gpu/drm/i915/display/intel_display.c
>@@ -79,9 +79,9 @@
> #include "intel_cdclk.h"
> #include "intel_color.h"
> #include "intel_crtc.h"
>-#include "intel_csr.h"
> #include "intel_de.h"
> #include "intel_display_types.h"
>+#include "intel_dmc.h"
> #include "intel_dp_link_training.h"
> #include "intel_fbc.h"
> #include "intel_fdi.h"
>diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/driver=
s/gpu/drm/i915/display/intel_display_debugfs.c
>index e43abdf0e3d9..94e5cbd86e77 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>@@ -7,11 +7,11 @@
> #include <drm/drm_fourcc.h>
>
> #include "i915_debugfs.h"
>-#include "intel_csr.h"
> #include "intel_display_debugfs.h"
> #include "intel_display_power.h"
> #include "intel_de.h"
> #include "intel_display_types.h"
>+#include "intel_dmc.h"
> #include "intel_dp.h"
> #include "intel_fbc.h"
> #include "intel_hdcp.h"
>diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/=
gpu/drm/i915/display/intel_display_power.c
>index cbba41d3e6cf..e8fcc3d02d01 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_power.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>@@ -9,10 +9,10 @@
> #include "i915_irq.h"
> #include "intel_cdclk.h"
> #include "intel_combo_phy.h"
>-#include "intel_csr.h"
> #include "intel_display_power.h"
> #include "intel_de.h"
> #include "intel_display_types.h"
>+#include "intel_dmc.h"
> #include "intel_dpio_phy.h"
> #include "intel_hotplug.h"
> #include "intel_pm.h"
>diff --git a/drivers/gpu/drm/i915/display/intel_csr.c b/drivers/gpu/drm/i9=
15/display/intel_dmc.c
>similarity index 99%
>rename from drivers/gpu/drm/i915/display/intel_csr.c
>rename to drivers/gpu/drm/i915/display/intel_dmc.c
>index ae1dfafaff9a..560574dd929a 100644
>--- a/drivers/gpu/drm/i915/display/intel_csr.c
>+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>@@ -26,11 +26,11 @@
>
> #include "i915_drv.h"
> #include "i915_reg.h"
>-#include "intel_csr.h"
> #include "intel_de.h"
>+#include "intel_dmc.h"
>
> /**
>- * DOC: DMC firmware support
>+ * DOC: DMC Firmware Support
>  *
>  * From gen9 onwards we have newly added DMC (Display microcontroller) in=
 display
>  * engine to save and restore the state of display engine when it enter i=
nto
>diff --git a/drivers/gpu/drm/i915/display/intel_csr.h b/drivers/gpu/drm/i9=
15/display/intel_dmc.h
>similarity index 88%
>rename from drivers/gpu/drm/i915/display/intel_csr.h
>rename to drivers/gpu/drm/i915/display/intel_dmc.h
>index fc4960b91686..57dd99da0ced 100644
>--- a/drivers/gpu/drm/i915/display/intel_csr.h
>+++ b/drivers/gpu/drm/i915/display/intel_dmc.h
>@@ -3,8 +3,8 @@
>  * Copyright =A9 2019 Intel Corporation
>  */
>
>-#ifndef __INTEL_CSR_H__
>-#define __INTEL_CSR_H__
>+#ifndef __INTEL_DMC_H__
>+#define __INTEL_DMC_H__
>
> struct drm_i915_private;
>
>@@ -18,4 +18,4 @@ void intel_dmc_ucode_fini(struct drm_i915_private *i915);
> void intel_dmc_ucode_suspend(struct drm_i915_private *i915);
> void intel_dmc_ucode_resume(struct drm_i915_private *i915);
>
>-#endif /* __INTEL_CSR_H__ */
>+#endif /* __INTEL_DMC_H__ */
>diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_d=
rv.c
>index f2a9583dfecc..2f06bb7b3ed2 100644
>--- a/drivers/gpu/drm/i915/i915_drv.c
>+++ b/drivers/gpu/drm/i915/i915_drv.c
>@@ -49,7 +49,7 @@
> #include "display/intel_acpi.h"
> #include "display/intel_bw.h"
> #include "display/intel_cdclk.h"
>-#include "display/intel_csr.h"
>+#include "display/intel_dmc.h"
> #include "display/intel_display_types.h"

this is not sorted alphabetically. Other than that:


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>


Lucas De Marchi

> #include "display/intel_dp.h"
> #include "display/intel_fbdev.h"
>diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/=
i915_gpu_error.c
>index edd108d41318..8b964e355cb5 100644
>--- a/drivers/gpu/drm/i915/i915_gpu_error.c
>+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
>@@ -36,7 +36,7 @@
>
> #include <drm/drm_print.h>
>
>-#include "display/intel_csr.h"
>+#include "display/intel_dmc.h"
> #include "display/intel_overlay.h"
>
> #include "gem/i915_gem_context.h"
>-- =

>2.25.0
>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
