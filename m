Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20E2D6915BB
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Feb 2023 01:42:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C98AE10EC17;
	Fri, 10 Feb 2023 00:42:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37F1810EC19;
 Fri, 10 Feb 2023 00:42:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675989733; x=1707525733;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yGhgNlQfca2NmfyKblHI3kw2/5SaqGedj9pD64VqYOc=;
 b=AIeHzaVT3vAFLLHLuxqZEImHIf0zKBur2uhCLeVtMJ8XjQQxmQehNtlS
 k2U0p2JFYz4qb4RvknOPsJPPEfnmIi1hQSLJcpvdK/CBoGi5PKH0vdH9Y
 aMPQ4PFYYTRl1TvFpn96+eNXptYsXMANdekbGRiecKD/MyEkEfqWjlrqM
 xdC2MhySzpKXdjUBJk5BRVjrxfHyHSIhS17xWFtijQgM1qQpCeKcl17J7
 /gTLdNTW6zqNhUPgcwR6jePctwOvBhG1sAerLnv6tBTY8kXKOow7o+6yh
 ypEdSCizDuatS9FNu9Os0AyIXQYX856uFPCADpqxmZHgnCQSa8xC0o7sh Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10616"; a="327990102"
X-IronPort-AV: E=Sophos;i="5.97,285,1669104000"; d="scan'208";a="327990102"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2023 16:42:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10616"; a="913342496"
X-IronPort-AV: E=Sophos;i="5.97,285,1669104000"; d="scan'208";a="913342496"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga006.fm.intel.com with ESMTP; 09 Feb 2023 16:42:11 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Feb 2023 16:42:06 -0800
Message-Id: <20230210004209.1877143-6-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230210004209.1877143-1-alan.previn.teres.alexis@intel.com>
References: <20230210004209.1877143-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 5/8] drm/i915/pxp: Add ARB session creation
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
Cc: dri-devel@lists.freedesktop.org,
 Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add MTL's function for ARB session creation using PXP firmware
version 4.3 ABI structure format.

Also add MTL's function for ARB session invalidation but this
reuses PXP firmware version 4.2 ABI structure format.

Before checking the return status, look at the GSC-CS-Mem-Header's
pending-bit which means the GSC firmware is busy and we should
resubmit.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/pxp/intel_pxp.c          |  9 +-
 .../drm/i915/pxp/intel_pxp_cmd_interface_43.h | 21 +++++
 drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c    | 92 +++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.h    |  3 +
 drivers/gpu/drm/i915/pxp/intel_pxp_session.c  | 11 ++-
 5 files changed, 132 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index aecc65b5da70..c25e9ff16b57 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -353,8 +353,13 @@ int intel_pxp_start(struct intel_pxp *pxp)
 	if (!intel_pxp_is_enabled(pxp))
 		return -ENODEV;
 
-	if (wait_for(pxp_component_bound(pxp), 250))
-		return -ENXIO;
+	if (HAS_ENGINE(pxp->ctrl_gt, GSC0)) {
+		if (wait_for(intel_uc_fw_is_running(&pxp->ctrl_gt->uc.gsc.fw), 250))
+			return -ENXIO;
+	} else {
+		if (wait_for(pxp_component_bound(pxp), 250))
+			return -ENXIO;
+	}
 
 	mutex_lock(&pxp->arb_mutex);
 
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_43.h b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_43.h
index b2523d6918c7..9089e02a8c2d 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_43.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_43.h
@@ -11,6 +11,7 @@
 
 /* PXP-Cmd-Op definitions */
 #define PXP43_CMDID_START_HUC_AUTH 0x0000003A
+#define PXP43_CMDID_INIT_SESSION 0x00000036
 
 /* PXP-Packet sizes for MTL's GSCCS-HECI instruction */
 #define PXP43_MAX_HECI_IN_SIZE (SZ_32K)
@@ -27,4 +28,24 @@ struct pxp43_start_huc_auth_out {
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
index 51b9959f7813..42fc05582d0a 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c
@@ -9,6 +9,7 @@
 #include "gt/uc/intel_gsc_uc_heci_cmd_submit.h"
 
 #include "i915_drv.h"
+#include "intel_pxp_cmd_interface_42.h"
 #include "intel_pxp_cmd_interface_43.h"
 #include "intel_pxp_gsccs.h"
 #include "intel_pxp_types.h"
@@ -120,6 +121,97 @@ static int gsccs_send_message(struct intel_pxp *pxp,
 	return ret;
 }
 
+int intel_pxp_gsccs_create_session(struct intel_pxp *pxp,
+				   int arb_session_id)
+{
+	struct drm_i915_private *i915 = pxp->ctrl_gt->i915;
+	struct gsccs_session_resources *exec =  &pxp->gsccs_res;
+	struct pxp43_create_arb_in msg_in = {0};
+	struct pxp43_create_arb_out msg_out = {0};
+	u64 gsc_session_retry = 0;
+	int ret, tries = 0;
+
+	/* get a unique host-session-handle (used later in HW cmds) at time of session creation */
+	get_random_bytes(&exec->host_session_handle, sizeof(exec->host_session_handle));
+
+	msg_in.header.api_version = PXP_APIVER(4, 3);
+	msg_in.header.command_id = PXP43_CMDID_INIT_SESSION;
+	msg_in.header.stream_id = (FIELD_PREP(PXP43_INIT_SESSION_APPID, arb_session_id) |
+				   FIELD_PREP(PXP43_INIT_SESSION_VALID, 1) |
+				   FIELD_PREP(PXP43_INIT_SESSION_APPTYPE, 0));
+	msg_in.header.buffer_len = sizeof(msg_in) - sizeof(msg_in.header);
+	msg_in.protection_mode = PXP43_INIT_SESSION_PROTECTION_ARB;
+
+	/*
+	 * Keep sending request if GSC firmware was busy.
+	 * Based on specs, we can expects a worst case pending-bit
+	 * delay of 2000 milisecs.
+	 */
+	do {
+		ret = gsccs_send_message(pxp,
+					 &msg_in, sizeof(msg_in),
+					 &msg_out, sizeof(msg_out), NULL,
+					 &gsc_session_retry);
+		/* Only try again if gsc says so */
+		if (ret != -EAGAIN)
+			break;
+
+		msleep(20);
+	} while (++tries < 100);
+
+	if (ret)
+		drm_warn(&i915->drm, "Failed to send gsccs msg for creating-session-%d: ret=[%d]\n",
+			 arb_session_id, ret);
+	else if (msg_out.header.status != 0x0)
+		drm_warn(&i915->drm, "PXP firmware failed on creating-session-%d: status=0x%08x\n",
+			 arb_session_id, msg_out.header.status);
+
+	return ret;
+}
+
+void intel_pxp_gsccs_end_arb_fw_session(struct intel_pxp *pxp, u32 session_id)
+{
+	struct drm_i915_private *i915 = pxp->ctrl_gt->i915;
+	struct pxp42_inv_stream_key_in msg_in = {0};
+	struct pxp42_inv_stream_key_out msg_out = {0};
+	int ret = 0, tries = 0;
+	u64 gsc_session_retry = 0;
+
+	memset(&msg_in, 0, sizeof(msg_in));
+	memset(&msg_out, 0, sizeof(msg_out));
+	msg_in.header.api_version = PXP_APIVER(4, 2);
+	msg_in.header.command_id = PXP42_CMDID_INVALIDATE_STREAM_KEY;
+	msg_in.header.buffer_len = sizeof(msg_in) - sizeof(msg_in.header);
+
+	msg_in.header.stream_id = FIELD_PREP(PXP_CMDHDR_EXTDATA_SESSION_VALID, 1);
+	msg_in.header.stream_id |= FIELD_PREP(PXP_CMDHDR_EXTDATA_APP_TYPE, 0);
+	msg_in.header.stream_id |= FIELD_PREP(PXP_CMDHDR_EXTDATA_SESSION_ID, session_id);
+
+	/*
+	 * Keep sending request if GSC firmware was busy.
+	 * Based on test data, we expects a worst case delay of 250 milisecs.
+	 */
+	do {
+		ret = gsccs_send_message(pxp,
+					 &msg_in, sizeof(msg_in),
+					 &msg_out, sizeof(msg_out), NULL,
+					 &gsc_session_retry);
+
+		/* Only try again if gsc says so */
+		if (ret != -EAGAIN)
+			break;
+
+		msleep(20);
+	} while (++tries < 100);
+
+	if (ret)
+		drm_warn(&i915->drm, "Failed to send gsccs msg for inv-stream-session-%d: ret=[%d]\n",
+			 session_id, ret);
+	else if (msg_out.header.status != 0x0)
+		drm_warn(&i915->drm, "PXP firmware failed on inv-stream-session-%d: status=0x%08x\n",
+			 session_id, msg_out.header.status);
+}
+
 static int
 gsccs_create_buffer(struct intel_gt *gt,
 		    const char *bufname, size_t size,
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.h b/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.h
index 354ea9a8f940..5eb26ccc4170 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.h
@@ -14,6 +14,9 @@ struct intel_pxp;
 void intel_pxp_gsccs_fini(struct intel_pxp *pxp);
 int intel_pxp_gsccs_init(struct intel_pxp *pxp);
 
+int intel_pxp_gsccs_create_session(struct intel_pxp *pxp, int arb_session_id);
+void intel_pxp_gsccs_end_arb_fw_session(struct intel_pxp *pxp, u32 arb_session_id);
+
 #else
 static inline void intel_pxp_gsccs_fini(struct intel_pxp *pxp)
 {
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
index b8fa6df7141b..4ddf2ee60222 100644
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
-- 
2.39.0

