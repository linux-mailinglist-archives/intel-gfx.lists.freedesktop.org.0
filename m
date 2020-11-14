Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B79862B29E9
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Nov 2020 01:37:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 085B76E89A;
	Sat, 14 Nov 2020 00:37:23 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46AB06E8A1
 for <Intel-gfx@lists.freedesktop.org>; Sat, 14 Nov 2020 00:37:21 +0000 (UTC)
IronPort-SDR: CLm33zksa8oENCbW5bUukv0CLj0/Wou1la1wFsw8/bSzg6+gfV4lNmb0wVUW0ydg4WK/mNBvcq
 +Oq6A9lvjClw==
X-IronPort-AV: E=McAfee;i="6000,8403,9804"; a="167041287"
X-IronPort-AV: E=Sophos;i="5.77,477,1596524400"; d="scan'208";a="167041287"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2020 16:37:18 -0800
IronPort-SDR: BAxi9VjOeX9leSzsnKi8ZAu+MmkpbIaCbMkxrimx6Fr8PLHOYqyr9YN6j702X5L2VdA3V3HaXB
 1VfBavZV4QKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,477,1596524400"; d="scan'208";a="474848537"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by orsmga004.jf.intel.com with ESMTP; 13 Nov 2020 16:37:18 -0800
From: Sean Z Huang <sean.z.huang@intel.com>
To: sean.z.huang@intel.com,
	Intel-gfx@lists.freedesktop.org
Date: Fri, 13 Nov 2020 16:37:01 -0800
Message-Id: <20201114003716.4875-12-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201114003716.4875-1-sean.z.huang@intel.com>
References: <20201114003716.4875-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [PXP CLEAN PATCH v06 12/27] drm/i915/pxp: Func to send
 hardware session termination
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

From: "Huang, Sean Z" <sean.z.huang@intel.com>

Implement the functions to allow ring0 PXP to send a GPU command
in order to terminate the hardware session, so hardware can
recycle this session slot for the next usage.

Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
---
 drivers/gpu/drm/i915/pxp/intel_pxp_sm.c | 309 ++++++++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_sm.h |  16 ++
 2 files changed, 325 insertions(+)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
index eb77380367aa..0e1ce75f9ccd 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
@@ -3,13 +3,175 @@
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
+	drm_dbg(&i915->drm, ">>> %s cmd_buf=[%p] cmd_size_in_dw=[%d]\n", __func__, cmd_buf, cmd_size_in_dw);
+
+	if (!ce || !ce->engine || !cmd_buf) {
+		drm_dbg(&i915->drm, "Failed to %s due to nullptr\n", __func__);
+		goto end;
+	}
+
+	if (cmd_size_in_dw * 4 > PAGE_SIZE) {
+		drm_dbg(&i915->drm, "Failed to %s, invalid cmd_size_id_dw=[%d]\n",
+			__func__, cmd_size_in_dw);
+		goto end;
+	}
+
+	cmd = i915_gem_object_pin_map(pool->obj, I915_MAP_FORCE_WC);
+	if (IS_ERR(cmd)) {
+		drm_dbg(&i915->drm, "Failed to i915_gem_object_pin_map()\n ");
+		goto end;
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
+		drm_dbg(&i915->drm, "Failed to i915_vma_instance()\n ");
+		goto end;
+	}
+
+end:
+	drm_dbg(&i915->drm, "<<< %s: batch=[%p]\n", __func__, batch);
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
+	drm_dbg(&i915->drm, ">>> %s: cmd=[%p] cmd_size_in_dw=[%d]\n",
+		__func__, cmd, cmd_size_in_dw);
+
+	if (!i915 || !HAS_ENGINE(&i915->gt, VCS0) ||
+	    !i915->gt.engine[VCS0]->kernel_context) {
+		err = -EINVAL;
+		drm_dbg(&i915->drm, "Failed to %s bad params\n", __func__);
+		goto end;
+	}
+
+	if (!cmd || (cmd_size_in_dw * 4) > PAGE_SIZE) {
+		err = -EINVAL;
+		drm_dbg(&i915->drm, "Failed to %s bad params\n", __func__);
+		goto end;
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
+		drm_dbg(&i915->drm, "Failed to intel_engine_get_pool()\n");
+		goto end;
+	}
+	is_engine_get_pool = true;
+
+	batch = pxp_get_batch(i915, ce, pool, cmd, cmd_size_in_dw);
+	if (IS_ERR(batch)) {
+		drm_dbg(&i915->drm, "Failed to pxp_get_batch()\n");
+		goto end;
+	}
+
+	err = i915_vma_pin(batch, 0, 0, PIN_USER);
+	if (err) {
+		drm_dbg(&i915->drm, "Failed to i915_vma_pin()\n");
+		goto end;
+	}
+	is_batch_vma_pin = true;
+
+	rq = intel_context_create_request(ce);
+	if (IS_ERR(rq)) {
+		drm_dbg(&i915->drm, "Failed to intel_context_create_request()\n");
+		goto end;
+	}
+	is_skip_req_on_err = true;
+
+	err = intel_gt_buffer_pool_mark_active(pool, rq);
+	if (err) {
+		drm_dbg(&i915->drm, "Failed to intel_engine_pool_mark_active()\n");
+		goto end;
+	}
+
+	i915_vma_lock(batch);
+	err = i915_request_await_object(rq, batch->obj, false);
+	if (!err)
+		err = i915_vma_move_to_active(batch, rq, 0);
+	i915_vma_unlock(batch);
+	if (err) {
+		drm_dbg(&i915->drm, "Failed to i915_request_await_object()\n");
+		goto end;
+	}
+
+	if (ce->engine->emit_init_breadcrumb) {
+		err = ce->engine->emit_init_breadcrumb(rq);
+		if (err) {
+			drm_dbg(&i915->drm, "Failed to emit_init_breadcrumb()\n");
+			goto end;
+		}
+	}
+
+	err = ce->engine->emit_bb_start(rq, batch->node.start,
+		batch->node.size, 0);
+	if (err) {
+		drm_dbg(&i915->drm, "Failed to emit_bb_start()\n");
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
+	drm_dbg(&i915->drm, "<<< %s: err=[%d]\n", __func__, err);
+	return err;
+}
+
 int pxp_sm_reg_read(struct drm_i915_private *i915, u32 offset, u32 *regval)
 {
 	intel_wakeref_t wakeref;
@@ -584,6 +746,153 @@ int pxp_sm_mark_protected_session_in_play(struct drm_i915_private *i915, int ses
 	return ret;
 }
 
+static int add_pxp_prolog(struct drm_i915_private *i915, u32 *cmd, int session_type, int session_index)
+{
+	u32 increased_size_in_dw = 0;
+	u32 *cmd_prolog = cmd;
+	const int cmd_prolog_size_in_dw = 10;
+
+	if (!cmd)
+		return cmd_prolog_size_in_dw;
+
+	/* MFX_WAIT - stall until prior PXP and MFX/HCP/HUC objects are cmopleted */
+	*cmd_prolog++ = (MFX_WAIT | MFX_WAIT_DW0_PXP_SYNC_CONTROL_FLAG | MFX_WAIT_DW0_MFX_SYNC_CONTROL_FLAG);
+
+	/* MI_FLUSH_DW - pxp off */
+	*cmd_prolog++ = MI_FLUSH_DW;  /* DW0 */
+	*cmd_prolog++ = 0;            /* DW1 */
+	*cmd_prolog++ = 0;            /* DW2 */
+
+	/* MI_SET_APPID */
+	if (session_type == SESSION_TYPE_TYPE1) {
+		if (session_index >= MAX_TYPE1_SESSIONS) {
+			drm_dbg(&i915->drm, "Failed to %s invalid session_index\n", __func__);
+			goto end;
+		}
+
+		*cmd_prolog++ = (MI_SET_APPID | MI_SET_APPID_TYPE1_APP | MI_SET_APPID_SESSION_ID(session_index));
+	} else {
+		if (session_index >= MAX_TYPE0_SESSIONS) {
+			drm_dbg(&i915->drm, "Failed to %s invalid session_index\n", __func__);
+			goto end;
+		}
+
+		*cmd_prolog++ = (MI_SET_APPID | MI_SET_APPID_SESSION_ID(session_index));
+	}
+
+	/* MFX_WAIT */
+	*cmd_prolog++ = (MFX_WAIT | MFX_WAIT_DW0_PXP_SYNC_CONTROL_FLAG | MFX_WAIT_DW0_MFX_SYNC_CONTROL_FLAG);
+
+	/* MI_FLUSH_DW - pxp on */
+	*cmd_prolog++ = (MI_FLUSH_DW | MI_FLUSH_DW_DW0_PROTECTED_MEMORY_ENABLE); /* DW0 */
+	*cmd_prolog++ = 0;                                                       /* DW1 */
+	*cmd_prolog++ = 0;                                                       /* DW2 */
+
+	/* MFX_WAIT */
+	*cmd_prolog++ = (MFX_WAIT | MFX_WAIT_DW0_PXP_SYNC_CONTROL_FLAG | MFX_WAIT_DW0_MFX_SYNC_CONTROL_FLAG);
+
+	increased_size_in_dw = (cmd_prolog - cmd);
+end:
+	return increased_size_in_dw;
+}
+
+static int add_pxp_epilog(u32 *cmd)
+{
+	u32 increased_size_in_dw = 0;
+	u32 *cmd_epilog = cmd;
+	const int cmd_epilog_size_in_dw = 5;
+
+	if (!cmd)
+		return cmd_epilog_size_in_dw;
+
+	/* MI_FLUSH_DW - pxp off */
+	*cmd_epilog++ = MI_FLUSH_DW;  /* DW0 */
+	*cmd_epilog++ = 0;            /* DW1 */
+	*cmd_epilog++ = 0;            /* DW2 */
+
+	/* MFX_WAIT - stall until prior PXP and MFX/HCP/HUC objects are cmopleted */
+	*cmd_epilog++ = (MFX_WAIT | MFX_WAIT_DW0_PXP_SYNC_CONTROL_FLAG | MFX_WAIT_DW0_MFX_SYNC_CONTROL_FLAG);
+
+	/* MI_BATCH_BUFFER_END */
+	*cmd_epilog++ = MI_BATCH_BUFFER_END;
+
+	increased_size_in_dw = (cmd_epilog - cmd);
+	return increased_size_in_dw;
+}
+
+static int add_pxp_inline_termination(u32 *cmd)
+{
+	u32 increased_size_in_dw = 0;
+	u32 *cmd_termin = cmd;
+	const int cmd_termin_size_in_dw = 2;
+
+	if (!cmd)
+		return cmd_termin_size_in_dw;
+
+	/* CRYPTO_KEY_EXCHANGE - session inline termination */
+	*cmd_termin++ = CRYPTO_KEY_EXCHANGE; /* DW0 */
+	*cmd_termin++ = 0;                   /* DW1 */
+
+	increased_size_in_dw = (cmd_termin - cmd);
+	return increased_size_in_dw;
+}
+
+static int issue_hw_terminate_for_session(struct drm_i915_private *i915, int session_type,
+					  int session_index)
+{
+	u32 *cmd = NULL;
+	u32 *cmd_ptr = NULL;
+	int cmd_size_in_dw = 0;
+	int ret;
+
+	drm_dbg(&i915->drm, ">>> %s session_type=[%d] session_index=[%d]\n", __func__,
+		session_type, session_index);
+
+	if (!i915) {
+		ret = -EINVAL;
+		drm_dbg(&i915->drm, "Failed to %s due to bad params\n", __func__);
+		goto end;
+	}
+
+	cmd_size_in_dw += add_pxp_prolog(i915, NULL, session_type, session_index);
+	cmd_size_in_dw += add_pxp_inline_termination(NULL);
+	cmd_size_in_dw += add_pxp_epilog(NULL);
+
+	cmd = kzalloc(cmd_size_in_dw * 4, GFP_KERNEL);
+	if (!cmd) {
+		ret = -ENOMEM;
+		drm_dbg(&i915->drm, "Failed to kzalloc()\n");
+		goto end;
+	}
+
+	cmd_ptr = cmd;
+	cmd_ptr += add_pxp_prolog(i915, cmd_ptr, session_type, session_index);
+	cmd_ptr += add_pxp_inline_termination(cmd_ptr);
+	cmd_ptr += add_pxp_epilog(cmd_ptr);
+
+	if (cmd_size_in_dw != (cmd_ptr - cmd)) {
+		ret = -EINVAL;
+		drm_dbg(&i915->drm, "Failed to %s\n", __func__);
+		goto end;
+	}
+
+	if (drm_debug_enabled(DRM_UT_DRIVER)) {
+		print_hex_dump(KERN_DEBUG, "cmd binaries:",
+			       DUMP_PREFIX_OFFSET, 4, 4, cmd, cmd_size_in_dw * 4, true);
+	}
+
+	ret = pxp_submit_cmd(i915, cmd, cmd_size_in_dw);
+	if (ret) {
+		drm_dbg(&i915->drm, "Failed to pxp_submit_cmd()\n");
+		goto end;
+	}
+
+end:
+	kfree(cmd);
+	drm_dbg(&i915->drm, "<<< %s ret=[%d]\n", __func__, ret);
+	return ret;
+}
+
 int pxp_sm_set_kcr_init_reg(struct drm_i915_private *i915)
 {
 	int ret;
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
index 8f3f7e4a742b..2a6fbf40da04 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
@@ -22,6 +22,22 @@
 #define SESSION_TYPE_MASK BIT(7)
 #define SESSION_ID_MASK (BIT(7) - 1)
 
+/* PXP GPU command definitions */
+
+/* MI_SET_APPID */
+#define   MI_SET_APPID_TYPE1_APP        BIT(7)
+#define   MI_SET_APPID_SESSION_ID(x)    ((x) << 0)
+
+/* MI_FLUSH_DW */
+#define   MI_FLUSH_DW_DW0_PROTECTED_MEMORY_ENABLE   BIT(22)
+
+/* MI_WAIT */
+#define   MFX_WAIT_DW0_PXP_SYNC_CONTROL_FLAG BIT(9)
+#define   MFX_WAIT_DW0_MFX_SYNC_CONTROL_FLAG  BIT(8)
+
+/* CRYPTO_KEY_EXCHANGE */
+#define CRYPTO_KEY_EXCHANGE ((0x3 << 29) | (0x01609 << 16))
+
 enum pxp_session_types {
 	SESSION_TYPE_TYPE0 = 0,
 	SESSION_TYPE_TYPE1 = 1,
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
