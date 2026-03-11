Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oGyUBMd5sWk2vgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 15:18:47 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C53C2653E9
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 15:18:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8145410E274;
	Wed, 11 Mar 2026 14:18:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fHZOcAIT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C457B10E291;
 Wed, 11 Mar 2026 14:18:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773238723; x=1804774723;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=d5+zjpuKAANwAtojdjrR146J1jTu6APIttc/1wx0Tic=;
 b=fHZOcAITtfOtiHhT+40O6MDyiuRYOXwOgVVUd42xGFxFS0KrOmtgiB1B
 bc27Dw60GyN7oZ4yq1c+1/hJU4WSXkEgeuLSHccnMBSSyh9DoRoMUcfKT
 BaargamcdPBcAKQOyxMza65gly4wMEqRbhBa97AmuIOEoVuRAXjs6Bs6x
 srp2JthrLLZqFZMK8SLNku5ZUcPK08kiprxy7DeoFSeW/5NKbqVRfyYS/
 Zfx5sobAlNesO7xpMJqTBe+i6tnvJOant7hqz2XldkpgUGhKU9jwVCYb2
 lPrWtLZFOXLep0J67o1wzlxI20UK3kHuOKgeCjUtXUSvHfCG3IxzK3gQs A==;
X-CSE-ConnectionGUID: +ofwPFrUQG2K2ptixFAV/Q==
X-CSE-MsgGUID: OiK2gV+wTfibwGAQ4i2UUQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="74219907"
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="74219907"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 07:18:42 -0700
X-CSE-ConnectionGUID: fumaVdRmSUKUIcEh9FcQ3A==
X-CSE-MsgGUID: em5p3GxbSPybEYZkqWjZaw==
X-ExtLoop1: 1
Received: from krybak-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.91])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 07:18:40 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 3/5] drm/{i915,
 xe}/bo: move display bo calls to parent interface
Date: Wed, 11 Mar 2026 16:18:16 +0200
Message-ID: <7899eef2ccf0cd603df69099df065226a0df917b.1773238670.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1773238670.git.jani.nikula@intel.com>
References: <cover.1773238670.git.jani.nikula@intel.com>
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
X-Rspamd-Queue-Id: 4C53C2653E9
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.49 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:-];
	NEURAL_HAM(-0.00)[-0.418];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email]
X-Rspamd-Action: no action

Continue i915 and xe separation from display by moving the bo calls to
the display parent interface. Instead of adding all these functions to
intel_parent.[ch], reuse the now vacated intel_bo.[ch], and avoid mass
renames to calls of these functions. This is similar to
intel_display_rpm.[ch].

Make many of the hooks optional to avoid having to implement dummy
functions in xe. Indeed now we can remove many of the existing dummy
functions.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile                |  1 +
 drivers/gpu/drm/i915/display/intel_bo.c      | 66 ++++++++++++++++++++
 drivers/gpu/drm/i915/i915_bo.c               | 32 +++++++---
 drivers/gpu/drm/i915/i915_bo.h               |  9 +++
 drivers/gpu/drm/i915/i915_driver.c           |  2 +
 drivers/gpu/drm/xe/Makefile                  |  1 +
 drivers/gpu/drm/xe/display/xe_display.c      |  2 +
 drivers/gpu/drm/xe/display/xe_display_bo.c   | 45 +++----------
 drivers/gpu/drm/xe/display/xe_display_bo.h   |  9 +++
 include/drm/intel/display_parent_interface.h | 16 +++++
 10 files changed, 138 insertions(+), 45 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_bo.c
 create mode 100644 drivers/gpu/drm/i915/i915_bo.h
 create mode 100644 drivers/gpu/drm/xe/display/xe_display_bo.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 52a82608b8b1..425933fb26a5 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -240,6 +240,7 @@ i915-y += \
 	display/intel_atomic.o \
 	display/intel_audio.o \
 	display/intel_bios.o \
+	display/intel_bo.o \
 	display/intel_bw.o \
 	display/intel_casf.o \
 	display/intel_cdclk.o \
diff --git a/drivers/gpu/drm/i915/display/intel_bo.c b/drivers/gpu/drm/i915/display/intel_bo.c
new file mode 100644
index 000000000000..e356ab4e0640
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_bo.c
@@ -0,0 +1,66 @@
+// SPDX-License-Identifier: MIT
+/* Copyright © 2026 Intel Corporation */
+
+#include <drm/drm_gem.h>
+#include <drm/intel/display_parent_interface.h>
+
+#include "intel_bo.h"
+#include "intel_display_core.h"
+#include "intel_display_types.h"
+
+bool intel_bo_is_tiled(struct drm_gem_object *obj)
+{
+	struct intel_display *display = to_intel_display(obj->dev);
+
+	return display->parent->bo->is_tiled && display->parent->bo->is_tiled(obj);
+}
+
+bool intel_bo_is_userptr(struct drm_gem_object *obj)
+{
+	struct intel_display *display = to_intel_display(obj->dev);
+
+	return display->parent->bo->is_userptr && display->parent->bo->is_userptr(obj);
+}
+
+bool intel_bo_is_shmem(struct drm_gem_object *obj)
+{
+	struct intel_display *display = to_intel_display(obj->dev);
+
+	return display->parent->bo->is_shmem && display->parent->bo->is_shmem(obj);
+}
+
+bool intel_bo_is_protected(struct drm_gem_object *obj)
+{
+	struct intel_display *display = to_intel_display(obj->dev);
+
+	return display->parent->bo->is_protected(obj);
+}
+
+int intel_bo_key_check(struct drm_gem_object *obj)
+{
+	struct intel_display *display = to_intel_display(obj->dev);
+
+	return display->parent->bo->key_check(obj);
+}
+
+int intel_bo_fb_mmap(struct drm_gem_object *obj, struct vm_area_struct *vma)
+{
+	struct intel_display *display = to_intel_display(obj->dev);
+
+	return display->parent->bo->fb_mmap(obj, vma);
+}
+
+int intel_bo_read_from_page(struct drm_gem_object *obj, u64 offset, void *dst, int size)
+{
+	struct intel_display *display = to_intel_display(obj->dev);
+
+	return display->parent->bo->read_from_page(obj, offset, dst, size);
+}
+
+void intel_bo_describe(struct seq_file *m, struct drm_gem_object *obj)
+{
+	struct intel_display *display = to_intel_display(obj->dev);
+
+	if (display->parent->bo->describe)
+		display->parent->bo->describe(m, obj);
+}
diff --git a/drivers/gpu/drm/i915/i915_bo.c b/drivers/gpu/drm/i915/i915_bo.c
index 21a4533ba341..04fc0e3b7ef6 100644
--- a/drivers/gpu/drm/i915/i915_bo.c
+++ b/drivers/gpu/drm/i915/i915_bo.c
@@ -2,51 +2,63 @@
 /* Copyright © 2024 Intel Corporation */
 
 #include <drm/drm_panic.h>
-
-#include "display/intel_bo.h"
+#include <drm/intel/display_parent_interface.h>
 
 #include "gem/i915_gem_mman.h"
 #include "gem/i915_gem_object.h"
 #include "gem/i915_gem_object_frontbuffer.h"
 #include "pxp/intel_pxp.h"
+
+#include "i915_bo.h"
 #include "i915_debugfs.h"
 
-bool intel_bo_is_tiled(struct drm_gem_object *obj)
+static bool i915_bo_is_tiled(struct drm_gem_object *obj)
 {
 	return i915_gem_object_is_tiled(to_intel_bo(obj));
 }
 
-bool intel_bo_is_userptr(struct drm_gem_object *obj)
+static bool i915_bo_is_userptr(struct drm_gem_object *obj)
 {
 	return i915_gem_object_is_userptr(to_intel_bo(obj));
 }
 
-bool intel_bo_is_shmem(struct drm_gem_object *obj)
+static bool i915_bo_is_shmem(struct drm_gem_object *obj)
 {
 	return i915_gem_object_is_shmem(to_intel_bo(obj));
 }
 
-bool intel_bo_is_protected(struct drm_gem_object *obj)
+static bool i915_bo_is_protected(struct drm_gem_object *obj)
 {
 	return i915_gem_object_is_protected(to_intel_bo(obj));
 }
 
-int intel_bo_key_check(struct drm_gem_object *obj)
+static int i915_bo_key_check(struct drm_gem_object *obj)
 {
 	return intel_pxp_key_check(obj, false);
 }
 
-int intel_bo_fb_mmap(struct drm_gem_object *obj, struct vm_area_struct *vma)
+static int i915_bo_fb_mmap(struct drm_gem_object *obj, struct vm_area_struct *vma)
 {
 	return i915_gem_fb_mmap(to_intel_bo(obj), vma);
 }
 
-int intel_bo_read_from_page(struct drm_gem_object *obj, u64 offset, void *dst, int size)
+static int i915_bo_read_from_page(struct drm_gem_object *obj, u64 offset, void *dst, int size)
 {
 	return i915_gem_object_read_from_page(to_intel_bo(obj), offset, dst, size);
 }
 
-void intel_bo_describe(struct seq_file *m, struct drm_gem_object *obj)
+static void i915_bo_describe(struct seq_file *m, struct drm_gem_object *obj)
 {
 	i915_debugfs_describe_obj(m, to_intel_bo(obj));
 }
+
+const struct intel_display_bo_interface i915_display_bo_interface = {
+	.is_tiled = i915_bo_is_tiled,
+	.is_userptr = i915_bo_is_userptr,
+	.is_shmem = i915_bo_is_shmem,
+	.is_protected = i915_bo_is_protected,
+	.key_check = i915_bo_key_check,
+	.fb_mmap = i915_bo_fb_mmap,
+	.read_from_page = i915_bo_read_from_page,
+	.describe = i915_bo_describe,
+};
diff --git a/drivers/gpu/drm/i915/i915_bo.h b/drivers/gpu/drm/i915/i915_bo.h
new file mode 100644
index 000000000000..57255d052dd9
--- /dev/null
+++ b/drivers/gpu/drm/i915/i915_bo.h
@@ -0,0 +1,9 @@
+/* SPDX-License-Identifier: MIT */
+/* Copyright © 2026 Intel Corporation */
+
+#ifndef __I915_BO_H__
+#define __I915_BO_H__
+
+extern const struct intel_display_bo_interface i915_display_bo_interface;
+
+#endif /* __I915_BO_H__ */
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 7a8c59a8c865..385a634c3ed0 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -90,6 +90,7 @@
 #include "pxp/intel_pxp_debugfs.h"
 #include "pxp/intel_pxp_pm.h"
 
+#include "i915_bo.h"
 #include "i915_debugfs.h"
 #include "i915_display_pc8.h"
 #include "i915_dpt.h"
@@ -765,6 +766,7 @@ static bool vgpu_active(struct drm_device *drm)
 }
 
 static const struct intel_display_parent_interface parent = {
+	.bo = &i915_display_bo_interface,
 	.dpt = &i915_display_dpt_interface,
 	.dsb = &i915_display_dsb_interface,
 	.frontbuffer = &i915_display_frontbuffer_interface,
diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index aeede4423680..b16ed1ce2a85 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -235,6 +235,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	i915-display/intel_audio.o \
 	i915-display/intel_backlight.o \
 	i915-display/intel_bios.o \
+	i915-display/intel_bo.o \
 	i915-display/intel_bw.o \
 	i915-display/intel_casf.o \
 	i915-display/intel_cdclk.o \
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index f1e1889a52d3..49b6f98e7391 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -35,6 +35,7 @@
 #include "intel_hotplug.h"
 #include "intel_opregion.h"
 #include "skl_watermark.h"
+#include "xe_display_bo.h"
 #include "xe_display_pcode.h"
 #include "xe_display_rpm.h"
 #include "xe_dsb_buffer.h"
@@ -541,6 +542,7 @@ static const struct intel_display_irq_interface xe_display_irq_interface = {
 };
 
 static const struct intel_display_parent_interface parent = {
+	.bo = &xe_display_bo_interface,
 	.dsb = &xe_display_dsb_interface,
 	.frontbuffer = &xe_display_frontbuffer_interface,
 	.hdcp = &xe_display_hdcp_interface,
diff --git a/drivers/gpu/drm/xe/display/xe_display_bo.c b/drivers/gpu/drm/xe/display/xe_display_bo.c
index fa1f2c796b81..a53ba3f247ec 100644
--- a/drivers/gpu/drm/xe/display/xe_display_bo.c
+++ b/drivers/gpu/drm/xe/display/xe_display_bo.c
@@ -2,52 +2,27 @@
 /* Copyright © 2024 Intel Corporation */
 
 #include <drm/drm_gem.h>
+#include <drm/intel/display_parent_interface.h>
 
-#include "intel_bo.h"
-#include "intel_frontbuffer.h"
 #include "xe_bo.h"
+#include "xe_display_bo.h"
 #include "xe_pxp.h"
 
-bool intel_bo_is_tiled(struct drm_gem_object *obj)
-{
-	/* legacy tiling is unused */
-	return false;
-}
-
-bool intel_bo_is_userptr(struct drm_gem_object *obj)
-{
-	/* xe does not have userptr bos */
-	return false;
-}
-
-bool intel_bo_is_shmem(struct drm_gem_object *obj)
-{
-	return false;
-}
-
-bool intel_bo_is_protected(struct drm_gem_object *obj)
+static bool xe_display_bo_is_protected(struct drm_gem_object *obj)
 {
 	return xe_bo_is_protected(gem_to_xe_bo(obj));
 }
 
-int intel_bo_key_check(struct drm_gem_object *obj)
-{
-	return xe_pxp_obj_key_check(obj);
-}
-
-int intel_bo_fb_mmap(struct drm_gem_object *obj, struct vm_area_struct *vma)
-{
-	return drm_gem_prime_mmap(obj, vma);
-}
-
-int intel_bo_read_from_page(struct drm_gem_object *obj, u64 offset, void *dst, int size)
+static int xe_display_bo_read_from_page(struct drm_gem_object *obj, u64 offset, void *dst, int size)
 {
 	struct xe_bo *bo = gem_to_xe_bo(obj);
 
 	return xe_bo_read(bo, offset, dst, size);
 }
 
-void intel_bo_describe(struct seq_file *m, struct drm_gem_object *obj)
-{
-	/* FIXME */
-}
+const struct intel_display_bo_interface xe_display_bo_interface = {
+	.is_protected = xe_display_bo_is_protected,
+	.key_check = xe_pxp_obj_key_check,
+	.fb_mmap = drm_gem_prime_mmap,
+	.read_from_page = xe_display_bo_read_from_page,
+};
diff --git a/drivers/gpu/drm/xe/display/xe_display_bo.h b/drivers/gpu/drm/xe/display/xe_display_bo.h
new file mode 100644
index 000000000000..6879c104b0b1
--- /dev/null
+++ b/drivers/gpu/drm/xe/display/xe_display_bo.h
@@ -0,0 +1,9 @@
+/* SPDX-License-Identifier: MIT */
+/* Copyright © 2026 Intel Corporation */
+
+#ifndef __XE_DISPLAY_BO_H__
+#define __XE_DISPLAY_BO_H__
+
+extern const struct intel_display_bo_interface xe_display_bo_interface;
+
+#endif
diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/intel/display_parent_interface.h
index c044472b9400..2b53d12b0e0a 100644
--- a/include/drm/intel/display_parent_interface.h
+++ b/include/drm/intel/display_parent_interface.h
@@ -23,9 +23,22 @@ struct intel_initial_plane_config;
 struct intel_panic;
 struct intel_stolen_node;
 struct ref_tracker;
+struct seq_file;
+struct vm_area_struct;
 
 /* Keep struct definitions sorted */
 
+struct intel_display_bo_interface {
+	bool (*is_tiled)(struct drm_gem_object *obj); /* Optional */
+	bool (*is_userptr)(struct drm_gem_object *obj); /* Optional */
+	bool (*is_shmem)(struct drm_gem_object *obj); /* Optional */
+	bool (*is_protected)(struct drm_gem_object *obj);
+	int (*key_check)(struct drm_gem_object *obj);
+	int (*fb_mmap)(struct drm_gem_object *obj, struct vm_area_struct *vma);
+	int (*read_from_page)(struct drm_gem_object *obj, u64 offset, void *dst, int size);
+	void (*describe)(struct seq_file *m, struct drm_gem_object *obj); /* Optional */
+};
+
 struct intel_display_dpt_interface {
 	struct intel_dpt *(*create)(struct drm_gem_object *obj, size_t size);
 	void (*destroy)(struct intel_dpt *dpt);
@@ -174,6 +187,9 @@ struct intel_display_vma_interface {
  * check the optional pointers.
  */
 struct intel_display_parent_interface {
+	/** @bo: BO interface */
+	const struct intel_display_bo_interface *bo;
+
 	/** @dpt: DPT interface. Optional. */
 	const struct intel_display_dpt_interface *dpt;
 
-- 
2.47.3

