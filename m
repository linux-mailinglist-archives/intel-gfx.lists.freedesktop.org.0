Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EE3067ABA0
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jan 2023 09:27:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDBC410E74E;
	Wed, 25 Jan 2023 08:26:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 211BB88FAE;
 Wed, 25 Jan 2023 08:26:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674635205; x=1706171205;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=l6ZOFllHkWk/A689z2YcnmFXlTqAhwXdc7gbxU4T5M4=;
 b=L+8uD9NisXduw9PiOCHV4e5Zq/CFsZhre+xVKQ9YIvuVP0j5Qhb1oFOE
 o7/5pvehwg681tyYD2+Hd8/RybYx7ev9hKWEAreBthlb96pmP1aD7gah6
 apEwt3+cZdjAA6fEIRuHGD5djK2TwYjuy13ElWffy0h2o+iDn8sSmO4uL
 3IrRJlvRyyh5FtkZLWQDNKsVIFh3UB2dSLlTyF9JHuNTmZgNyox3qF7H9
 BPIKvvwaP8nqt/uMJWvdY620kf7qAXD1+8g1zOZj/F9geOlbrSZlo8Vkt
 nQrMZQRcPgLeHfu1/c4ex3p9g6rLohZVzYJXUmRxb/HyQpQwpYKno06fV g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="325180417"
X-IronPort-AV: E=Sophos;i="5.97,244,1669104000"; d="scan'208";a="325180417"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2023 00:26:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="662426120"
X-IronPort-AV: E=Sophos;i="5.97,244,1669104000"; d="scan'208";a="662426120"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga002.jf.intel.com with ESMTP; 25 Jan 2023 00:26:38 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Jan 2023 00:26:35 -0800
Message-Id: <20230125082637.118970-5-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230125082637.118970-1-alan.previn.teres.alexis@intel.com>
References: <20230125082637.118970-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7 4/6] drm/i915/pxp: Invalidate all PXP fw
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
Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
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
index aaa8187a0afb..ae9b151b7cb7 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_cmn.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_cmn.h
@@ -28,6 +28,9 @@ struct pxp_cmd_header {
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
index b5bc0b87a1d0..d9d248b48093 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
@@ -319,3 +319,38 @@ int intel_pxp_tee_cmd_create_arb_session(struct intel_pxp *pxp,
 
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

