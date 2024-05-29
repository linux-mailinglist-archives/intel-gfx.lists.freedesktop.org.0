Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B755A8D3DAA
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2024 19:48:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E823010E908;
	Wed, 29 May 2024 17:48:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ItHTPM7n";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82A5010EB1B;
 Wed, 29 May 2024 17:48:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717004926; x=1748540926;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ewOoJnvJnkhDip+vSimxwIBShryZRRNAivMXn+UU0Xg=;
 b=ItHTPM7nSF8I5fIc6hnkkgX9zlquF+fBe3+mUTo1beopegaulr3teF+P
 atc1Y1z1/arnwERhV9ZStPRqFs9NFGN6Yd9ykHdkZhVTO742OO6qfdUgh
 fA/6/9NOEk5Y6oq9LdmA87cDaPq4t9l4zedwUx9elptDfVstbZIRJ6FHI
 rlEVmksQm/vQ7RJ6EkF8e/XwDQPt5zaj1kj/WmwfFtFu8tgE8ERuEoU/d
 Iz/Ee7l4VOffRg7AI4dZEP6bYkITSfJlDm5u5py/NyuPljjR7FpUjRetm
 F3FEGKhEoLpqEPtvBSNPJZK3IlDIc/A88zkg3CUZtXpMAg3YRmdltG4nF w==;
X-CSE-ConnectionGUID: SEobJj7CRNiMi2ikzMpV1A==
X-CSE-MsgGUID: ArdP8SPlTGGasMt9vcfvEg==
X-IronPort-AV: E=McAfee;i="6600,9927,11087"; a="16378385"
X-IronPort-AV: E=Sophos;i="6.08,199,1712646000"; d="scan'208";a="16378385"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 10:48:42 -0700
X-CSE-ConnectionGUID: pCnna5s6RuiPDneipHemuA==
X-CSE-MsgGUID: p2yOsjvPQpqI+fflFHloLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,199,1712646000"; d="scan'208";a="66393613"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.86])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 10:48:39 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	rodrigo.vivi@intel.com,
	lucas.demarchi@intel.com
Subject: [PATCH 07/10] drm/xe/display: move compat uncore stubs to the correct
 file
Date: Wed, 29 May 2024 20:48:11 +0300
Message-Id: <3f3903c7c5e34aefac0f6d06e433710bc782c97e.1717004739.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1717004739.git.jani.nikula@intel.com>
References: <cover.1717004739.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Move things that belong to intel_uncore.h to the correct place.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h     | 5 -----
 drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h | 5 +++++
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
index 7b3f53427b03..60544633ddf7 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
@@ -155,11 +155,6 @@ static inline void intel_runtime_pm_put(struct xe_runtime_pm *pm, intel_wakeref_
 #define assert_rpm_wakelock_held(x) do { } while (0)
 #define assert_rpm_raw_wakeref_held(x) do { } while (0)
 
-#define intel_uncore_forcewake_get(x, y) do { } while (0)
-#define intel_uncore_forcewake_put(x, y) do { } while (0)
-
-#define intel_uncore_arm_unclaimed_mmio_detection(x) do { } while (0)
-
 #define I915_PRIORITY_DISPLAY 0
 struct i915_sched_attr {
 	int priority;
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h b/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
index ef79793caa72..083c4da2ea41 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
@@ -172,4 +172,9 @@ static inline void __iomem *intel_uncore_regs(struct intel_uncore *uncore)
 #define raw_reg_write(base, reg, value) \
 	writel(value, base + i915_mmio_reg_offset(reg))
 
+#define intel_uncore_forcewake_get(x, y) do { } while (0)
+#define intel_uncore_forcewake_put(x, y) do { } while (0)
+
+#define intel_uncore_arm_unclaimed_mmio_detection(x) do { } while (0)
+
 #endif /* __INTEL_UNCORE_H__ */
-- 
2.39.2

