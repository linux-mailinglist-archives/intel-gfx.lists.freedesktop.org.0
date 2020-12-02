Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A865F2CB3C4
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Dec 2020 05:04:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D1A46EA11;
	Wed,  2 Dec 2020 04:04:32 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B49736E9FB
 for <Intel-gfx@lists.freedesktop.org>; Wed,  2 Dec 2020 04:04:18 +0000 (UTC)
IronPort-SDR: fzmGAmZn9LAStActU0J6wvm9VkbvFyX/8QL7N5VtKIOXlk3gPesSAANsxUeboCs+2AatteuAmD
 wdaGAApzJ+GA==
X-IronPort-AV: E=McAfee;i="6000,8403,9822"; a="172165855"
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="172165855"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 20:04:17 -0800
IronPort-SDR: KiQKKsKmycsH2X/2cyx0T7dkm0NatnK6Uy8meA0ure6itXss/CqjeSsiJ8CyxcOZOLrS84ActO
 OnETCZybtGoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="549869265"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by orsmga005.jf.intel.com with ESMTP; 01 Dec 2020 20:04:17 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Tue,  1 Dec 2020 20:03:34 -0800
Message-Id: <20201202040341.31981-20-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201202040341.31981-1-sean.z.huang@intel.com>
References: <20201202040341.31981-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [RFC-v4 19/26] drm/i915/pxp: Create the arbitrary
 session after boot
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

Create the arbitrary session, with the fixed session id 0xf, after
system boot, for the case that application allocates the protected
buffer without establishing any protection session. Because the
hardware requires at least one alive session for protected buffer
creation.  This arbitrary session needs to be re-created after
teardown or power event because hardware encryption key won't be
valid after such cases.

Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
---
 drivers/gpu/drm/i915/pxp/intel_pxp.c     | 47 +++++++++++++++++++++++-
 drivers/gpu/drm/i915/pxp/intel_pxp.h     |  7 ++++
 drivers/gpu/drm/i915/pxp/intel_pxp_sm.c  | 27 ++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_sm.h  |  6 +++
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c | 34 +++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.h |  6 +++
 6 files changed, 126 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index d4f1f7b1c568..766797b7854e 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -126,6 +126,43 @@ void intel_pxp_close(struct drm_i915_private *i915, struct drm_file *drmfile)
 	mutex_unlock(&i915->pxp.ctx->ctx_mutex);
 }
 
+int intel_pxp_create_arb_session(struct drm_i915_private *i915)
+{
+	struct pxp_tag pxptag;
+	int ret;
+
+	lockdep_assert_held(&i915->pxp.ctx->ctx_mutex);
+
+	if (i915->pxp.ctx->flag_display_hm_surface_keys) {
+		drm_err(&i915->drm, "%s: arb session is alive so skipping the creation\n",
+			__func__);
+		return 0;
+	}
+
+	ret = intel_pxp_sm_reserve_arb_session(i915, &pxptag.value);
+	if (ret) {
+		drm_err(&i915->drm, "Failed to reserve session\n");
+		goto end;
+	}
+
+	ret = intel_pxp_tee_cmd_create_arb_session(i915);
+	if (ret) {
+		drm_err(&i915->drm, "Failed to send tee cmd for arb session creation\n");
+		goto end;
+	}
+
+	ret = pxp_sm_mark_protected_session_in_play(i915, ARB_SESSION_TYPE, pxptag.session_id);
+	if (ret) {
+		drm_err(&i915->drm, "Failed to mark session status in play\n");
+		goto end;
+	}
+
+	i915->pxp.ctx->flag_display_hm_surface_keys = true;
+
+end:
+	return ret;
+}
+
 static void intel_pxp_write_irq_mask_reg(struct drm_i915_private *i915, u32 mask)
 {
 	/* crypto mask is in bit31-16 (Engine1 Interrupt Mask) */
@@ -170,9 +207,17 @@ static int intel_pxp_global_terminate_complete_callback(struct drm_i915_private
 
 	mutex_lock(&i915->pxp.ctx->ctx_mutex);
 
-	if (i915->pxp.ctx->global_state_attacked)
+	if (i915->pxp.ctx->global_state_attacked) {
 		i915->pxp.ctx->global_state_attacked = false;
 
+		/* Re-create the arb session after teardown handle complete */
+		ret = intel_pxp_create_arb_session(i915);
+		if (ret) {
+			drm_err(&i915->drm, "Failed to create arb session\n");
+			goto end;
+		}
+	}
+end:
 	mutex_unlock(&i915->pxp.ctx->ctx_mutex);
 
 	return ret;
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
index 5b292ff2f4a9..818e79e9caca 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
@@ -108,6 +108,8 @@ struct drm_i915_private;
 #ifdef CONFIG_DRM_I915_PXP
 int i915_pxp_ops_ioctl(struct drm_device *dev, void *data, struct drm_file *drmfile);
 void intel_pxp_close(struct drm_i915_private *i915, struct drm_file *drmfile);
+int intel_pxp_create_arb_session(struct drm_i915_private *i915);
+
 void intel_pxp_irq_handler(struct intel_gt *gt, u16 iir);
 int i915_pxp_teardown_required_callback(struct drm_i915_private *i915);
 int i915_pxp_global_terminate_complete_callback(struct drm_i915_private *i915);
@@ -124,6 +126,11 @@ static inline void intel_pxp_close(struct drm_i915_private *i915, struct drm_fil
 {
 }
 
+static inline int intel_pxp_create_arb_session(struct drm_i915_private *i915)
+{
+	return 0;
+};
+
 static inline void intel_pxp_irq_handler(struct intel_gt *gt, u16 iir)
 {
 }
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
index 6ff347b7b72b..31eaec25a85f 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
@@ -607,6 +607,33 @@ int intel_pxp_sm_reserve_session(struct drm_i915_private *i915, struct drm_file
 	return ret;
 }
 
+int intel_pxp_sm_reserve_arb_session(struct drm_i915_private *i915, u32 *pxp_tag)
+{
+	int ret;
+
+	lockdep_assert_held(&i915->pxp.ctx->ctx_mutex);
+
+	if (!pxp_tag || !i915)
+		return -EINVAL;
+
+	ret = sync_hw_sw_state(i915, ARB_SESSION_INDEX, ARB_SESSION_TYPE);
+	if (unlikely(ret))
+		goto end;
+
+	ret = create_new_session_entry(i915, NULL, 0, ARB_SESSION_TYPE,
+				       ARB_PROTECTION_MODE, ARB_SESSION_INDEX);
+	if (unlikely(ret))
+		goto end;
+
+	ret = pxp_set_pxp_tag(i915, ARB_SESSION_TYPE, ARB_SESSION_INDEX, ARB_PROTECTION_MODE);
+
+end:
+	if (ret == 0)
+		*pxp_tag = intel_pxp_get_pxp_tag(i915, ARB_SESSION_INDEX, ARB_SESSION_TYPE, NULL);
+
+	return ret;
+}
+
 /**
  * pxp_sm_mark_protected_session_in_play - To put an reserved protected session to "in_play" state
  * @i915: i915 device handle.
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
index 143f024bb0d2..f715e348ded1 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
@@ -39,6 +39,11 @@
 /* CRYPTO_KEY_EXCHANGE */
 #define CRYPTO_KEY_EXCHANGE ((0x3 << 29) | (0x01609 << 16))
 
+/* Arbitrary session */
+#define ARB_SESSION_INDEX 0xf
+#define ARB_SESSION_TYPE SESSION_TYPE_TYPE0
+#define ARB_PROTECTION_MODE PROTECTION_MODE_HM
+
 enum pxp_session_types {
 	SESSION_TYPE_TYPE0 = 0,
 	SESSION_TYPE_TYPE1 = 1,
@@ -103,6 +108,7 @@ struct pxp_protected_session {
 int intel_pxp_sm_reserve_session(struct drm_i915_private *i915, struct drm_file *drmfile,
 				 int context_id, int session_type, int protection_mode,
 				 u32 *pxp_tag);
+int intel_pxp_sm_reserve_arb_session(struct drm_i915_private *i915, u32 *pxp_tag);
 int pxp_sm_mark_protected_session_in_play(struct drm_i915_private *i915, int session_type,
 					  u32 session_id);
 int pxp_sm_terminate_protected_session_safe(struct drm_i915_private *i915, int context_id,
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
index 2a28478b092d..0de259c754e9 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
@@ -122,6 +122,7 @@ int pxp_tee_ioctl_io_message(struct drm_i915_private *i915,
 static int i915_pxp_tee_component_bind(struct device *i915_kdev,
 				       struct device *tee_kdev, void *data)
 {
+	int ret;
 	struct drm_i915_private *i915 = kdev_to_i915(i915_kdev);
 
 	if (!i915 || !tee_kdev || !data)
@@ -132,6 +133,16 @@ static int i915_pxp_tee_component_bind(struct device *i915_kdev,
 	i915->pxp_tee_master->tee_dev = tee_kdev;
 	mutex_unlock(&i915->pxp_tee_comp_mutex);
 
+	mutex_lock(&i915->pxp.ctx->ctx_mutex);
+	/* Create arb session only if tee is ready, during system boot or sleep/resume */
+	ret = intel_pxp_create_arb_session(i915);
+	mutex_unlock(&i915->pxp.ctx->ctx_mutex);
+
+	if (ret) {
+		drm_err(&i915->drm, "Failed to create arb session ret=[%d]\n", ret);
+		return ret;
+	}
+
 	return 0;
 }
 
@@ -180,3 +191,26 @@ void intel_pxp_tee_component_fini(struct drm_i915_private *i915)
 
 	component_del(i915->drm.dev, &i915_pxp_tee_component_ops);
 }
+
+int intel_pxp_tee_cmd_create_arb_session(struct drm_i915_private *i915)
+{
+	int ret;
+	u32 msg_out_size_received = 0;
+	u32 msg_in[PXP_TEE_ARB_CMD_DW_LEN] = PXP_TEE_ARB_CMD_BIN;
+	u32 msg_out[PXP_TEE_ARB_CMD_DW_LEN] = {0};
+
+	mutex_lock(&i915->pxp_tee_comp_mutex);
+
+	ret = intel_pxp_tee_io_message(i915,
+				       &msg_in,
+				       sizeof(msg_in),
+				       &msg_out, &msg_out_size_received,
+				       sizeof(msg_out));
+
+	mutex_unlock(&i915->pxp_tee_comp_mutex);
+
+	if (ret)
+		drm_err(&i915->drm, "Failed to send/receive tee message\n");
+
+	return ret;
+}
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h
index 8b1581c2f50f..6cc9517701ea 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h
@@ -16,4 +16,10 @@ int pxp_tee_ioctl_io_message(struct drm_i915_private *i915,
 			     void __user *msg_out_user_ptr, u32 *msg_out_size_ptr,
 			     u32 msg_out_buf_size);
 
+int intel_pxp_tee_cmd_create_arb_session(struct drm_i915_private *i915);
+
+/* TEE command to create the arbitrary session */
+#define PXP_TEE_ARB_CMD_BIN {0x00040000, 0x0000001e, 0x00000000, 0x00000008, 0x00000002, 0x0000000f}
+#define PXP_TEE_ARB_CMD_DW_LEN (6)
+
 #endif /* __INTEL_PXP_TEE_H__ */
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
