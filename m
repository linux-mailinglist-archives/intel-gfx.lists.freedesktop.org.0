Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE5CD15A3FD
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2020 09:53:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55A8689F3B;
	Wed, 12 Feb 2020 08:53:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09C1D89EB8
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Feb 2020 08:53:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 00:52:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,428,1574150400"; d="scan'208";a="256757630"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by fmsmga004.fm.intel.com with ESMTP; 12 Feb 2020 00:52:19 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 12 Feb 2020 14:11:43 +0530
Message-Id: <20200212084143.13852-2-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200212084143.13852-1-anshuman.gupta@intel.com>
References: <20200212084143.13852-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 1/1] drm/i915/hdcp: Mandate zero seq_num_V at
 first RecvId msg
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
hdcp Session i.e. after AKE_init received, refer
HDCP 2.2 Spec HDMI PAGE 19, DP PAGE 20.

HDCP 2.2 Comp specs 1B-06 test verifies that whether DUT
considers failure of authentication if the repeater provides a
non-zero value in seq_num_V in the first,
RepeaterAuth_Send_ReceiverID_List message.

Make sure that HDCP repeater initializes seq_num_V to zero at
beginning of session i.e. after AKE_Init, fail the Auth if
there is non zero seq_num_V.

v2:
- Used existing hdcp2_encrypted flag instead of
  declaring new flag. [Ram]

Cc: Ramalingam C <ramalingam.c@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 30e0a3aa9d57..75f60ca282fc 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -1462,6 +1462,12 @@ int hdcp2_authenticate_repeater_topology(struct intel_connector *connector)
 	seq_num_v =
 		drm_hdcp_be24_to_cpu((const u8 *)msgs.recvid_list.seq_num_v);
 
+	if (!hdcp->hdcp2_encrypted && seq_num_v) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "Non zero Seq_num_v at first RecvId_List msg\n");
+		return -EINVAL;
+	}
+
 	if (seq_num_v < hdcp->seq_num_v) {
 		/* Roll over of the seq_num_v from repeater. Reauthenticate. */
 		DRM_DEBUG_KMS("Seq_num_v roll over.\n");
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
