Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCAB5C852B7
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Nov 2025 14:25:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 559C410E3F6;
	Tue, 25 Nov 2025 13:25:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Qbu+0IU3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C885E10E3F6;
 Tue, 25 Nov 2025 13:25:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764077111; x=1795613111;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=P26is+AzXjN7E6TYpkRRvfAG82Wo5+4LpxAeylqYqzQ=;
 b=Qbu+0IU3BkQspa/4objhSdnoE2eOyTYeWFRDH402Q/Lq8r5KM127fMpM
 /3Ywg/Akf8pFXeLNgM3+GoD6d6DGzJJC4Gwj1lzfMRHAI8bJudVyWyWC8
 9n1NigSITRkvMSCnh+x2wXHqmE/Cqs7fDnsK4eMO383lgJwSTUF4TMwJG
 I4xUTE0zsqJ+b2N2QdiWFodw1iv0jRB97bJr1S2n3g6TGmVPWjZlKW/x/
 tek2497AjUtV2by4c97gix8PGZLAI6Almq/GXaJkuYtnkiEJQzrCV0//M
 zhTkqqGNfkXYaehr2I7qVGl9fG3K2LO5AfvO24ZRl57T8S2u6E9iCdkgn w==;
X-CSE-ConnectionGUID: 7+E68lWGQcyd+LOx9F+kKw==
X-CSE-MsgGUID: r7wZXl1cT/eoIVSJNgn6Pw==
X-IronPort-AV: E=McAfee;i="6800,10657,11623"; a="53662863"
X-IronPort-AV: E=Sophos;i="6.20,225,1758610800"; d="scan'208";a="53662863"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 05:25:11 -0800
X-CSE-ConnectionGUID: yGomD0jsTeGRj7Mz9F6Jsg==
X-CSE-MsgGUID: 0ssy+pD3SjiIKHLfK8748w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,225,1758610800"; d="scan'208";a="197117953"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.213])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 05:25:10 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 5/5] drm/{i915,xe}/display: drop intel_wakeref.h usage
Date: Tue, 25 Nov 2025 15:24:43 +0200
Message-ID: <3599d0ec168d7ce7030582706acba66b616ab9f3.1764076995.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1764076995.git.jani.nikula@intel.com>
References: <cover.1764076995.git.jani.nikula@intel.com>
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

Drop the display dependency on intel_wakeref.h header. The contract in
the parent interface is that -ENOENT means there's no tracking. It
doesn't actually require us to use a shared macro for it. Duplicate the
macro in the few places that need this instead of inlining, primarily
for documentation reasons.

This allows us to remove the xe compat intel_wakeref.h header.

v2: Define INTEL_WAKEREF_DEF in intel_display_power.h

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.h     | 5 +++--
 drivers/gpu/drm/xe/compat-i915-headers/intel_wakeref.h | 6 ------
 drivers/gpu/drm/xe/display/xe_display_rpm.c            | 4 +++-
 3 files changed, 6 insertions(+), 9 deletions(-)
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/intel_wakeref.h

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index 6f8d921b4482..d616d5d09cbe 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -9,8 +9,6 @@
 #include <linux/mutex.h>
 #include <linux/workqueue.h>
 
-#include "intel_wakeref.h"
-
 enum aux_ch;
 enum port;
 struct i915_power_well;
@@ -19,6 +17,9 @@ struct intel_encoder;
 struct ref_tracker;
 struct seq_file;
 
+/* -ENOENT means we got the ref, but there's no tracking */
+#define INTEL_WAKEREF_DEF ERR_PTR(-ENOENT)
+
 /*
  * Keep the pipe, transcoder, port (DDI_LANES,DDI_IO,AUX) domain instances
  * consecutive, so that the pipe,transcoder,port -> power domain macros
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_wakeref.h b/drivers/gpu/drm/xe/compat-i915-headers/intel_wakeref.h
deleted file mode 100644
index 910a8a60da64..000000000000
--- a/drivers/gpu/drm/xe/compat-i915-headers/intel_wakeref.h
+++ /dev/null
@@ -1,6 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/*
- * Copyright © 2023 Intel Corporation
- */
-
-#define INTEL_WAKEREF_DEF ERR_PTR(-ENOENT)
diff --git a/drivers/gpu/drm/xe/display/xe_display_rpm.c b/drivers/gpu/drm/xe/display/xe_display_rpm.c
index 9416ec784e39..b3db40035499 100644
--- a/drivers/gpu/drm/xe/display/xe_display_rpm.c
+++ b/drivers/gpu/drm/xe/display/xe_display_rpm.c
@@ -5,11 +5,13 @@
 
 #include "intel_display_core.h"
 #include "intel_display_rpm.h"
-#include "intel_wakeref.h"
 #include "xe_device.h"
 #include "xe_device_types.h"
 #include "xe_pm.h"
 
+/* -ENOENT means we got the ref, but there's no tracking */
+#define INTEL_WAKEREF_DEF ERR_PTR(-ENOENT)
+
 static struct ref_tracker *xe_display_rpm_get(const struct drm_device *drm)
 {
 	return xe_pm_runtime_resume_and_get(to_xe_device(drm)) ? INTEL_WAKEREF_DEF : NULL;
-- 
2.47.3

