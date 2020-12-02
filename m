Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 469A62CB3C0
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Dec 2020 05:04:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4413C6EA14;
	Wed,  2 Dec 2020 04:04:28 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 072056E9A6
 for <Intel-gfx@lists.freedesktop.org>; Wed,  2 Dec 2020 04:04:19 +0000 (UTC)
IronPort-SDR: ihe+7xaBMMbf0bLPvGdgh8HlJKHu/v3NivKxNUDa2b4S4DVsiEj/F0BP7GccYQTgj1Q9DwAn4b
 ozPA2fPXD3ng==
X-IronPort-AV: E=McAfee;i="6000,8403,9822"; a="172165845"
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="172165845"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 20:04:16 -0800
IronPort-SDR: iG05+q7s7R1lRn3mbDP0HZJxFWEvJdjmSNAM5jwMlZ8BquSrrE/NqJdLhKKYsVu0jvY/ElYjYe
 ASK3AGwHaZ7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="549869244"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by orsmga005.jf.intel.com with ESMTP; 01 Dec 2020 20:04:16 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Tue,  1 Dec 2020 20:03:22 -0800
Message-Id: <20201202040341.31981-8-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201202040341.31981-1-sean.z.huang@intel.com>
References: <20201202040341.31981-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [RFC-v4 07/26] drm/i915/pxp: Read register to check
 hardware session state
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

Implement the functions to check the hardware protected session
state via reading the hardware register session in play.

Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
---
 drivers/gpu/drm/i915/pxp/intel_pxp.h    |   3 +
 drivers/gpu/drm/i915/pxp/intel_pxp_sm.c | 177 ++++++++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_sm.h |  51 +++++++
 3 files changed, 231 insertions(+)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
index 132aeccf8447..c781a07bb7d5 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
@@ -12,6 +12,9 @@
 #define PXP_IRQ_VECTOR_DISPLAY_APP_TERM_PER_FW_REQ BIT(2)
 #define PXP_IRQ_VECTOR_PXP_DISP_STATE_RESET_COMPLETE BIT(3)
 
+#define pxp_session_list(i915, session_type) (((session_type) == SESSION_TYPE_TYPE0) ? \
+	&(i915)->pxp.ctx->active_pxp_type0_sessions : &(i915)->pxp.ctx->active_pxp_type1_sessions)
+
 #define MAX_TYPE0_SESSIONS 16
 #define MAX_TYPE1_SESSIONS 6
 
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
index a2c9c71d2372..6413f401d939 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
@@ -10,6 +10,21 @@
 #include "intel_pxp_sm.h"
 #include "intel_pxp_context.h"
 
+static int pxp_sm_reg_read(struct drm_i915_private *i915, u32 offset, u32 *regval)
+{
+	intel_wakeref_t wakeref;
+
+	if (!i915 || !regval)
+		return -EINVAL;
+
+	with_intel_runtime_pm(&i915->runtime_pm, wakeref) {
+		i915_reg_t reg_offset = {offset};
+		*regval = intel_uncore_read(&i915->uncore, reg_offset);
+	}
+
+	return 0;
+}
+
 static int pxp_reg_write(struct drm_i915_private *i915, u32 offset, u32 regval)
 {
 	intel_wakeref_t wakeref;
@@ -26,6 +41,168 @@ static int pxp_reg_write(struct drm_i915_private *i915, u32 offset, u32 regval)
 	return 0;
 }
 
+/**
+ * is_sw_session_active - Check if the given sw session id is active.
+ * @i915: i915 device handle.
+ * @session_type: Specified session type
+ * @session_index: Numeric session identifier.
+ * @is_in_play: Set false to return true if the specified session is active.
+ *              Set true to also check if the session is active and in_play.
+ * @protection_mode: get the protection mode of specified session.
+ *
+ * The caller needs to use ctx_mutex lock to protect the session_list
+ * inside this function.
+ *
+ * Return : true if session with the same identifier is active (and in_play).
+ */
+static bool is_sw_session_active(struct drm_i915_private *i915, int session_type,
+				 int session_index, bool is_in_play, int *protection_mode)
+{
+	struct pxp_protected_session *current_session;
+
+	lockdep_assert_held(&i915->pxp.ctx->ctx_mutex);
+
+	list_for_each_entry(current_session, pxp_session_list(i915, session_type), session_list) {
+		if (current_session->session_index == session_index) {
+			if (protection_mode)
+				*protection_mode = current_session->protection_mode;
+
+			if (is_in_play && !current_session->session_is_in_play)
+				return false;
+
+			return true;
+		}
+	}
+
+	/* session id not found. return false */
+	return false;
+}
+
+static bool is_hw_type0_session_in_play(struct drm_i915_private *i915, int session_index)
+{
+	u32 regval_sip = 0;
+	u32 reg_session_id_mask;
+	bool hw_session_is_in_play = false;
+	int ret = 0;
+
+	if (!i915 || session_index < 0 || session_index >= MAX_TYPE0_SESSIONS)
+		goto end;
+
+	ret = pxp_sm_reg_read(i915, GEN12_KCR_SIP.reg, &regval_sip);
+	if (ret) {
+		drm_err(&i915->drm, "Failed to read()\n");
+		goto end;
+	}
+
+	reg_session_id_mask = (1 << session_index);
+	hw_session_is_in_play = (bool)(regval_sip & reg_session_id_mask);
+end:
+	return hw_session_is_in_play;
+}
+
+static bool is_hw_type1_session_in_play(struct drm_i915_private *i915, int session_index)
+{
+	int ret = 0;
+	u32 regval_tsip_low = 0;
+	u32 regval_tsip_high = 0;
+	u64 reg_session_id_mask;
+	u64 regval_tsip;
+	bool hw_session_is_in_play = false;
+
+	if (!i915 || session_index < 0 || session_index >= MAX_TYPE1_SESSIONS)
+		goto end;
+
+	ret = pxp_sm_reg_read(i915, GEN12_KCR_TSIP_LOW.reg, &regval_tsip_low);
+	if (ret) {
+		drm_err(&i915->drm, "Failed to pxp_sm_reg_read()\n");
+		goto end;
+	}
+
+	ret = pxp_sm_reg_read(i915, GEN12_KCR_TSIP_HIGH.reg, &regval_tsip_high);
+	if (ret) {
+		drm_err(&i915->drm, "Failed to pxp_sm_reg_read()\n");
+		goto end;
+	}
+
+	reg_session_id_mask = (1 << session_index);
+	regval_tsip = ((u64)regval_tsip_high << 32) | regval_tsip_low;
+	hw_session_is_in_play = (bool)(regval_tsip & reg_session_id_mask);
+end:
+	return hw_session_is_in_play;
+}
+
+static bool is_hw_session_in_play(struct drm_i915_private *i915,
+				  int session_type, int session_index)
+{
+	bool is_in_play = false;
+
+	if (session_type == SESSION_TYPE_TYPE0)
+		is_in_play = is_hw_type0_session_in_play(i915, session_index);
+	else if (session_type == SESSION_TYPE_TYPE1)
+		is_in_play = is_hw_type1_session_in_play(i915, session_index);
+	else
+		drm_err(&i915->drm, "Failed to %s invalid session_type=[%d]\n",
+			__func__, session_type);
+
+	return is_in_play;
+}
+
+/* check hw session in play reg if match the current sw state */
+static int sync_hw_sw_state(struct drm_i915_private *i915, int session_index, int session_type)
+{
+	const int max_retry = 10;
+	const int ms_delay = 10;
+	int retry = 0;
+	int ret;
+
+	if (!i915 || session_type >= SESSION_TYPE_MAX)
+		return -EINVAL;
+
+	ret = -EINVAL;
+	for (retry = 0; retry < max_retry; retry++) {
+		if (is_hw_session_in_play(i915, session_type, session_index) ==
+		    is_sw_session_active(i915, session_type, session_index, true, NULL)) {
+			ret = 0;
+			break;
+		}
+
+		msleep(ms_delay);
+	}
+
+	return ret;
+}
+
+/**
+ * check_if_protected_type0_sessions_are_attacked - To check if type0 active sessions are attacked.
+ * @i915: i915 device handle.
+ *
+ * Return: true if HW shows protected sessions are attacked, false otherwise.
+ */
+static bool check_if_protected_type0_sessions_are_attacked(struct drm_i915_private *i915)
+{
+	i915_reg_t kcr_status_reg = KCR_STATUS_1;
+	u32 reg_value = 0;
+	u32 mask = 0x80000000;
+	int ret;
+
+	if (!i915)
+		return false;
+
+	if (i915->pxp.ctx->global_state_attacked)
+		return true;
+
+	ret = pxp_sm_reg_read(i915, kcr_status_reg.reg, &reg_value);
+	if (ret) {
+		drm_err(&i915->drm, "Failed to pxp_sm_reg_read\n");
+		goto end;
+	}
+
+	if (reg_value & mask)
+		return true;
+end:
+	return false;
+}
+
 int pxp_sm_set_kcr_init_reg(struct drm_i915_private *i915)
 {
 	int ret;
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
index d061f395aa16..222a879be96d 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
@@ -15,6 +15,57 @@
 /* Setting KCR Init bit is required after system boot */
 #define KCR_INIT_ALLOW_DISPLAY_ME_WRITES (BIT(14) | (BIT(14) << KCR_INIT_MASK_SHIFT))
 
+#define KCR_STATUS_1        _MMIO(0x320f4)
+#define GEN12_KCR_SIP       _MMIO(0x32260)   /* KCR type0 session in play 0-31 */
+#define GEN12_KCR_TSIP_LOW  _MMIO(0x32264)   /* KCR type1 session in play 0-31 */
+#define GEN12_KCR_TSIP_HIGH _MMIO(0x32268)   /* KCR type1 session in play 32-63 */
+
+enum pxp_session_types {
+	SESSION_TYPE_TYPE0 = 0,
+	SESSION_TYPE_TYPE1 = 1,
+
+	SESSION_TYPE_MAX
+};
+
+enum pxp_protection_modes {
+	PROTECTION_MODE_NONE = 0,
+	PROTECTION_MODE_LM   = 2,
+	PROTECTION_MODE_HM   = 3,
+	PROTECTION_MODE_SM   = 6,
+
+	PROTECTION_MODE_ALL
+};
+
+/**
+ * struct pxp_protected_session - linked list to track all active sessions.
+ */
+struct pxp_protected_session {
+	/** @session_list: linked list infrastructure, do not change its order. */
+	struct list_head session_list;
+
+	/** @session_index: Numeric identifier for this protected session */
+	int session_index;
+	/** @session_type: Type of session */
+	int session_type;
+	/** @protection_mode: mode of protection requested */
+	int protection_mode;
+	/** @context_id: context identifier of the protected session requestor */
+	int context_id;
+	/** @pid: pid of this session's creator */
+	int pid;
+	/** @drmfile: pointer to drm_file, which is allocated on device file open() call */
+	struct drm_file *drmfile;
+
+	/**
+	 * @session_is_in_play: indicates whether the session has been established
+	 *                      in the HW root of trust if this flag is false, it
+	 *                      indicates an application has reserved this session,
+	 *                      but has not * established the session in the
+	 *                      hardware yet.
+	 */
+	bool session_is_in_play;
+};
+
 int pxp_sm_set_kcr_init_reg(struct drm_i915_private *i915);
 
 #endif /* __INTEL_PXP_SM_H__ */
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
