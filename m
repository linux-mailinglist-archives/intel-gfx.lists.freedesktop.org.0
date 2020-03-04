Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B77AE178ED0
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Mar 2020 11:47:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A8F16EB1F;
	Wed,  4 Mar 2020 10:47:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48D446EB32
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Mar 2020 10:47:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Mar 2020 02:47:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,513,1574150400"; d="scan'208";a="413107968"
Received: from ramaling-i9x.iind.intel.com ([10.99.66.154])
 by orsmga005.jf.intel.com with ESMTP; 04 Mar 2020 02:47:39 -0800
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>
Date: Wed,  4 Mar 2020 16:17:38 +0530
Message-Id: <20200304104738.5398-3-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200304104738.5398-1-ramalingam.c@intel.com>
References: <20200304104738.5398-1-ramalingam.c@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 2/2] drm/i915: dont retry stream management
 at seq_num_m roll over
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

When roll over detected for seq_num_m, we shouldn't continue with stream
management with rolled over value.

So we are terminating the stream management retry, on roll over of the
seq_num_m.

v2:
  using drm_dbg_kms instead of DRM_DEBUG_KMS [Anshuman]
v3:
  dev_priv is used as i915 [JaniN]
v4:
  roll over is detected at the start of the stream management.

Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com> [v3]
Tested-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 85e1e8cf16c7..7b470502feaa 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -1399,6 +1399,9 @@ int _hdcp2_propagate_stream_management_info(struct intel_connector *connector)
 	const struct intel_hdcp_shim *shim = hdcp->shim;
 	int ret;
 
+	if (connector->hdcp.seq_num_m > HDCP_2_2_SEQ_NUM_MAX)
+		return -ERANGE;
+
 	/* Prepare RepeaterAuth_Stream_Manage msg */
 	msgs.stream_manage.msg_id = HDCP_2_2_REP_STREAM_MANAGE;
 	drm_hdcp_cpu_to_be24(msgs.stream_manage.seq_num_m, hdcp->seq_num_m);
@@ -1427,11 +1430,6 @@ int _hdcp2_propagate_stream_management_info(struct intel_connector *connector)
 
 out:
 	hdcp->seq_num_m++;
-	if (hdcp->seq_num_m > HDCP_2_2_SEQ_NUM_MAX) {
-		DRM_DEBUG_KMS("seq_num_m roll over.\n");
-		ret = -ERANGE;
-	}
-
 	return ret;
 }
 
@@ -1639,6 +1637,13 @@ hdcp2_propagate_stream_management_info(struct intel_connector *connector)
 		if (!ret)
 			break;
 
+		/* Lets restart the auth incase of seq_num_m roll over */
+		if (connector->hdcp.seq_num_m > HDCP_2_2_SEQ_NUM_MAX) {
+			drm_dbg_kms(&i915->drm,
+				    "seq_num_m roll over.(%d)\n", ret);
+			break;
+		}
+
 		drm_dbg_kms(&i915->drm,
 			    "HDCP2 stream management %d of %d Failed.(%d)\n",
 			    i + 1, tries, ret);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
