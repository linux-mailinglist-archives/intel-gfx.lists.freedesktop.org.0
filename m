Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 389B1668904
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Jan 2023 02:19:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B472C10E971;
	Fri, 13 Jan 2023 01:18:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A5EE10E1CD;
 Fri, 13 Jan 2023 01:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673572733; x=1705108733;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=x9fuNHqoT8mkYvgfb2i9hJadC6WsIgtpQevJQGY3mAs=;
 b=Mk2Lsk79QEskeIH9eOcqeDW6RT71tSOo7WkfLXME25fwI5jdk5XpfBnu
 YDVFmx4W+bA0DQp3JXsZW53b91QJTp0MzrUyq3tIBPasZQQ9hUkekiWDv
 +U7MyZ8qd0iizm+g7tZmfJtxZNca3QzBmYQmzl0KXdRmUEpey8h2cgdrQ
 jvVeHlPy+5KYBlYU4UqEnqoy8C2+0GjCX8Lst65vIaQCvQbw+TPRwNkWM
 Cs/pi6UrJt0qmlHsMr6eqCnFLm2y9JP0BwL34FdWKVeWAzLL62csqg7N7
 XegfhdI5CH0jrAM+iapK2EoeCxvBfVhnUHoJ9vpkTZwtDkfK5ZGU8ShFt w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="323941584"
X-IronPort-AV: E=Sophos;i="5.97,212,1669104000"; d="scan'208";a="323941584"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2023 17:18:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="746761031"
X-IronPort-AV: E=Sophos;i="5.97,212,1669104000"; d="scan'208";a="746761031"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by FMSMGA003.fm.intel.com with ESMTP; 12 Jan 2023 17:18:52 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Jan 2023 17:18:48 -0800
Message-Id: <20230113011850.1463965-5-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230113011850.1463965-1-alan.previn.teres.alexis@intel.com>
References: <20230113011850.1463965-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 4/6] drm/i915/pxp: Invalidate all PXP fw
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
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>,
	Vivi@freedesktop.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rodrigo <rodrigo.vivi@intel.com>,
	Alexander Usyskin <alexander.usyskin@intel.com>,
	dri-devel@lists.freedesktop.org,
	Tomas Winkler <tomas.winkler@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

A gap was recently discovered where if an application did not
invalidate all of the stream keys (intentionally or not), and the
driver did a full PXP global teardown on the GT subsystem, we
find that future session creation would fail on the security
firmware's side of the equation. i915 is the entity that needs
ensure the sessions' state across both iGT and security firmware
are at a known clean point when performing a full global teardown.

Architecturally speaking, i915 should inspect all active sessions
and submit the invalidate-stream-key PXP command to the security
firmware for each of them. However, for the upstream i915 driver
we only support the arbitration session that can be created
so that will be the only session we will cleanup.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
Reviewed-by: Juston Li <justonli@chromium.org>
---
 drivers/gpu/drm/i915/pxp/intel_pxp.h          |  1 +
 .../drm/i915/pxp/intel_pxp_cmd_interface_42.h | 15 ++++++++
 .../i915/pxp/intel_pxp_cmd_interface_cmn.h    |  3 ++
 drivers/gpu/drm/i915/pxp/intel_pxp_session.c  |  2 ++
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c      | 35 +++++++++++++++++++
 5 files changed, 56 insertions(+)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
index 04440fada711..9658d3005222 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
@@ -24,6 +24,7 @@ void intel_pxp_init_hw(struct intel_pxp *pxp);
 void intel_pxp_fini_hw(struct intel_pxp *pxp);
 
 void intel_pxp_mark_termination_in_progress(struct intel_pxp *pxp);
+void intel_pxp_tee_end_arb_fw_session(struct intel_pxp *pxp, u32 arb_session_id);
 
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
index ae413580b81a..74ed7e16e481 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
@@ -110,6 +110,8 @@ static int pxp_terminate_arb_session_and_global(struct intel_pxp *pxp)
 
 	intel_uncore_write(gt->uncore, PXP_GLOBAL_TERMINATE, 1);
 
+	intel_pxp_tee_end_arb_fw_session(pxp, ARB_SESSION);
+
 	return ret;
 }
 
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
index bef6d7f8ac55..9e247f38f3bd 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
@@ -311,3 +311,38 @@ int intel_pxp_tee_cmd_create_arb_session(struct intel_pxp *pxp,
 
 	return ret;
 }
+
+void intel_pxp_tee_end_arb_fw_session(struct intel_pxp *pxp, u32 session_id)
+{
+	struct drm_i915_private *i915 = pxp->ctrl_gt->i915;
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
+	else if (msg_out.header.status != 0x0)
+		drm_warn(&i915->drm, "PXP firmware failed inv-stream-key-%d with status 0x%08x\n",
+			 session_id, msg_out.header.status);
+}
-- 
2.39.0

