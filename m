Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D8E79ECBAD
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2024 13:03:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02FDF10E3E9;
	Wed, 11 Dec 2024 12:03:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lDNaJfTY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B31D810E3DE
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2024 12:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733918586; x=1765454586;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZCpBr7st79Dcx6d8MgpjnJhpWeXZxeyhMMZxAgYKfD8=;
 b=lDNaJfTY33cpp2GMgS1jitChgTNbWR5b1WL5h506inOelClxNvoTFDr3
 B2D7l0HUPbMKPqUbW3mC5W9o/Y6BiwAwra4Sm9+/VCGlj5qzVA40iw770
 oepBuv200xSXnFW1mxlkkekRTu2jNeHHnobyw2Ij9Pss/7lO4detXtWev
 DCItHVmrd2dg5IR/+uQZjxhXHpYMvY/czyCKbb+w/ZeWinLPU5BqsP7S3
 9pMbdIMmiEuJ1/oKgKrbaOd0/2I73uYxOHgyid7Crbg7UmqI81CSRFLoq
 gTxtwVFK776ibhdcc88UBugWt5QkRfIXFU6Wm42CIMkZDvGvZdaTjeLh0 A==;
X-CSE-ConnectionGUID: YWjVeUuwS0GhQ5Z3/e/eHw==
X-CSE-MsgGUID: pFQPCaoPTF6gOLeTnAH0fA==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="33614193"
X-IronPort-AV: E=Sophos;i="6.12,225,1728975600"; d="scan'208";a="33614193"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2024 04:01:46 -0800
X-CSE-ConnectionGUID: dOgQ7flBQsKrE8K3xsrI5w==
X-CSE-MsgGUID: szB+nAYzRZu8LOzBBd/12w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="100836989"
Received: from jraag-nuc8i7beh.iind.intel.com ([10.145.169.79])
 by orviesa003.jf.intel.com with ESMTP; 11 Dec 2024 04:01:43 -0800
From: Raag Jadav <raag.jadav@intel.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, matthew.d.roper@intel.com,
 andi.shyti@linux.intel.com
Cc: intel-gfx@lists.freedesktop.org, anshuman.gupta@intel.com,
 badal.nilawar@intel.com, riana.tauro@intel.com,
 Raag Jadav <raag.jadav@intel.com>, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v4 3/4] drm/i915: Introduce intel_cpu_info.c for CPU IDs
Date: Wed, 11 Dec 2024 17:29:51 +0530
Message-Id: <20241211115952.1659287-4-raag.jadav@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241211115952.1659287-1-raag.jadav@intel.com>
References: <20241211115952.1659287-1-raag.jadav@intel.com>
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
Acked-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Riana Tauro <riana.tauro@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/Makefile         |  1 +
 drivers/gpu/drm/i915/intel_cpu_info.c | 44 +++++++++++++++++++++++++++
 drivers/gpu/drm/i915/intel_cpu_info.h | 13 ++++++++
 3 files changed, 58 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/intel_cpu_info.c
 create mode 100644 drivers/gpu/drm/i915/intel_cpu_info.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index e465828d748f..97816c473770 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -34,6 +34,7 @@ i915-y += \
 	i915_sysfs.o \
 	i915_utils.o \
 	intel_clock_gating.o \
+	intel_cpu_info.o \
 	intel_device_info.o \
 	intel_memory_region.o \
 	intel_pcode.o \
diff --git a/drivers/gpu/drm/i915/intel_cpu_info.c b/drivers/gpu/drm/i915/intel_cpu_info.c
new file mode 100644
index 000000000000..e52d0ac713a9
--- /dev/null
+++ b/drivers/gpu/drm/i915/intel_cpu_info.c
@@ -0,0 +1,44 @@
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
+ * intel_match_g8_cpu - match current CPU against g8_cpu_ids
+ *
+ * This matches current CPU against g8_cpu_ids, which are applicable
+ * for G8 workaround.
+ *
+ * Returns: %true if matches, %false otherwise.
+ */
+bool intel_match_g8_cpu(void)
+{
+	return x86_match_cpu(g8_cpu_ids);
+}
+#else /* CONFIG_X86 */
+
+bool intel_match_g8_cpu(void) { return false; }
+
+#endif /* CONFIG_X86 */
diff --git a/drivers/gpu/drm/i915/intel_cpu_info.h b/drivers/gpu/drm/i915/intel_cpu_info.h
new file mode 100644
index 000000000000..d898fb463d31
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
+#endif /* _INTEL_CPU_INFO_H_ */
-- 
2.34.1

