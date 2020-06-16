Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A05FF1FAB03
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2020 10:23:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBEE56E84F;
	Tue, 16 Jun 2020 08:23:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3608B6E84F
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jun 2020 08:23:27 +0000 (UTC)
IronPort-SDR: BEEeDauhnjdxqKzZXyNBcdPYAfCqUH1b8XISAUP2XawfjvjAryqw4w3lCV84ZQqWaQPmvI3g5S
 SntlYJMYNWHg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2020 01:23:26 -0700
IronPort-SDR: E2JR1M8xrI3N1uio8S1xiqJOV952TY9ZD+73sUXmF4X7UqTF2NOZGNOYv8iJuES6Pnp8YUoC3k
 CzNjIc3ULfjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,518,1583222400"; d="scan'208";a="449720799"
Received: from joeydesktop.sh.intel.com ([10.239.53.104])
 by orsmga005.jf.intel.com with ESMTP; 16 Jun 2020 01:23:25 -0700
From: Shaofeng Tang <shaofeng.tang@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 16 Jun 2020 16:29:20 +0800
Message-Id: <1592296160-3784-1-git-send-email-shaofeng.tang@intel.com>
X-Mailer: git-send-email 1.9.1
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
 drivers/gpu/drm/i915/i915_getparam.c | 3 +++
 include/uapi/drm/i915_drm.h          | 6 ++++++
 tools/include/uapi/drm/i915_drm.h    | 6 ++++++
 3 files changed, 15 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_getparam.c b/drivers/gpu/drm/i915/i915_getparam.c
index d042644..c50555b 100644
--- a/drivers/gpu/drm/i915/i915_getparam.c
+++ b/drivers/gpu/drm/i915/i915_getparam.c
@@ -161,6 +161,9 @@ int i915_getparam_ioctl(struct drm_device *dev, void *data,
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
@@ -619,6 +619,12 @@ enum drm_i915_pmu_engine_sample {
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
@@ -619,6 +619,12 @@ enum drm_i915_pmu_engine_sample {
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
1.9.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
