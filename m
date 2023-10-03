Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CB00E7B693B
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Oct 2023 14:42:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5337810E05D;
	Tue,  3 Oct 2023 12:42:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0344410E05D
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Oct 2023 12:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696336943; x=1727872943;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4LCnuTXXnZrG8wk3WlDYOLH83LUqVW5TBofDQrTPpHs=;
 b=PR/KSPOB4i4XWJVBz6HEbBcSbSmgP5sZMjVUEfb0QtOJFCMVXNb2Rwzh
 aJateEuvb0wIepH4tKZZvGSYodes2YsB8vqCpsiiB6wNCscC/GvTpgBu8
 a4CZRGu6dFwjU24vfVL/yrSpGOWmca/SP9MZhWItjnzAdYQx7IzGfh0Qf
 nmiK23H1NFYLmNJ4Iefs19gNS+C0W6U8G5MMy1zOZgWamAVR4hIM2wPY2
 avX0f0Yeqo01mm16/W48KHqKBHfZhbuKyAQKaHWOFeoF7w8zvAq/IzADN
 qI/OI7b1A/jPIPtZCm/UTxZ03L3ETiKsPwPbvzZykqeqeMNxg3rSOiAng Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="447020626"
X-IronPort-AV: E=Sophos;i="6.03,197,1694761200"; d="scan'208";a="447020626"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 05:42:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="727601586"
X-IronPort-AV: E=Sophos;i="6.03,197,1694761200"; d="scan'208";a="727601586"
Received: from akorotox-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.199])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 05:42:20 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 Oct 2023 15:42:08 +0300
Message-Id: <41b53870ffa7bd41ccc337616c756c69326f05cf.1696336887.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1696336887.git.jani.nikula@intel.com>
References: <cover.1696336887.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/4] drm/i915: move display info related macros
 to display
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Anything looking at display (runtime) info should be under display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.h | 9 +++++++++
 drivers/gpu/drm/i915/i915_drv.h                     | 8 --------
 2 files changed, 9 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 8977bac8cb7f..5b5c0e53307f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -98,6 +98,15 @@ struct drm_printer;
 	(IS_DISPLAY_IP_RANGE((__i915), (ipver), (ipver)) && \
 	 IS_DISPLAY_STEP((__i915), (from), (until)))
 
+#define DISPLAY_INFO(i915)		((i915)->display.info.__device_info)
+#define DISPLAY_RUNTIME_INFO(i915)	(&(i915)->display.info.__runtime_info)
+
+#define DISPLAY_VER(i915)	(DISPLAY_RUNTIME_INFO(i915)->ip.ver)
+#define DISPLAY_VER_FULL(i915)	IP_VER(DISPLAY_RUNTIME_INFO(i915)->ip.ver, \
+				       DISPLAY_RUNTIME_INFO(i915)->ip.rel)
+#define IS_DISPLAY_VER(i915, from, until) \
+	(DISPLAY_VER(i915) >= (from) && DISPLAY_VER(i915) <= (until))
+
 struct intel_display_runtime_info {
 	struct {
 		u16 ver;
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index e513328621ef..2b7a6db4d0d4 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -431,8 +431,6 @@ static inline struct intel_gt *to_gt(struct drm_i915_private *i915)
 
 #define INTEL_INFO(i915)	((i915)->__info)
 #define RUNTIME_INFO(i915)	(&(i915)->__runtime)
-#define DISPLAY_INFO(i915)	((i915)->display.info.__device_info)
-#define DISPLAY_RUNTIME_INFO(i915)	(&(i915)->display.info.__runtime_info)
 #define DRIVER_CAPS(i915)	(&(i915)->caps)
 
 #define INTEL_DEVID(i915)	(RUNTIME_INFO(i915)->device_id)
@@ -451,12 +449,6 @@ static inline struct intel_gt *to_gt(struct drm_i915_private *i915)
 #define IS_MEDIA_VER(i915, from, until) \
 	(MEDIA_VER(i915) >= (from) && MEDIA_VER(i915) <= (until))
 
-#define DISPLAY_VER(i915)	(DISPLAY_RUNTIME_INFO(i915)->ip.ver)
-#define DISPLAY_VER_FULL(i915)	IP_VER(DISPLAY_RUNTIME_INFO(i915)->ip.ver, \
-				       DISPLAY_RUNTIME_INFO(i915)->ip.rel)
-#define IS_DISPLAY_VER(i915, from, until) \
-	(DISPLAY_VER(i915) >= (from) && DISPLAY_VER(i915) <= (until))
-
 #define INTEL_REVID(i915)	(to_pci_dev((i915)->drm.dev)->revision)
 
 #define INTEL_DISPLAY_STEP(__i915) (RUNTIME_INFO(__i915)->step.display_step)
-- 
2.39.2

