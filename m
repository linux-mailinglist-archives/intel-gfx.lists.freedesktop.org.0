Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D0399B6605
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 15:35:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 231FE10E7B2;
	Wed, 30 Oct 2024 14:35:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R82fWjPk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A516810E7AD
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2024 14:34:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730298898; x=1761834898;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DQx0VWVm2AKE4wEWs7QCvnTds132OqRVKzptLoozOS4=;
 b=R82fWjPkyn44STdsxu2uoDW/iAzS/1aE1giXSLWAmJhkezNXAMHFmxeF
 42ghIj5a+0dItl+k97IrwKzH1BLwap8jrBTRYYeMhpwPzT7ZYeQrAJrfC
 l3FLy0IHVgqmh5KMH6hKPs10PG+y8U61l3GDchKA7Acf+HiIBB62kF5qA
 u+ROS1EIfuFek/DZ9YNL+uewp7ov7sBPRSH78VtlSa5pDRkzt9/nKlwb7
 M81x2ttoDrK8ZEOrNZrFy5MWpx6Jomln8xs2oT4tBqWye4b95GdWeOf2z
 3RJ/H/j9Si22EPTWj4bVCC7gFokQ9I/TCPKRsweRtshAdYX3g+ATK4pif g==;
X-CSE-ConnectionGUID: QhtZQEj5R8ar/F8Kd0IMDg==
X-CSE-MsgGUID: niI76AtsRCOZK1ByX6BoRw==
X-IronPort-AV: E=McAfee;i="6700,10204,11241"; a="55407447"
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="55407447"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 07:34:58 -0700
X-CSE-ConnectionGUID: EPT5CNf5T9O3l9GVOv+qjQ==
X-CSE-MsgGUID: ohT5XYZ5SimnRQh/MGBG2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="113180492"
Received: from jraag-nuc8i7beh.iind.intel.com ([10.145.169.79])
 by fmviesa001.fm.intel.com with ESMTP; 30 Oct 2024 07:34:55 -0700
From: Raag Jadav <raag.jadav@intel.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, matthew.d.roper@intel.com,
 andi.shyti@linux.intel.com
Cc: intel-gfx@lists.freedesktop.org, anshuman.gupta@intel.com,
 badal.nilawar@intel.com, riana.tauro@intel.com,
 Raag Jadav <raag.jadav@intel.com>
Subject: [PATCH v3 3/4] drm/i915: Introduce intel_cpu_info.c for CPU IDs
Date: Wed, 30 Oct 2024 20:04:17 +0530
Message-Id: <20241030143418.410406-4-raag.jadav@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241030143418.410406-1-raag.jadav@intel.com>
References: <20241030143418.410406-1-raag.jadav@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
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

Having similar naming convention in intel-family.h and intel_device_info.h
results in redefinition of a few platforms. Define CPU IDs in its own file
to avoid this.

v3: Move file out of gt directory, add kernel doc (Riana)
    Rephrase file description (Jani)

Signed-off-by: Raag Jadav <raag.jadav@intel.com>
---
 drivers/gpu/drm/i915/Makefile         |  1 +
 drivers/gpu/drm/i915/intel_cpu_info.c | 42 +++++++++++++++++++++++++++
 drivers/gpu/drm/i915/intel_cpu_info.h | 13 +++++++++
 3 files changed, 56 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/intel_cpu_info.c
 create mode 100644 drivers/gpu/drm/i915/intel_cpu_info.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 31710d98cad5..208929358b25 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -35,6 +35,7 @@ i915-y += \
 	i915_sysfs.o \
 	i915_utils.o \
 	intel_clock_gating.o \
+	intel_cpu_info.o \
 	intel_device_info.o \
 	intel_memory_region.o \
 	intel_pcode.o \
diff --git a/drivers/gpu/drm/i915/intel_cpu_info.c b/drivers/gpu/drm/i915/intel_cpu_info.c
new file mode 100644
index 000000000000..9a1bfff4be7d
--- /dev/null
+++ b/drivers/gpu/drm/i915/intel_cpu_info.c
@@ -0,0 +1,42 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2024 Intel Corporation
+ *
+ * Avoid INTEL_<PLATFORM> name collisions between asm/intel-family.h and
+ * intel_device_info.h by having a separate file.
+ */
+
+#include "intel_cpu_info.h"
+
+#ifdef CONFIG_X86
+#include <asm/cpu_device_id.h>
+#include <asm/intel-family.h>
+
+static const struct x86_cpu_id g8_cpu_ids[] = {
+	X86_MATCH_VFM(INTEL_ALDERLAKE,		NULL),
+	X86_MATCH_VFM(INTEL_ALDERLAKE_L,	NULL),
+	X86_MATCH_VFM(INTEL_COMETLAKE,		NULL),
+	X86_MATCH_VFM(INTEL_KABYLAKE,		NULL),
+	X86_MATCH_VFM(INTEL_KABYLAKE_L,		NULL),
+	X86_MATCH_VFM(INTEL_RAPTORLAKE,		NULL),
+	X86_MATCH_VFM(INTEL_RAPTORLAKE_P,	NULL),
+	X86_MATCH_VFM(INTEL_RAPTORLAKE_S,	NULL),
+	X86_MATCH_VFM(INTEL_ROCKETLAKE,		NULL),
+	{}
+};
+
+/**
+ * intel_match_g8_cpu - match current CPU against g8_cpu_ids[]
+ *
+ * This matches current CPU against g8_cpu_ids[], which are applicable
+ * for G8 workaround.
+ *
+ * Returns: %true if matches, %false otherwise.
+ */
+bool intel_match_g8_cpu(void)
+{
+	return x86_match_cpu(g8_cpu_ids);
+}
+#else
+bool intel_match_g8_cpu(void) { return false; }
+#endif
diff --git a/drivers/gpu/drm/i915/intel_cpu_info.h b/drivers/gpu/drm/i915/intel_cpu_info.h
new file mode 100644
index 000000000000..dd0c5e784b97
--- /dev/null
+++ b/drivers/gpu/drm/i915/intel_cpu_info.h
@@ -0,0 +1,13 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2024 Intel Corporation
+ */
+
+#ifndef _INTEL_CPU_INFO_H_
+#define _INTEL_CPU_INFO_H_
+
+#include <linux/types.h>
+
+bool intel_match_g8_cpu(void);
+
+#endif
-- 
2.34.1

