Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAA7C8D1EB6
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 16:26:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26EB31122BA;
	Tue, 28 May 2024 14:26:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HmXMaSyX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71925112311;
 Tue, 28 May 2024 14:26:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716906371; x=1748442371;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+jPZIQYo2qmwLxYm20fZb0xgJQnBVtQKgj7vfVO8dSg=;
 b=HmXMaSyXMYkjJFRaphxHzw6LejbtOr1dC3b7l8wn5tlDtnDtbaMJRreW
 qTYKeYySACUJy0V8gTArPHbwuHy19Dr5mnv5tcQLrYi3um0ARiumydwMF
 Yg+15XE5wcEKt9OQyG/LiJZHg9p38XpkGN0qBkI3PjgXfCYRaN13dz4Ud
 dmoirAKYjRt7B+/KzFeyyIqIezf2AtFWF91iiDCACgYH9pY3uhj+2hnHR
 9X+LOh3rPUgbbxxfy2hsj0BF0ZYyWdPg5gxtioI8vcnVZ1MkqSm2QOZW1
 Oqh/SlwQa7hLUhFm0ozwOtPViUGwYW9EeVaPruMBWPEOhhJN4WGwUlNoR Q==;
X-CSE-ConnectionGUID: sC4njDLSSsSHhd6Z4gFssA==
X-CSE-MsgGUID: KzYVMrlBR2Oqyj7zRS9IrQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="24669311"
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="24669311"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 07:26:11 -0700
X-CSE-ConnectionGUID: g0FuLiOrTWyX6WTfqHzDsg==
X-CSE-MsgGUID: Y4PdURhMRv+AJQcS+K2PNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="65927445"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.13])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 07:26:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 12/12] drm/xe/display: drop unused rawclk_freq and
 RUNTIME_INFO()
Date: Tue, 28 May 2024 17:25:01 +0300
Message-Id: <abb9c17cec091943d15d988dbd37ca634e1194e1.1716906179.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1716906179.git.jani.nikula@intel.com>
References: <cover.1716906179.git.jani.nikula@intel.com>
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
index d834905a3786..0211e4d8a0f2 100644
--- a/drivers/gpu/drm/xe/xe_device_types.h
+++ b/drivers/gpu/drm/xe/xe_device_types.h
@@ -288,12 +288,6 @@ struct xe_device {
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

