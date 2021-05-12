Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBB7B37EC69
	for <lists+intel-gfx@lfdr.de>; Thu, 13 May 2021 00:28:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D7F56E580;
	Wed, 12 May 2021 22:28:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF70289142
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 May 2021 22:28:13 +0000 (UTC)
IronPort-SDR: 41j4AnGtG7F/RTx6+qi9v93wvvq1nj1XKdXBLD2GhSDSl+VWTQ411aiU4WZ1QTn5+prsxjs1iE
 O5W0/2r2MPtA==
X-IronPort-AV: E=McAfee;i="6200,9189,9982"; a="187242981"
X-IronPort-AV: E=Sophos;i="5.82,295,1613462400"; d="scan'208";a="187242981"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2021 15:28:11 -0700
IronPort-SDR: f6LopKLhNFfq2DAxh5uw9C4sjyyZui+Np2M2+nCE9F1fo5ctxiSAi/ti8U2x9ksTqWik/Ftyax
 9sZybylinVow==
X-IronPort-AV: E=Sophos;i="5.82,295,1613462400"; d="scan'208";a="430947624"
Received: from suryadee-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.254.1.144])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2021 15:28:10 -0700
Date: Wed, 12 May 2021 15:28:09 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20210512222809.f5vekclemdguwof2@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20210508022820.780227-14-matthew.d.roper@intel.com>
 <20210508025243.781288-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210508025243.781288-1-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3.1 13/48] drm/i915/xelpd: Add rc_qp_table
 for rcparams calculation
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

On Fri, May 07, 2021 at 07:52:43PM -0700, Matt Roper wrote:
>From: Vandita Kulkarni <vandita.kulkarni@intel.com>
>
>Add the qp table for 444 formats, for 8bpc, 10bpc and 12bpc, as given by
>the VESA C model for DSC 1.1
>
>v2:
> - Add include guard to header (Jani)
> - Move the big tables to a .c file (Chris, Jani, Lucas)
>v3:
> - Make tables 'static const' and add lookup functions to index into
>   them.  (Jani)
>v3.1:
> - Include missing .h file.
>
>Cc: Manasi Navare <manasi.d.navare@intel.com>
>Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

didn't really review the actual values for the table... supposedly this
is "write only table and never look again".

The rest is much better in this version.

Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

I know this is in the commit message, but a comment in the .c or .h file
stating these tables are "given by the VESA C model for DSC 1.1" would
help the me from tomorrow to know what are those tables. Anyway, not
very important... just if you have to respin this.

thanks
Lucas De Marchi


>---
> drivers/gpu/drm/i915/Makefile                 |   1 +
> .../gpu/drm/i915/display/intel_qp_tables.c    | 311 ++++++++++++++++++
> .../gpu/drm/i915/display/intel_qp_tables.h    |  14 +
> drivers/gpu/drm/i915/display/intel_vdsc.c     |  10 +-
> 4 files changed, 335 insertions(+), 1 deletion(-)
> create mode 100644 drivers/gpu/drm/i915/display/intel_qp_tables.c
> create mode 100644 drivers/gpu/drm/i915/display/intel_qp_tables.h
>
>diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
>index d0d936d9137b..4a4d30d8a10a 100644
>--- a/drivers/gpu/drm/i915/Makefile
>+++ b/drivers/gpu/drm/i915/Makefile
>@@ -263,6 +263,7 @@ i915-y +=3D \
> 	display/intel_lvds.o \
> 	display/intel_panel.o \
> 	display/intel_pps.o \
>+	display/intel_qp_tables.o \
> 	display/intel_sdvo.o \
> 	display/intel_tv.o \
> 	display/intel_vdsc.o \
>diff --git a/drivers/gpu/drm/i915/display/intel_qp_tables.c b/drivers/gpu/=
drm/i915/display/intel_qp_tables.c
>new file mode 100644
>index 000000000000..05f6876799ac
>--- /dev/null
>+++ b/drivers/gpu/drm/i915/display/intel_qp_tables.c
>@@ -0,0 +1,311 @@
>+// SPDX-License-Identifier: MIT
>+/*
>+ * Copyright =A9 2021 Intel Corporation
>+ */
>+
>+#include <drm/drm_dsc.h>
>+
>+#include "i915_utils.h"
>+#include "intel_qp_tables.h"
>+
>+/* from BPP 6 to 24 in steps of 0.5 */
>+#define RC_RANGE_QP444_8BPC_MAX_NUM_BPP		37
>+
>+/* from BPP 6 to 30 in steps of 0.5 */
>+#define RC_RANGE_QP444_10BPC_MAX_NUM_BPP	49
>+
>+/* from BPP 6 to 36 in steps of 0.5 */
>+#define RC_RANGE_QP444_12BPC_MAX_NUM_BPP	61
>+
>+/*
>+ * These qp tables are as per the C model
>+ * and it has the rows pointing to bpps which increment
>+ * in steps of 0.5
>+ * We do not support fractional bpps as of today,
>+ * hence we would skip the fractional bpps during
>+ * our references for qp calclulations.
>+ */
>+static const u8 rc_range_minqp444_8bpc[DSC_NUM_BUF_RANGES][RC_RANGE_QP444=
_8BPC_MAX_NUM_BPP] =3D {
>+	{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
>+	  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
>+	{ 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
>+	  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
>+	{ 3, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0,
>+	  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
>+	{ 3, 3, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0,
>+	  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
>+	{ 5, 4, 4, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 2, 1, 1, 1, 1, 1, 1, 1, 1,
>+	  1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
>+	{ 5, 4, 4, 4, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 2, 1, 1, 1, 1, 1, 1, 1,
>+	  1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0 },
>+	{ 5, 5, 4, 4, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 2, 2, 2, 1, 1, 1, 1, 1,
>+	  1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0 },
>+	{ 5, 5, 4, 4, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 2, 2,
>+	  2, 2, 2, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0 },
>+	{ 5, 5, 4, 4, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 2, 2,
>+	  2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 0, 0, 0 },
>+	{ 6, 5, 5, 4, 4, 4, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3,
>+	  3, 3, 3, 2, 2, 1, 1, 1, 1, 1, 1, 0, 0, 0 },
>+	{ 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 4, 4, 4, 4, 4, 4, 4, 4, 3,
>+	  3, 3, 3, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 0 },
>+	{ 6, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 4, 4, 4, 4, 4,
>+	  4, 4, 4, 3, 3, 2, 2, 2, 2, 1, 1, 1, 1, 0 },
>+	{ 6, 6, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4,
>+	  4, 4, 4, 3, 3, 2, 2, 2, 2, 1, 1, 1, 1, 0 },
>+	{ 9, 9, 9, 9, 8, 8, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 5,
>+	  5, 5, 5, 4, 4, 3, 3, 3, 3, 2, 2, 1, 1, 1 },
>+	{ 14, 14, 13, 13, 12, 12, 12, 12, 11, 11, 10, 10, 10, 10, 9, 9, 9, 8, 8,
>+	  8, 7, 7, 7, 7, 6, 6, 5, 5, 5, 5, 4, 4, 4, 3, 3, 3, 3 }
>+};
>+
>+static const u8 rc_range_maxqp444_8bpc[DSC_NUM_BUF_RANGES][RC_RANGE_QP444=
_8BPC_MAX_NUM_BPP] =3D {
>+	{ 4, 4, 4, 4, 4, 4, 3, 3, 3, 3, 2, 2, 2, 2, 1, 1, 1, 0, 0, 0, 0, 0, 0,
>+	  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
>+	{ 6, 6, 5, 5, 4, 4, 4, 4, 4, 4, 4, 4, 3, 3, 3, 2, 2, 1, 1, 1, 1, 1, 1,
>+	  1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0 },
>+	{ 8, 7, 7, 6, 5, 5, 5, 5, 5, 5, 5, 5, 4, 4, 4, 3, 2, 2, 1, 1, 1, 1, 1,
>+	  1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0 },
>+	{ 8, 8, 7, 7, 6, 6, 6, 6, 6, 6, 6, 6, 5, 5, 5, 4, 3, 3, 2, 2, 2, 2, 2,
>+	  2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0 },
>+	{ 9, 8, 8, 7, 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 5, 4, 4, 3, 2, 2, 2, 2, 2,
>+	  2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 0 },
>+	{ 9, 8, 8, 8, 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 6, 5, 4, 4, 3, 3, 3, 3, 3,
>+	  3, 3, 3, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1 },
>+	{ 9, 9, 8, 8, 7, 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 5, 4, 4, 3, 3, 3, 3, 3,
>+	  3, 3, 3, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1 },
>+	{ 10, 10, 9, 9, 8, 8, 8, 8, 8, 8, 8, 8, 8, 7, 7, 6, 5, 5, 4, 4, 4, 4, 3,
>+	  3, 3, 3, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1 },
>+	{ 11, 11, 10, 10, 9, 9, 9, 9, 9, 9, 8, 8, 8, 7, 7, 6, 6, 5, 5, 5, 5, 5,
>+	  4, 4, 4, 4, 3, 3, 2, 2, 2, 2, 2, 2, 1, 1, 1 },
>+	{ 12, 11, 11, 10, 10, 10, 9, 9, 9, 9, 9, 9, 9, 8, 8, 7, 6, 6, 5, 5, 5,
>+	  5, 4, 4, 4, 4, 3, 3, 2, 2, 2, 2, 2, 2, 1, 1, 1 },
>+	{ 12, 12, 11, 11, 10, 10, 10, 10, 10, 10, 9, 9, 9, 8, 8, 7, 7, 6, 6, 6,
>+	  5, 5, 4, 4, 4, 4, 3, 3, 2, 2, 2, 2, 2, 2, 2, 2, 1 },
>+	{ 12, 12, 12, 11, 11, 11, 10, 10, 10, 10, 9, 9, 9, 9, 8, 8, 8, 7, 7, 7,
>+	  6, 6, 5, 5, 5, 5, 4, 4, 3, 3, 3, 3, 2, 2, 2, 2, 1 },
>+	{ 12, 12, 12, 12, 11, 11, 11, 11, 11, 10, 10, 9, 9, 9, 8, 8, 8, 7, 7, 7,
>+	  6, 6, 5, 5, 5, 5, 4, 4, 3, 3, 3, 3, 2, 2, 2, 2, 1 },
>+	{ 13, 13, 13, 13, 12, 12, 11, 11, 11, 11, 10, 10, 10, 10, 9, 9, 8, 8, 8,
>+	  8, 7, 7, 6, 6, 6, 6, 5, 5, 4, 4, 4, 4, 3, 3, 2, 2, 2 },
>+	{ 15, 15, 14, 14, 13, 13, 13, 13, 12, 12, 11, 11, 11, 11, 10, 10, 10, 9,
>+	  9, 9, 8, 8, 8, 8, 7, 7, 6, 6, 6, 6, 5, 5, 5, 4, 4, 4, 4 }
>+};
>+
>+static const u8 rc_range_minqp444_10bpc[DSC_NUM_BUF_RANGES][RC_RANGE_QP44=
4_10BPC_MAX_NUM_BPP] =3D {
>+	{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
>+	  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
>+	  0, 0, 0 },
>+	{ 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 3, 3, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 1,
>+	  1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
>+	  0, 0, 0 },
>+	{ 7, 6, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 4, 4, 4, 3, 3, 3, 3, 3, 3, 2, 2,
>+	  2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
>+	  0, 0, 0 },
>+	{ 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 4, 4, 4, 4, 4, 4, 4, 4, 4, 3, 3,
>+	  3, 3, 3, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0,
>+	  0, 0, 0 },
>+	{ 9, 8, 8, 7, 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 5, 5, 5, 5, 4, 4, 4, 4, 3,
>+	  3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0,
>+	  0, 0, 0 },
>+	{ 9, 8, 8, 8, 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 5, 5, 5, 5, 5, 5, 4,
>+	  4, 4, 4, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1, 0, 0, 0,
>+	  0, 0, 0 },
>+	{ 9, 9, 8, 8, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 6, 5, 5, 5, 5, 5,
>+	  4, 4, 4, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 2, 2, 2, 1, 1, 1, 1, 0, 0,
>+	  0, 0, 0 },
>+	{ 9, 9, 8, 8, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6, 5,
>+	  5, 5, 5, 4, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 1, 1, 1, 0,
>+	  0, 0, 0 },
>+	{ 9, 9, 8, 8, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 5,
>+	  5, 5, 5, 5, 5, 5, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 2, 2, 2, 1, 1, 1,
>+	  1, 0, 0 },
>+	{ 10, 9, 9, 8, 8, 8, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6,
>+	  6, 6, 6, 6, 6, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 3, 2, 2, 2, 1, 1,
>+	  1, 1, 0 },
>+	{ 10, 10, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 7, 7, 7, 7, 7, 6,
>+	  6, 6, 6, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 4, 4, 4, 3, 3, 3, 2, 2, 2, 1,
>+	  1, 1, 1 },
>+	{ 10, 10, 10, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 8,
>+	  7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 2,
>+	  2, 1, 1, 1 },
>+	{ 10, 10, 10, 10, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 8, 8,
>+	  8, 8, 8, 8, 7, 7, 6, 6, 6, 6, 5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 2,
>+	  2, 2, 2, 1 },
>+	{ 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 11, 11, 11, 11, 11, 11, 11,
>+	  11, 11, 11, 10, 10, 9, 9, 9, 9, 8, 8, 7, 7, 7, 7, 6, 6, 5, 5, 5, 5, 4,
>+	  4, 3, 3, 3, 3, 2, 2, 2, 2, 1 },
>+	{ 18, 18, 17, 17, 16, 16, 16, 16, 15, 15, 14, 14, 14, 14, 13, 13, 13,
>+	  12, 12, 12, 11, 11, 11, 11, 10, 10, 9, 9, 9, 9, 9, 8, 8, 7, 7, 7, 7,
>+	  7, 6, 6, 5, 5, 5, 5, 4, 4, 3, 3, 3 }
>+};
>+
>+static const u8 rc_range_maxqp444_10bpc[DSC_NUM_BUF_RANGES][RC_RANGE_QP44=
4_10BPC_MAX_NUM_BPP] =3D {
>+	{ 8, 8, 8, 8, 8, 8, 7, 7, 7, 6, 5, 5, 4, 4, 3, 3, 3, 2, 2, 2, 2, 2, 2,
>+	  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0,
>+	  0, 0, 0 },
>+	{ 10, 10, 9, 9, 8, 8, 8, 8, 8, 8, 7, 7, 6, 6, 6, 5, 5, 4, 4, 4, 4, 3, 3,
>+	  3, 3, 3, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0,
>+	  0, 0, 0 },
>+	{ 12, 11, 11, 10, 9, 9, 9, 9, 9, 9, 9, 9, 8, 8, 8, 7, 6, 6, 5, 5, 5, 4,
>+	  4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 2, 2, 2, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0,
>+	  0, 0, 0, 0 },
>+	{ 12, 12, 11, 11, 10, 10, 10, 10, 10, 10, 10, 10, 9, 9, 9, 8, 7, 7, 6,
>+	  6, 6, 5, 5, 5, 5, 5, 4, 4, 3, 3, 3, 3, 3, 3, 3, 3, 2, 2, 1, 1, 1, 1,
>+	  1, 0, 0, 0, 0, 0, 0 },
>+	{ 13, 12, 12, 11, 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 9, 8, 8, 7,
>+	  6, 6, 6, 6, 5, 5, 5, 5, 5, 5, 4, 4, 4, 3, 3, 3, 3, 3, 2, 2, 2, 2, 1,
>+	  1, 1, 1, 0, 0, 0, 0, 0 },
>+	{ 13, 12, 12, 12, 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 10, 9, 8, 8,
>+	  7, 7, 7, 7, 6, 6, 6, 6, 5, 5, 5, 5, 4, 3, 3, 3, 3, 3, 3, 3, 3, 3, 2,
>+	  2, 2, 1, 1, 1, 1, 0, 0 },
>+	{ 13, 13, 12, 12, 11, 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 9, 8, 8,
>+	  7, 7, 7, 7, 7, 6, 6, 6, 5, 5, 5, 5, 4, 4, 4, 4, 4, 4, 4, 3, 3, 3, 2,
>+	  2, 2, 2, 1, 1, 1, 1, 1 },
>+	{ 14, 14, 13, 13, 12, 12, 12, 12, 12, 12, 12, 12, 12, 11, 11, 10, 9, 9,
>+	  8, 8, 8, 8, 7, 7, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4, 4, 4, 4, 3, 3, 3,
>+	  3, 2, 2, 2, 1, 1, 1, 1 },
>+	{ 15, 15, 14, 14, 13, 13, 13, 13, 13, 13, 12, 12, 12, 11, 11, 10, 10, 9,
>+	  9, 9, 9, 9, 8, 8, 8, 8, 7, 7, 6, 5, 5, 5, 5, 5, 4, 4, 4, 4, 4, 4, 3,
>+	  3, 3, 2, 2, 2, 2, 1, 1 },
>+	{ 16, 15, 15, 14, 14, 14, 13, 13, 13, 13, 13, 13, 13, 12, 12, 11, 10,
>+	  10, 9, 9, 9, 9, 8, 8, 8, 8, 7, 7, 6, 6, 5, 5, 5, 5, 4, 4, 4, 4, 4, 4,
>+	  4, 3, 3, 3, 2, 2, 2, 2, 1 },
>+	{ 16, 16, 15, 15, 14, 14, 14, 14, 14, 14, 13, 13, 13, 12, 12, 11, 11,
>+	  10, 10, 10, 9, 9, 8, 8, 8, 8, 7, 7, 6, 6, 6, 6, 6, 6, 6, 6, 5, 5, 5,
>+	  4, 4, 4, 3, 3, 3, 2, 2, 2, 2 },
>+	{ 16, 16, 16, 15, 15, 15, 14, 14, 14, 14, 13, 13, 13, 13, 12, 12, 12,
>+	  11, 11, 11, 10, 10, 9, 9, 9, 9, 8, 8, 7, 7, 7, 7, 6, 6, 6, 6, 5, 5, 5,
>+	  5, 4, 4, 4, 4, 3, 3, 2, 2, 2 },
>+	{ 16, 16, 16, 16, 15, 15, 15, 15, 15, 14, 14, 13, 13, 13, 12, 12, 12,
>+	  11, 11, 11, 10, 10, 9, 9, 9, 9, 8, 8, 7, 7, 7, 7, 6, 6, 6, 6, 5, 5, 5,
>+	  5, 4, 4, 4, 4, 3, 3, 3, 3, 2 },
>+	{ 17, 17, 17, 17, 16, 16, 15, 15, 15, 15, 14, 14, 14, 14, 13, 13, 12,
>+	  12, 12, 12, 11, 11, 10, 10, 10, 10, 9, 9, 8, 8, 8, 8, 7, 7, 6, 6, 6,
>+	  6, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 2 },
>+	{ 19, 19, 18, 18, 17, 17, 17, 17, 16, 16, 15, 15, 15, 15, 14, 14, 14,
>+	  13, 13, 13, 12, 12, 12, 12, 11, 11, 10, 10, 10, 10, 10, 9, 9, 8, 8, 8,
>+	  8, 8, 7, 7, 6, 6, 6, 6, 5, 5, 4, 4, 4 }
>+};
>+
>+static const u8 rc_range_minqp444_12bpc[DSC_NUM_BUF_RANGES][RC_RANGE_QP44=
4_12BPC_MAX_NUM_BPP] =3D {
>+	{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0=
, 0, 0,
>+	  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0=
, 0, 0,
>+	  0, 0, 0, 0, 0, 0, 0, 0, 0 },
>+	{ 5, 5, 5, 5, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 3, 3, 2, 2, 2, 2, 2, 2, 2=
, 2, 2,
>+	  1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0=
, 0, 0,
>+	  0, 0, 0, 0, 0, 0, 0, 0, 0 },
>+	{ 11, 10, 10, 9, 8, 8, 8, 8, 8, 8, 8, 8, 7, 7, 7, 6, 5, 5, 4, 4, 4, 3, 3=
, 3, 3,
>+	  3, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0=
, 0, 0,
>+	  0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
>+	{ 11, 11, 10, 10, 9, 9, 9, 9, 9, 9, 9, 9, 8, 8, 8, 7, 6, 6, 6, 6, 6, 5, =
5, 5,
>+	  5, 5, 4, 4, 3, 3, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1=
, 1, 0,
>+	  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
>+	{ 13, 12, 12, 11, 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 9, 9, 9, 8, 7,=
 7, 7,
>+	  7, 5, 5, 5, 5, 5, 5, 4, 4, 4, 3, 3, 3, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 1=
, 1,
>+	  1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
>+	{ 13, 12, 12, 12, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 10, 9, 9, =
8, 8,
>+	  8, 8, 6, 6, 6, 6, 5, 5, 5, 5, 5, 4, 4, 4, 4, 4, 4, 4, 4, 4, 3, 3, 3, 2=
, 2, 2,
>+	  2, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0 },
>+	{ 13, 13, 12, 12, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 10, 9, 9, =
9, 9,
>+	  9, 9, 9, 8, 8, 8, 7, 7, 7, 6, 5, 5, 5, 5, 5, 5, 5, 4, 4, 4, 4, 4, 4, 4=
, 3, 3,
>+	  3, 2, 2, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0 },
>+	{ 13, 13, 12, 12, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 10, 10=
, 10,
>+	  10, 10, 10, 9, 9, 9, 9, 8, 8, 8, 7, 7, 7, 6, 6, 6, 6, 6, 6, 5, 5, 5, 5=
, 4, 4,
>+	  4, 3, 3, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1, 0, 0, 0, 0 },
>+	{ 13, 13, 12, 12, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11=
, 11,
>+	  11, 11, 11, 10, 10, 10, 10, 9, 9, 8, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6, =
5, 5,
>+	  5, 4, 4, 4, 4, 3, 3, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 0, 0 },
>+	{ 14, 13, 13, 12, 12, 12, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11=
, 11,
>+	  11, 11, 11, 10, 10, 10, 10, 9, 9, 8, 8, 8, 8, 8, 8, 7, 7, 7, 7, 7, 6, =
6, 5,
>+	  5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 1, 1, 0 },
>+	{ 14, 14, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 12, 12, 12=
, 12,
>+	  12, 11, 11, 11, 11, 11, 11, 10, 10, 9, 9, 9, 9, 9, 9, 9, 9, 8, 8, 8, 7=
, 7, 7,
>+	  6, 6, 6, 5, 5, 5, 5, 4, 4, 3, 3, 3, 2, 2, 2, 2, 1, 1, 1 },
>+	{ 14, 14, 14, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13=
, 13,
>+	  13, 12, 12, 11, 11, 11, 11, 11, 11, 10, 10, 10, 10, 9, 9, 9, 9, 8, 8, =
8, 8,
>+	  7, 7, 7, 7, 6, 6, 5, 5, 5, 4, 4, 4, 3, 3, 3, 3, 2, 2, 1, 1, 1 },
>+	{ 14, 14, 14, 14, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13=
, 13,
>+	  13, 12, 12, 12, 12, 12, 12, 11, 11, 10, 10, 10, 10, 9, 9, 9, 9, 8, 8, =
8, 8,
>+	  7, 7, 7, 7, 6, 6, 6, 6, 5, 4, 4, 4, 3, 3, 3, 3, 2, 2, 1, 1, 1 },
>+	{ 17, 17, 17, 17, 16, 16, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15=
, 15,
>+	  15, 14, 14, 13, 13, 13, 13, 12, 12, 11, 11, 11, 11, 10, 10, 9, 9, 9, 9=
, 8, 8,
>+	  7, 7, 7, 7, 7, 6, 6, 6, 5, 5, 5, 5, 4, 4, 3, 3, 3, 3, 2, 2, 1 },
>+	{ 22, 22, 21, 21, 20, 20, 20, 20, 19, 19, 18, 18, 18, 18, 17, 17, 17, 16=
, 16,
>+	  16, 15, 15, 15, 15, 14, 14, 13, 13, 13, 13, 13, 12, 12, 11, 11, 11, 11=
, 11,
>+	  10, 10, 9, 9, 9, 9, 9, 8, 8, 7, 7, 7, 7, 7, 6, 6, 5, 5, 5, 5, 4, 4, 3 }
>+};
>+
>+static const u8 rc_range_maxqp444_12bpc[DSC_NUM_BUF_RANGES][RC_RANGE_QP44=
4_12BPC_MAX_NUM_BPP] =3D {
>+	{ 12, 12, 12, 12, 12, 12, 11, 11, 11, 10, 9, 9, 6, 6, 5, 5, 5, 4, 4, 4, =
4, 4,
>+	  4, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 0, 0=
, 0, 0,
>+	  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
>+	{ 14, 14, 13, 13, 12, 12, 12, 12, 12, 12, 11, 11, 9, 9, 9, 8, 8, 7, 7, 7=
, 7, 5,
>+	  5, 5, 5, 5, 4, 4, 4, 3, 3, 3, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1=
, 1, 1,
>+	  1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
>+	{ 16, 15, 15, 14, 13, 13, 13, 13, 13, 13, 13, 13, 12, 12, 12, 11, 10, 10=
, 9, 9,
>+	  9, 7, 7, 7, 7, 7, 6, 6, 5, 5, 5, 5, 4, 4, 4, 3, 3, 3, 3, 3, 3, 2, 2, 2=
, 1, 1,
>+	  1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
>+	{ 16, 16, 15, 15, 14, 14, 14, 14, 14, 14, 14, 14, 13, 13, 13, 12, 11, 11=
, 10,
>+	  10, 10, 8, 8, 8, 8, 8, 7, 7, 6, 5, 5, 5, 5, 5, 5, 5, 4, 4, 3, 3, 3, 3,=
 3, 2,
>+	  2, 2, 2, 2, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
>+	{ 17, 16, 16, 15, 15, 15, 15, 15, 15, 15, 15, 15, 14, 14, 13, 12, 12, 11=
, 10,
>+	  10, 10, 10, 8, 8, 8, 8, 8, 8, 7, 7, 7, 6, 6, 5, 5, 5, 4, 4, 4, 4, 3, 3=
, 3, 3,
>+	  2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0 },
>+	{ 17, 16, 16, 16, 15, 15, 15, 15, 15, 15, 15, 15, 14, 14, 14, 13, 12, 12=
, 11,
>+	  11, 11, 11, 9, 9, 9, 9, 8, 8, 8, 8, 7, 6, 6, 6, 6, 6, 5, 5, 5, 5, 4, 4=
, 4, 3,
>+	  3, 3, 3, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 0 },
>+	{ 17, 17, 16, 16, 15, 15, 15, 15, 15, 15, 15, 15, 15, 14, 14, 13, 12, 12=
, 11,
>+	  11, 11, 11, 11, 10, 10, 10, 9, 9, 9, 8, 7, 7, 7, 7, 7, 7, 7, 6, 6, 6, =
5, 5,
>+	  5, 5, 4, 4, 4, 3, 3, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1, 0 },
>+	{ 18, 18, 17, 17, 16, 16, 16, 16, 16, 16, 16, 16, 16, 15, 15, 14, 13, 13=
, 12,
>+	  12, 12, 12, 11, 11, 11, 11, 10, 10, 10, 8, 8, 8, 7, 7, 7, 7, 7, 7, 6, =
6, 6,
>+	  6, 5, 5, 5, 4, 4, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 1, 1, 1, 1 },
>+	{ 19, 19, 18, 18, 17, 17, 17, 17, 17, 17, 16, 16, 16, 15, 15, 14, 14, 13=
, 13,
>+	  13, 13, 13, 12, 12, 12, 12, 11, 11, 10, 9, 8, 8, 8, 8, 7, 7, 7, 7, 7, =
7, 6,
>+	  6, 6, 5, 5, 5, 5, 4, 4, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 1, 1 },
>+	{ 20, 19, 19, 18, 18, 18, 17, 17, 17, 17, 17, 17, 17, 16, 16, 15, 14, 14=
, 13,
>+	  13, 13, 13, 12, 12, 12, 12, 11, 11, 10, 10, 9, 9, 9, 9, 8, 8, 8, 8, 8,=
 7, 7,
>+	  6, 6, 6, 5, 5, 5, 5, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 2, 2, 1 },
>+	{ 20, 20, 19, 19, 18, 18, 18, 18, 18, 18, 17, 17, 17, 16, 16, 15, 15, 14=
, 14,
>+	  14, 13, 13, 12, 12, 12, 12, 11, 11, 10, 10, 10, 10, 10, 10, 10, 10, 9,=
 9, 9,
>+	  8, 8, 8, 7, 7, 7, 6, 6, 6, 6, 5, 5, 4, 4, 4, 3, 3, 3, 3, 2, 2, 2 },
>+	{ 20, 20, 20, 19, 19, 19, 18, 18, 18, 18, 17, 17, 17, 17, 16, 16, 16, 15=
, 15,
>+	  15, 14, 14, 13, 13, 13, 13, 12, 12, 11, 11, 11, 11, 10, 10, 10, 10, 9,=
 9, 9,
>+	  9, 8, 8, 8, 8, 7, 7, 6, 6, 6, 5, 5, 5, 4, 4, 4, 4, 3, 3, 2, 2, 2 },
>+	{ 20, 20, 20, 20, 19, 19, 19, 19, 19, 18, 18, 17, 17, 17, 16, 16, 16, 15=
, 15,
>+	  15, 14, 14, 13, 13, 13, 13, 12, 12, 11, 11, 11, 11, 10, 10, 10, 10, 9,=
 9, 9,
>+	  9, 8, 8, 8, 8, 7, 7, 7, 7, 6, 5, 5, 5, 4, 4, 4, 4, 3, 3, 2, 2, 2 },
>+	{ 21, 21, 21, 21, 20, 20, 19, 19, 19, 19, 18, 18, 18, 18, 17, 17, 16, 16=
, 16,
>+	  16, 15, 15, 14, 14, 14, 14, 13, 13, 12, 12, 12, 12, 11, 11, 10, 10, 10=
, 10,
>+	  9, 9, 8, 8, 8, 8, 8, 7, 7, 7, 6, 6, 6, 6, 5, 5, 4, 4, 4, 4, 3, 3, 2 },
>+	{ 23, 23, 22, 22, 21, 21, 21, 21, 20, 20, 19, 19, 19, 19, 18, 18, 18, 17=
, 17,
>+	  17, 16, 16, 16, 16, 15, 15, 14, 14, 14, 14, 14, 13, 13, 12, 12, 12, 12=
, 12,
>+	  11, 11, 10, 10, 10, 10, 10, 9, 9, 8, 8, 8, 8, 8, 7, 7, 6, 6, 6, 6, 5, =
5, 4 }
>+};
>+
>+#define PARAM_TABLE(_minmax, _bpc, _row, _col)  do { \
>+	if (bpc =3D=3D _bpc) \
>+		return rc_range_##_minmax##qp444_##_bpc##bpc[_row][_col]; \
>+} while (0)
>+
>+u8 intel_lookup_range_min_qp(int bpc, int buf_i, int bpp_i)
>+{
>+	PARAM_TABLE(min, 8, buf_i, bpp_i);
>+	PARAM_TABLE(min, 10, buf_i, bpp_i);
>+	PARAM_TABLE(min, 12, buf_i, bpp_i);
>+
>+	MISSING_CASE(bpc);
>+	return 0;
>+}
>+
>+u8 intel_lookup_range_max_qp(int bpc, int buf_i, int bpp_i)
>+{
>+	PARAM_TABLE(max, 8, buf_i, bpp_i);
>+	PARAM_TABLE(max, 10, buf_i, bpp_i);
>+	PARAM_TABLE(max, 12, buf_i, bpp_i);
>+
>+	MISSING_CASE(bpc);
>+	return 0;
>+}
>+
>+
>diff --git a/drivers/gpu/drm/i915/display/intel_qp_tables.h b/drivers/gpu/=
drm/i915/display/intel_qp_tables.h
>new file mode 100644
>index 000000000000..9fb3c36bd7c6
>--- /dev/null
>+++ b/drivers/gpu/drm/i915/display/intel_qp_tables.h
>@@ -0,0 +1,14 @@
>+/* SPDX-License-Identifier: MIT */
>+/*
>+ * Copyright =A9 2021 Intel Corporation
>+ */
>+
>+#ifndef _INTEL_QP_TABLES_H_
>+#define _INTEL_QP_TABLES_H_
>+
>+#include <linux/types.h>
>+
>+u8 intel_lookup_range_min_qp(int bpc, int buf_i, int bpp_i);
>+u8 intel_lookup_range_max_qp(int bpc, int buf_i, int bpp_i);
>+
>+#endif
>diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i=
915/display/intel_vdsc.c
>index 1ac378a9904e..afaf6187e255 100644
>--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
>+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
>@@ -11,6 +11,7 @@
> #include "intel_display_types.h"
> #include "intel_dsi.h"
> #include "intel_vdsc.h"
>+#include "intel_qp_tables.h"
>
> enum ROW_INDEX_BPP {
> 	ROW_INDEX_6BPP =3D 0,
>@@ -384,7 +385,7 @@ calculate_rc_params(struct rc_parameters *rc,
> 	int ofs_und12[] =3D { 2, 0, 0, -2, -4, -6, -8, -8, -8, -10, -10, -10, -1=
2, -12, -12 };
> 	int ofs_und15[] =3D { 10, 8, 6, 4, 2, 0, -2, -4, -6, -8, -10, -10, -12, =
-12, -12 };
> 	int qp_bpc_modifier =3D (bpc - 8) * 2;
>-	u32 res, buf_i;
>+	u32 res, buf_i, bpp_i;
>
> 	if (vdsc_cfg->slice_height >=3D 8)
> 		rc->first_line_bpg_offset =3D
>@@ -411,7 +412,14 @@ calculate_rc_params(struct rc_parameters *rc,
> 	rc->rc_quant_incr_limit0 =3D 11 + qp_bpc_modifier;
> 	rc->rc_quant_incr_limit1 =3D 11 + qp_bpc_modifier;
>
>+	bpp_i  =3D (2 * (bpp - 6));
> 	for (buf_i =3D 0; buf_i < DSC_NUM_BUF_RANGES; buf_i++) {
>+		/* Read range_minqp and range_max_qp from qp tables */
>+		rc->rc_range_params[buf_i].range_min_qp =3D
>+			intel_lookup_range_min_qp(bpc, buf_i, bpp_i);
>+		rc->rc_range_params[buf_i].range_max_qp =3D
>+			intel_lookup_range_max_qp(bpc, buf_i, bpp_i);
>+
> 		/* Calculate range_bgp_offset */
> 		if (bpp <=3D 6) {
> 			rc->rc_range_params[buf_i].range_bpg_offset =3D ofs_und6[buf_i];
>-- =

>2.25.4
>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
