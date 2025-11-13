Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6C1AC57B72
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Nov 2025 14:38:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5943E10E818;
	Thu, 13 Nov 2025 13:38:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="By1JpxEY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DC0110E818;
 Thu, 13 Nov 2025 13:38:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763041101; x=1794577101;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7aJ0aS4sjuR91p+R5OdZ4CIpXvlCjZSjYJgXIS5SNgw=;
 b=By1JpxEY6MJrv7MBeiV27eJCG0mMcJSH/dCU6qp1WxWBWH/DdwV2diMN
 NpCUTXu6lBzaU8xmPZ4kMWTMR5z7hGI1IEudsG1WAFgIZ8JiSyhzdc/hP
 qIzicY0pl8t4qwZAEvkPNblSkBjYJNbkarqJwIuQAMFd7MLGvHqeeqU7l
 gqaRqM98gPfK+EjETUo9Je5jmAHQxVNzpehctCNRYjuPmvL6nYpERv1vX
 xeYVxidB6sZI02bD6kYT/OH2YjYfkTSCCX/ZY16TSd7XdyBkyR7IG7k9z
 gyCQCfmMpkeC8hAsUjo3pxyi3SJqRgU1iBPnsaOI8io2f7n/Mis5dlHZA A==;
X-CSE-ConnectionGUID: k6elu9tsRTqoLnJzA+Q4Hw==
X-CSE-MsgGUID: NLUKm9bJRfeiTvRtLWQBhA==
X-IronPort-AV: E=McAfee;i="6800,10657,11612"; a="64828935"
X-IronPort-AV: E=Sophos;i="6.19,302,1754982000"; d="scan'208";a="64828935"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 05:38:21 -0800
X-CSE-ConnectionGUID: pOk7S7H9Sj2TLx0ENMezLA==
X-CSE-MsgGUID: 6oOY6gGDRvOYbjQoYdYaXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,302,1754982000"; d="scan'208";a="188771008"
Received: from aotchere-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.135])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 05:38:19 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
	uma.shankar@intel.com
Subject: [PATCH] drm/xe: use the same vga decode code as i915
Date: Thu, 13 Nov 2025 15:38:15 +0200
Message-ID: <20251113133815.696987-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1763027774.git.jani.nikula@intel.com>
References: <cover.1763027774.git.jani.nikula@intel.com>
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

Drop the no-op intel_gmch_vga_set_decode() and xe_display_misc.c, and
build intel_gmch.c in xe instead.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/Makefile                  |  2 +-
 drivers/gpu/drm/xe/display/xe_display_misc.c | 16 ----------------
 2 files changed, 1 insertion(+), 17 deletions(-)
 delete mode 100644 drivers/gpu/drm/xe/display/xe_display_misc.c

diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index 7d0d4c780145..54b7dd06a802 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -206,7 +206,6 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	display/intel_fb_bo.o \
 	display/intel_fbdev_fb.o \
 	display/xe_display.o \
-	display/xe_display_misc.o \
 	display/xe_display_rpm.o \
 	display/xe_display_wa.o \
 	display/xe_dsb_buffer.o \
@@ -280,6 +279,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	i915-display/intel_frontbuffer.o \
 	i915-display/intel_global_state.o \
 	i915-display/intel_gmbus.o \
+	i915-display/intel_gmch.o \
 	i915-display/intel_hdcp.o \
 	i915-display/intel_hdcp_gsc_message.o \
 	i915-display/intel_hdmi.o \
diff --git a/drivers/gpu/drm/xe/display/xe_display_misc.c b/drivers/gpu/drm/xe/display/xe_display_misc.c
deleted file mode 100644
index 242c2ef4ca93..000000000000
--- a/drivers/gpu/drm/xe/display/xe_display_misc.c
+++ /dev/null
@@ -1,16 +0,0 @@
-// SPDX-License-Identifier: MIT
-/*
- * Copyright © 2023 Intel Corporation
- */
-
-#include "intel_display_types.h"
-
-struct pci_dev;
-
-unsigned int intel_gmch_vga_set_decode(struct pci_dev *pdev, bool enable_decode);
-
-unsigned int intel_gmch_vga_set_decode(struct pci_dev *pdev, bool enable_decode)
-{
-	/* ToDo: Implement the actual handling of vga decode */
-	return 0;
-}
-- 
2.47.3

