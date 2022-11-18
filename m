Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DAA0062EA61
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Nov 2022 01:34:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E728410E6D7;
	Fri, 18 Nov 2022 00:34:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B5E010E6DB
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Nov 2022 00:34:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668731642; x=1700267642;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=a5PuIjkG0ZJ9SHupZ1NEcOULQrVIcj4gLQo2rVimzdE=;
 b=LrBVldxu4IYp/6/qyq7zKLlenRrvr6qISU9C2WTxJXsIzAadl/uGhoOP
 MC78eZwv4NHSWjtgML9DLnJYjoOh9aRd13aXarH+7FPH0VbYjyuQdp+GE
 Wlx52k/rV8RSMQh1sVP3uDH3qUJ5NPIUtSPJtClecROAZ8uf2+gobwMqu
 INm7CbFRs+yZvdxq/4nSoLYahpTXh6FvWORFFy1+kY4yEXvdZ4RzDtaXU
 tZbXUNTLmyM64KXF2Cr6v9DezbDOFmfLEUzyQePeSHCmAdNx/QirxAzh1
 /sPCJi4UcTa7IhZ83Bj+aCrcvKimrZ5omc/mIugNPcZ2VUT60hBAHnz/o w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="339848901"
X-IronPort-AV: E=Sophos;i="5.96,172,1665471600"; d="scan'208";a="339848901"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2022 16:34:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="969086624"
X-IronPort-AV: E=Sophos;i="5.96,172,1665471600"; d="scan'208";a="969086624"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga005.fm.intel.com with ESMTP; 17 Nov 2022 16:34:01 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Nov 2022 16:36:30 -0800
Message-Id: <20221118003631.1523764-2-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221118003631.1523764-1-alan.previn.teres.alexis@intel.com>
References: <20221118003631.1523764-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/pxp: Invalidate all PXP fw
 sessions during teardown
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

A gap was recently discovered where if an application did not
invalidate all of the stream keys (intentionally or not), and the
driver did a full PXP global teardown on the GT subsystem, we
find that future session creation would fail on the security
firmware's side of the equation. i915 is the entity that needs
ensure the sessions' state across both iGT and security firmware
are at a known clean point when performing a full global teardown.

That said, the i915 should inspect all active sessions and submit
the invalidate-stream-key PXP command to the security firmware for
each of them.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/pxp/intel_pxp.h          |  1 +
 .../drm/i915/pxp/intel_pxp_cmd_interface_42.h | 15 +++++++
 .../i915/pxp/intel_pxp_cmd_interface_cmn.h    |  3 ++
 drivers/gpu/drm/i915/pxp/intel_pxp_session.c  |  5 +++
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c      | 45 +++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_types.h    |  2 +
 6 files changed, 71 insertions(+)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
index 2da309088c6d..6ba8fa5bfea0 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
@@ -23,6 +23,7 @@ void intel_pxp_init_hw(struct intel_pxp *pxp);
 void intel_pxp_fini_hw(struct intel_pxp *pxp);
 
 void intel_pxp_mark_termination_in_progress(struct intel_pxp *pxp);
+void intel_pxp_tee_end_all_fw_sessions(struct intel_pxp *pxp, u32 sessions_mask);
 
 int intel_pxp_start(struct intel_pxp *pxp);
 
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_42.h b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_42.h
index 739f9072fa5f..26f7d9f01bf3 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_42.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_42.h
@@ -12,6 +12,9 @@
 /* PXP-Opcode for Init Session */
 #define PXP42_CMDID_INIT_SESSION 0x1e
 
+/* PXP-Opcode for Invalidate Stream Key */
+#define PXP42_CMDID_INVALIDATE_STREAM_KEY 0x00000007
+
 /* PXP-Input-Packet: Init Session (Arb-Session) */
 struct pxp42_create_arb_in {
 	struct pxp_cmd_header header;
@@ -25,4 +28,16 @@ struct pxp42_create_arb_out {
 	struct pxp_cmd_header header;
 } __packed;
 
+/* PXP-Input-Packet: Invalidate Stream Key */
+struct pxp42_inv_stream_key_in {
+	struct pxp_cmd_header header;
+	u32 rsvd[3];
+} __packed;
+
+/* PXP-Output-Packet: Invalidate Stream Key */
+struct pxp42_inv_stream_key_out {
+	struct pxp_cmd_header header;
+	u32 rsvd;
+} __packed;
+
 #endif /* __INTEL_PXP_FW_INTERFACE_42_H__ */
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_cmn.h b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_cmn.h
index c2f23394f9b8..69e34ec49e78 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_cmn.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_cmn.h
@@ -27,6 +27,9 @@ struct pxp_cmd_header {
 	union {
 		u32 status; /* out */
 		u32 stream_id; /* in */
+#define PXP_CMDHDR_EXTDATA_SESSION_VALID GENMASK(0, 0)
+#define PXP_CMDHDR_EXTDATA_APP_TYPE GENMASK(1, 1)
+#define PXP_CMDHDR_EXTDATA_SESSION_ID GENMASK(17, 2)
 	};
 	/* Length of the message (excluding the header) */
 	u32 buffer_len;
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
index 85572360c71a..85e404b5ad0e 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
@@ -91,10 +91,13 @@ static int pxp_terminate_arb_session_and_global(struct intel_pxp *pxp)
 {
 	int ret;
 	struct intel_gt *gt = pxp_to_gt(pxp);
+	u32 active_sip_slots;
 
 	/* must mark termination in progress calling this function */
 	GEM_WARN_ON(pxp->arb_is_valid);
 
+	active_sip_slots = intel_uncore_read(gt->uncore, GEN12_KCR_SIP);
+
 	/* terminate the hw sessions */
 	ret = intel_pxp_terminate_session(pxp, ARB_SESSION);
 	if (ret) {
@@ -110,6 +113,8 @@ static int pxp_terminate_arb_session_and_global(struct intel_pxp *pxp)
 
 	intel_uncore_write(gt->uncore, PXP_GLOBAL_TERMINATE, 1);
 
+	intel_pxp_tee_end_all_fw_sessions(pxp, active_sip_slots);
+
 	return ret;
 }
 
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
index b0c9170b1395..9260a7013191 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
@@ -309,3 +309,48 @@ int intel_pxp_tee_cmd_create_arb_session(struct intel_pxp *pxp,
 
 	return ret;
 }
+
+static void intel_pxp_tee_end_one_fw_session(struct intel_pxp *pxp, u32 session_id, bool is_alive)
+{
+	struct drm_i915_private *i915 = pxp_to_gt(pxp)->i915;
+	struct pxp42_inv_stream_key_in msg_in = {0};
+	struct pxp42_inv_stream_key_out msg_out = {0};
+	int ret, trials = 0;
+
+try_again:
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
+	ret = intel_pxp_tee_io_message(pxp,
+				       &msg_in, sizeof(msg_in),
+				       &msg_out, sizeof(msg_out),
+				       NULL);
+
+	/* Cleanup coherency between GT and Firmware is critical, so try again if it fails */
+	if ((ret || msg_out.header.status != 0x0) && ++trials < 3)
+		goto try_again;
+
+	if (ret)
+		drm_err(&i915->drm, "Failed to send tee msg for inv-stream-key-%d, ret=[%d]\n",
+			session_id, ret);
+	else if (msg_out.header.status != 0x0 && is_alive)
+		drm_warn(&i915->drm, "PXP firmware failed inv-stream-key-%d with status 0x%08x\n",
+			 session_id, msg_out.header.status);
+}
+
+void intel_pxp_tee_end_all_fw_sessions(struct intel_pxp *pxp, u32 sessions_mask)
+{
+	int n;
+
+	for (n = 0; n < INTEL_PXP_MAX_HWDRM_SESSIONS; ++n) {
+		intel_pxp_tee_end_one_fw_session(pxp, n, (sessions_mask & 0x1) ? true : false);
+		sessions_mask = (sessions_mask >> 1);
+	}
+}
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
index f74b1e11a505..4d75b06ea4a0 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
@@ -14,6 +14,8 @@
 struct intel_context;
 struct i915_pxp_component;
 
+#define INTEL_PXP_MAX_HWDRM_SESSIONS 16
+
 /**
  * struct intel_pxp - pxp state
  */
-- 
2.34.1

