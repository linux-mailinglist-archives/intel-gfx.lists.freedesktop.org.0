Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 652EA4D2B74
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Mar 2022 10:09:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9227910E2AB;
	Wed,  9 Mar 2022 09:09:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 119E310E2AB
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Mar 2022 09:09:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646816959; x=1678352959;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Q/ch2D1iXDYFwqQoUa9tXWeQKlbCp1eNtnaHIFVfn2U=;
 b=QXG7HMJxR64JirA1nX74HCdq1o4tWH7W9+N773gwIRQD4blUagm1BSRD
 D3G3X3xLTuEIQATCMlZ74FEIYiS6+LGhM40Diaor9PI5+PC37ZN/1iTyO
 verxKH50ZEt43/A0uO5n5zhhYJnqrYiMDbIKWmYOgUxhpbt1ZPpcwDfUz
 5RM5cxJSWwupTJ0KJW5KHFNuMciGsskhwoyPVyOGyV32jK6JPO5dsfbvs
 Yjbi1QvMyAHcCwz7Q/i/8m8TH8jOdnYQbxaPYrqfnMHd/+9xtlY3f3ZBk
 ttNOodNEWqGhBKEZJgqYoGVrVYnTB57EMTa/9nj3KQ5X09MQIOmkMtcrA Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10280"; a="254658144"
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="254658144"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 01:09:18 -0800
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="537928767"
Received: from byrnec1x-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.29.235])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 01:09:16 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Mar 2022 11:09:13 +0200
Message-Id: <20220309090913.2820533-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/regs: move GEN12_SFC_DONE_MAX where it
 belongs
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Commit ce2fce2513c5 ("drm/i915: Only include i915_reg.h from .c files")
moved GEN12_SFC_DONE_MAX from i915_regs.h to i915_reg_defs.h. Arguably
it belongs next to the GEN12_SFC_DONE() definition, as it describes the
number of GEN12_SFC_DONE instances.

The unfortunate downside is obviously having to pull in intel_gt_regs.h
in i915_gpu_error.h.

Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>

---

I guess the alternative is to define GEN12_SFC_DONE_MAX in
i915_gpu_error.h, to avoid the extra include. No matter what, IMO it's
really out of place in i915_reg_defs.h.
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h | 1 +
 drivers/gpu/drm/i915/i915_gpu_error.h   | 1 +
 drivers/gpu/drm/i915/i915_reg_defs.h    | 2 --
 3 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 19cd34f24263..6bb987fe3289 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -1502,5 +1502,6 @@
 #define GEN12_CCS2_CCS3_INTR_MASK		_MMIO(0x190104)
 
 #define GEN12_SFC_DONE(n)			_MMIO(0x1cc000 + (n) * 0x1000)
+#define GEN12_SFC_DONE_MAX			4
 
 #endif /* __INTEL_GT_REGS__ */
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.h b/drivers/gpu/drm/i915/i915_gpu_error.h
index 903d838e2e63..d29155aca84c 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.h
+++ b/drivers/gpu/drm/i915/i915_gpu_error.h
@@ -15,6 +15,7 @@
 #include <drm/drm_mm.h>
 
 #include "gt/intel_engine.h"
+#include "gt/intel_gt_regs.h"
 #include "gt/intel_gt_types.h"
 #include "gt/uc/intel_uc_fw.h"
 
diff --git a/drivers/gpu/drm/i915/i915_reg_defs.h b/drivers/gpu/drm/i915/i915_reg_defs.h
index d78d78fce431..8f486f77609f 100644
--- a/drivers/gpu/drm/i915/i915_reg_defs.h
+++ b/drivers/gpu/drm/i915/i915_reg_defs.h
@@ -123,6 +123,4 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 
 #define VLV_DISPLAY_BASE		0x180000
 
-#define GEN12_SFC_DONE_MAX		4
-
 #endif /* __I915_REG_DEFS__ */
-- 
2.30.2

