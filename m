Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A8A5D633C15
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Nov 2022 13:09:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB08010E3E8;
	Tue, 22 Nov 2022 12:09:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30D7610E3E4
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Nov 2022 12:09:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669118944; x=1700654944;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=/xySZdEoWsNx1rMnWTqiAGQJw6y6qY1gmJeqpfPJKxI=;
 b=Gjjq1tafJZ+YVzl5ky6M3lwXRK1UtvGCFqBV0h85lezTzbDgNy3e/pzD
 ptVrX3PUV6HPtB3Npl0eYhVm0Nf0FdR5jQPeW+1bHQqx5JnZowAx8KEOg
 qQQ0W68Askdh5i0YNPYt3lrvbTjBYqwjvUXGFu7ZCFIzAnlh3Jf8qUo7p
 kYcDTTUnes3aMfF+aGLDt/qXCISUOukMeBMDo2TJVj4+yrHqJrFr32ZRZ
 DdTAeJa/QVYHY5ePhe6BiyNtgRHmc4tYm/ljwyrDcvMx7fAy9oKbDO6GQ
 XWYUt+w+91LgDeLHlbrt2c8lvsevbpcXym2yYHDBTZuVqrcyDcF3LEp3X w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="312501060"
X-IronPort-AV: E=Sophos;i="5.96,183,1665471600"; d="scan'208";a="312501060"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 04:08:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="641395916"
X-IronPort-AV: E=Sophos;i="5.96,183,1665471600"; d="scan'208";a="641395916"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga002.jf.intel.com with SMTP; 22 Nov 2022 04:08:52 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 22 Nov 2022 14:08:52 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Nov 2022 14:08:24 +0200
Message-Id: <20221122120825.26338-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221122120825.26338-1-ville.syrjala@linux.intel.com>
References: <20221122120825.26338-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 09/10] drm/i915/dvo: Extract intel_dvo_regs.h
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Pull the DVO port register definitons into their own header
to declutter i915_reg.h a bit.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dvo.c      |  1 +
 drivers/gpu/drm/i915/display/intel_dvo_regs.h | 54 +++++++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h               | 44 ---------------
 3 files changed, 55 insertions(+), 44 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_dvo_regs.h

diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
index c590a92205f0..4a4b98bfce29 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo.c
+++ b/drivers/gpu/drm/i915/display/intel_dvo.c
@@ -38,6 +38,7 @@
 #include "intel_display_types.h"
 #include "intel_dvo.h"
 #include "intel_dvo_dev.h"
+#include "intel_dvo_regs.h"
 #include "intel_gmbus.h"
 #include "intel_panel.h"
 
diff --git a/drivers/gpu/drm/i915/display/intel_dvo_regs.h b/drivers/gpu/drm/i915/display/intel_dvo_regs.h
new file mode 100644
index 000000000000..6f9058462850
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_dvo_regs.h
@@ -0,0 +1,54 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#ifndef __INTEL_DVO_REGS_H__
+#define __INTEL_DVO_REGS_H__
+
+#include "intel_display_reg_defs.h"
+
+#define _DVOA			0x61120
+#define _DVOB			0x61140
+#define _DVOC			0x61160
+#define DVO(port)		_MMIO_PORT((port), _DVOA, _DVOB)
+#define   DVO_ENABLE				REG_BIT(31)
+#define   DVO_PIPE_SEL_MASK			REG_BIT(30)
+#define   DVO_PIPE_SEL(pipe)			REG_FIELD_PREP(DVO_PIPE_SEL_MASK, (pipe))
+#define   DVO_PIPE_STALL_MASK			REG_GENMASK(29, 28)
+#define   DVO_PIPE_STALL_UNUSED			REG_FIELD_PREP(DVO_PIPE_STALL_MASK, 0)
+#define   DVO_PIPE_STALL			REG_FIELD_PREP(DVO_PIPE_STALL_MASK, 1)
+#define   DVO_PIPE_STALL_TV			REG_FIELD_PREP(DVO_PIPE_STALL_MASK, 2)
+#define   DVO_INTERRUPT_SELECT			REG_BIT(27)
+#define   DVO_DEDICATED_INT_ENABLE		REG_BIT(26)
+#define   DVO_PRESERVE_MASK			REG_GENMASK(25, 24)
+#define   DVO_USE_VGA_SYNC			REG_BIT(15)
+#define   DVO_DATA_ORDER_MASK			REG_BIT(14)
+#define   DVO_DATA_ORDER_I740			REG_FIELD_PREP(DVO_DATA_ORDER_MASK, 0)
+#define   DVO_DATA_ORDER_FP			REG_FIELD_PREP(DVO_DATA_ORDER_MASK, 1)
+#define   DVO_VSYNC_DISABLE			REG_BIT(11)
+#define   DVO_HSYNC_DISABLE			REG_BIT(10)
+#define   DVO_VSYNC_TRISTATE			REG_BIT(9)
+#define   DVO_HSYNC_TRISTATE			REG_BIT(8)
+#define   DVO_BORDER_ENABLE			REG_BIT(7)
+#define   DVO_ACT_DATA_ORDER_MASK		REG_BIT(6)
+#define   DVO_ACT_DATA_ORDER_RGGB		REG_FIELD_PREP(DVO_ACT_DATA_ORDER_MASK, 0)
+#define   DVO_ACT_DATA_ORDER_GBRG		REG_FIELD_PREP(DVO_ACT_DATA_ORDER_MASK, 1)
+#define   DVO_ACT_DATA_ORDER_GBRG_ERRATA	REG_FIELD_PREP(DVO_ACT_DATA_ORDER_MASK, 0)
+#define   DVO_ACT_DATA_ORDER_RGGB_ERRATA	REG_FIELD_PREP(DVO_ACT_DATA_ORDER_MASK, 1)
+#define   DVO_VSYNC_ACTIVE_HIGH			REG_BIT(4)
+#define   DVO_HSYNC_ACTIVE_HIGH			REG_BIT(3)
+#define   DVO_BLANK_ACTIVE_HIGH			REG_BIT(2)
+#define   DVO_OUTPUT_CSTATE_PIXELS		REG_BIT(1) /* SDG only */
+#define   DVO_OUTPUT_SOURCE_SIZE_PIXELS		REG_BIT(0) /* SDG only */
+
+#define _DVOA_SRCDIM		0x61124
+#define _DVOB_SRCDIM		0x61144
+#define _DVOC_SRCDIM		0x61164
+#define DVO_SRCDIM(port)	_MMIO_PORT((port), _DVOA_SRCDIM, _DVOB_SRCDIM)
+#define   DVO_SRCDIM_HORIZONTAL_MASK		REG_GENMASK(22, 12)
+#define   DVO_SRCDIM_HORIZONTAL(x)		REG_FIELD_PREP(DVO_SRCDIM_HORIZONTAL_MASK, (x))
+#define   DVO_SRCDIM_VERTICAL_MASK		REG_GENMASK(10, 0)
+#define   DVO_SRCDIM_VERTICAL(x)		REG_FIELD_PREP(DVO_SRCDIM_VERTICAL_MASK, (x))
+
+#endif /* __INTEL_DVO_REGS_H__ */
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 08fdc0107212..991e2a908314 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2575,50 +2575,6 @@
 #define   SDVO_PIPE_SEL_MASK_CHV		(3 << 24)
 #define   SDVO_PIPE_SEL_CHV(pipe)		((pipe) << 24)
 
-
-/* DVO port control */
-#define _DVOA			0x61120
-#define _DVOB			0x61140
-#define _DVOC			0x61160
-#define DVO(port)		_MMIO_PORT((port), _DVOA, _DVOB)
-#define   DVO_ENABLE				REG_BIT(31)
-#define   DVO_PIPE_SEL_MASK			REG_BIT(30)
-#define   DVO_PIPE_SEL(pipe)			REG_FIELD_PREP(DVO_PIPE_SEL_MASK, (pipe))
-#define   DVO_PIPE_STALL_MASK			REG_GENMASK(29, 28)
-#define   DVO_PIPE_STALL_UNUSED			REG_FIELD_PREP(DVO_PIPE_STALL_MASK, 0)
-#define   DVO_PIPE_STALL			REG_FIELD_PREP(DVO_PIPE_STALL_MASK, 1)
-#define   DVO_PIPE_STALL_TV			REG_FIELD_PREP(DVO_PIPE_STALL_MASK, 2)
-#define   DVO_INTERRUPT_SELECT			REG_BIT(27)
-#define   DVO_DEDICATED_INT_ENABLE		REG_BIT(26)
-#define   DVO_PRESERVE_MASK			REG_GENMASK(25, 24)
-#define   DVO_USE_VGA_SYNC			REG_BIT(15)
-#define   DVO_DATA_ORDER_MASK			REG_BIT(14)
-#define   DVO_DATA_ORDER_I740			REG_FIELD_PREP(DVO_DATA_ORDER_MASK, 0)
-#define   DVO_DATA_ORDER_FP			REG_FIELD_PREP(DVO_DATA_ORDER_MASK, 1)
-#define   DVO_VSYNC_DISABLE			REG_BIT(11)
-#define   DVO_HSYNC_DISABLE			REG_BIT(10)
-#define   DVO_VSYNC_TRISTATE			REG_BIT(9)
-#define   DVO_HSYNC_TRISTATE			REG_BIT(8)
-#define   DVO_BORDER_ENABLE			REG_BIT(7)
-#define   DVO_ACT_DATA_ORDER_MASK		REG_BIT(6)
-#define   DVO_ACT_DATA_ORDER_RGGB		REG_FIELD_PREP(DVO_ACT_DATA_ORDER_MASK, 0)
-#define   DVO_ACT_DATA_ORDER_GBRG		REG_FIELD_PREP(DVO_ACT_DATA_ORDER_MASK, 1)
-#define   DVO_ACT_DATA_ORDER_GBRG_ERRATA	REG_FIELD_PREP(DVO_ACT_DATA_ORDER_MASK, 0)
-#define   DVO_ACT_DATA_ORDER_RGGB_ERRATA	REG_FIELD_PREP(DVO_ACT_DATA_ORDER_MASK, 1)
-#define   DVO_VSYNC_ACTIVE_HIGH			REG_BIT(4)
-#define   DVO_HSYNC_ACTIVE_HIGH			REG_BIT(3)
-#define   DVO_BLANK_ACTIVE_HIGH			REG_BIT(2)
-#define   DVO_OUTPUT_CSTATE_PIXELS		REG_BIT(1) /* SDG only */
-#define   DVO_OUTPUT_SOURCE_SIZE_PIXELS		REG_BIT(0) /* SDG only */
-#define _DVOA_SRCDIM		0x61124
-#define _DVOB_SRCDIM		0x61144
-#define _DVOC_SRCDIM		0x61164
-#define DVO_SRCDIM(port)	_MMIO_PORT((port), _DVOA_SRCDIM, _DVOB_SRCDIM)
-#define   DVO_SRCDIM_HORIZONTAL_MASK		REG_GENMASK(22, 12)
-#define   DVO_SRCDIM_HORIZONTAL(x)		REG_FIELD_PREP(DVO_SRCDIM_HORIZONTAL_MASK, (x))
-#define   DVO_SRCDIM_VERTICAL_MASK		REG_GENMASK(10, 0)
-#define   DVO_SRCDIM_VERTICAL(x)		REG_FIELD_PREP(DVO_SRCDIM_VERTICAL_MASK, (x))
-
 /* LVDS port control */
 #define LVDS			_MMIO(0x61180)
 /*
-- 
2.37.4

