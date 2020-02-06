Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AFE1C15476F
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2020 16:15:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D900F89F2E;
	Thu,  6 Feb 2020 15:15:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E01C89F2E
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Feb 2020 15:15:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Feb 2020 07:15:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,410,1574150400"; d="scan'208";a="226176032"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by fmsmga008.fm.intel.com with ESMTP; 06 Feb 2020 07:15:01 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  6 Feb 2020 20:34:42 +0530
Message-Id: <20200206150442.32353-3-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200206150442.32353-1-anshuman.gupta@intel.com>
References: <20200206150442.32353-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/hdcp: Fix 1B-10 HDCP 2.2 Comp test
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

1B-10 HDCP Comp test verifies that source DUT reattempts
Content Stream Management following a failure of Content
Stream Management, 1B-10 test fail if source DUT tries
reauthentication following a Content Stream Management
failure.
Fixing this broken test.

Cc: Ramalingam C <ramalingam.c@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  3 ++
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 32 ++++++++++++++++---
 2 files changed, 31 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 2ae540e986ba..9232c4e0e42e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -363,6 +363,9 @@ struct intel_hdcp {
 	/* Flag indicate if it is a first ReceiverID_List msg after AKE_Init */
 	bool first_recvid_msg;
 
+	/* Flag indicate whether reauth retries req */
+	bool reauth_req;
+
 	/*
 	 * Content Stream Type defined by content owner. TYPE0(0x0) content can
 	 * flow in the link protected by HDCP2.2 or HDCP1.4, where as TYPE1(0x1)
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 3e24a6df503a..ed523de20eac 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -1507,13 +1507,35 @@ int hdcp2_authenticate_repeater_topology(struct intel_connector *connector)
 
 static int hdcp2_authenticate_repeater(struct intel_connector *connector)
 {
-	int ret;
+	int ret, i, tries = 3;
+	struct intel_hdcp *hdcp = &connector->hdcp;
+	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 
 	ret = hdcp2_authenticate_repeater_topology(connector);
 	if (ret < 0)
 		return ret;
 
-	return hdcp2_propagate_stream_management_info(connector);
+	/*
+	 * HDCP 2.2 HDCP Spec Stream Managemnt pass/fail transition
+	 * to HDCP authticate state i.e. A9->A5.
+	 * if it fails, retry for stream managemnt again and skip the reauth.
+	 */
+	for (i = 0; i < tries; i++) {
+		ret = hdcp2_propagate_stream_management_info(connector);
+		if (!ret) {
+			hdcp->reauth_req  = true;
+			break;
+		}
+
+		hdcp->seq_num_m++;
+		drm_dbg_kms(&dev_priv->drm, "HDCP2.2 stream management %d of %d Failed.(%d)\n",
+			    i + 1, tries, ret);
+	}
+
+	if (ret)
+		hdcp->reauth_req  = false;
+
+	return ret;
 }
 
 static int hdcp2_authenticate_sink(struct intel_connector *connector)
@@ -1642,10 +1664,11 @@ static int hdcp2_disable_encryption(struct intel_connector *connector)
 static int hdcp2_authenticate_and_encrypt(struct intel_connector *connector)
 {
 	int ret, i, tries = 3;
+	struct intel_hdcp *hdcp = &connector->hdcp;
 
 	for (i = 0; i < tries; i++) {
 		ret = hdcp2_authenticate_sink(connector);
-		if (!ret)
+		if (!ret || !hdcp->reauth_req)
 			break;
 
 		/* Clearing the mei hdcp session */
@@ -1655,7 +1678,7 @@ static int hdcp2_authenticate_and_encrypt(struct intel_connector *connector)
 			DRM_DEBUG_KMS("Port deauth failed.\n");
 	}
 
-	if (i != tries) {
+	if (!ret) {
 		/*
 		 * Ensuring the required 200mSec min time interval between
 		 * Session Key Exchange and encryption.
@@ -1681,6 +1704,7 @@ static int _intel_hdcp2_enable(struct intel_connector *connector)
 		      connector->base.name, connector->base.base.id,
 		      hdcp->content_type);
 
+	hdcp->reauth_req  = true;
 	ret = hdcp2_authenticate_and_encrypt(connector);
 	if (ret) {
 		DRM_DEBUG_KMS("HDCP2 Type%d  Enabling Failed. (%d)\n",
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
