Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C999154770
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2020 16:15:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C29E66FA82;
	Thu,  6 Feb 2020 15:15:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E498C6FA82
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Feb 2020 15:15:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Feb 2020 07:15:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,410,1574150400"; d="scan'208";a="226176004"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by fmsmga008.fm.intel.com with ESMTP; 06 Feb 2020 07:14:59 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  6 Feb 2020 20:34:41 +0530
Message-Id: <20200206150442.32353-2-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200206150442.32353-1-anshuman.gupta@intel.com>
References: <20200206150442.32353-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/hdcp: Fix 1B-06 HDCP2.2 Comp test
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

HDCP Repeater initializes seq_num_V to 0 at the beginning of
hdcp Session i.e. after AKE_init received.

HDCP 2.2 Comp specs 1B-06 test verifies that whether DUT
considers failures of authentication if the repeater provides a
non-zero value in seq_num_V in the first,
RepeaterAuth_Send_ReceiverID_List message after first AKE_Init.
Fixing this broken test.

Cc: Ramalingam C <ramalingam.c@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h |  3 +++
 drivers/gpu/drm/i915/display/intel_hdcp.c          | 13 +++++++++++++
 2 files changed, 16 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 7ae0bc8b80d1..2ae540e986ba 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -360,6 +360,9 @@ struct intel_hdcp {
 	/* HDCP2.2 Encryption status */
 	bool hdcp2_encrypted;
 
+	/* Flag indicate if it is a first ReceiverID_List msg after AKE_Init */
+	bool first_recvid_msg;
+
 	/*
 	 * Content Stream Type defined by content owner. TYPE0(0x0) content can
 	 * flow in the link protected by HDCP2.2 or HDCP1.4, where as TYPE1(0x1)
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 4d1a33d13105..3e24a6df503a 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -1251,6 +1251,8 @@ static int hdcp2_authentication_key_exchange(struct intel_connector *connector)
 	size_t size;
 	int ret;
 
+	hdcp->first_recvid_msg = true;
+
 	/* Init for seq_num */
 	hdcp->seq_num_v = 0;
 	hdcp->seq_num_m = 0;
@@ -1462,6 +1464,16 @@ int hdcp2_authenticate_repeater_topology(struct intel_connector *connector)
 	seq_num_v =
 		drm_hdcp_be24_to_cpu((const u8 *)msgs.recvid_list.seq_num_v);
 
+	/*
+	 * HDCP 2.2 Spec HDMI PAGE 19, DP PAGE 20
+	 * HDCP 2.2 Comp 1B-06 test requires to disable encryption if there is
+	 * non zero seq_num_V from recevier.
+	 */
+	if (hdcp->first_recvid_msg && seq_num_v) {
+		drm_dbg_kms(&dev_priv->drm, "Non zero Seq_num_v at beginning of HDCP Session\n");
+		return -EINVAL;
+	}
+
 	if (seq_num_v < hdcp->seq_num_v) {
 		/* Roll over of the seq_num_v from repeater. Reauthenticate. */
 		DRM_DEBUG_KMS("Seq_num_v roll over.\n");
@@ -1484,6 +1496,7 @@ int hdcp2_authenticate_repeater_topology(struct intel_connector *connector)
 		return ret;
 
 	hdcp->seq_num_v = seq_num_v;
+	hdcp->first_recvid_msg = false;
 	ret = shim->write_2_2_msg(intel_dig_port, &msgs.rep_ack,
 				  sizeof(msgs.rep_ack));
 	if (ret < 0)
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
