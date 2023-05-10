Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C29126FE370
	for <lists+intel-gfx@lfdr.de>; Wed, 10 May 2023 19:46:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B8A510E4F0;
	Wed, 10 May 2023 17:45:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4286610E4D5;
 Wed, 10 May 2023 17:45:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683740754; x=1715276754;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JfVGZYyJ+nOksbeJR/GtPhijTYTPh/VA9l24ql9uKbA=;
 b=nwlua4qijIHX9EZ+gv+tQ8wiDsQmFvqyAjG6NbuFEZnr0NTyVcf4yW2g
 /0yeDiWVKzNEuvbTs/RB4ID6sJI006ytsRw3rDssh83Ovip2v3BH/oR1F
 2783hATMBKE3N1SYTmDVfLj1YM0WII8VZv4bL+umWlhsQN/vSO66wWAHg
 IbQ4KiG0+qZrzhr0UiUCFa5CLJYdbpQJW8ugajxo5JayUTRwJpbCQC3aS
 7g9mwyE1L0vpcvAWuyopfbRf7J0OXXkAz1iC6+dpELULJR0JEBJA5+zbH
 TiwtMysw2zbDIYdNVocJlfcIPBwp+l/KG/SOid1I/wR6Bq08i355mLE2p A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="353352059"
X-IronPort-AV: E=Sophos;i="5.99,265,1677571200"; d="scan'208";a="353352059"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2023 10:45:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="945791924"
X-IronPort-AV: E=Sophos;i="5.99,265,1677571200"; d="scan'208";a="945791924"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga006.fm.intel.com with ESMTP; 10 May 2023 10:45:52 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 May 2023 10:45:47 -0700
Message-Id: <20230510174550.986965-6-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230510174550.986965-1-alan.previn.teres.alexis@intel.com>
References: <20230510174550.986965-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v10 5/8] drm/i915/pxp: Add ARB session creation
 and cleanup
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
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>,
 dri-devel@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add MTL's function for ARB session creation using PXP firmware
version 4.3 ABI structure format.

While relooking at the ARB session creation flow in intel_pxp_start,
let's address missing UAPI documentation. Without actually changing
backward compatible behavior, update i915's drm-uapi comments
that describe the possible error values when creating a context
with I915_CONTEXT_PARAM_PROTECTED_CONTENT:
   Since the first merge of PXP support on ADL, i915 returns -ENXIO
   if a dependency such as firmware or component driver was yet to
   be loaded or returns -EIO if the creation attempt failed when
   requested by the PXP firmware (specific firmware error responses
   are reported in dmesg).

Add MTL's function for ARB session invalidation but this
reuses PXP firmware version 4.2 ABI structure format.

For both cases, in the back-end gsccs functions for sending messages
to the firmware inspect the GSC-CS-Mem-Header's pending-bit which
means the GSC firmware is busy and we should retry.

Given the last hw requirement, lets also update functions in
front-end layer that wait for session creation or teardown
completion to use new worst case timeout periods.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/i915/pxp/intel_pxp.c          |  27 +++-
 .../drm/i915/pxp/intel_pxp_cmd_interface_43.h |  21 +++
 drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c    | 130 ++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.h    |  12 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_session.c  |  11 +-
 include/uapi/drm/i915_drm.h                   |  15 ++
 6 files changed, 209 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index 8949d4be7882..b600d68de2a4 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -291,6 +291,8 @@ static bool pxp_component_bound(struct intel_pxp *pxp)
 
 static int __pxp_global_teardown_final(struct intel_pxp *pxp)
 {
+	int timeout;
+
 	if (!pxp->arb_is_valid)
 		return 0;
 	/*
@@ -300,7 +302,12 @@ static int __pxp_global_teardown_final(struct intel_pxp *pxp)
 	intel_pxp_mark_termination_in_progress(pxp);
 	intel_pxp_terminate(pxp, false);
 
-	if (!wait_for_completion_timeout(&pxp->termination, msecs_to_jiffies(250)))
+	if (HAS_ENGINE(pxp->ctrl_gt, GSC0))
+		timeout = GSCFW_MAX_ROUND_TRIP_LATENCY_MS;
+	else
+		timeout = 250;
+
+	if (!wait_for_completion_timeout(&pxp->termination, msecs_to_jiffies(timeout)))
 		return -ETIMEDOUT;
 
 	return 0;
@@ -308,6 +315,8 @@ static int __pxp_global_teardown_final(struct intel_pxp *pxp)
 
 static int __pxp_global_teardown_restart(struct intel_pxp *pxp)
 {
+	int timeout;
+
 	if (pxp->arb_is_valid)
 		return 0;
 	/*
@@ -316,7 +325,12 @@ static int __pxp_global_teardown_restart(struct intel_pxp *pxp)
 	 */
 	pxp_queue_termination(pxp);
 
-	if (!wait_for_completion_timeout(&pxp->termination, msecs_to_jiffies(250)))
+	if (HAS_ENGINE(pxp->ctrl_gt, GSC0))
+		timeout = GSCFW_MAX_ROUND_TRIP_LATENCY_MS;
+	else
+		timeout = 250;
+
+	if (!wait_for_completion_timeout(&pxp->termination, msecs_to_jiffies(timeout)))
 		return -ETIMEDOUT;
 
 	return 0;
@@ -354,8 +368,13 @@ int intel_pxp_start(struct intel_pxp *pxp)
 	if (!intel_pxp_is_enabled(pxp))
 		return -ENODEV;
 
-	if (wait_for(pxp_component_bound(pxp), 250))
-		return -ENXIO;
+	if (HAS_ENGINE(pxp->ctrl_gt, GSC0)) {
+		if (wait_for(intel_pxp_gsccs_is_ready_for_sessions(pxp), 250))
+			return -ENXIO;
+	} else {
+		if (wait_for(pxp_component_bound(pxp), 250))
+			return -ENXIO;
+	}
 
 	mutex_lock(&pxp->arb_mutex);
 
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_43.h b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_43.h
index c65ada99e54f..09777719cd84 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_43.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_43.h
@@ -11,6 +11,7 @@
 
 /* PXP-Cmd-Op definitions */
 #define PXP43_CMDID_START_HUC_AUTH 0x0000003A
+#define PXP43_CMDID_INIT_SESSION 0x00000036
 
 /* PXP-Packet sizes for MTL's GSCCS-HECI instruction */
 #define PXP43_MAX_HECI_INOUT_SIZE (SZ_32K)
@@ -26,4 +27,24 @@ struct pxp43_start_huc_auth_out {
 	struct pxp_cmd_header header;
 } __packed;
 
+/* PXP-Input-Packet: Init PXP session */
+struct pxp43_create_arb_in {
+	struct pxp_cmd_header header;
+		/* header.stream_id fields for vesion 4.3 of Init PXP session: */
+		#define PXP43_INIT_SESSION_VALID BIT(0)
+		#define PXP43_INIT_SESSION_APPTYPE BIT(1)
+		#define PXP43_INIT_SESSION_APPID GENMASK(17, 2)
+	u32 protection_mode;
+		#define PXP43_INIT_SESSION_PROTECTION_ARB 0x2
+	u32 sub_session_id;
+	u32 init_flags;
+	u32 rsvd[12];
+} __packed;
+
+/* PXP-Input-Packet: Init PXP session */
+struct pxp43_create_arb_out {
+	struct pxp_cmd_header header;
+	u32 rsvd[8];
+} __packed;
+
 #endif /* __INTEL_PXP_FW_INTERFACE_43_H__ */
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c b/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c
index 16e3b73d0653..4bc276daca16 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c
@@ -6,13 +6,46 @@
 #include "gem/i915_gem_internal.h"
 
 #include "gt/intel_context.h"
+#include "gt/uc/intel_gsc_fw.h"
 #include "gt/uc/intel_gsc_uc_heci_cmd_submit.h"
 
 #include "i915_drv.h"
+#include "intel_pxp_cmd_interface_42.h"
 #include "intel_pxp_cmd_interface_43.h"
 #include "intel_pxp_gsccs.h"
 #include "intel_pxp_types.h"
 
+static bool
+is_fw_err_platform_config(u32 type)
+{
+	switch (type) {
+	case PXP_STATUS_ERROR_API_VERSION:
+	case PXP_STATUS_PLATFCONFIG_KF1_NOVERIF:
+	case PXP_STATUS_PLATFCONFIG_KF1_BAD:
+		return true;
+	default:
+		break;
+	}
+	return false;
+}
+
+static const char *
+fw_err_to_string(u32 type)
+{
+	switch (type) {
+	case PXP_STATUS_ERROR_API_VERSION:
+		return "ERR_API_VERSION";
+	case PXP_STATUS_NOT_READY:
+		return "ERR_NOT_READY";
+	case PXP_STATUS_PLATFCONFIG_KF1_NOVERIF:
+	case PXP_STATUS_PLATFCONFIG_KF1_BAD:
+		return "ERR_PLATFORM_CONFIG";
+	default:
+		break;
+	}
+	return NULL;
+}
+
 static int
 gsccs_send_message(struct intel_pxp *pxp,
 		   void *msg_in, size_t msg_in_size,
@@ -152,6 +185,103 @@ gsccs_send_message_retry_complete(struct intel_pxp *pxp,
 	return ret;
 }
 
+bool intel_pxp_gsccs_is_ready_for_sessions(struct intel_pxp *pxp)
+{
+	/*
+	 * GSC-fw loading, HuC-fw loading, HuC-fw authentication and
+	 * GSC-proxy init flow (requiring an mei component driver)
+	 * must all occur first before we can start requesting for PXP
+	 * sessions. Checking for completion on HuC authentication and
+	 * gsc-proxy init flow (the last set of dependencies that
+	 * are out of order) will suffice.
+	 */
+	if (intel_huc_is_authenticated(&pxp->ctrl_gt->uc.huc) &&
+	    intel_gsc_uc_fw_proxy_init_done(&pxp->ctrl_gt->uc.gsc))
+		return true;
+
+	return false;
+}
+
+int intel_pxp_gsccs_create_session(struct intel_pxp *pxp,
+				   int arb_session_id)
+{
+	struct drm_i915_private *i915 = pxp->ctrl_gt->i915;
+	struct pxp43_create_arb_in msg_in = {0};
+	struct pxp43_create_arb_out msg_out = {0};
+	int ret;
+
+	msg_in.header.api_version = PXP_APIVER(4, 3);
+	msg_in.header.command_id = PXP43_CMDID_INIT_SESSION;
+	msg_in.header.stream_id = (FIELD_PREP(PXP43_INIT_SESSION_APPID, arb_session_id) |
+				   FIELD_PREP(PXP43_INIT_SESSION_VALID, 1) |
+				   FIELD_PREP(PXP43_INIT_SESSION_APPTYPE, 0));
+	msg_in.header.buffer_len = sizeof(msg_in) - sizeof(msg_in.header);
+	msg_in.protection_mode = PXP43_INIT_SESSION_PROTECTION_ARB;
+
+	ret = gsccs_send_message_retry_complete(pxp,
+						&msg_in, sizeof(msg_in),
+						&msg_out, sizeof(msg_out), NULL);
+	if (ret) {
+		drm_err(&i915->drm, "Failed to init session %d, ret=[%d]\n", arb_session_id, ret);
+	} else if (msg_out.header.status != 0) {
+		if (is_fw_err_platform_config(msg_out.header.status)) {
+			drm_info_once(&i915->drm,
+				      "PXP init-session-%d failed due to BIOS/SOC:0x%08x:%s\n",
+				      arb_session_id, msg_out.header.status,
+				      fw_err_to_string(msg_out.header.status));
+		} else {
+			drm_dbg(&i915->drm, "PXP init-session-%d failed 0x%08x:%st:\n",
+				arb_session_id, msg_out.header.status,
+				fw_err_to_string(msg_out.header.status));
+			drm_dbg(&i915->drm, "     cmd-detail: ID=[0x%08x],API-Ver-[0x%08x]\n",
+				msg_in.header.command_id, msg_in.header.api_version);
+		}
+	}
+
+	return ret;
+}
+
+void intel_pxp_gsccs_end_arb_fw_session(struct intel_pxp *pxp, u32 session_id)
+{
+	struct drm_i915_private *i915 = pxp->ctrl_gt->i915;
+	struct pxp42_inv_stream_key_in msg_in = {0};
+	struct pxp42_inv_stream_key_out msg_out = {0};
+	int ret = 0;
+
+	/*
+	 * Stream key invalidation reuses the same version 4.2 input/output
+	 * command format but firmware requires 4.3 API interaction
+	 */
+	msg_in.header.api_version = PXP_APIVER(4, 3);
+	msg_in.header.command_id = PXP42_CMDID_INVALIDATE_STREAM_KEY;
+	msg_in.header.buffer_len = sizeof(msg_in) - sizeof(msg_in.header);
+
+	msg_in.header.stream_id = FIELD_PREP(PXP_CMDHDR_EXTDATA_SESSION_VALID, 1);
+	msg_in.header.stream_id |= FIELD_PREP(PXP_CMDHDR_EXTDATA_APP_TYPE, 0);
+	msg_in.header.stream_id |= FIELD_PREP(PXP_CMDHDR_EXTDATA_SESSION_ID, session_id);
+
+	ret = gsccs_send_message_retry_complete(pxp,
+						&msg_in, sizeof(msg_in),
+						&msg_out, sizeof(msg_out), NULL);
+	if (ret) {
+		drm_err(&i915->drm, "Failed to inv-stream-key-%u, ret=[%d]\n",
+			session_id, ret);
+	} else if (msg_out.header.status != 0) {
+		if (is_fw_err_platform_config(msg_out.header.status)) {
+			drm_info_once(&i915->drm,
+				      "PXP inv-stream-key-%u failed due to BIOS/SOC :0x%08x:%s\n",
+				      session_id, msg_out.header.status,
+				      fw_err_to_string(msg_out.header.status));
+		} else {
+			drm_dbg(&i915->drm, "PXP inv-stream-key-%u failed 0x%08x:%s:\n",
+				session_id, msg_out.header.status,
+				fw_err_to_string(msg_out.header.status));
+			drm_dbg(&i915->drm, "     cmd-detail: ID=[0x%08x],API-Ver-[0x%08x]\n",
+				msg_in.header.command_id, msg_in.header.api_version);
+		}
+	}
+}
+
 static void
 gsccs_cleanup_fw_host_session_handle(struct intel_pxp *pxp)
 {
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.h b/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.h
index bd1c028bc80f..298ad38e6c7d 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.h
@@ -10,14 +10,22 @@
 
 struct intel_pxp;
 
-#define GSC_REPLY_LATENCY_MS 200
+#define GSC_REPLY_LATENCY_MS 210
+/*
+ * Max FW response time is 200ms, to which we add 10ms to account for overhead
+ * such as request preparation, GuC submission to hw and pipeline completion times.
+ */
 #define GSC_PENDING_RETRY_MAXCOUNT 40
 #define GSC_PENDING_RETRY_PAUSE_MS 50
+#define GSCFW_MAX_ROUND_TRIP_LATENCY_MS (GSC_PENDING_RETRY_MAXCOUNT * GSC_PENDING_RETRY_PAUSE_MS)
 
 #ifdef CONFIG_DRM_I915_PXP
 void intel_pxp_gsccs_fini(struct intel_pxp *pxp);
 int intel_pxp_gsccs_init(struct intel_pxp *pxp);
 
+int intel_pxp_gsccs_create_session(struct intel_pxp *pxp, int arb_session_id);
+void intel_pxp_gsccs_end_arb_fw_session(struct intel_pxp *pxp, u32 arb_session_id);
+
 #else
 static inline void intel_pxp_gsccs_fini(struct intel_pxp *pxp)
 {
@@ -30,4 +38,6 @@ static inline int intel_pxp_gsccs_init(struct intel_pxp *pxp)
 
 #endif
 
+bool intel_pxp_gsccs_is_ready_for_sessions(struct intel_pxp *pxp);
+
 #endif /*__INTEL_PXP_GSCCS_H__ */
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
index 7899079e17b0..e4d8242302c5 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
@@ -7,6 +7,7 @@
 
 #include "intel_pxp.h"
 #include "intel_pxp_cmd.h"
+#include "intel_pxp_gsccs.h"
 #include "intel_pxp_session.h"
 #include "intel_pxp_tee.h"
 #include "intel_pxp_types.h"
@@ -62,7 +63,10 @@ static int pxp_create_arb_session(struct intel_pxp *pxp)
 		return -EEXIST;
 	}
 
-	ret = intel_pxp_tee_cmd_create_arb_session(pxp, ARB_SESSION);
+	if (HAS_ENGINE(pxp->ctrl_gt, GSC0))
+		ret = intel_pxp_gsccs_create_session(pxp, ARB_SESSION);
+	else
+		ret = intel_pxp_tee_cmd_create_arb_session(pxp, ARB_SESSION);
 	if (ret) {
 		drm_err(&gt->i915->drm, "tee cmd for arb session creation failed\n");
 		return ret;
@@ -106,7 +110,10 @@ static int pxp_terminate_arb_session_and_global(struct intel_pxp *pxp)
 
 	intel_uncore_write(gt->uncore, KCR_GLOBAL_TERMINATE(pxp->kcr_base), 1);
 
-	intel_pxp_tee_end_arb_fw_session(pxp, ARB_SESSION);
+	if (HAS_ENGINE(gt, GSC0))
+		intel_pxp_gsccs_end_arb_fw_session(pxp, ARB_SESSION);
+	else
+		intel_pxp_tee_end_arb_fw_session(pxp, ARB_SESSION);
 
 	return ret;
 }
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index dba7c5a5b25e..0aa3190e7654 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -2096,6 +2096,21 @@ struct drm_i915_gem_context_param {
  *
  * -ENODEV: feature not available
  * -EPERM: trying to mark a recoverable or not bannable context as protected
+ * -ENXIO: A dependency such as a component driver or firmware is not yet
+ *         loaded so user space may need to attempt again. Depending on the
+ *         device, this error may be reported if protected context creation is
+ *         attempted very early after kernel start because the internal timeout
+ *         waiting for such dependencies is not guaranteed to be larger than
+ *         required (numbers differ depending on system and kernel config):
+ *            - ADL/RPL: dependencies may take up to 3 seconds from kernel start
+ *                       while context creation internal timeout is 250 milisecs
+ *            - MTL: dependencies may take up to 8 seconds from kernel start
+ *                   while context creation internal timeout is 250 milisecs
+ *         NOTE: such dependencies happen once, so a subsequent call to create a
+ *         protected context after a prior successful call will not experience
+ *         such timeouts and will not return -ENXIO (unless the driver is reloaded,
+ *         or, depending on the device, resumes from a suspended state).
+ * -EIO: The firmware did not succeed in creating the protected context.
  */
 #define I915_CONTEXT_PARAM_PROTECTED_CONTENT    0xd
 /* Must be kept compact -- no holes and well documented */
-- 
2.39.0

