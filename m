Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2447B636D31
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 23:32:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F04110E65B;
	Wed, 23 Nov 2022 22:32:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE51F10E654
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 22:31:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669242701; x=1700778701;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=WyfDOr600m1RGX7lOCGjlX04ktu4blLPTFArHQixwKg=;
 b=ebzOq2dRszvF9igufVxSYB7ASr5qrzZfupPA+/FQEf+n3eHyMJpjPs+X
 YPfnj9qdq4Ch0+RbOB7I4abkIBsJOSp0hHYeZibZ+uDB3BLhMJBdLVfIz
 UrdwoirG7cn7PgBnNXJatROp20WNnZs/+k1OhLwWYDJPY9Z8RZnXnaUoB
 FzHynNZDZ0aWtIUdmcDk/3CUMyfFaBnhd/csoWpgG526IP7jwtj2HKJaE
 gKYrswRKSUDn7IUqY8CHX0FRoIlUJrK67SceGafClmNNoEfDdpmuksi9N
 kFZwk9A4Q6KmGXMcJMKRG6tn/3URGBVNEaW6GQhQM7fyGz6V3E7jylOeE Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="293875380"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="293875380"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 14:31:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="784404454"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="784404454"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga001.fm.intel.com with ESMTP; 23 Nov 2022 14:31:40 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Nov 2022 14:34:07 -0800
Message-Id: <20221123223410.2846296-5-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221123223410.2846296-1-alan.previn.teres.alexis@intel.com>
References: <20221123223410.2846296-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 4/7] drm/i915/pxp: Separate tee-link front end
 interfaces from backend implementation
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

Separate tee-link front end interfaces from backend implementation.
Duplicate intel_pxp_tee to intel_pxp_tee_mei keep the front end side
(like populating the backend hooks) in the former while keeping the
mei backend (like send_message) in the _mei variant.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/Makefile                |   1 +
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c     | 329 +-----------------
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.h     |  16 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_tee_mei.c | 334 +++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_tee_mei.h |  13 +
 5 files changed, 359 insertions(+), 334 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_tee_mei.c
 create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_tee_mei.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 01974b82d205..6ed45d9145e8 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -319,6 +319,7 @@ i915-y += i915_perf.o
 i915-y += \
 	pxp/intel_pxp.o \
 	pxp/intel_pxp_tee.o \
+	pxp/intel_pxp_tee_mei.o \
 	pxp/intel_pxp_huc.o
 
 i915-$(CONFIG_DRM_I915_PXP) += \
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
index fa41f4224333..034e2eee5075 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
@@ -3,322 +3,10 @@
  * Copyright(c) 2020 Intel Corporation.
  */
 
-#include <linux/component.h>
-
-#include <drm/i915_pxp_tee_interface.h>
-#include <drm/i915_component.h>
-
-#include "gem/i915_gem_lmem.h"
-
 #include "i915_drv.h"
 #include "intel_pxp.h"
-#include "intel_pxp_session.h"
 #include "intel_pxp_tee.h"
-#include "intel_pxp_cmd_interface_42.h"
-#include "intel_pxp_huc.h"
-
-static inline struct intel_pxp *i915_dev_to_pxp(struct device *i915_kdev)
-{
-	struct drm_i915_private *i915 = kdev_to_i915(i915_kdev);
-	struct intel_gt *gt = intel_pxp_get_owning_gt(i915);
-
-	if (!gt)
-		return NULL;
-
-	return &gt->pxp;
-}
-
-static int mei_tee_io_message(struct intel_pxp *pxp,
-			      void *msg_in, size_t msg_in_size,
-			      void *msg_out, size_t msg_out_max_size,
-			      size_t *msg_out_size)
-{
-	struct drm_i915_private *i915 = pxp_to_gt(pxp)->i915;
-	struct i915_pxp_component *pxp_component = pxp->pxp_component;
-	int ret = 0;
-
-	mutex_lock(&pxp->tee_mutex);
-
-	/*
-	 * The binding of the component is asynchronous from i915 probe, so we
-	 * can't be sure it has happened.
-	 */
-	if (!pxp_component) {
-		ret = -ENODEV;
-		goto unlock;
-	}
-
-	ret = pxp_component->ops->send(pxp_component->tee_dev, msg_in, msg_in_size);
-	if (ret) {
-		drm_err(&i915->drm, "Failed to send PXP TEE message\n");
-		goto unlock;
-	}
-
-	ret = pxp_component->ops->recv(pxp_component->tee_dev, msg_out, msg_out_max_size);
-	if (ret < 0) {
-		drm_err(&i915->drm, "Failed to receive PXP TEE message\n");
-		goto unlock;
-	}
-
-	if (ret > msg_out_max_size) {
-		drm_err(&i915->drm,
-			"Failed to receive PXP TEE message due to unexpected output size\n");
-		ret = -ENOSPC;
-		goto unlock;
-	}
-
-	if (msg_out_size)
-		*msg_out_size = ret;
-
-	ret = 0;
-unlock:
-	mutex_unlock(&pxp->tee_mutex);
-	return ret;
-}
-
-static int mei_tee_gsc_stream_message(struct intel_pxp *pxp,
-				      void *msg_in, size_t msg_in_size,
-				      void *msg_out, size_t msg_out_max_size,
-				      size_t *msg_out_size)
-{
-	/* TODO: for bigger objects we need to use a sg of 4k pages */
-	const size_t max_msg_size = PAGE_SIZE;
-	struct drm_i915_private *i915 = pxp_to_gt(pxp)->i915;
-	struct i915_pxp_component *pxp_component = pxp->pxp_component;
-	unsigned int offset = 0;
-	struct scatterlist *sg;
-	int ret;
-
-	if (msg_in_size > max_msg_size || msg_out_max_size > max_msg_size)
-		return -ENOSPC;
-
-	mutex_lock(&pxp->tee_mutex);
-
-	if (unlikely(!pxp_component || !pxp_component->ops->gsc_command)) {
-		ret = -ENODEV;
-		goto unlock;
-	}
-
-	GEM_BUG_ON(!pxp->stream_cmd.obj);
-
-	sg = i915_gem_object_get_sg_dma(pxp->stream_cmd.obj, 0, &offset);
-
-	memcpy(pxp->stream_cmd.vaddr, msg_in, msg_in_size);
-
-	ret = pxp_component->ops->gsc_command(pxp_component->tee_dev, 0, 0,
-					      sg, msg_in_size, sg);
-	if (ret < 0)
-		drm_err(&i915->drm, "Failed to send PXP TEE gsc command\n");
-	else
-		memcpy(msg_out, pxp->stream_cmd.vaddr, msg_out_max_size);
-
-unlock:
-	mutex_unlock(&pxp->tee_mutex);
-	return ret;
-}
-
-/**
- * i915_pxp_tee_component_bind - bind function to pass the function pointers to pxp_tee
- * @i915_kdev: pointer to i915 kernel device
- * @tee_kdev: pointer to tee kernel device
- * @data: pointer to pxp_tee_master containing the function pointers
- *
- * This bind function is called during the system boot or resume from system sleep.
- *
- * Return: return 0 if successful.
- */
-static int i915_pxp_tee_component_bind(struct device *i915_kdev,
-				       struct device *tee_kdev, void *data)
-{
-	struct drm_i915_private *i915 = kdev_to_i915(i915_kdev);
-	struct intel_pxp *pxp = i915_dev_to_pxp(i915_kdev);
-	struct intel_uc *uc;
-	intel_wakeref_t wakeref;
-	int ret = 0;
-
-	if (!pxp) {
-		drm_warn(&i915->drm, "tee comp binding without a PXP-owner GT\n");
-		return -ENODEV;
-	}
-	uc = &pxp_to_gt(pxp)->uc;
-
-	mutex_lock(&pxp->tee_mutex);
-	pxp->pxp_component = data;
-	pxp->pxp_component->tee_dev = tee_kdev;
-	mutex_unlock(&pxp->tee_mutex);
-
-	if (intel_uc_uses_huc(uc) && intel_huc_is_loaded_by_gsc(&uc->huc)) {
-		with_intel_runtime_pm(&i915->runtime_pm, wakeref) {
-			/* load huc via pxp */
-			ret = intel_huc_fw_load_and_auth_via_gsc(&uc->huc);
-			if (ret < 0)
-				drm_err(&i915->drm, "failed to load huc via gsc %d\n", ret);
-		}
-	}
-
-	/* if we are suspended, the HW will be re-initialized on resume */
-	wakeref = intel_runtime_pm_get_if_in_use(&i915->runtime_pm);
-	if (!wakeref)
-		return 0;
-
-	/* the component is required to fully start the PXP HW */
-	if (intel_pxp_is_enabled_on_gt(pxp))
-		intel_pxp_init_hw(pxp);
-
-	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
-
-	return ret;
-}
-
-static void i915_pxp_tee_component_unbind(struct device *i915_kdev,
-					  struct device *tee_kdev, void *data)
-{
-	struct drm_i915_private *i915 = kdev_to_i915(i915_kdev);
-	struct intel_pxp *pxp = i915_dev_to_pxp(i915_kdev);
-	intel_wakeref_t wakeref;
-
-	if (intel_pxp_is_enabled_on_gt(pxp))
-		with_intel_runtime_pm_if_in_use(&i915->runtime_pm, wakeref)
-			intel_pxp_fini_hw(pxp);
-
-	mutex_lock(&pxp->tee_mutex);
-	pxp->pxp_component = NULL;
-	mutex_unlock(&pxp->tee_mutex);
-}
-
-static const struct component_ops i915_pxp_tee_component_ops = {
-	.bind   = i915_pxp_tee_component_bind,
-	.unbind = i915_pxp_tee_component_unbind,
-};
-
-static int alloc_streaming_command(struct intel_pxp *pxp)
-{
-	struct drm_i915_private *i915 = pxp_to_gt(pxp)->i915;
-	struct drm_i915_gem_object *obj = NULL;
-	void *cmd;
-	int err;
-
-	pxp->stream_cmd.obj = NULL;
-	pxp->stream_cmd.vaddr = NULL;
-
-	if (!IS_DGFX(i915))
-		return 0;
-
-	/* allocate lmem object of one page for PXP command memory and store it */
-	obj = i915_gem_object_create_lmem(i915, PAGE_SIZE, I915_BO_ALLOC_CONTIGUOUS);
-	if (IS_ERR(obj)) {
-		drm_err(&i915->drm, "Failed to allocate pxp streaming command!\n");
-		return PTR_ERR(obj);
-	}
-
-	err = i915_gem_object_pin_pages_unlocked(obj);
-	if (err) {
-		drm_err(&i915->drm, "Failed to pin gsc message page!\n");
-		goto out_put;
-	}
-
-	/* map the lmem into the virtual memory pointer */
-	cmd = i915_gem_object_pin_map_unlocked(obj, i915_coherent_map_type(i915, obj, true));
-	if (IS_ERR(cmd)) {
-		drm_err(&i915->drm, "Failed to map gsc message page!\n");
-		err = PTR_ERR(cmd);
-		goto out_unpin;
-	}
-
-	memset(cmd, 0, obj->base.size);
-
-	pxp->stream_cmd.obj = obj;
-	pxp->stream_cmd.vaddr = cmd;
-
-	return 0;
-
-out_unpin:
-	i915_gem_object_unpin_pages(obj);
-out_put:
-	i915_gem_object_put(obj);
-	return err;
-}
-
-static void free_streaming_command(struct intel_pxp *pxp)
-{
-	struct drm_i915_gem_object *obj = fetch_and_zero(&pxp->stream_cmd.obj);
-
-	if (!obj)
-		return;
-
-	i915_gem_object_unpin_map(obj);
-	i915_gem_object_unpin_pages(obj);
-	i915_gem_object_put(obj);
-}
-
-static int mei_tee_component_init(struct intel_pxp *pxp)
-{
-	int ret;
-	struct intel_gt *gt = pxp_to_gt(pxp);
-	struct drm_i915_private *i915 = gt->i915;
-
-	mutex_init(&pxp->tee_mutex);
-
-	ret = alloc_streaming_command(pxp);
-	if (ret)
-		return ret;
-
-	ret = component_add_typed(i915->drm.dev, &i915_pxp_tee_component_ops,
-				  I915_COMPONENT_PXP);
-	if (ret < 0) {
-		drm_err(&i915->drm, "Failed to add PXP component (%d)\n", ret);
-		goto out_free;
-	}
-
-	pxp->pxp_component_added = true;
-
-	return 0;
-
-out_free:
-	free_streaming_command(pxp);
-	return ret;
-}
-
-static void mei_tee_component_fini(struct intel_pxp *pxp)
-{
-	struct drm_i915_private *i915 = pxp_to_gt(pxp)->i915;
-
-	if (!pxp->pxp_component_added)
-		return;
-
-	component_del(i915->drm.dev, &i915_pxp_tee_component_ops);
-	pxp->pxp_component_added = false;
-
-	free_streaming_command(pxp);
-}
-
-static int mei_tee_create_session(struct intel_pxp *pxp,
-				  int session_id)
-{
-	struct drm_i915_private *i915 = pxp_to_gt(pxp)->i915;
-	struct pxp42_create_arb_in msg_in = {0};
-	struct pxp42_create_arb_out msg_out = {0};
-	int ret;
-
-	msg_in.header.api_version = PXP_APIVER(4, 2);
-	msg_in.header.command_id = PXP42_CMDID_INIT_SESSION;
-	msg_in.header.buffer_len = sizeof(msg_in) - sizeof(msg_in.header);
-	msg_in.protection_mode = PXP42_ARB_SESSION_MODE_HEAVY;
-	msg_in.session_id = session_id;
-
-	ret = mei_tee_io_message(pxp,
-				 &msg_in, sizeof(msg_in),
-				 &msg_out, sizeof(msg_out),
-				 NULL);
-
-	if (ret)
-		drm_err(&i915->drm, "Failed to send tee msg ret=[%d]\n", ret);
-	else if (msg_out.header.status != 0x0)
-		drm_warn(&i915->drm, "PXP firmware failed arb session init request ret=[0x%08x]\n",
-			 msg_out.header.status);
-
-	return ret;
-}
+#include "intel_pxp_tee_mei.h"
 
 int intel_pxp_teelink_create_session(struct intel_pxp *pxp,
 				     int arb_session_id)
@@ -355,19 +43,6 @@ int intel_pxp_teelink_send_message(struct intel_pxp *pxp,
 					  msg_out_max_size);
 }
 
-static void mei_tee_init_hooks(struct intel_pxp *pxp)
-{
-	struct drm_i915_private *i915 = pxp_to_gt(pxp)->i915;
-
-	pxp->tee_link.init = mei_tee_component_init;
-	pxp->tee_link.fini = mei_tee_component_fini;
-	pxp->tee_link.create_session = mei_tee_create_session;
-	if (IS_DG2(i915))
-		pxp->tee_link.send_message = mei_tee_gsc_stream_message;
-	else
-		pxp->tee_link.send_message = mei_tee_io_message;
-}
-
 static bool gt_supports_teelink_via_mei(struct intel_gt *gt)
 {
 	return (IS_ENABLED(CONFIG_INTEL_MEI_PXP) && !HAS_ENGINE(gt, GSC0));
@@ -381,7 +56,7 @@ int intel_pxp_teelink_init(struct intel_pxp *pxp)
 	if (!gt_supports_teelink_via_mei(gt))
 		return -ENODEV;
 
-	mei_tee_init_hooks(pxp);
+	intel_pxp_init_mei_tee_hooks(pxp);
 
 	if (pxp->tee_link.init)
 		ret = pxp->tee_link.init(pxp);
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h
index 4c1d38fa314a..6c09fa11bcca 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h
@@ -6,17 +6,19 @@
 #ifndef __INTEL_PXP_TEE_H__
 #define __INTEL_PXP_TEE_H__
 
-#include "intel_pxp.h"
+#include "linux/types.h"
 
-int intel_pxp_teelink_send_message(struct intel_pxp *pxp,
-				   void *msg_in, size_t msg_in_size,
-				   void *msg_out, size_t msg_out_size,
-				   size_t *msg_out_max_size);
+struct intel_pxp;
+
+int intel_pxp_teelink_init(struct intel_pxp *pxp);
+void intel_pxp_teelink_fini(struct intel_pxp *pxp);
 
 int intel_pxp_teelink_create_session(struct intel_pxp *pxp,
 				     int arb_session_id);
 
-int intel_pxp_teelink_init(struct intel_pxp *pxp);
-void intel_pxp_teelink_fini(struct intel_pxp *pxp);
+int intel_pxp_teelink_send_message(struct intel_pxp *pxp,
+				   void *msg_in, size_t msg_in_size,
+				   void *msg_out, size_t msg_out_size,
+				   size_t *msg_out_max_size);
 
 #endif /* __INTEL_PXP_TEE_H__ */
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee_mei.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee_mei.c
new file mode 100644
index 000000000000..cd54219ced06
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee_mei.c
@@ -0,0 +1,334 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright(c) 2020 Intel Corporation.
+ */
+
+#include <linux/component.h>
+
+#include <drm/i915_pxp_tee_interface.h>
+#include <drm/i915_component.h>
+
+#include "gem/i915_gem_lmem.h"
+
+#include "i915_drv.h"
+#include "intel_pxp.h"
+#include "intel_pxp_cmd_interface_42.h"
+#include "intel_pxp_huc.h"
+#include "intel_pxp_session.h"
+#include "intel_pxp_tee_mei.h"
+
+static inline struct intel_pxp *i915_dev_to_pxp(struct device *i915_kdev)
+{
+	struct drm_i915_private *i915 = kdev_to_i915(i915_kdev);
+	struct intel_gt *gt = intel_pxp_get_owning_gt(i915);
+
+	if (!gt)
+		return NULL;
+
+	return &gt->pxp;
+}
+
+static int mei_tee_io_message(struct intel_pxp *pxp,
+			      void *msg_in, size_t msg_in_size,
+			      void *msg_out, size_t msg_out_max_size,
+			      size_t *msg_out_size)
+{
+	struct drm_i915_private *i915 = pxp_to_gt(pxp)->i915;
+	struct i915_pxp_component *pxp_component = pxp->pxp_component;
+	int ret = 0;
+
+	mutex_lock(&pxp->tee_mutex);
+
+	/*
+	 * The binding of the component is asynchronous from i915 probe, so we
+	 * can't be sure it has happened.
+	 */
+	if (!pxp_component) {
+		ret = -ENODEV;
+		goto unlock;
+	}
+
+	ret = pxp_component->ops->send(pxp_component->tee_dev, msg_in, msg_in_size);
+	if (ret) {
+		drm_err(&i915->drm, "Failed to send PXP TEE message\n");
+		goto unlock;
+	}
+
+	ret = pxp_component->ops->recv(pxp_component->tee_dev, msg_out, msg_out_max_size);
+	if (ret < 0) {
+		drm_err(&i915->drm, "Failed to receive PXP TEE message\n");
+		goto unlock;
+	}
+
+	if (ret > msg_out_max_size) {
+		drm_err(&i915->drm,
+			"Failed to receive PXP TEE message due to unexpected output size\n");
+		ret = -ENOSPC;
+		goto unlock;
+	}
+
+	if (msg_out_size)
+		*msg_out_size = ret;
+
+	ret = 0;
+unlock:
+	mutex_unlock(&pxp->tee_mutex);
+	return ret;
+}
+
+static int mei_tee_gsc_stream_message(struct intel_pxp *pxp,
+				      void *msg_in, size_t msg_in_size,
+				      void *msg_out, size_t msg_out_max_size,
+				      size_t *msg_out_size)
+{
+	/* TODO: for bigger objects we need to use a sg of 4k pages */
+	const size_t max_msg_size = PAGE_SIZE;
+	struct drm_i915_private *i915 = pxp_to_gt(pxp)->i915;
+	struct i915_pxp_component *pxp_component = pxp->pxp_component;
+	unsigned int offset = 0;
+	struct scatterlist *sg;
+	int ret;
+
+	if (msg_in_size > max_msg_size || msg_out_max_size > max_msg_size)
+		return -ENOSPC;
+
+	mutex_lock(&pxp->tee_mutex);
+
+	if (unlikely(!pxp_component || !pxp_component->ops->gsc_command)) {
+		ret = -ENODEV;
+		goto unlock;
+	}
+
+	GEM_BUG_ON(!pxp->stream_cmd.obj);
+
+	sg = i915_gem_object_get_sg_dma(pxp->stream_cmd.obj, 0, &offset);
+
+	memcpy(pxp->stream_cmd.vaddr, msg_in, msg_in_size);
+
+	ret = pxp_component->ops->gsc_command(pxp_component->tee_dev, 0, 0,
+					      sg, msg_in_size, sg);
+	if (ret < 0)
+		drm_err(&i915->drm, "Failed to send PXP TEE gsc command\n");
+	else
+		memcpy(msg_out, pxp->stream_cmd.vaddr, msg_out_max_size);
+
+unlock:
+	mutex_unlock(&pxp->tee_mutex);
+	return ret;
+}
+
+/**
+ * i915_pxp_tee_component_bind - bind function to pass the function pointers to pxp_tee
+ * @i915_kdev: pointer to i915 kernel device
+ * @tee_kdev: pointer to tee kernel device
+ * @data: pointer to pxp_tee_master containing the function pointers
+ *
+ * This bind function is called during the system boot or resume from system sleep.
+ *
+ * Return: return 0 if successful.
+ */
+static int i915_pxp_tee_component_bind(struct device *i915_kdev,
+				       struct device *tee_kdev, void *data)
+{
+	struct drm_i915_private *i915 = kdev_to_i915(i915_kdev);
+	struct intel_pxp *pxp = i915_dev_to_pxp(i915_kdev);
+	struct intel_uc *uc;
+	intel_wakeref_t wakeref;
+	int ret = 0;
+
+	if (!pxp) {
+		drm_warn(&i915->drm, "tee comp binding without a PXP-owner GT\n");
+		return -ENODEV;
+	}
+	uc = &pxp_to_gt(pxp)->uc;
+
+	mutex_lock(&pxp->tee_mutex);
+	pxp->pxp_component = data;
+	pxp->pxp_component->tee_dev = tee_kdev;
+	mutex_unlock(&pxp->tee_mutex);
+
+	if (intel_uc_uses_huc(uc) && intel_huc_is_loaded_by_gsc(&uc->huc)) {
+		with_intel_runtime_pm(&i915->runtime_pm, wakeref) {
+			/* load huc via pxp */
+			ret = intel_huc_fw_load_and_auth_via_gsc(&uc->huc);
+			if (ret < 0)
+				drm_err(&i915->drm, "failed to load huc via gsc %d\n", ret);
+		}
+	}
+
+	/* if we are suspended, the HW will be re-initialized on resume */
+	wakeref = intel_runtime_pm_get_if_in_use(&i915->runtime_pm);
+	if (!wakeref)
+		return 0;
+
+	/* the component is required to fully start the PXP HW */
+	if (intel_pxp_is_enabled_on_gt(pxp))
+		intel_pxp_init_hw(pxp);
+
+	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
+
+	return ret;
+}
+
+static void i915_pxp_tee_component_unbind(struct device *i915_kdev,
+					  struct device *tee_kdev, void *data)
+{
+	struct drm_i915_private *i915 = kdev_to_i915(i915_kdev);
+	struct intel_pxp *pxp = i915_dev_to_pxp(i915_kdev);
+	intel_wakeref_t wakeref;
+
+	if (intel_pxp_is_enabled_on_gt(pxp))
+		with_intel_runtime_pm_if_in_use(&i915->runtime_pm, wakeref)
+			intel_pxp_fini_hw(pxp);
+
+	mutex_lock(&pxp->tee_mutex);
+	pxp->pxp_component = NULL;
+	mutex_unlock(&pxp->tee_mutex);
+}
+
+static const struct component_ops i915_pxp_tee_component_ops = {
+	.bind   = i915_pxp_tee_component_bind,
+	.unbind = i915_pxp_tee_component_unbind,
+};
+
+static int alloc_streaming_command(struct intel_pxp *pxp)
+{
+	struct drm_i915_private *i915 = pxp_to_gt(pxp)->i915;
+	struct drm_i915_gem_object *obj = NULL;
+	void *cmd;
+	int err;
+
+	pxp->stream_cmd.obj = NULL;
+	pxp->stream_cmd.vaddr = NULL;
+
+	if (!IS_DGFX(i915))
+		return 0;
+
+	/* allocate lmem object of one page for PXP command memory and store it */
+	obj = i915_gem_object_create_lmem(i915, PAGE_SIZE, I915_BO_ALLOC_CONTIGUOUS);
+	if (IS_ERR(obj)) {
+		drm_err(&i915->drm, "Failed to allocate pxp streaming command!\n");
+		return PTR_ERR(obj);
+	}
+
+	err = i915_gem_object_pin_pages_unlocked(obj);
+	if (err) {
+		drm_err(&i915->drm, "Failed to pin gsc message page!\n");
+		goto out_put;
+	}
+
+	/* map the lmem into the virtual memory pointer */
+	cmd = i915_gem_object_pin_map_unlocked(obj, i915_coherent_map_type(i915, obj, true));
+	if (IS_ERR(cmd)) {
+		drm_err(&i915->drm, "Failed to map gsc message page!\n");
+		err = PTR_ERR(cmd);
+		goto out_unpin;
+	}
+
+	memset(cmd, 0, obj->base.size);
+
+	pxp->stream_cmd.obj = obj;
+	pxp->stream_cmd.vaddr = cmd;
+
+	return 0;
+
+out_unpin:
+	i915_gem_object_unpin_pages(obj);
+out_put:
+	i915_gem_object_put(obj);
+	return err;
+}
+
+static void free_streaming_command(struct intel_pxp *pxp)
+{
+	struct drm_i915_gem_object *obj = fetch_and_zero(&pxp->stream_cmd.obj);
+
+	if (!obj)
+		return;
+
+	i915_gem_object_unpin_map(obj);
+	i915_gem_object_unpin_pages(obj);
+	i915_gem_object_put(obj);
+}
+
+static int mei_tee_component_init(struct intel_pxp *pxp)
+{
+	int ret;
+	struct intel_gt *gt = pxp_to_gt(pxp);
+	struct drm_i915_private *i915 = gt->i915;
+
+	mutex_init(&pxp->tee_mutex);
+
+	ret = alloc_streaming_command(pxp);
+	if (ret)
+		return ret;
+
+	ret = component_add_typed(i915->drm.dev, &i915_pxp_tee_component_ops,
+				  I915_COMPONENT_PXP);
+	if (ret < 0) {
+		drm_err(&i915->drm, "Failed to add PXP component (%d)\n", ret);
+		goto out_free;
+	}
+
+	pxp->pxp_component_added = true;
+
+	return 0;
+
+out_free:
+	free_streaming_command(pxp);
+	return ret;
+}
+
+static void mei_tee_component_fini(struct intel_pxp *pxp)
+{
+	struct drm_i915_private *i915 = pxp_to_gt(pxp)->i915;
+
+	if (!pxp->pxp_component_added)
+		return;
+
+	component_del(i915->drm.dev, &i915_pxp_tee_component_ops);
+	pxp->pxp_component_added = false;
+
+	free_streaming_command(pxp);
+}
+
+static int mei_tee_create_session(struct intel_pxp *pxp,
+				  int session_id)
+{
+	struct drm_i915_private *i915 = pxp_to_gt(pxp)->i915;
+	struct pxp42_create_arb_in msg_in = {0};
+	struct pxp42_create_arb_out msg_out = {0};
+	int ret;
+
+	msg_in.header.api_version = PXP_APIVER(4, 2);
+	msg_in.header.command_id = PXP42_CMDID_INIT_SESSION;
+	msg_in.header.buffer_len = sizeof(msg_in) - sizeof(msg_in.header);
+	msg_in.protection_mode = PXP42_ARB_SESSION_MODE_HEAVY;
+	msg_in.session_id = session_id;
+
+	ret = mei_tee_io_message(pxp,
+				 &msg_in, sizeof(msg_in),
+				 &msg_out, sizeof(msg_out),
+				 NULL);
+
+	if (ret)
+		drm_err(&i915->drm, "Failed to send tee msg ret=[%d]\n", ret);
+	else if (msg_out.header.status != 0x0)
+		drm_warn(&i915->drm, "PXP firmware failed arb session init request ret=[0x%08x]\n",
+			 msg_out.header.status);
+
+	return ret;
+}
+
+void intel_pxp_init_mei_tee_hooks(struct intel_pxp *pxp)
+{
+	struct drm_i915_private *i915 = pxp_to_gt(pxp)->i915;
+
+	pxp->tee_link.init = mei_tee_component_init;
+	pxp->tee_link.fini = mei_tee_component_fini;
+	pxp->tee_link.create_session = mei_tee_create_session;
+	if (IS_DG2(i915))
+		pxp->tee_link.send_message = mei_tee_gsc_stream_message;
+	else
+		pxp->tee_link.send_message = mei_tee_io_message;
+}
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee_mei.h b/drivers/gpu/drm/i915/pxp/intel_pxp_tee_mei.h
new file mode 100644
index 000000000000..e8d85ee5c698
--- /dev/null
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee_mei.h
@@ -0,0 +1,13 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright(c) 2020, Intel Corporation. All rights reserved.
+ */
+
+#ifndef __INTEL_PXP_TEE_MEI_H__
+#define __INTEL_PXP_TEE_MEI_H__
+
+struct intel_pxp;
+
+void intel_pxp_init_mei_tee_hooks(struct intel_pxp *pxp);
+
+#endif /* __INTEL_PXP_TEE_MEI_H__ */
-- 
2.34.1

