Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AACFF2F911C
	for <lists+intel-gfx@lfdr.de>; Sun, 17 Jan 2021 07:46:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6621789FD1;
	Sun, 17 Jan 2021 06:46:07 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49BF789DF7
 for <Intel-gfx@lists.freedesktop.org>; Sun, 17 Jan 2021 06:45:54 +0000 (UTC)
IronPort-SDR: rEBj+3P/QwPB3j13kxBEPZfiPbhOPoroYjh0sXYs4tPABZXtfJYNX2fMop7/uObRS25w5rzkpj
 tD2Yqo3rRsGA==
X-IronPort-AV: E=McAfee;i="6000,8403,9866"; a="158475690"
X-IronPort-AV: E=Sophos;i="5.79,352,1602572400"; d="scan'208";a="158475690"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2021 22:45:53 -0800
IronPort-SDR: xE3LuX0Cn8lyku08izuOzU8fFm8n26jJqzpnHrPWamrILBgVGXxP5HEP6AZvNH4S9JbHbvp7iY
 ltB50J0v6C4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,352,1602572400"; d="scan'208";a="500346812"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by orsmga004.jf.intel.com with ESMTP; 16 Jan 2021 22:45:53 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Sat, 16 Jan 2021 22:45:42 -0800
Message-Id: <20210117064548.8822-8-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210117064548.8822-1-sean.z.huang@intel.com>
References: <20210106231223.8323-1-sean.z.huang@intel.com>
 <20210117064548.8822-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [RFC-v21 07/13] drm/i915/pxp: Destroy arb session upon
 teardown
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
Cc: kumar.gaurav@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Teardown is triggered when the display topology changes and no
long meets the secure playback requirement, and hardware trashes
all the encryption keys for display. So as a result, PXP should
handle such case and terminate the type0 sessions, which including
arb session

rev21:
    - Bug fixing, we need to set the PXP_GLOBAL_TERMINATE 0x320f8
      register after arb session termination
    - Remove enum pxp_session_types and enum pxp_protection_modes from
      single session patch series.

Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
---
 drivers/gpu/drm/i915/pxp/intel_pxp.c     |   3 +
 drivers/gpu/drm/i915/pxp/intel_pxp_arb.c |  86 ++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_arb.h |   1 +
 drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c | 109 +++++++++++++++++++++--
 drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h |  11 +--
 5 files changed, 200 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index 99cd93e12455..e6dd57ec73f5 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -29,6 +29,9 @@ static int intel_pxp_teardown_required_callback(struct intel_pxp *pxp)
 	mutex_lock(&pxp->ctx.mutex);
 
 	pxp->ctx.global_state_attacked = true;
+	pxp->ctx.flag_display_hm_surface_keys = false;
+
+	ret = intel_pxp_arb_terminate_session_with_global_terminate(pxp);
 
 	mutex_unlock(&pxp->ctx.mutex);
 
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_arb.c b/drivers/gpu/drm/i915/pxp/intel_pxp_arb.c
index dd98ca407e78..cde5ddd73da9 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_arb.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_arb.c
@@ -10,9 +10,13 @@
 #include "intel_pxp_arb.h"
 #include "intel_pxp.h"
 #include "intel_pxp_tee.h"
+#include "intel_pxp_cmd.h"
 
 #define GEN12_KCR_SIP _MMIO(0x32260) /* KCR hwdrm session in play 0-31 */
 
+/* PXP global terminate register for session termination */
+#define PXP_GLOBAL_TERMINATE _MMIO(0x320f8)
+
 /* Arbitrary session */
 #define ARB_SESSION_INDEX 0xf
 
@@ -120,3 +124,85 @@ int intel_pxp_arb_create_session(struct intel_pxp *pxp)
 
 	return ret;
 }
+
+static int intel_pxp_arb_session_terminate(struct intel_pxp *pxp)
+{
+	u32 *cmd = NULL;
+	u32 *cmd_ptr = NULL;
+	int cmd_size_in_dw = 0;
+	int ret;
+	struct intel_gt *gt = container_of(pxp, typeof(*gt), pxp);
+
+	/* Calculate how many bytes need to be alloc */
+	cmd_size_in_dw += intel_pxp_cmd_add_prolog(pxp, NULL, ARB_SESSION_INDEX);
+	cmd_size_in_dw += intel_pxp_cmd_add_inline_termination(NULL);
+	cmd_size_in_dw += intel_pxp_cmd_add_epilog(NULL);
+
+	cmd = kzalloc(cmd_size_in_dw * 4, GFP_KERNEL);
+	if (!cmd)
+		return -ENOMEM;
+
+	/* Program the command */
+	cmd_ptr = cmd;
+	cmd_ptr += intel_pxp_cmd_add_prolog(pxp, cmd_ptr, ARB_SESSION_INDEX);
+	cmd_ptr += intel_pxp_cmd_add_inline_termination(cmd_ptr);
+	cmd_ptr += intel_pxp_cmd_add_epilog(cmd_ptr);
+
+	if (cmd_size_in_dw != (cmd_ptr - cmd)) {
+		ret = -EINVAL;
+		drm_err(&gt->i915->drm, "Failed to %s\n", __func__);
+		goto end;
+	}
+
+	if (drm_debug_enabled(DRM_UT_DRIVER)) {
+		print_hex_dump(KERN_DEBUG, "global termination cmd binaries:",
+			       DUMP_PREFIX_OFFSET, 4, 4, cmd, cmd_size_in_dw * 4, true);
+	}
+
+	ret = intel_pxp_cmd_submit(pxp, cmd, cmd_size_in_dw);
+	if (ret) {
+		drm_err(&gt->i915->drm, "Failed to intel_pxp_cmd_submit()\n");
+		goto end;
+	}
+
+end:
+	kfree(cmd);
+	return ret;
+}
+
+/**
+ * intel_pxp_arb_terminate_session_with_global_terminate - Terminate the arb hw session.
+ * @pxp: pointer to pxp struct.
+ *
+ * This function is NOT intended to be called from the ioctl, and need to be protected by
+ * ctx.mutex to ensure no SIP change during the call.
+ *
+ * Return: status. 0 means terminate is successful.
+ */
+int intel_pxp_arb_terminate_session_with_global_terminate(struct intel_pxp *pxp)
+{
+	int ret;
+	struct intel_gt *gt = container_of(pxp, struct intel_gt, pxp);
+
+	lockdep_assert_held(&pxp->ctx.mutex);
+
+	/* terminate the hw sessions */
+	ret = intel_pxp_arb_session_terminate(pxp);
+	if (ret) {
+		drm_err(&gt->i915->drm, "Failed to intel_pxp_arb_session_terminate\n");
+		return ret;
+	}
+
+	pxp->ctx.arb_is_in_play = false;
+
+	ret = wait_arb_hw_sw_state(pxp);
+	if (ret) {
+		drm_err(&gt->i915->drm, "Failed to wait_arb_hw_sw_state\n");
+		return ret;
+	}
+
+	intel_uncore_write(gt->uncore, PXP_GLOBAL_TERMINATE, 1);
+
+	return ret;
+}
+
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_arb.h b/drivers/gpu/drm/i915/pxp/intel_pxp_arb.h
index 2196153dd879..6b0622e8ba93 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_arb.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_arb.h
@@ -11,6 +11,7 @@
 struct intel_pxp;
 
 int intel_pxp_arb_create_session(struct intel_pxp *pxp);
+int intel_pxp_arb_terminate_session_with_global_terminate(struct intel_pxp *pxp);
 bool intel_pxp_arb_session_is_in_play(struct intel_pxp *pxp);
 
 #endif /* __INTEL_PXP_ARB_H__ */
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
index 6898b8826302..6a0fe50c1aeb 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
@@ -5,13 +5,29 @@
 
 #include "intel_pxp_cmd.h"
 #include "i915_drv.h"
+#include "gt/intel_gpu_commands.h"
 #include "gt/intel_context.h"
 #include "gt/intel_engine_pm.h"
 
-struct i915_vma *intel_pxp_cmd_get_batch(struct intel_pxp *pxp,
-					 struct intel_context *ce,
-					 struct intel_gt_buffer_pool_node *pool,
-					 u32 *cmd_buf, int cmd_size_in_dw)
+/* PXP GPU command definitions */
+
+/* MI_SET_APPID */
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
+static struct i915_vma *intel_pxp_cmd_get_batch(struct intel_pxp *pxp,
+						struct intel_context *ce,
+						struct intel_gt_buffer_pool_node *pool,
+						u32 *cmd_buf, int cmd_size_in_dw)
 {
 	struct i915_vma *batch = ERR_PTR(-EINVAL);
 	struct intel_gt *gt = container_of(pxp, struct intel_gt, pxp);
@@ -46,7 +62,8 @@ struct i915_vma *intel_pxp_cmd_get_batch(struct intel_pxp *pxp,
 	return batch;
 }
 
-int intel_pxp_cmd_submit(struct intel_pxp *pxp, u32 *cmd, int cmd_size_in_dw)
+int intel_pxp_cmd_submit(struct intel_pxp *pxp, u32 *cmd,
+			 int cmd_size_in_dw)
 {
 	int err = -EINVAL;
 	struct i915_vma *batch;
@@ -122,3 +139,85 @@ int intel_pxp_cmd_submit(struct intel_pxp *pxp, u32 *cmd, int cmd_size_in_dw)
 
 	return err;
 }
+
+int intel_pxp_cmd_add_prolog(struct intel_pxp *pxp, u32 *cmd,
+			     int session_index)
+{
+	u32 increased_size_in_dw = 0;
+	u32 *cmd_prolog = cmd;
+	const int cmd_prolog_size_in_dw = 10;
+
+	if (!cmd)
+		return cmd_prolog_size_in_dw;
+
+	/* MFX_WAIT - stall until prior PXP and MFX/HCP/HUC objects are cmopleted */
+	*cmd_prolog++ = (MFX_WAIT | MFX_WAIT_DW0_PXP_SYNC_CONTROL_FLAG |
+			 MFX_WAIT_DW0_MFX_SYNC_CONTROL_FLAG);
+
+	/* MI_FLUSH_DW - pxp off */
+	*cmd_prolog++ = MI_FLUSH_DW;  /* DW0 */
+	*cmd_prolog++ = 0;            /* DW1 */
+	*cmd_prolog++ = 0;            /* DW2 */
+
+	/* MI_SET_APPID */
+	*cmd_prolog++ = (MI_SET_APPID | MI_SET_APPID_SESSION_ID(session_index));
+
+	/* MFX_WAIT */
+	*cmd_prolog++ = (MFX_WAIT | MFX_WAIT_DW0_PXP_SYNC_CONTROL_FLAG |
+			 MFX_WAIT_DW0_MFX_SYNC_CONTROL_FLAG);
+
+	/* MI_FLUSH_DW - pxp on */
+	*cmd_prolog++ = (MI_FLUSH_DW | MI_FLUSH_DW_DW0_PROTECTED_MEMORY_ENABLE); /* DW0 */
+	*cmd_prolog++ = 0;                                                       /* DW1 */
+	*cmd_prolog++ = 0;                                                       /* DW2 */
+
+	/* MFX_WAIT */
+	*cmd_prolog++ = (MFX_WAIT | MFX_WAIT_DW0_PXP_SYNC_CONTROL_FLAG |
+			 MFX_WAIT_DW0_MFX_SYNC_CONTROL_FLAG);
+
+	increased_size_in_dw = (cmd_prolog - cmd);
+
+	return increased_size_in_dw;
+}
+
+int intel_pxp_cmd_add_epilog(u32 *cmd)
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
+	*cmd_epilog++ = (MFX_WAIT | MFX_WAIT_DW0_PXP_SYNC_CONTROL_FLAG |
+			 MFX_WAIT_DW0_MFX_SYNC_CONTROL_FLAG);
+
+	/* MI_BATCH_BUFFER_END */
+	*cmd_epilog++ = MI_BATCH_BUFFER_END;
+
+	increased_size_in_dw = (cmd_epilog - cmd);
+	return increased_size_in_dw;
+}
+
+int intel_pxp_cmd_add_inline_termination(u32 *cmd)
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
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h
index d04463962421..efd26e4987a4 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h
@@ -9,10 +9,11 @@
 #include "gt/intel_gt_buffer_pool.h"
 #include "intel_pxp.h"
 
-struct i915_vma *intel_pxp_cmd_get_batch(struct intel_pxp *pxp,
-					 struct intel_context *ce,
-					 struct intel_gt_buffer_pool_node *pool,
-					 u32 *cmd_buf, int cmd_size_in_dw);
+int intel_pxp_cmd_submit(struct intel_pxp *pxp, u32 *cmd,
+			 int cmd_size_in_dw);
+int intel_pxp_cmd_add_prolog(struct intel_pxp *pxp, u32 *cmd,
+			     int session_index);
+int intel_pxp_cmd_add_epilog(u32 *cmd);
+int intel_pxp_cmd_add_inline_termination(u32 *cmd);
 
-int intel_pxp_cmd_submit(struct intel_pxp *pxp, u32 *cmd, int cmd_size_in_dw);
 #endif /* __INTEL_PXP_SM_H__ */
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
