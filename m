Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57FA9CCF6C0
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Dec 2025 11:40:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E48EF10EF23;
	Fri, 19 Dec 2025 10:40:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MuM1ZhI7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F19BC10EF1A;
 Fri, 19 Dec 2025 10:40:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766140843; x=1797676843;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WSV6HmIuXnv6s+ZEg1C64NtydTV6UoWYPVYTwfmwr6U=;
 b=MuM1ZhI7Jt1lLmHzimzBBDkwIfzgBfScNmx9b2OlKy+Wri2pIQtrrxNF
 cT6o2z0VHrKF5CtlrgA+Rkqgb4TElpTv8hnK7F9DExNK0oXaGtDHuh4iX
 rvcrmQmJwVpukPTvjrq0PSuBysTwYihwbeT0+rabHTlkiMMyxlvMWnH2F
 hp4KoqM2ICyFqh00JwXkg1NLe1E4dL8vIxQwpzGpDEXP7xCHWWX0QJcjn
 tnyZV+G+QOQzUNOdBjfVnmUkmkZgQG0Nyrlm9PEFd+qdRy3hlPK39FLid
 ZnZE4RDzzEtyt7PvzJqmXpvRCRWNnuLAjo2OL55WboPtUsO6MFm8b9JJh Q==;
X-CSE-ConnectionGUID: vY22bnNARhCAxXLe/OhF/w==
X-CSE-MsgGUID: PycFPg4QQIeuPJEwqrh+lg==
X-IronPort-AV: E=McAfee;i="6800,10657,11646"; a="68147402"
X-IronPort-AV: E=Sophos;i="6.21,161,1763452800"; d="scan'208";a="68147402"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2025 02:40:42 -0800
X-CSE-ConnectionGUID: C4MLeRFUSHKPppwRfQHsXw==
X-CSE-MsgGUID: sk05BGZBRHCpA9dfAbJgAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,161,1763452800"; d="scan'208";a="203351325"
Received: from mwiniars-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.34])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2025 02:40:40 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH] drm/xe/display: drop i915_utils.h
Date: Fri, 19 Dec 2025 12:40:36 +0200
Message-ID: <20251219104036.855258-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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

With the i915 switch to generic fault injection, display no longer needs
the compat i915_utils.h. Remove it, along with a few includes.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_connector.c      | 2 --
 drivers/gpu/drm/i915/display/intel_display_driver.c | 2 --
 drivers/gpu/drm/xe/compat-i915-headers/i915_utils.h | 7 -------
 3 files changed, 11 deletions(-)
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/i915_utils.h

diff --git a/drivers/gpu/drm/i915/display/intel_connector.c b/drivers/gpu/drm/i915/display/intel_connector.c
index c128bc4215c4..682bf1be350d 100644
--- a/drivers/gpu/drm/i915/display/intel_connector.c
+++ b/drivers/gpu/drm/i915/display/intel_connector.c
@@ -31,8 +31,6 @@
 #include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
 
-#include "i915_drv.h"
-#include "i915_utils.h" /* for i915_inject_probe_failure() */
 #include "intel_connector.h"
 #include "intel_display_core.h"
 #include "intel_display_debugfs.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index e1d29aea0ddc..240acf599670 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -18,8 +18,6 @@
 #include <drm/drm_probe_helper.h>
 #include <drm/drm_vblank.h>
 
-#include "i915_drv.h"
-#include "i915_utils.h" /* for i915_inject_probe_failure() */
 #include "i9xx_wm.h"
 #include "intel_acpi.h"
 #include "intel_atomic.h"
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_utils.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_utils.h
deleted file mode 100644
index 3639721f0bf8..000000000000
--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_utils.h
+++ /dev/null
@@ -1,7 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/*
- * Copyright © 2023 Intel Corporation
- */
-
-/* for a couple of users under i915/display */
-#define i915_inject_probe_failure(unused) ((unused) && 0)
-- 
2.47.3

