Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA92D1FC5CC
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2020 07:45:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 746756E11D;
	Wed, 17 Jun 2020 05:45:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C03F6E11D
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jun 2020 05:45:56 +0000 (UTC)
IronPort-SDR: G+9G7VEsbte7ebxMnWKfSL32i5911hSBPD2tokdPLHw8HB1ujXJYKbuWwIV+UZLm4vEVAveTni
 h4TJ1gWXsfXg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2020 22:45:55 -0700
IronPort-SDR: eOiaOoWD+zNo36XKU0jQY+1rNB3q2itMLu4IhbwyRlcSWcsYrfti2xnpt7WOQWsj6Bao9YmUVE
 /F92uQVxdBdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,521,1583222400"; d="scan'208";a="476725204"
Received: from joeydesktop.sh.intel.com ([10.239.53.104])
 by fmsmga005.fm.intel.com with ESMTP; 16 Jun 2020 22:45:55 -0700
From: Shaofeng Tang <shaofeng.tang@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Jun 2020 13:51:49 +0800
Message-Id: <20200617055149.16411-1-shaofeng.tang@intel.com>
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

base-commit: 999bc17a2471df17a3af3001d094cf6d5d4849b0
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
