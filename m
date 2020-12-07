Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B73102D088B
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Dec 2020 01:22:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 395F76E53E;
	Mon,  7 Dec 2020 00:22:12 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 071396E558
 for <Intel-gfx@lists.freedesktop.org>; Mon,  7 Dec 2020 00:22:10 +0000 (UTC)
IronPort-SDR: /1PW+Sm4oCaSsvhiPpgn3ls4yWrkBlfKQyBHp2EffZAxAPnkKsEfwrtCVfni5mc6Pco6+RIYSN
 /FIxyvfuiiaw==
X-IronPort-AV: E=McAfee;i="6000,8403,9827"; a="191889197"
X-IronPort-AV: E=Sophos;i="5.78,398,1599548400"; d="scan'208";a="191889197"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2020 16:22:08 -0800
IronPort-SDR: 27pYRzIecPxj0qTb0n8U2casnW3Basfp7Kg4I1tpg4WLjHH8/hxVPO50fiBF0XfMAu5i5hHA0D
 CGd3wr7hBLFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,398,1599548400"; d="scan'208";a="369586441"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by fmsmga002.fm.intel.com with ESMTP; 06 Dec 2020 16:22:08 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Sun,  6 Dec 2020 16:21:27 -0800
Message-Id: <20201207002134.13731-10-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201207002134.13731-1-sean.z.huang@intel.com>
References: <20201207002134.13731-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [RFC-v1 09/16] drm/i915/pxp: Func to send hardware
 session termination
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Implement the functions to allow PXP to send a GPU command, in
order to terminate the hardware session, so hardware can recycle
this session slot for the next usage.

Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
---
 drivers/gpu/drm/i915/pxp/intel_pxp_sm.c | 150 ++++++++++++++++++++++++
 1 file changed, 150 insertions(+)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
index 056f65fbaf4e..c88243e02a3c 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
@@ -3,13 +3,163 @@
  * Copyright(c) 2020, Intel Corporation. All rights reserved.
  */
 
+#include "gt/intel_gpu_commands.h"
+#include "gt/intel_gt.h"
 #include "gt/intel_context.h"
+#include "gt/intel_gt_buffer_pool.h"
 #include "gt/intel_engine_pm.h"
 
 #include "intel_pxp.h"
 #include "intel_pxp_sm.h"
 #include "intel_pxp_context.h"
 
+static struct i915_vma *pxp_get_batch(struct drm_i915_private *i915,
+				      struct intel_context *ce,
+				      struct intel_gt_buffer_pool_node *pool,
+				      u32 *cmd_buf, int cmd_size_in_dw)
+{
+	struct i915_vma *batch = ERR_PTR(-EINVAL);
+	u32 *cmd;
+
+	if (!ce || !ce->engine || !cmd_buf)
+		return ERR_PTR(-EINVAL);
+
+	if (cmd_size_in_dw * 4 > PAGE_SIZE) {
+		drm_err(&i915->drm, "Failed to %s, invalid cmd_size_id_dw=[%d]\n",
+			__func__, cmd_size_in_dw);
+		return ERR_PTR(-EINVAL);
+	}
+
+	cmd = i915_gem_object_pin_map(pool->obj, I915_MAP_FORCE_WC);
+	if (IS_ERR(cmd)) {
+		drm_err(&i915->drm, "Failed to i915_gem_object_pin_map()\n");
+		return ERR_PTR(-EINVAL);
+	}
+
+	memcpy(cmd, cmd_buf, cmd_size_in_dw * 4);
+
+	if (drm_debug_enabled(DRM_UT_DRIVER)) {
+		print_hex_dump(KERN_DEBUG, "cmd binaries:",
+			       DUMP_PREFIX_OFFSET, 4, 4, cmd, cmd_size_in_dw * 4, true);
+	}
+
+	i915_gem_object_unpin_map(pool->obj);
+
+	batch = i915_vma_instance(pool->obj, ce->vm, NULL);
+	if (IS_ERR(batch)) {
+		drm_err(&i915->drm, "Failed to i915_vma_instance()\n");
+		return batch;
+	}
+
+	return batch;
+}
+
+static int pxp_submit_cmd(struct drm_i915_private *i915, u32 *cmd, int cmd_size_in_dw)
+{
+	int err = -EINVAL;
+	struct i915_vma *batch;
+	struct i915_request *rq;
+	struct intel_context *ce = NULL;
+	bool is_engine_pm_get = false;
+	bool is_batch_vma_pin = false;
+	bool is_skip_req_on_err = false;
+	bool is_engine_get_pool = false;
+	struct intel_gt_buffer_pool_node *pool = NULL;
+	struct intel_gt *gt = NULL;
+
+	if (!i915 || !HAS_ENGINE(&i915->gt, VCS0) ||
+	    !i915->gt.engine[VCS0]->kernel_context) {
+		err = -EINVAL;
+		goto end;
+	}
+
+	if (!cmd || (cmd_size_in_dw * 4) > PAGE_SIZE) {
+		drm_err(&i915->drm, "Failed to %s bad params\n", __func__);
+		return -EINVAL;
+	}
+
+	gt = &i915->gt;
+	ce = i915->gt.engine[VCS0]->kernel_context;
+
+	intel_engine_pm_get(ce->engine);
+	is_engine_pm_get = true;
+
+	pool = intel_gt_get_buffer_pool(gt, PAGE_SIZE);
+	if (IS_ERR(pool)) {
+		drm_err(&i915->drm, "Failed to intel_engine_get_pool()\n");
+		goto end;
+	}
+	is_engine_get_pool = true;
+
+	batch = pxp_get_batch(i915, ce, pool, cmd, cmd_size_in_dw);
+	if (IS_ERR(batch)) {
+		drm_err(&i915->drm, "Failed to pxp_get_batch()\n");
+		goto end;
+	}
+
+	err = i915_vma_pin(batch, 0, 0, PIN_USER);
+	if (err) {
+		drm_err(&i915->drm, "Failed to i915_vma_pin()\n");
+		goto end;
+	}
+	is_batch_vma_pin = true;
+
+	rq = intel_context_create_request(ce);
+	if (IS_ERR(rq)) {
+		drm_err(&i915->drm, "Failed to intel_context_create_request()\n");
+		goto end;
+	}
+	is_skip_req_on_err = true;
+
+	err = intel_gt_buffer_pool_mark_active(pool, rq);
+	if (err) {
+		drm_err(&i915->drm, "Failed to intel_engine_pool_mark_active()\n");
+		goto end;
+	}
+
+	i915_vma_lock(batch);
+	err = i915_request_await_object(rq, batch->obj, false);
+	if (!err)
+		err = i915_vma_move_to_active(batch, rq, 0);
+	i915_vma_unlock(batch);
+	if (err) {
+		drm_err(&i915->drm, "Failed to i915_request_await_object()\n");
+		goto end;
+	}
+
+	if (ce->engine->emit_init_breadcrumb) {
+		err = ce->engine->emit_init_breadcrumb(rq);
+		if (err) {
+			drm_err(&i915->drm, "Failed to emit_init_breadcrumb()\n");
+			goto end;
+		}
+	}
+
+	err = ce->engine->emit_bb_start(rq, batch->node.start,
+		batch->node.size, 0);
+	if (err) {
+		drm_err(&i915->drm, "Failed to emit_bb_start()\n");
+		goto end;
+	}
+
+	i915_request_add(rq);
+
+end:
+	if (unlikely(err) && is_skip_req_on_err)
+		i915_request_set_error_once(rq, err);
+
+	if (is_batch_vma_pin)
+		i915_vma_unpin(batch);
+
+	if (is_engine_get_pool)
+		intel_gt_buffer_pool_put(pool);
+
+	if (is_engine_pm_get)
+		intel_engine_pm_put(ce->engine);
+
+	return err;
+}
+
 static int pxp_sm_reg_read(struct drm_i915_private *i915, u32 offset, u32 *regval)
 {
 	intel_wakeref_t wakeref;
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
