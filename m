Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CFpnOzvCw2n6twQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 12:08:43 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BAF2323905
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 12:08:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 054C010E874;
	Wed, 25 Mar 2026 11:08:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OOx2HI4z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D43D710E873;
 Wed, 25 Mar 2026 11:08:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774436918; x=1805972918;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=f50dP8h61M2xRW7nbtklh4U0BiZ/kAWO2QSIM+UEHcM=;
 b=OOx2HI4zyKwanwcN0ME8sNy+g91h+U72xmu0BjL3dnFsxKIo92iPkwUX
 LSLF2KtzgG+3wDMH2vPJMPbJfXXVzqVlL7KGXsOxQU/fnlhWHOacianji
 XUASvxrt3NB6rzMAS/b3VLLvbBVFzJfR1yswrQeFZq4lbJaHJVH4KhMsS
 yl1wCmgXAbrbyxK0AbDvKtac8MGtLI7KY37MC2m7PJ507G0xbRbEhF+YV
 jZrufSVyBTecMlZbsRiX58VqHqIyDdgf5VYj6lNpomhQpfZpz9Jfpb/+Q
 3ETAwO+9lgqvo0mtpz9Udx6bjdUREItHTGfAO+vBWNKruJPh0qrVtduw3 A==;
X-CSE-ConnectionGUID: o7QUnYahRc6JxLwS3OdzhQ==
X-CSE-MsgGUID: lltpO1SESYGvKnHLQR0qvg==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="93047534"
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="93047534"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 04:08:38 -0700
X-CSE-ConnectionGUID: RwH2FgNATD20fhUso0vuRg==
X-CSE-MsgGUID: M4i5l3sgTpuPAMNrSBPfKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="219798418"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa006.fm.intel.com with ESMTP; 25 Mar 2026 04:08:35 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: sowmiya.s@intel.com, uma.shankar@intel.com, swati2.sharma@intel.com,
 chaitanya.kumar.borah@intel.com, arun.r.murthy@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v3 19/26] drm/{i915/xe}/writeback: Add a writeback helper to
 get ggtt address
Date: Wed, 25 Mar 2026 16:37:37 +0530
Message-Id: <20260325110744.1096786-20-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260325110744.1096786-1-suraj.kandpal@intel.com>
References: <20260325110744.1096786-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 7BAF2323905
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

We need the ggtt address offset to write in the WD_SURF register.
With i915_vma being defined in xe and i915 and both having different
ways to extract the address this poses an issue.
Add a helper so that correct function is called to extract address
depending on xe/i915 driver.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/Makefile                       |  1 +
 drivers/gpu/drm/i915/display/intel_writeback.c      |  3 ++-
 .../gpu/drm/i915/display/intel_writeback_helper.c   | 12 ++++++++++++
 .../gpu/drm/i915/display/intel_writeback_helper.h   |  8 ++++++++
 drivers/gpu/drm/xe/Makefile                         |  3 ++-
 drivers/gpu/drm/xe/display/xe_writeback_helper.c    | 13 +++++++++++++
 6 files changed, 38 insertions(+), 2 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_writeback_helper.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_writeback_helper.h
 create mode 100644 drivers/gpu/drm/xe/display/xe_writeback_helper.c

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 1e9140e7713c..a1023de728e5 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -316,6 +316,7 @@ i915-y += \
 	display/intel_vga.o \
 	display/intel_wm.o \
 	display/intel_writeback.o \
+	display/intel_writeback_helper.o \
 	display/skl_prefill.o \
 	display/skl_scaler.o \
 	display/skl_universal_plane.o \
diff --git a/drivers/gpu/drm/i915/display/intel_writeback.c b/drivers/gpu/drm/i915/display/intel_writeback.c
index c79e7330b81c..d3c3716a28a9 100644
--- a/drivers/gpu/drm/i915/display/intel_writeback.c
+++ b/drivers/gpu/drm/i915/display/intel_writeback.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: MIT
 /*
- * Copyright © 2025 Intel Corporation
+ * Copyright © 2026 Intel Corporation
  */
 
 #include <linux/slab.h>
@@ -25,6 +25,7 @@
 #include "intel_display_utils.h"
 #include "intel_fb_pin.h"
 #include "intel_writeback.h"
+#include "intel_writeback_helper.h"
 #include "intel_writeback_reg.h"
 
 struct intel_writeback_connector {
diff --git a/drivers/gpu/drm/i915/display/intel_writeback_helper.c b/drivers/gpu/drm/i915/display/intel_writeback_helper.c
new file mode 100644
index 000000000000..f483ed6ffc6b
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_writeback_helper.c
@@ -0,0 +1,12 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2026 Intel Corporation
+ */
+
+#include "i915_vma.h"
+#include "intel_writeback_helper.h"
+
+u32 intel_get_ggtt_addr(struct i915_vma *vma)
+{
+	return i915_ggtt_offset(vma);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_writeback_helper.h b/drivers/gpu/drm/i915/display/intel_writeback_helper.h
new file mode 100644
index 000000000000..b46f437c3875
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_writeback_helper.h
@@ -0,0 +1,8 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2026 Intel Corporation
+ */
+
+struct i915_vma;
+
+u32 intel_get_ggtt_addr(struct i915_vma *vma);
diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index 2e456070895a..4483e97153ba 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -224,7 +224,8 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	display/xe_initial_plane.o \
 	display/xe_panic.o \
 	display/xe_stolen.o \
-	display/xe_tdf.o
+	display/xe_tdf.o \
+	display/xe_writeback_helper.o
 
 # Display code shared with i915
 xe-$(CONFIG_DRM_XE_DISPLAY) += \
diff --git a/drivers/gpu/drm/xe/display/xe_writeback_helper.c b/drivers/gpu/drm/xe/display/xe_writeback_helper.c
new file mode 100644
index 000000000000..5898984b129c
--- /dev/null
+++ b/drivers/gpu/drm/xe/display/xe_writeback_helper.c
@@ -0,0 +1,13 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2026 Intel Corporation
+ */
+
+#include "xe_ggtt.h"
+#include "xe_display_vma.h"
+#include "intel_writeback_helper.h"
+
+u32 intel_get_ggtt_addr(struct i915_vma *vma)
+{
+	return lower_32_bits(xe_ggtt_node_addr(vma->node));
+}
-- 
2.34.1

