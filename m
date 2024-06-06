Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 751EE8FE511
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 13:17:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC95710E8FE;
	Thu,  6 Jun 2024 11:17:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mNv6sA56";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B619F10E900
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 11:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717672620; x=1749208620;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ORUIdaQR0Ffn0NdM0ozXQrCemUGLSSuUpA7EzKhHki8=;
 b=mNv6sA56fjJpQlJ55I95R0p1RfoDt7uI/GUV5cWxOum8vZtD90HG6idS
 2TJZa+4IOcPi4iHqfGDXse2KnCCsEs2ynEiwWk0/G89n8aONXqw3ICo92
 FRWeeSr/MtS/VYai30sI/Lnw+gdYDpp0nA5s1GjKxxxhqnefUnYWCUt1G
 tQOl9N3UkbQqNL0sEfImCg6LsIKs3SmU7hJZ6q2RWTJPBjrN6xOIznIWP
 O3VsnzylCalU84etk0aCYBHig60SgDn7DyXmfCXDtJb7SWvFRbWeCuCKl
 w6a8gDOq7trKPTnr5f/HwtBrNSiVGPIxLdLiJ5wDUVG3ruLnixQiNRHxn Q==;
X-CSE-ConnectionGUID: nrSUQ+BUS/SUP3miEDjsgA==
X-CSE-MsgGUID: Oze7IkqzSY2yBSU5nBvCtg==
X-IronPort-AV: E=McAfee;i="6600,9927,11094"; a="14556707"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14556707"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 04:16:55 -0700
X-CSE-ConnectionGUID: 11UkGo2IT6mXftDMxDdKWg==
X-CSE-MsgGUID: +SmXX58bT6aMK29W0vL2UA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="38494571"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 04:16:54 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 13/14] drm/xe/display: drop unused rawclk_freq and
 RUNTIME_INFO()
Date: Thu,  6 Jun 2024 14:16:05 +0300
Message-Id: <ddd05f84ca4a6597133bee55ddf4ab593a16e99d.1717672515.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1717672515.git.jani.nikula@intel.com>
References: <cover.1717672515.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

With rawclk_freq moved to display runtime info, xe has no users left for
them.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h | 1 -
 drivers/gpu/drm/xe/xe_device_types.h              | 6 ------
 2 files changed, 7 deletions(-)

diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
index cd4632276141..6c5830875091 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
@@ -181,7 +181,6 @@ struct i915_sched_attr {
 	     intel_runtime_pm_put((rpm), (wf)), (wf) = 0)
 
 #define pdev_to_i915 pdev_to_xe_device
-#define RUNTIME_INFO(xe)		(&(xe)->info.i915_runtime)
 
 #define FORCEWAKE_ALL XE_FORCEWAKE_ALL
 
diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_device_types.h
index f1c09824b145..bb24384b10a2 100644
--- a/drivers/gpu/drm/xe/xe_device_types.h
+++ b/drivers/gpu/drm/xe/xe_device_types.h
@@ -290,12 +290,6 @@ struct xe_device {
 		u8 has_atomic_enable_pte_bit:1;
 		/** @info.has_device_atomics_on_smem: Supports device atomics on SMEM */
 		u8 has_device_atomics_on_smem:1;
-
-#if IS_ENABLED(CONFIG_DRM_XE_DISPLAY)
-		struct {
-			u32 rawclk_freq;
-		} i915_runtime;
-#endif
 	} info;
 
 	/** @irq: device interrupt state */
-- 
2.39.2

