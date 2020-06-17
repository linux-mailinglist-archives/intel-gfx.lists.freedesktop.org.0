Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 762921FC787
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2020 09:35:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBFBA6E122;
	Wed, 17 Jun 2020 07:35:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 865566E122
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jun 2020 07:35:50 +0000 (UTC)
IronPort-SDR: P/C1BnyXyykx5ymfu+qDL6venKpn34Bu1A9lWlrNK1Kef6Fbp8dd3+EBxWsyLY3bx6abTbyS72
 u8A4GVZ4FVzQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2020 00:35:50 -0700
IronPort-SDR: ZiThX53tEl6JAuoNZRsAFDUs5hT3EW0NMr7InHcK3fD52939ypmsdhskaJUY3fWJPlbiNOgmsS
 nN4IE0EI1h5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,521,1583222400"; d="scan'208";a="262475186"
Received: from joeydesktop.sh.intel.com ([10.239.53.104])
 by orsmga007.jf.intel.com with ESMTP; 17 Jun 2020 00:35:44 -0700
From: Shaofeng Tang <shaofeng.tang@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Jun 2020 15:41:40 +0800
Message-Id: <20200617074140.17032-1-shaofeng.tang@intel.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <otc-external>
References: <otc-external>
Subject: [Intel-gfx] [PATCH] drm/i915/gvt: query if vgpu is active via
 GETPARAM IOCTL
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
Cc: Shaofeng Tang <shaofeng.tang@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

[Why]
Query if vgpu is active, it is useful to the user.
Currently, only the primary plane is usable when vgpu is active.
The value of vgpu active is useful for user to determine
how many planes can be used. also useful for user to
determine different behaviors according to vgpu is active or not.

[How]
Add a switch-case in the IOCTL 'i915_getparam_ioctl' to
return 'intel_vgpu_active'

Signed-off-by: Shaofeng Tang <shaofeng.tang@intel.com>
---
 drivers/gpu/drm/i915/i915_getparam.c | 4 ++++
 include/uapi/drm/i915_drm.h          | 6 ++++++
 tools/include/uapi/drm/i915_drm.h    | 6 ++++++
 3 files changed, 16 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_getparam.c b/drivers/gpu/drm/i915/i915_getparam.c
index d042644..6d9a0b9 100644
--- a/drivers/gpu/drm/i915/i915_getparam.c
+++ b/drivers/gpu/drm/i915/i915_getparam.c
@@ -7,6 +7,7 @@
 
 #include "i915_drv.h"
 #include "i915_perf.h"
+#include "i915_vgpu.h"
 
 int i915_getparam_ioctl(struct drm_device *dev, void *data,
 			struct drm_file *file_priv)
@@ -161,6 +162,9 @@ int i915_getparam_ioctl(struct drm_device *dev, void *data,
 	case I915_PARAM_PERF_REVISION:
 		value = i915_perf_ioctl_version();
 		break;
+	case I915_PARAM_IS_GVT:
+		value = intel_vgpu_active(i915);
+		break;
 	default:
 		DRM_DEBUG("Unknown parameter %d\n", param->param);
 		return -EINVAL;
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index 14b67cd..74f06e2 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -619,6 +619,12 @@ typedef struct drm_i915_irq_wait {
  */
 #define I915_PARAM_PERF_REVISION	54
 
+/*
+ * Query whether GVT is active. The value returned helps userspace application
+ * to determine what KMS resources are workable.
+ */
+#define I915_PARAM_IS_GVT	55
+
 /* Must be kept compact -- no holes and well documented */
 
 typedef struct drm_i915_getparam {
diff --git a/tools/include/uapi/drm/i915_drm.h b/tools/include/uapi/drm/i915_drm.h
index 2813e57..ecaad82 100644
--- a/tools/include/uapi/drm/i915_drm.h
+++ b/tools/include/uapi/drm/i915_drm.h
@@ -619,6 +619,12 @@ typedef struct drm_i915_irq_wait {
  */
 #define I915_PARAM_PERF_REVISION	54
 
+/*
+ * Query whether GVT is active. The value returned helps userspace application
+ * to determine what KMS resources are workable.
+ */
+#define I915_PARAM_IS_GVT      55
+
 /* Must be kept compact -- no holes and well documented */
 
 typedef struct drm_i915_getparam {
-- 
2.9.2

base-commit: a4136c4aa44855a8301f32fd4db5bde84ebb8e89
prerequisite-patch-id: 7ee5af51de7b25a7f547e64696dc813062e2299b
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
