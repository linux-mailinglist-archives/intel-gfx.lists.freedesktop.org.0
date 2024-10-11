Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E564899A170
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2024 12:34:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B5D910EAB1;
	Fri, 11 Oct 2024 10:34:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BNS0Ul/7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3558D10EAB1
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2024 10:34:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728642849; x=1760178849;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YTcVZrAT1FxQ7qtx2cxZxjcnXZxA7kZR8k5nUeRJwFs=;
 b=BNS0Ul/7ULyYxEnoHelSSaEcXdOOigTM2Dv/o0mDF54NBzrOTk0KilsK
 DLy0p2DJcG6AfZtV5PWhRemyyI1cxyBVSx5IjRzYh3Q37H74zZ5CDfAm8
 U+0B7UnSjsv5J51QCy7GZeoYjK7HAgfD9tnp1geX0nx66Zi2iHxlDs9ir
 svUb7EsP11xjS3J8fpKTLHCC8FGVvgWPdIN8RthVmiO+8bQnN0Lhlgl4H
 /BSiib+CbHgQGCYYZCDP4i+JPbtSw19xxbI8Krpjcs9tyhSwhnw8ryAhr
 qm57MKiY+gl/vBsfBXRmxyhU5qhMH4aSS9bEJMyz1Y8Z9H6Dvjj0B4vyN g==;
X-CSE-ConnectionGUID: oMxKZ0LySVqus92qKax7Ww==
X-CSE-MsgGUID: y8u+AZa6RbSfjjyHP8RCIA==
X-IronPort-AV: E=McAfee;i="6700,10204,11221"; a="38619604"
X-IronPort-AV: E=Sophos;i="6.11,195,1725346800"; d="scan'208";a="38619604"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2024 03:34:09 -0700
X-CSE-ConnectionGUID: FApeP7XsTgahWNYsBkUCsg==
X-CSE-MsgGUID: H0Ew3FQkRUClt8qqOq5ptg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,195,1725346800"; d="scan'208";a="77341126"
Received: from jraag-nuc8i7beh.iind.intel.com ([10.145.169.79])
 by orviesa007.jf.intel.com with ESMTP; 11 Oct 2024 03:34:06 -0700
From: Raag Jadav <raag.jadav@intel.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, matthew.d.roper@intel.com,
 andi.shyti@linux.intel.com
Cc: intel-gfx@lists.freedesktop.org, anshuman.gupta@intel.com,
 badal.nilawar@intel.com, riana.tauro@intel.com,
 Raag Jadav <raag.jadav@intel.com>
Subject: [PATCH v2 3/4] drm/i915/wa: Introduce intel_wa_cpu.c for CPU specific
 workarounds
Date: Fri, 11 Oct 2024 16:02:49 +0530
Message-Id: <20241011103250.1035316-4-raag.jadav@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241011103250.1035316-1-raag.jadav@intel.com>
References: <20241011103250.1035316-1-raag.jadav@intel.com>
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

Signed-off-by: Raag Jadav <raag.jadav@intel.com>
---
 drivers/gpu/drm/i915/Makefile               |  1 +
 drivers/gpu/drm/i915/gt/intel_wa_cpu.c      | 34 +++++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_workarounds.h |  2 ++
 3 files changed, 37 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/gt/intel_wa_cpu.c

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index c63fa2133ccb..1f9b503ab976 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -121,6 +121,7 @@ gt-y += \
 	gt/intel_timeline.o \
 	gt/intel_tlb.o \
 	gt/intel_wopcm.o \
+	gt/intel_wa_cpu.o \
 	gt/intel_workarounds.o \
 	gt/shmem_utils.o \
 	gt/sysfs_engines.o
diff --git a/drivers/gpu/drm/i915/gt/intel_wa_cpu.c b/drivers/gpu/drm/i915/gt/intel_wa_cpu.c
new file mode 100644
index 000000000000..cbdab13e9db6
--- /dev/null
+++ b/drivers/gpu/drm/i915/gt/intel_wa_cpu.c
@@ -0,0 +1,34 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2024 Intel Corporation
+ *
+ * This file is introduced to avoid platform redefinition from
+ * intel_device_info.h :(
+ */
+
+#include "intel_workarounds.h"
+
+#ifdef CONFIG_X86
+#include <asm/cpu_device_id.h>
+#include <asm/intel-family.h>
+
+static const struct x86_cpu_id wa_cpu_ids[] = {
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
+bool intel_match_wa_cpu(void)
+{
+	return x86_match_cpu(wa_cpu_ids);
+}
+#else
+bool intel_match_wa_cpu(void) { return false; }
+#endif
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.h b/drivers/gpu/drm/i915/gt/intel_workarounds.h
index 9beaab77c7f0..12f24fb31363 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.h
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.h
@@ -21,6 +21,8 @@ static inline void intel_wa_list_free(struct i915_wa_list *wal)
 	memset(wal, 0, sizeof(*wal));
 }
 
+bool intel_match_wa_cpu(void);
+
 void intel_engine_init_ctx_wa(struct intel_engine_cs *engine);
 int intel_engine_emit_ctx_wa(struct i915_request *rq);
 
-- 
2.34.1

