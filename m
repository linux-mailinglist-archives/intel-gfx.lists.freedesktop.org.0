Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8507895819E
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2024 11:07:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C15B810E532;
	Tue, 20 Aug 2024 09:07:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Hxrq3oHV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8ACF10E2AD;
 Tue, 20 Aug 2024 09:07:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724144856; x=1755680856;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5X4uDIxsiESGhjC34oUM1mJwpGH4tzNmgMo2IaJP0kg=;
 b=Hxrq3oHVJ/P25pdDszcryTKgaYQB6oAqdIzOmCVYWtdAlDZT+ZKydPCB
 /r3lVK1ZzggUqVvQKEE+wJthEqO9xy8gqvH5ZIA2u9NCK3STfrlYbxg0H
 nCAroNBUZsevG29Z6AtKsYfszukBeiQYsoGkixaW/M8fhRPGCo+O50rcc
 hEoWc5vj0mq/zsN7If6qNCfZEIx8i4jBEMkrpgSxO8zOkQC4P7kcAg9WN
 Z9eH9Sn88gm1H1csN42mRzjfBXStbH9JOvjGQOFu5hYCgnfXJJ5b6yvG1
 LG5b2OGEk5jNNcjhx1QuqSzzRLMjZyiVvJ6RCGQWl1TJGsZgTEuCQ2kH+ Q==;
X-CSE-ConnectionGUID: 2BL8SoTsRbSrpRuQ7IUdkw==
X-CSE-MsgGUID: oXm98OK7Ra2GKDm/2oj70w==
X-IronPort-AV: E=McAfee;i="6700,10204,11169"; a="22596304"
X-IronPort-AV: E=Sophos;i="6.10,161,1719903600"; d="scan'208";a="22596304"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2024 02:07:25 -0700
X-CSE-ConnectionGUID: tNaKpJ1HRFG7VBAuH/l0Jw==
X-CSE-MsgGUID: THhfC6BCTBeaa8K8Qy7scw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,161,1719903600"; d="scan'208";a="61424583"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.184])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2024 02:07:21 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: maarten.lankhorst@linux.intel.com, ville.syrjala@linux.intel.com,
 jani.nikula@intel.com
Subject: [PATCH 2/2] drm/xe/display: drop unused rawclk_freq and RUNTIME_INFO()
Date: Tue, 20 Aug 2024 12:07:02 +0300
Message-Id: <9f09274bddc14f555c0102f37af6df23b4433102.1724144570.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1724144570.git.jani.nikula@intel.com>
References: <cover.1724144570.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h | 1 -
 drivers/gpu/drm/xe/xe_device_types.h              | 6 ------
 2 files changed, 7 deletions(-)

diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
index 2feedddf1e40..182c38905626 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
@@ -116,7 +116,6 @@ struct i915_sched_attr {
 #define i915_gem_fence_wait_priority(fence, attr) do { (void) attr; } while (0)
 
 #define pdev_to_i915 pdev_to_xe_device
-#define RUNTIME_INFO(xe)		(&(xe)->info.i915_runtime)
 
 #define FORCEWAKE_ALL XE_FORCEWAKE_ALL
 
diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_device_types.h
index cb60bc5ec21b..5ed6f5434f42 100644
--- a/drivers/gpu/drm/xe/xe_device_types.h
+++ b/drivers/gpu/drm/xe/xe_device_types.h
@@ -305,12 +305,6 @@ struct xe_device {
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

