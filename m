Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DA9A92B3915
	for <lists+intel-gfx@lfdr.de>; Sun, 15 Nov 2020 21:24:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AF4F89FC8;
	Sun, 15 Nov 2020 20:23:53 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75A6A89F49
 for <Intel-gfx@lists.freedesktop.org>; Sun, 15 Nov 2020 20:23:49 +0000 (UTC)
IronPort-SDR: n0t9gUbEjjgZ9BJ88hj/T1j2c/kiWDnvWmOJ69iExHUSCPFGx8PtxEHw0Oycd2gg4iLqTR7T+V
 5ws924El9HMw==
X-IronPort-AV: E=McAfee;i="6000,8403,9806"; a="167165310"
X-IronPort-AV: E=Sophos;i="5.77,481,1596524400"; d="scan'208";a="167165310"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2020 12:23:48 -0800
IronPort-SDR: h17i/tappJnWhjFE8HqLrmJCrzcvP8TY2CHfPYaBTTnDNp4Wdwg/JeDyU9jKT69HrlXJf/x3/1
 ExZfyiLSK6tQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,481,1596524400"; d="scan'208";a="430005351"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by fmsmga001.fm.intel.com with ESMTP; 15 Nov 2020 12:23:47 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Sun, 15 Nov 2020 12:23:35 -0800
Message-Id: <20201115202347.29224-15-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201115202347.29224-1-sean.z.huang@intel.com>
References: <20201115202347.29224-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [PATCH 15/27] drm/i915/pxp: Destroy all type0 sessions
 upon teardown
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

Teardown is triggered when the display topology changes and no
long meets the secure playback requirement, and hardware trashes
all the encryption keys for display. So as a result, ring0 PXP
should handle such case and terminate all the type0 sessions.

Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
---
 drivers/gpu/drm/i915/pxp/intel_pxp.c    |   6 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_sm.c | 118 ++++++++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_sm.h |   1 +
 3 files changed, 124 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index bb99fbdb8e18..c9b6ac42b215 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -127,6 +127,8 @@ static void intel_pxp_mask_irq(struct intel_gt *gt, u32 mask)
 
 static int intel_pxp_teardown_required_callback(struct drm_i915_private *i915)
 {
+	int ret;
+
 	drm_dbg(&i915->drm, "%s was called\n", __func__);
 
 	mutex_lock(&i915->pxp.r0ctx->ctx_mutex);
@@ -134,11 +136,13 @@ static int intel_pxp_teardown_required_callback(struct drm_i915_private *i915)
 	i915->pxp.r0ctx->global_state_attacked = true;
 	i915->pxp.r0ctx->flag_display_hm_surface_keys = false;
 
+	ret = intel_pxp_sm_terminate_all_active_sessions(i915, SESSION_TYPE_TYPE0);
+
 	intel_pxp_destroy_r3ctx_list(i915);
 
 	mutex_unlock(&i915->pxp.r0ctx->ctx_mutex);
 
-	return 0;
+	return ret;
 }
 
 static int intel_pxp_global_terminate_complete_callback(struct drm_i915_private *i915)
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
index 2111549aca8f..89c32b06c52e 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
@@ -876,6 +876,73 @@ static int issue_hw_terminate_for_session(struct drm_i915_private *i915, int ses
 	return ret;
 }
 
+static int terminate_all_hw_sessions_with_global_termination(struct drm_i915_private *i915,
+							     int session_type)
+{
+	u32 *cmd = NULL;
+	u32 *cmd_ptr = NULL;
+	int cmd_size_in_dw = 0;
+	int ret;
+	int session_index;
+	const int session_num_max = pxp_session_max(session_type);
+
+	drm_dbg(&i915->drm, ">>> %s session_type=[%d]\n", __func__, session_type);
+
+	if (!i915) {
+		ret = -EINVAL;
+		drm_dbg(&i915->drm, "Failed to %s due to bad params\n", __func__);
+		goto end;
+	}
+
+	/* Calculate how many bytes need to be alloc */
+	for (session_index = 0; session_index < session_num_max; session_index++) {
+		if (is_hw_session_in_play(i915, session_type, session_index)) {
+			cmd_size_in_dw += add_pxp_prolog(i915, NULL, session_type, session_index);
+			cmd_size_in_dw += add_pxp_inline_termination(NULL);
+		}
+	}
+	cmd_size_in_dw += add_pxp_epilog(NULL);
+
+	cmd = kzalloc(cmd_size_in_dw * 4, GFP_KERNEL);
+	if (!cmd) {
+		ret = -ENOMEM;
+		drm_dbg(&i915->drm, "Failed to kzalloc()\n");
+		goto end;
+	}
+
+	/* Program the command */
+	cmd_ptr = cmd;
+	for (session_index = 0; session_index < session_num_max; session_index++) {
+		if (is_hw_session_in_play(i915, session_type, session_index)) {
+			cmd_ptr += add_pxp_prolog(i915, cmd_ptr, session_type, session_index);
+			cmd_ptr += add_pxp_inline_termination(cmd_ptr);
+		}
+	}
+	cmd_ptr += add_pxp_epilog(cmd_ptr);
+
+	if (cmd_size_in_dw != (cmd_ptr - cmd)) {
+		ret = -EINVAL;
+		drm_dbg(&i915->drm, "Failed to %s\n", __func__);
+		goto end;
+	}
+
+	if (drm_debug_enabled(DRM_UT_DRIVER)) {
+		print_hex_dump(KERN_DEBUG, "global termination cmd binaries:",
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
 /**
  * terminate_protected_session - To terminate an active HW session and free its entry.
  * @i915: i915 device handle.
@@ -1059,6 +1126,57 @@ int pxp_sm_terminate_protected_session_unsafe(struct drm_i915_private *i915, int
 	return ret;
 }
 
+static int intel_pxp_sm_destroy_all_sw_sessions(struct drm_i915_private *i915, int session_type)
+{
+	int ret = 0;
+	struct pxp_protected_session *current_session, *n;
+
+	list_for_each_entry_safe(current_session, n, pxp_session_list(i915, session_type), session_list) {
+		ret = pxp_set_pxp_tag(i915, session_type, current_session->session_index, PROTECTION_MODE_NONE);
+		if (ret)
+			drm_dbg(&i915->drm, "Failed to pxp_set_pxp_tag()\n");
+
+		list_del(&current_session->session_list);
+		kfree(current_session);
+	}
+
+	return ret;
+}
+
+/**
+ * intel_pxp_sm_terminate_all_active_sessions - Terminate all active HW sessions and their entries.
+ * @i915: i915 device handle.
+ * @session_type: Type of the sessions to be terminated.
+ *                One of enum pxp_session_types.
+ *
+ * This function is NOT intended to be called from the ioctl, and need to be protected by
+ * ctx_mutex to ensure no SIP change during the call.
+ *
+ * Return: status. 0 means terminate is successful.
+ */
+int intel_pxp_sm_terminate_all_active_sessions(struct drm_i915_private *i915, int session_type)
+{
+	int ret;
+
+	lockdep_assert_held(&i915->pxp.r0ctx->ctx_mutex);
+
+	/* terminate the hw sessions */
+	ret = terminate_all_hw_sessions_with_global_termination(i915, session_type);
+	if (ret) {
+		drm_dbg(&i915->drm, "Failed to terminate_all_hw_sessions_with_global_termination\n");
+		goto end;
+	}
+
+	ret = intel_pxp_sm_destroy_all_sw_sessions(i915, session_type);
+	if (ret) {
+		drm_dbg(&i915->drm, "Failed to intel_pxp_sm_destroy_all_sw_sessions\n");
+		goto end;
+	}
+
+end:
+	return ret;
+}
+
 int pxp_sm_ioctl_query_pxp_tag(struct drm_i915_private *i915, u32 *session_is_alive, u32 *pxp_tag)
 {
 	int session_type = 0;
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
index 859f3c1f8c6e..955182a90bfe 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
@@ -108,6 +108,7 @@ int pxp_sm_terminate_protected_session_safe(struct drm_i915_private *i915, int c
 					    int session_type, int session_id);
 int pxp_sm_terminate_protected_session_unsafe(struct drm_i915_private *i915, int session_type,
 					      int session_id);
+int intel_pxp_sm_terminate_all_active_sessions(struct drm_i915_private *i915, int session_type);
 int pxp_sm_ioctl_query_pxp_tag(struct drm_i915_private *i915, u32 *session_is_alive, u32 *pxp_tag);
 int pxp_sm_set_kcr_init_reg(struct drm_i915_private *i915);
 u32 intel_pxp_get_pxp_tag(struct drm_i915_private *i915, int session_idx,
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
