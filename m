Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E05C9331B7C
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Mar 2021 01:13:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8CB16E413;
	Tue,  9 Mar 2021 00:13:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 713556E413
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Mar 2021 00:13:36 +0000 (UTC)
IronPort-SDR: 0TxfnZY1xKK+MiLwB+hDGc2X1eIbABM7VsLMq8o6caOd4KozS6kUNY1wbNI+jo3BXwfiCATGmG
 TKjJUaPwYzcw==
X-IronPort-AV: E=McAfee;i="6000,8403,9917"; a="188234642"
X-IronPort-AV: E=Sophos;i="5.81,233,1610438400"; d="scan'208";a="188234642"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2021 16:13:34 -0800
IronPort-SDR: jzbVjaNWoZFPqQ51eJReL5Fin/sFlGS4qz4CAOG27bzwLYGnYbg9nH+v+HRD2IoB1bOWlmzfcF
 N8TfJJb23RIw==
X-IronPort-AV: E=Sophos;i="5.81,233,1610438400"; d="scan'208";a="602373939"
Received: from sbalasub-mobl1.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.209.97.66])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2021 16:13:33 -0800
Date: Mon, 8 Mar 2021 16:13:33 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20210309001333.dpvq4z2c5rcahagh@ldmartin-desk1>
X-Patchwork-Hint: comment
References: <cover.1615211711.git.jani.nikula@intel.com>
 <ae5fd92591787c371c0d234d4f0e7281b4165962.1615211711.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ae5fd92591787c371c0d234d4f0e7281b4165962.1615211711.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 2/8] drm/i915: split out stepping info to
 a new file
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
Cc: intel-gfx@lists.freedesktop.org, chris@chris-wilson.co.uk
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Mar 08, 2021 at 03:56:39PM +0200, Jani Nikula wrote:
>gt/intel_workarounds.c is decidedly the wrong place for handling
>stepping info. Add new intel_step.[ch] for the data, and move the
>stepping arrays there. No functional changes.
>
>v2: Rename stepping->step
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

but what branch is this supposed to go to?

Lucas De Marchi

>---
> drivers/gpu/drm/i915/Makefile               |  1 +
> drivers/gpu/drm/i915/gt/intel_workarounds.c | 39 -----------------
> drivers/gpu/drm/i915/i915_drv.h             | 19 +--------
> drivers/gpu/drm/i915/intel_step.c           | 46 +++++++++++++++++++++
> drivers/gpu/drm/i915/intel_step.h           | 25 +++++++++++
> 5 files changed, 74 insertions(+), 56 deletions(-)
> create mode 100644 drivers/gpu/drm/i915/intel_step.c
> create mode 100644 drivers/gpu/drm/i915/intel_step.h
>
>diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
>index bc6138880c67..a9fb426d5e41 100644
>--- a/drivers/gpu/drm/i915/Makefile
>+++ b/drivers/gpu/drm/i915/Makefile
>@@ -53,6 +53,7 @@ i915-y +=3D i915_config.o \
> 	  intel_pm.o \
> 	  intel_runtime_pm.o \
> 	  intel_sideband.o \
>+	  intel_step.o \
> 	  intel_uncore.o \
> 	  intel_wakeref.o \
> 	  vlv_suspend.o
>diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm=
/i915/gt/intel_workarounds.c
>index 3b4a7da60f0b..2827d4f2e086 100644
>--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>@@ -52,45 +52,6 @@
>  * - Public functions to init or apply the given workaround type.
>  */
>
>-/*
>- * KBL revision ID ordering is bizarre; higher revision ID's map to lower
>- * steppings in some cases.  So rather than test against the revision ID
>- * directly, let's map that into our own range of increasing ID's that we
>- * can test against in a regular manner.
>- */
>-
>-const struct i915_rev_steppings kbl_revids[] =3D {
>-	[0] =3D { .gt_stepping =3D KBL_REVID_A0, .disp_stepping =3D KBL_REVID_A0=
 },
>-	[1] =3D { .gt_stepping =3D KBL_REVID_B0, .disp_stepping =3D KBL_REVID_B0=
 },
>-	[2] =3D { .gt_stepping =3D KBL_REVID_C0, .disp_stepping =3D KBL_REVID_B0=
 },
>-	[3] =3D { .gt_stepping =3D KBL_REVID_D0, .disp_stepping =3D KBL_REVID_B0=
 },
>-	[4] =3D { .gt_stepping =3D KBL_REVID_F0, .disp_stepping =3D KBL_REVID_C0=
 },
>-	[5] =3D { .gt_stepping =3D KBL_REVID_C0, .disp_stepping =3D KBL_REVID_B1=
 },
>-	[6] =3D { .gt_stepping =3D KBL_REVID_D1, .disp_stepping =3D KBL_REVID_B1=
 },
>-	[7] =3D { .gt_stepping =3D KBL_REVID_G0, .disp_stepping =3D KBL_REVID_C0=
 },
>-};
>-
>-const struct i915_rev_steppings tgl_uy_revid_step_tbl[] =3D {
>-	[0] =3D { .gt_stepping =3D STEP_A0, .disp_stepping =3D STEP_A0 },
>-	[1] =3D { .gt_stepping =3D STEP_B0, .disp_stepping =3D STEP_C0 },
>-	[2] =3D { .gt_stepping =3D STEP_B1, .disp_stepping =3D STEP_C0 },
>-	[3] =3D { .gt_stepping =3D STEP_C0, .disp_stepping =3D STEP_D0 },
>-};
>-
>-/* Same GT stepping between tgl_uy_revids and tgl_revids don't mean the s=
ame HW */
>-const struct i915_rev_steppings tgl_revid_step_tbl[] =3D {
>-	[0] =3D { .gt_stepping =3D STEP_A0, .disp_stepping =3D STEP_B0 },
>-	[1] =3D { .gt_stepping =3D STEP_B0, .disp_stepping =3D STEP_D0 },
>-};
>-
>-const struct i915_rev_steppings adls_revid_step_tbl[] =3D {
>-	[0x0] =3D { .gt_stepping =3D STEP_A0, .disp_stepping =3D STEP_A0 },
>-	[0x1] =3D { .gt_stepping =3D STEP_A0, .disp_stepping =3D STEP_A2 },
>-	[0x4] =3D { .gt_stepping =3D STEP_B0, .disp_stepping =3D STEP_B0 },
>-	[0x8] =3D { .gt_stepping =3D STEP_C0, .disp_stepping =3D STEP_B0 },
>-	[0xC] =3D { .gt_stepping =3D STEP_D0, .disp_stepping =3D STEP_C0 },
>-};
>-
> static void wa_init_start(struct i915_wa_list *wal, const char *name, con=
st char *engine_name)
> {
> 	wal->name =3D name;
>diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_d=
rv.h
>index 2f511bf2bd82..02170edd6628 100644
>--- a/drivers/gpu/drm/i915/i915_drv.h
>+++ b/drivers/gpu/drm/i915/i915_drv.h
>@@ -86,9 +86,10 @@
> #include "gt/uc/intel_uc.h"
>
> #include "intel_device_info.h"
>+#include "intel_memory_region.h"
> #include "intel_pch.h"
> #include "intel_runtime_pm.h"
>-#include "intel_memory_region.h"
>+#include "intel_step.h"
> #include "intel_uncore.h"
> #include "intel_wakeref.h"
> #include "intel_wopcm.h"
>@@ -1471,14 +1472,6 @@ enum {
> 	KBL_REVID_G0,
> };
>
>-struct i915_rev_steppings {
>-	u8 gt_stepping;
>-	u8 disp_stepping;
>-};
>-
>-/* Defined in intel_workarounds.c */
>-extern const struct i915_rev_steppings kbl_revids[];
>-
> #define IS_KBL_GT_REVID(dev_priv, since, until) \
> 	(IS_KABYLAKE(dev_priv) && \
> 	 kbl_revids[INTEL_REVID(dev_priv)].gt_stepping >=3D since && \
>@@ -1527,14 +1520,6 @@ enum {
> 	STEP_D0,
> };
>
>-#define TGL_UY_REVID_STEP_TBL_SIZE	4
>-#define TGL_REVID_STEP_TBL_SIZE		2
>-#define ADLS_REVID_STEP_TBL_SIZE	13
>-
>-extern const struct i915_rev_steppings tgl_uy_revid_step_tbl[TGL_UY_REVID=
_STEP_TBL_SIZE];
>-extern const struct i915_rev_steppings tgl_revid_step_tbl[TGL_REVID_STEP_=
TBL_SIZE];
>-extern const struct i915_rev_steppings adls_revid_step_tbl[ADLS_REVID_STE=
P_TBL_SIZE];
>-
> static inline const struct i915_rev_steppings *
> tgl_stepping_get(struct drm_i915_private *dev_priv)
> {
>diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/inte=
l_step.c
>new file mode 100644
>index 000000000000..e19820cbe8e3
>--- /dev/null
>+++ b/drivers/gpu/drm/i915/intel_step.c
>@@ -0,0 +1,46 @@
>+// SPDX-License-Identifier: MIT
>+/*
>+ * Copyright =A9 2020,2021 Intel Corporation
>+ */
>+
>+#include "i915_drv.h"
>+#include "intel_step.h"
>+
>+/*
>+ * KBL revision ID ordering is bizarre; higher revision ID's map to lower
>+ * steppings in some cases.  So rather than test against the revision ID
>+ * directly, let's map that into our own range of increasing ID's that we
>+ * can test against in a regular manner.
>+ */
>+
>+const struct i915_rev_steppings kbl_revids[] =3D {
>+	[0] =3D { .gt_stepping =3D KBL_REVID_A0, .disp_stepping =3D KBL_REVID_A0=
 },
>+	[1] =3D { .gt_stepping =3D KBL_REVID_B0, .disp_stepping =3D KBL_REVID_B0=
 },
>+	[2] =3D { .gt_stepping =3D KBL_REVID_C0, .disp_stepping =3D KBL_REVID_B0=
 },
>+	[3] =3D { .gt_stepping =3D KBL_REVID_D0, .disp_stepping =3D KBL_REVID_B0=
 },
>+	[4] =3D { .gt_stepping =3D KBL_REVID_F0, .disp_stepping =3D KBL_REVID_C0=
 },
>+	[5] =3D { .gt_stepping =3D KBL_REVID_C0, .disp_stepping =3D KBL_REVID_B1=
 },
>+	[6] =3D { .gt_stepping =3D KBL_REVID_D1, .disp_stepping =3D KBL_REVID_B1=
 },
>+	[7] =3D { .gt_stepping =3D KBL_REVID_G0, .disp_stepping =3D KBL_REVID_C0=
 },
>+};
>+
>+const struct i915_rev_steppings tgl_uy_revid_step_tbl[] =3D {
>+	[0] =3D { .gt_stepping =3D STEP_A0, .disp_stepping =3D STEP_A0 },
>+	[1] =3D { .gt_stepping =3D STEP_B0, .disp_stepping =3D STEP_C0 },
>+	[2] =3D { .gt_stepping =3D STEP_B1, .disp_stepping =3D STEP_C0 },
>+	[3] =3D { .gt_stepping =3D STEP_C0, .disp_stepping =3D STEP_D0 },
>+};
>+
>+/* Same GT stepping between tgl_uy_revids and tgl_revids don't mean the s=
ame HW */
>+const struct i915_rev_steppings tgl_revid_step_tbl[] =3D {
>+	[0] =3D { .gt_stepping =3D STEP_A0, .disp_stepping =3D STEP_B0 },
>+	[1] =3D { .gt_stepping =3D STEP_B0, .disp_stepping =3D STEP_D0 },
>+};
>+
>+const struct i915_rev_steppings adls_revid_step_tbl[] =3D {
>+	[0x0] =3D { .gt_stepping =3D STEP_A0, .disp_stepping =3D STEP_A0 },
>+	[0x1] =3D { .gt_stepping =3D STEP_A0, .disp_stepping =3D STEP_A2 },
>+	[0x4] =3D { .gt_stepping =3D STEP_B0, .disp_stepping =3D STEP_B0 },
>+	[0x8] =3D { .gt_stepping =3D STEP_C0, .disp_stepping =3D STEP_B0 },
>+	[0xC] =3D { .gt_stepping =3D STEP_D0, .disp_stepping =3D STEP_C0 },
>+};
>diff --git a/drivers/gpu/drm/i915/intel_step.h b/drivers/gpu/drm/i915/inte=
l_step.h
>new file mode 100644
>index 000000000000..af922ae3bb4e
>--- /dev/null
>+++ b/drivers/gpu/drm/i915/intel_step.h
>@@ -0,0 +1,25 @@
>+/* SPDX-License-Identifier: MIT */
>+/*
>+ * Copyright =A9 2020,2021 Intel Corporation
>+ */
>+
>+#ifndef __INTEL_STEP_H__
>+#define __INTEL_STEP_H__
>+
>+#include <linux/types.h>
>+
>+struct i915_rev_steppings {
>+	u8 gt_stepping;
>+	u8 disp_stepping;
>+};
>+
>+#define TGL_UY_REVID_STEP_TBL_SIZE	4
>+#define TGL_REVID_STEP_TBL_SIZE		2
>+#define ADLS_REVID_STEP_TBL_SIZE	13
>+
>+extern const struct i915_rev_steppings kbl_revids[];
>+extern const struct i915_rev_steppings tgl_uy_revid_step_tbl[TGL_UY_REVID=
_STEP_TBL_SIZE];
>+extern const struct i915_rev_steppings tgl_revid_step_tbl[TGL_REVID_STEP_=
TBL_SIZE];
>+extern const struct i915_rev_steppings adls_revid_step_tbl[ADLS_REVID_STE=
P_TBL_SIZE];
>+
>+#endif /* __INTEL_STEP_H__ */
>-- =

>2.20.1
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
