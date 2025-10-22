Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A313EBFCD0F
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 17:17:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1176610E7F4;
	Wed, 22 Oct 2025 15:17:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k+wXEE2e";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCDC010E7F5;
 Wed, 22 Oct 2025 15:17:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761146267; x=1792682267;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZdW3Xq0HabYroOad4fM6z8OdM7PUeG971ermjlT0Ud8=;
 b=k+wXEE2ezqWfjd816sf6AHfuBPj2Q/qMfqZBi5EleSRpglxQmVTsd0Z2
 HhRvQ0Jy/v7ulbSJU0xh2+OWunlSJBzKjze14V9LW17MsIC7iPA7c3Q9c
 B5u0Yb6E6AOItx8olWujkOitDtMdtmZYYmIGYCqnO2Aa7Gc4paKJsQfss
 Qy+odXvl335x+wPbFq1cPUaeUL3W0DVfza5Jtu3+Lxo0Nw6jn3eihfGSG
 FP+pMFOVAsUXw41zkGUHrI8MyQxwMFj29cqjX/w1EsjEzD5cKhw86v0og
 SV6PAMUoc5Fw6pCt3+jniGNbF3FMQ1Lmxmv14EMGRffAIVToo6dJgu92/ w==;
X-CSE-ConnectionGUID: U+F5WgaRTDK6jGwpPiHiYQ==
X-CSE-MsgGUID: fD+vbGaTTCSB//7poC6W7w==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="73903568"
X-IronPort-AV: E=Sophos;i="6.19,247,1754982000"; d="scan'208";a="73903568"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 08:17:47 -0700
X-CSE-ConnectionGUID: MkQrcMvXQpOavCmXIdz7RQ==
X-CSE-MsgGUID: 0nzPu6GnRP+Wrt8EkAjRrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,247,1754982000"; d="scan'208";a="183113744"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.104])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 08:17:45 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 6/6] drm/xe/compat: reduce i915_utils.[ch]
Date: Wed, 22 Oct 2025 18:17:14 +0300
Message-ID: <c02f82e45f31caf95bd1339080b9099c3b7190be.1761146196.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1761146196.git.jani.nikula@intel.com>
References: <cover.1761146196.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Reduce the compat i915_utils.h to only cover the requirements of
MISSING_CASE() in soc/ and the few i915_inject_probe_failure()
instances, instead of including the entire i915_utils.h from i915. This
prevents new users for the utilities from cropping up.

With this, we can remove the xe/display/ext/i915_utils.c altogether.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/Makefile                     |  1 -
 .../gpu/drm/xe/compat-i915-headers/i915_utils.h |  9 ++++++++-
 drivers/gpu/drm/xe/display/ext/i915_utils.c     | 17 -----------------
 3 files changed, 8 insertions(+), 19 deletions(-)
 delete mode 100644 drivers/gpu/drm/xe/display/ext/i915_utils.c

diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index feb8225d4d79..a7bcc3948a31 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -205,7 +205,6 @@ $(obj)/i915-display/%.o: $(srctree)/drivers/gpu/drm/i915/display/%.c FORCE
 # Display code specific to xe
 xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	display/ext/i915_irq.o \
-	display/ext/i915_utils.o \
 	display/intel_bo.o \
 	display/intel_fb_bo.o \
 	display/intel_fbdev_fb.o \
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_utils.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_utils.h
index 1d7c4360e5c0..bcd441dc0fce 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_utils.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_utils.h
@@ -3,4 +3,11 @@
  * Copyright © 2023 Intel Corporation
  */
 
-#include "../../i915/i915_utils.h"
+/* for soc/ */
+#ifndef MISSING_CASE
+#define MISSING_CASE(x) WARN(1, "Missing case (%s == %ld)\n", \
+			     __stringify(x), (long)(x))
+#endif
+
+/* for a couple of users under i915/display */
+#define i915_inject_probe_failure(unused) ((unused) && 0)
diff --git a/drivers/gpu/drm/xe/display/ext/i915_utils.c b/drivers/gpu/drm/xe/display/ext/i915_utils.c
deleted file mode 100644
index af9ec2abbaa1..000000000000
--- a/drivers/gpu/drm/xe/display/ext/i915_utils.c
+++ /dev/null
@@ -1,17 +0,0 @@
-// SPDX-License-Identifier: MIT
-/*
- * Copyright © 2023 Intel Corporation
- */
-
-#include "i915_utils.h"
-
-#if IS_ENABLED(CONFIG_DRM_I915_DEBUG)
-
-/* i915 specific, just put here for shutting it up */
-int __i915_inject_probe_error(struct drm_i915_private *i915, int err,
-			      const char *func, int line)
-{
-	return 0;
-}
-
-#endif
-- 
2.47.3

