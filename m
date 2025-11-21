Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B758C79116
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Nov 2025 13:51:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C9CA10E2B2;
	Fri, 21 Nov 2025 12:51:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mKAfCPYA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A51A910E2AD;
 Fri, 21 Nov 2025 12:51:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763729508; x=1795265508;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UAopxCmPeosECe6TB3BXL8dbcNEY6uo/3Zpgy/MIn9E=;
 b=mKAfCPYAMKYOUFeAAJVYbSRz05aw8AeTNn1/58Sq48hP/zbl/6MjzwV4
 GmAO3wY1SaKm7O5wRgDYwRTv7ylv3Qf93Tp+ljvJsoUbAbfPjeHO5OtOq
 5SiSSW12XbEmqVwG0t/jYufWTTx/g4j5TNFwGED1/sXK8IAafW9Suuz7t
 ErUN03hcsqhrgHjz9F/H5HHIgieq6UnfJJpCPUzRm2rN2jnuVwRf61ens
 Cc3ftksrfKXIPJMRRWR8QReNqMwEyMa4wHaVaAQkUh5NGDJlA1QiCNMgg
 QYSYiojXzcRk6N0E0X75KPFVVBmimbOPEKHwsRoHZb7rlJAzIOyyN4wh5 A==;
X-CSE-ConnectionGUID: dMIVSImCTYSO8EuSf6y7Hg==
X-CSE-MsgGUID: 08ed73UEQ2O3RK1Xx3OAPA==
X-IronPort-AV: E=McAfee;i="6800,10657,11619"; a="65702821"
X-IronPort-AV: E=Sophos;i="6.20,215,1758610800"; d="scan'208";a="65702821"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 04:51:48 -0800
X-CSE-ConnectionGUID: 3fM8IxInTbmPNewPvxi2BQ==
X-CSE-MsgGUID: kfmdk9OuRYOjiEo/xu0QiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,215,1758610800"; d="scan'208";a="191936475"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.86])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 04:51:45 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 5/5] drm/{i915,xe}/display: drop intel_wakeref.h usage
Date: Fri, 21 Nov 2025 14:51:05 +0200
Message-ID: <9d3deed33e75e03a656ead0aa9b597c5546854ca.1763729370.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1763729370.git.jani.nikula@intel.com>
References: <cover.1763729370.git.jani.nikula@intel.com>
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

Drop the display dependency on intel_wakeref.h header. The contract in
the parent interface is that -ENOENT means there's no tracking. It
doesn't actually require us to use a shared macro for it. Duplicate the
macro in the few places that need this instead of inlining, primarily
for documentation reasons.

This allows us to remove the xe compat intel_wakeref.h header.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c     | 4 +++-
 drivers/gpu/drm/xe/compat-i915-headers/intel_wakeref.h | 6 ------
 drivers/gpu/drm/xe/display/xe_display_rpm.c            | 4 +++-
 3 files changed, 6 insertions(+), 8 deletions(-)
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/intel_wakeref.h

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 506bc8269827..b58bee61f313 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -31,7 +31,6 @@
 #include "intel_pmdemand.h"
 #include "intel_pps_regs.h"
 #include "intel_snps_phy.h"
-#include "intel_wakeref.h"
 #include "skl_watermark.h"
 #include "skl_watermark_regs.h"
 #include "vlv_sideband.h"
@@ -918,6 +917,9 @@ intel_display_power_get_in_set_if_enabled(struct intel_display *display,
 	return true;
 }
 
+/* -ENOENT means we got the ref, but there's no tracking */
+#define INTEL_WAKEREF_DEF ERR_PTR(-ENOENT)
+
 void
 intel_display_power_put_mask_in_set(struct intel_display *display,
 				    struct intel_display_power_domain_set *power_domain_set,
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

