Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qPUbKGTUpWmvHAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 19:18:12 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D3D21DE586
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 19:18:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6875310E589;
	Mon,  2 Mar 2026 18:18:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HjtIJKBn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5440210E588;
 Mon,  2 Mar 2026 18:18:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772475490; x=1804011490;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jAW9wipKjd41NlgLtxYqQsTL5o3AYYPE9q4yOT+x/gY=;
 b=HjtIJKBnklSjzcUnFauzfwi4YADFMQZQo5aYSLzrJuuWzUppdZou1uOy
 yynVTpVFtox3WVdHtdfuNNnYe6hOyTunSzcMEvY50bcEMov6bpAlA/MUo
 1ofjx728pp927eYKZPR5OmbdZ6IcjmZxetlVbEuCc5D2tnAxw+5IGaYzA
 gjEIiYRm1OjLB644ydXbLs5OqWnw3Q5cha/N6Ag6RVOUWZV4MCMw81ChO
 +y6Z8l/9xpypZel/D5pY1MnbUdNAaQKbDP9RfSxlXI4LURHZZKdALNEmF
 uL99lkwvvyii4gH6BSDriR2rYFMq5n9bVhICcdRtUbWM0Eq3jCWY8AiY/ Q==;
X-CSE-ConnectionGUID: jvqHUKCHQkigbIrqgooXbQ==
X-CSE-MsgGUID: ewcLFfSeTtG+CVFNwIcr1g==
X-IronPort-AV: E=McAfee;i="6800,10657,11717"; a="73400631"
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="73400631"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 10:18:09 -0800
X-CSE-ConnectionGUID: rSelFTGDQea5IrGp8sIyBg==
X-CSE-MsgGUID: PMqfJzxxQz2VARV2zXLGTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="214165512"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.238])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 10:18:07 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 5/7] drm/{i915,
 xe}/frontbuffer: move frontbuffer handling to parent interface
Date: Mon,  2 Mar 2026 20:17:37 +0200
Message-ID: <f69b967ed82bbcfd60ffa77ba197b26a1399f09f.1772475391.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1772475391.git.jani.nikula@intel.com>
References: <cover.1772475391.git.jani.nikula@intel.com>
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
X-Rspamd-Queue-Id: 0D3D21DE586
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
	NEURAL_HAM(-0.00)[-0.986];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Action: no action

Move the get/put/ref/flush_for_display calls to the display parent
interface.

For i915, move the hooks next to the other i915 core frontbuffer code in
i915_gem_object_frontbuffer.c. For xe, add new file xe_frontbuffer.c for
the same.

Note: The intel_frontbuffer_flush() calls from
i915_gem_object_frontbuffer.c will partially route back to i915 core via
the parent interface. This is less than stellar.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bo.c       | 36 ----------
 drivers/gpu/drm/i915/display/intel_bo.h       |  5 --
 .../gpu/drm/i915/display/intel_frontbuffer.c  | 12 ++--
 drivers/gpu/drm/i915/display/intel_parent.c   | 21 ++++++
 drivers/gpu/drm/i915/display/intel_parent.h   |  7 ++
 .../i915/gem/i915_gem_object_frontbuffer.c    | 45 ++++++++++++
 .../i915/gem/i915_gem_object_frontbuffer.h    |  2 +
 drivers/gpu/drm/i915/i915_driver.c            |  2 +
 drivers/gpu/drm/xe/Makefile                   |  1 +
 drivers/gpu/drm/xe/display/intel_bo.c         | 56 ---------------
 drivers/gpu/drm/xe/display/xe_display.c       |  2 +
 drivers/gpu/drm/xe/display/xe_frontbuffer.c   | 71 +++++++++++++++++++
 drivers/gpu/drm/xe/display/xe_frontbuffer.h   |  9 +++
 include/drm/intel/display_parent_interface.h  | 11 +++
 14 files changed, 178 insertions(+), 102 deletions(-)
 create mode 100644 drivers/gpu/drm/xe/display/xe_frontbuffer.c
 create mode 100644 drivers/gpu/drm/xe/display/xe_frontbuffer.h

diff --git a/drivers/gpu/drm/i915/display/intel_bo.c b/drivers/gpu/drm/i915/display/intel_bo.c
index 8f372b33d48b..2b6eaec351d8 100644
--- a/drivers/gpu/drm/i915/display/intel_bo.c
+++ b/drivers/gpu/drm/i915/display/intel_bo.c
@@ -45,42 +45,6 @@ int intel_bo_read_from_page(struct drm_gem_object *obj, u64 offset, void *dst, i
 	return i915_gem_object_read_from_page(to_intel_bo(obj), offset, dst, size);
 }
 
-struct intel_frontbuffer *intel_bo_frontbuffer_get(struct drm_gem_object *_obj)
-{
-	struct drm_i915_gem_object *obj = to_intel_bo(_obj);
-	struct i915_frontbuffer *front;
-
-	front = i915_gem_object_frontbuffer_get(obj);
-	if (!front)
-		return NULL;
-
-	return &front->base;
-}
-
-void intel_bo_frontbuffer_ref(struct intel_frontbuffer *_front)
-{
-	struct i915_frontbuffer *front =
-		container_of(_front, typeof(*front), base);
-
-	i915_gem_object_frontbuffer_ref(front);
-}
-
-void intel_bo_frontbuffer_put(struct intel_frontbuffer *_front)
-{
-	struct i915_frontbuffer *front =
-		container_of(_front, typeof(*front), base);
-
-	return i915_gem_object_frontbuffer_put(front);
-}
-
-void intel_bo_frontbuffer_flush_for_display(struct intel_frontbuffer *_front)
-{
-	struct i915_frontbuffer *front =
-		container_of(_front, typeof(*front), base);
-
-	i915_gem_object_flush_if_display(front->obj);
-}
-
 void intel_bo_describe(struct seq_file *m, struct drm_gem_object *obj)
 {
 	i915_debugfs_describe_obj(m, to_intel_bo(obj));
diff --git a/drivers/gpu/drm/i915/display/intel_bo.h b/drivers/gpu/drm/i915/display/intel_bo.h
index 516a3836a6bc..40390ed92ceb 100644
--- a/drivers/gpu/drm/i915/display/intel_bo.h
+++ b/drivers/gpu/drm/i915/display/intel_bo.h
@@ -20,11 +20,6 @@ int intel_bo_key_check(struct drm_gem_object *obj);
 int intel_bo_fb_mmap(struct drm_gem_object *obj, struct vm_area_struct *vma);
 int intel_bo_read_from_page(struct drm_gem_object *obj, u64 offset, void *dst, int size);
 
-struct intel_frontbuffer *intel_bo_frontbuffer_get(struct drm_gem_object *obj);
-void intel_bo_frontbuffer_ref(struct intel_frontbuffer *front);
-void intel_bo_frontbuffer_put(struct intel_frontbuffer *front);
-void intel_bo_frontbuffer_flush_for_display(struct intel_frontbuffer *front);
-
 void intel_bo_describe(struct seq_file *m, struct drm_gem_object *obj);
 
 #endif /* __INTEL_BO__ */
diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
index 03c4978fa5ec..a355dc064528 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
@@ -58,13 +58,13 @@
 #include <drm/drm_gem.h>
 #include <drm/drm_print.h>
 
-#include "intel_bo.h"
 #include "intel_display_trace.h"
 #include "intel_display_types.h"
 #include "intel_dp.h"
 #include "intel_drrs.h"
 #include "intel_fbc.h"
 #include "intel_frontbuffer.h"
+#include "intel_parent.h"
 #include "intel_psr.h"
 #include "intel_tdf.h"
 
@@ -150,7 +150,7 @@ void __intel_fb_flush(struct intel_frontbuffer *front,
 	struct intel_display *display = front->display;
 
 	if (origin == ORIGIN_DIRTYFB)
-		intel_bo_frontbuffer_flush_for_display(front);
+		intel_parent_frontbuffer_flush_for_display(display, front);
 
 	if (origin == ORIGIN_CS) {
 		spin_lock(&display->fb_tracking.lock);
@@ -166,7 +166,7 @@ void __intel_fb_flush(struct intel_frontbuffer *front,
 
 static void intel_frontbuffer_ref(struct intel_frontbuffer *front)
 {
-	intel_bo_frontbuffer_ref(front);
+	intel_parent_frontbuffer_ref(front->display, front);
 }
 
 static void intel_frontbuffer_flush_work(struct work_struct *work)
@@ -209,12 +209,14 @@ void intel_frontbuffer_fini(struct intel_frontbuffer *front)
 
 struct intel_frontbuffer *intel_frontbuffer_get(struct drm_gem_object *obj)
 {
-	return intel_bo_frontbuffer_get(obj);
+	struct intel_display *display = to_intel_display(obj->dev);
+
+	return intel_parent_frontbuffer_get(display, obj);
 }
 
 void intel_frontbuffer_put(struct intel_frontbuffer *front)
 {
-	intel_bo_frontbuffer_put(front);
+	intel_parent_frontbuffer_put(front->display, front);
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/display/intel_parent.c b/drivers/gpu/drm/i915/display/intel_parent.c
index 89f78ca1cd15..4142fe3eed7c 100644
--- a/drivers/gpu/drm/i915/display/intel_parent.c
+++ b/drivers/gpu/drm/i915/display/intel_parent.c
@@ -51,6 +51,27 @@ void intel_parent_dpt_resume(struct intel_display *display, struct intel_dpt *dp
 		display->parent->dpt->resume(dpt);
 }
 
+/* frontbuffer */
+struct intel_frontbuffer *intel_parent_frontbuffer_get(struct intel_display *display, struct drm_gem_object *obj)
+{
+	return display->parent->frontbuffer->get(obj);
+}
+
+void intel_parent_frontbuffer_ref(struct intel_display *display, struct intel_frontbuffer *front)
+{
+	display->parent->frontbuffer->ref(front);
+}
+
+void intel_parent_frontbuffer_put(struct intel_display *display, struct intel_frontbuffer *front)
+{
+	display->parent->frontbuffer->put(front);
+}
+
+void intel_parent_frontbuffer_flush_for_display(struct intel_display *display, struct intel_frontbuffer *front)
+{
+	display->parent->frontbuffer->flush_for_display(front);
+}
+
 /* hdcp */
 ssize_t intel_parent_hdcp_gsc_msg_send(struct intel_display *display,
 				       struct intel_hdcp_gsc_context *gsc_context,
diff --git a/drivers/gpu/drm/i915/display/intel_parent.h b/drivers/gpu/drm/i915/display/intel_parent.h
index 2317482ef072..c1214d3329a8 100644
--- a/drivers/gpu/drm/i915/display/intel_parent.h
+++ b/drivers/gpu/drm/i915/display/intel_parent.h
@@ -13,6 +13,7 @@ struct drm_scanout_buffer;
 struct i915_vma;
 struct intel_display;
 struct intel_dpt;
+struct intel_frontbuffer;
 struct intel_hdcp_gsc_context;
 struct intel_panic;
 struct intel_stolen_node;
@@ -24,6 +25,12 @@ void intel_parent_dpt_destroy(struct intel_display *display, struct intel_dpt *d
 void intel_parent_dpt_suspend(struct intel_display *display, struct intel_dpt *dpt);
 void intel_parent_dpt_resume(struct intel_display *display, struct intel_dpt *dpt);
 
+/* frontbuffer */
+struct intel_frontbuffer *intel_parent_frontbuffer_get(struct intel_display *display, struct drm_gem_object *obj);
+void intel_parent_frontbuffer_ref(struct intel_display *display, struct intel_frontbuffer *front);
+void intel_parent_frontbuffer_put(struct intel_display *display, struct intel_frontbuffer *front);
+void intel_parent_frontbuffer_flush_for_display(struct intel_display *display, struct intel_frontbuffer *front);
+
 /* hdcp */
 ssize_t intel_parent_hdcp_gsc_msg_send(struct intel_display *display,
 				       struct intel_hdcp_gsc_context *gsc_context,
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.c
index cf0b66eaf11b..f885c4fb1326 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.c
@@ -1,6 +1,8 @@
 // SPDX-License-Identifier: MIT
 /* Copyright © 2025 Intel Corporation */
 
+#include <drm/intel/display_parent_interface.h>
+
 #include "i915_drv.h"
 #include "i915_gem_object_frontbuffer.h"
 
@@ -125,3 +127,46 @@ void __i915_gem_object_frontbuffer_invalidate(struct drm_i915_gem_object *obj,
 		i915_gem_object_frontbuffer_put(front);
 	}
 }
+
+static struct intel_frontbuffer *i915_frontbuffer_get(struct drm_gem_object *_obj)
+{
+	struct drm_i915_gem_object *obj = to_intel_bo(_obj);
+	struct i915_frontbuffer *front;
+
+	front = i915_gem_object_frontbuffer_get(obj);
+	if (!front)
+		return NULL;
+
+	return &front->base;
+}
+
+static void i915_frontbuffer_ref(struct intel_frontbuffer *_front)
+{
+	struct i915_frontbuffer *front =
+		container_of(_front, typeof(*front), base);
+
+	i915_gem_object_frontbuffer_ref(front);
+}
+
+static void i915_frontbuffer_put(struct intel_frontbuffer *_front)
+{
+	struct i915_frontbuffer *front =
+		container_of(_front, typeof(*front), base);
+
+	return i915_gem_object_frontbuffer_put(front);
+}
+
+static void i915_frontbuffer_flush_for_display(struct intel_frontbuffer *_front)
+{
+	struct i915_frontbuffer *front =
+		container_of(_front, typeof(*front), base);
+
+	i915_gem_object_flush_if_display(front->obj);
+}
+
+const struct intel_display_frontbuffer_interface i915_display_frontbuffer_interface = {
+	.get = i915_frontbuffer_get,
+	.ref = i915_frontbuffer_ref,
+	.put = i915_frontbuffer_put,
+	.flush_for_display = i915_frontbuffer_flush_for_display,
+};
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h b/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h
index 46124048a59f..9c6d91f21c19 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h
@@ -91,4 +91,6 @@ i915_gem_object_frontbuffer_lookup(const struct drm_i915_gem_object *obj)
 	return front;
 }
 
+extern const struct intel_display_frontbuffer_interface i915_display_frontbuffer_interface;
+
 #endif
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 5f77e891604d..8c3a8bffc691 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -78,6 +78,7 @@
 #include "gem/i915_gem_dmabuf.h"
 #include "gem/i915_gem_ioctls.h"
 #include "gem/i915_gem_mman.h"
+#include "gem/i915_gem_object_frontbuffer.h"
 #include "gem/i915_gem_pm.h"
 #include "gt/intel_gt.h"
 #include "gt/intel_gt_pm.h"
@@ -765,6 +766,7 @@ static bool vgpu_active(struct drm_device *drm)
 static const struct intel_display_parent_interface parent = {
 	.dpt = &i915_display_dpt_interface,
 	.dsb = &i915_display_dsb_interface,
+	.frontbuffer = &i915_display_frontbuffer_interface,
 	.hdcp = &i915_display_hdcp_interface,
 	.initial_plane = &i915_display_initial_plane_interface,
 	.irq = &i915_display_irq_interface,
diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index ff778fb2d4ff..9b3f8ad40d50 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -219,6 +219,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	display/xe_display_wa.o \
 	display/xe_dsb_buffer.o \
 	display/xe_fb_pin.o \
+	display/xe_frontbuffer.o \
 	display/xe_hdcp_gsc.o \
 	display/xe_initial_plane.o \
 	display/xe_panic.o \
diff --git a/drivers/gpu/drm/xe/display/intel_bo.c b/drivers/gpu/drm/xe/display/intel_bo.c
index 05d5e5c0a0de..fa1f2c796b81 100644
--- a/drivers/gpu/drm/xe/display/intel_bo.c
+++ b/drivers/gpu/drm/xe/display/intel_bo.c
@@ -47,62 +47,6 @@ int intel_bo_read_from_page(struct drm_gem_object *obj, u64 offset, void *dst, i
 	return xe_bo_read(bo, offset, dst, size);
 }
 
-struct xe_frontbuffer {
-	struct intel_frontbuffer base;
-	struct drm_gem_object *obj;
-	struct kref ref;
-};
-
-struct intel_frontbuffer *intel_bo_frontbuffer_get(struct drm_gem_object *obj)
-{
-	struct xe_frontbuffer *front;
-
-	front = kmalloc_obj(*front);
-	if (!front)
-		return NULL;
-
-	intel_frontbuffer_init(&front->base, obj->dev);
-
-	kref_init(&front->ref);
-
-	drm_gem_object_get(obj);
-	front->obj = obj;
-
-	return &front->base;
-}
-
-void intel_bo_frontbuffer_ref(struct intel_frontbuffer *_front)
-{
-	struct xe_frontbuffer *front =
-		container_of(_front, typeof(*front), base);
-
-	kref_get(&front->ref);
-}
-
-static void frontbuffer_release(struct kref *ref)
-{
-	struct xe_frontbuffer *front =
-		container_of(ref, typeof(*front), ref);
-
-	intel_frontbuffer_fini(&front->base);
-
-	drm_gem_object_put(front->obj);
-
-	kfree(front);
-}
-
-void intel_bo_frontbuffer_put(struct intel_frontbuffer *_front)
-{
-	struct xe_frontbuffer *front =
-		container_of(_front, typeof(*front), base);
-
-	kref_put(&front->ref, frontbuffer_release);
-}
-
-void intel_bo_frontbuffer_flush_for_display(struct intel_frontbuffer *front)
-{
-}
-
 void intel_bo_describe(struct seq_file *m, struct drm_gem_object *obj)
 {
 	/* FIXME */
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index c8dd3faa9b97..f1e1889a52d3 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -38,6 +38,7 @@
 #include "xe_display_pcode.h"
 #include "xe_display_rpm.h"
 #include "xe_dsb_buffer.h"
+#include "xe_frontbuffer.h"
 #include "xe_hdcp_gsc.h"
 #include "xe_initial_plane.h"
 #include "xe_module.h"
@@ -541,6 +542,7 @@ static const struct intel_display_irq_interface xe_display_irq_interface = {
 
 static const struct intel_display_parent_interface parent = {
 	.dsb = &xe_display_dsb_interface,
+	.frontbuffer = &xe_display_frontbuffer_interface,
 	.hdcp = &xe_display_hdcp_interface,
 	.initial_plane = &xe_display_initial_plane_interface,
 	.irq = &xe_display_irq_interface,
diff --git a/drivers/gpu/drm/xe/display/xe_frontbuffer.c b/drivers/gpu/drm/xe/display/xe_frontbuffer.c
new file mode 100644
index 000000000000..113fc017ee94
--- /dev/null
+++ b/drivers/gpu/drm/xe/display/xe_frontbuffer.c
@@ -0,0 +1,71 @@
+// SPDX-License-Identifier: MIT
+/* Copyright © 2026 Intel Corporation */
+
+#include <drm/drm_gem.h>
+#include <drm/intel/display_parent_interface.h>
+
+#include "intel_frontbuffer.h"
+#include "xe_frontbuffer.h"
+
+struct xe_frontbuffer {
+	struct intel_frontbuffer base;
+	struct drm_gem_object *obj;
+	struct kref ref;
+};
+
+static struct intel_frontbuffer *xe_frontbuffer_get(struct drm_gem_object *obj)
+{
+	struct xe_frontbuffer *front;
+
+	front = kmalloc_obj(*front);
+	if (!front)
+		return NULL;
+
+	intel_frontbuffer_init(&front->base, obj->dev);
+
+	kref_init(&front->ref);
+
+	drm_gem_object_get(obj);
+	front->obj = obj;
+
+	return &front->base;
+}
+
+static void xe_frontbuffer_ref(struct intel_frontbuffer *_front)
+{
+	struct xe_frontbuffer *front =
+		container_of(_front, typeof(*front), base);
+
+	kref_get(&front->ref);
+}
+
+static void frontbuffer_release(struct kref *ref)
+{
+	struct xe_frontbuffer *front =
+		container_of(ref, typeof(*front), ref);
+
+	intel_frontbuffer_fini(&front->base);
+
+	drm_gem_object_put(front->obj);
+
+	kfree(front);
+}
+
+static void xe_frontbuffer_put(struct intel_frontbuffer *_front)
+{
+	struct xe_frontbuffer *front =
+		container_of(_front, typeof(*front), base);
+
+	kref_put(&front->ref, frontbuffer_release);
+}
+
+static void xe_frontbuffer_flush_for_display(struct intel_frontbuffer *front)
+{
+}
+
+const struct intel_display_frontbuffer_interface xe_display_frontbuffer_interface = {
+	.get = xe_frontbuffer_get,
+	.ref = xe_frontbuffer_ref,
+	.put = xe_frontbuffer_put,
+	.flush_for_display = xe_frontbuffer_flush_for_display,
+};
diff --git a/drivers/gpu/drm/xe/display/xe_frontbuffer.h b/drivers/gpu/drm/xe/display/xe_frontbuffer.h
new file mode 100644
index 000000000000..6b4f59b42ade
--- /dev/null
+++ b/drivers/gpu/drm/xe/display/xe_frontbuffer.h
@@ -0,0 +1,9 @@
+/* SPDX-License-Identifier: MIT */
+/* Copyright © 2026 Intel Corporation */
+
+#ifndef _XE_FRONTBUFFER_H_
+#define _XE_FRONTBUFFER_H_
+
+extern const struct intel_display_frontbuffer_interface xe_display_frontbuffer_interface;
+
+#endif
diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/intel/display_parent_interface.h
index b439e513c0c5..5cdbce165b1f 100644
--- a/include/drm/intel/display_parent_interface.h
+++ b/include/drm/intel/display_parent_interface.h
@@ -17,6 +17,7 @@ struct drm_scanout_buffer;
 struct i915_vma;
 struct intel_dpt;
 struct intel_dsb_buffer;
+struct intel_frontbuffer;
 struct intel_hdcp_gsc_context;
 struct intel_initial_plane_config;
 struct intel_panic;
@@ -42,6 +43,13 @@ struct intel_display_dsb_interface {
 	void (*flush_map)(struct intel_dsb_buffer *dsb_buf);
 };
 
+struct intel_display_frontbuffer_interface {
+	struct intel_frontbuffer *(*get)(struct drm_gem_object *obj);
+	void (*ref)(struct intel_frontbuffer *front);
+	void (*put)(struct intel_frontbuffer *front);
+	void (*flush_for_display)(struct intel_frontbuffer *front);
+};
+
 struct intel_display_hdcp_interface {
 	ssize_t (*gsc_msg_send)(struct intel_hdcp_gsc_context *gsc_context,
 				void *msg_in, size_t msg_in_len,
@@ -168,6 +176,9 @@ struct intel_display_parent_interface {
 	/** @dsb: DSB buffer interface */
 	const struct intel_display_dsb_interface *dsb;
 
+	/** @frontbuffer: Frontbuffer interface */
+	const struct intel_display_frontbuffer_interface *frontbuffer;
+
 	/** @hdcp: HDCP GSC interface */
 	const struct intel_display_hdcp_interface *hdcp;
 
-- 
2.47.3

