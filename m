Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EA43BFCCFC
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 17:17:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFB3D10E7EE;
	Wed, 22 Oct 2025 15:17:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AvrLRbNJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71BFE10E7EE;
 Wed, 22 Oct 2025 15:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761146253; x=1792682253;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qMD/0Czn9V7M+FyR0zP4hWR4F811C62BkKM7t2rCDX8=;
 b=AvrLRbNJ/5Vdpj8WcRgRQWmtMOEW6+IfJCTkSCxHtYFXJPOqjAr5xEWw
 iea2bieqCXVv87NDqgGVTiDEmrp7HYNrdzI/w7uoJIJ6m6fkusGTijDtm
 1WOiXdWPpnwfZjaRK0dL3IoJQkJxc1Xm20GQjDcMChh9vRms0GAbO5lg7
 /Hhp/PWO4H/vcl1G4OO12EevTJFhkGdrE8UuvO3x5DOdvmx4v9eNGRi9s
 S7eZHjDmgijpdHWR3GZDr8SmeZJIUTkMVxkmlDu3HLyk4ZAerp75Gre1J
 PLu++dNWdMT+mz4nzzVyutqlVhqjzped/MURgEU9h8YaWCdHnv/Qzv0Fp g==;
X-CSE-ConnectionGUID: dvmHMiMiRPy6IU0l2sMnow==
X-CSE-MsgGUID: jFjY06sVQ+qAn3jJyjxpnw==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="80736011"
X-IronPort-AV: E=Sophos;i="6.19,247,1754982000"; d="scan'208";a="80736011"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 08:17:33 -0700
X-CSE-ConnectionGUID: aQvwIQiITV+idsL3xDjFuw==
X-CSE-MsgGUID: aw/aXztzTzShk5C2y/JVNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,247,1754982000"; d="scan'208";a="189178419"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.104])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 08:17:31 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 3/6] drm/i915/display: add intel_display_run_as_guest()
Date: Wed, 22 Oct 2025 18:17:11 +0300
Message-ID: <469f9c41e0c3e3099314a3cf1a7671bf36ec8ffd.1761146196.git.jani.nikula@intel.com>
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

Add intel_display_utils.c for display utilities that need more than a
header.

Start off with intel_display_run_as_guest(). The implementation is
intentional duplication of the i915_utils.h i915_run_as_guest(), with
the idea that it's small enough to not matter.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile                  |  1 +
 .../gpu/drm/i915/display/intel_display_utils.c | 18 ++++++++++++++++++
 .../gpu/drm/i915/display/intel_display_utils.h |  6 ++++++
 drivers/gpu/drm/i915/display/intel_pch.c       |  4 ++--
 drivers/gpu/drm/xe/Makefile                    |  1 +
 5 files changed, 28 insertions(+), 2 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_utils.c

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 47bac9b2c611..046f9282fb65 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -255,6 +255,7 @@ i915-y += \
 	display/intel_display_rpm.o \
 	display/intel_display_rps.o \
 	display/intel_display_snapshot.o \
+	display/intel_display_utils.o \
 	display/intel_display_wa.o \
 	display/intel_dmc.o \
 	display/intel_dmc_wl.o \
diff --git a/drivers/gpu/drm/i915/display/intel_display_utils.c b/drivers/gpu/drm/i915/display/intel_display_utils.c
new file mode 100644
index 000000000000..13d3999dd580
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_display_utils.c
@@ -0,0 +1,18 @@
+// SPDX-License-Identifier: MIT
+/* Copyright © 2025 Intel Corporation */
+
+#ifdef CONFIG_X86
+#include <asm/hypervisor.h>
+#endif
+
+#include "intel_display_utils.h"
+
+bool intel_display_run_as_guest(struct intel_display *display)
+{
+#if IS_ENABLED(CONFIG_X86)
+	return !hypervisor_is_type(X86_HYPER_NATIVE);
+#else
+	/* Not supported yet */
+	return false;
+#endif
+}
diff --git a/drivers/gpu/drm/i915/display/intel_display_utils.h b/drivers/gpu/drm/i915/display/intel_display_utils.h
index 0a2b603ea856..e54e69afd959 100644
--- a/drivers/gpu/drm/i915/display/intel_display_utils.h
+++ b/drivers/gpu/drm/i915/display/intel_display_utils.h
@@ -4,7 +4,13 @@
 #ifndef __INTEL_DISPLAY_UTILS__
 #define __INTEL_DISPLAY_UTILS__
 
+#include <linux/types.h>
+
+struct intel_display;
+
 #define KHz(x) (1000 * (x))
 #define MHz(x) KHz(1000 * (x))
 
+bool intel_display_run_as_guest(struct intel_display *display);
+
 #endif /* __INTEL_DISPLAY_UTILS__ */
diff --git a/drivers/gpu/drm/i915/display/intel_pch.c b/drivers/gpu/drm/i915/display/intel_pch.c
index 469e8a3cfb49..65359a36df48 100644
--- a/drivers/gpu/drm/i915/display/intel_pch.c
+++ b/drivers/gpu/drm/i915/display/intel_pch.c
@@ -5,8 +5,8 @@
 
 #include <drm/drm_print.h>
 
-#include "i915_utils.h"
 #include "intel_display_core.h"
+#include "intel_display_utils.h"
 #include "intel_pch.h"
 
 #define INTEL_PCH_DEVICE_ID_MASK		0xff80
@@ -328,7 +328,7 @@ void intel_pch_detect(struct intel_display *display)
 			    "Display disabled, reverting to NOP PCH\n");
 		display->pch_type = PCH_NOP;
 	} else if (!pch) {
-		if (i915_run_as_guest() && HAS_DISPLAY(display)) {
+		if (intel_display_run_as_guest(display) && HAS_DISPLAY(display)) {
 			intel_virt_detect_pch(display, &id, &pch_type);
 			display->pch_type = pch_type;
 		} else {
diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index 82c6b3d29676..feb8225d4d79 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -257,6 +257,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	i915-display/intel_display_power_map.o \
 	i915-display/intel_display_power_well.o \
 	i915-display/intel_display_trace.o \
+	i915-display/intel_display_utils.o \
 	i915-display/intel_display_wa.o \
 	i915-display/intel_dkl_phy.o \
 	i915-display/intel_dmc.o \
-- 
2.47.3

