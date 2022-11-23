Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D7AE6636D2B
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 23:32:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC45B10E652;
	Wed, 23 Nov 2022 22:31:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B444310E653
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 22:31:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669242701; x=1700778701;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=p55oLBleVUGniiHkEex2lY3MhZ0QkmQ0VS8BlPWrCic=;
 b=MXw207NAygGkTWS722Aq6d+ZObT52jftvVhHFSD6v9HKN3E9WmhoxMO4
 qDrAzyTyCjabEd4acNmRjdvXOczdI8+z8kQDUI74ny8jUg7dFil6qU/G4
 sLVA4tXZmE6T/ksqw5djkFD5naqzwXX7JBluGfuDqx7kHd2mzkTG5GEzi
 U9cUykcrg90g7YFojuotyJvRm/em8F0AbYC1IuJtv2G2DfPfGpw2b4hx7
 1CXB6lNd02d5qf9FzSh7OGX6dkxys/RCTvYJpc75ZmyilrlG//S6r+eUf
 AjZg8ldrmBOR0IgkYszE6B0g2M8YiXwRl4ES94DucS7beFhdpgv0UdURH A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="293875379"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="293875379"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 14:31:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="784404453"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="784404453"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga001.fm.intel.com with ESMTP; 23 Nov 2022 14:31:40 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Nov 2022 14:34:06 -0800
Message-Id: <20221123223410.2846296-4-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221123223410.2846296-1-alan.previn.teres.alexis@intel.com>
References: <20221123223410.2846296-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 3/7] drm/i915/pxp: Abstract mei-teelink function
 access via backend ptrs
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

Abstract mei-teelink function access via backend ptrs

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/pxp/intel_pxp_huc.c     |   9 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_session.c |   2 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c     | 107 ++++++++++++++-----
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.h     |  15 ++-
 drivers/gpu/drm/i915/pxp/intel_pxp_types.h   |  22 ++++
 5 files changed, 112 insertions(+), 43 deletions(-)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c b/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c
index 2e1165522950..043344dbf566 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c
@@ -23,8 +23,6 @@ int intel_pxp_huc_load_and_auth(struct intel_pxp *pxp)
 	struct pxp43_start_huc_auth_in huc_in = {0};
 	struct pxp43_start_huc_auth_out huc_out = {0};
 	dma_addr_t huc_phys_addr;
-	u8 client_id = 0;
-	u8 fence_id = 0;
 	int err;
 
 	if (!pxp->pxp_component)
@@ -39,9 +37,10 @@ int intel_pxp_huc_load_and_auth(struct intel_pxp *pxp)
 	huc_in.header.buffer_len  = sizeof(huc_in.huc_base_address);
 	huc_in.huc_base_address   = huc_phys_addr;
 
-	err = intel_pxp_tee_stream_message(pxp, client_id, fence_id,
-					   &huc_in, sizeof(huc_in),
-					   &huc_out, sizeof(huc_out));
+	err = intel_pxp_teelink_send_message(pxp,
+					     &huc_in, sizeof(huc_in),
+					     &huc_out, sizeof(huc_out),
+					     NULL);
 	if (err < 0) {
 		drm_err(&gt->i915->drm,
 			"Failed to send HuC load and auth command to GSC [%d]!\n",
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
index 85572360c71a..dec209e57596 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
@@ -66,7 +66,7 @@ static int pxp_create_arb_session(struct intel_pxp *pxp)
 		return -EEXIST;
 	}
 
-	ret = intel_pxp_tee_cmd_create_arb_session(pxp, ARB_SESSION);
+	ret = intel_pxp_teelink_create_session(pxp, ARB_SESSION);
 	if (ret) {
 		drm_err(&gt->i915->drm, "tee cmd for arb session creation failed\n");
 		return ret;
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
index 23a848b52c75..fa41f4224333 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
@@ -28,10 +28,10 @@ static inline struct intel_pxp *i915_dev_to_pxp(struct device *i915_kdev)
 	return &gt->pxp;
 }
 
-static int intel_pxp_tee_io_message(struct intel_pxp *pxp,
-				    void *msg_in, u32 msg_in_size,
-				    void *msg_out, u32 msg_out_max_size,
-				    u32 *msg_out_rcv_size)
+static int mei_tee_io_message(struct intel_pxp *pxp,
+			      void *msg_in, size_t msg_in_size,
+			      void *msg_out, size_t msg_out_max_size,
+			      size_t *msg_out_size)
 {
 	struct drm_i915_private *i915 = pxp_to_gt(pxp)->i915;
 	struct i915_pxp_component *pxp_component = pxp->pxp_component;
@@ -67,8 +67,8 @@ static int intel_pxp_tee_io_message(struct intel_pxp *pxp,
 		goto unlock;
 	}
 
-	if (msg_out_rcv_size)
-		*msg_out_rcv_size = ret;
+	if (msg_out_size)
+		*msg_out_size = ret;
 
 	ret = 0;
 unlock:
@@ -76,10 +76,10 @@ static int intel_pxp_tee_io_message(struct intel_pxp *pxp,
 	return ret;
 }
 
-int intel_pxp_tee_stream_message(struct intel_pxp *pxp,
-				 u8 client_id, u32 fence_id,
-				 void *msg_in, size_t msg_in_len,
-				 void *msg_out, size_t msg_out_len)
+static int mei_tee_gsc_stream_message(struct intel_pxp *pxp,
+				      void *msg_in, size_t msg_in_size,
+				      void *msg_out, size_t msg_out_max_size,
+				      size_t *msg_out_size)
 {
 	/* TODO: for bigger objects we need to use a sg of 4k pages */
 	const size_t max_msg_size = PAGE_SIZE;
@@ -89,7 +89,7 @@ int intel_pxp_tee_stream_message(struct intel_pxp *pxp,
 	struct scatterlist *sg;
 	int ret;
 
-	if (msg_in_len > max_msg_size || msg_out_len > max_msg_size)
+	if (msg_in_size > max_msg_size || msg_out_max_size > max_msg_size)
 		return -ENOSPC;
 
 	mutex_lock(&pxp->tee_mutex);
@@ -103,14 +103,14 @@ int intel_pxp_tee_stream_message(struct intel_pxp *pxp,
 
 	sg = i915_gem_object_get_sg_dma(pxp->stream_cmd.obj, 0, &offset);
 
-	memcpy(pxp->stream_cmd.vaddr, msg_in, msg_in_len);
+	memcpy(pxp->stream_cmd.vaddr, msg_in, msg_in_size);
 
-	ret = pxp_component->ops->gsc_command(pxp_component->tee_dev, client_id,
-					      fence_id, sg, msg_in_len, sg);
+	ret = pxp_component->ops->gsc_command(pxp_component->tee_dev, 0, 0,
+					      sg, msg_in_size, sg);
 	if (ret < 0)
 		drm_err(&i915->drm, "Failed to send PXP TEE gsc command\n");
 	else
-		memcpy(msg_out, pxp->stream_cmd.vaddr, msg_out_len);
+		memcpy(msg_out, pxp->stream_cmd.vaddr, msg_out_max_size);
 
 unlock:
 	mutex_unlock(&pxp->tee_mutex);
@@ -251,7 +251,7 @@ static void free_streaming_command(struct intel_pxp *pxp)
 	i915_gem_object_put(obj);
 }
 
-int intel_pxp_tee_component_init(struct intel_pxp *pxp)
+static int mei_tee_component_init(struct intel_pxp *pxp)
 {
 	int ret;
 	struct intel_gt *gt = pxp_to_gt(pxp);
@@ -279,7 +279,7 @@ int intel_pxp_tee_component_init(struct intel_pxp *pxp)
 	return ret;
 }
 
-void intel_pxp_tee_component_fini(struct intel_pxp *pxp)
+static void mei_tee_component_fini(struct intel_pxp *pxp)
 {
 	struct drm_i915_private *i915 = pxp_to_gt(pxp)->i915;
 
@@ -292,8 +292,8 @@ void intel_pxp_tee_component_fini(struct intel_pxp *pxp)
 	free_streaming_command(pxp);
 }
 
-int intel_pxp_tee_cmd_create_arb_session(struct intel_pxp *pxp,
-					 int arb_session_id)
+static int mei_tee_create_session(struct intel_pxp *pxp,
+				  int session_id)
 {
 	struct drm_i915_private *i915 = pxp_to_gt(pxp)->i915;
 	struct pxp42_create_arb_in msg_in = {0};
@@ -304,12 +304,12 @@ int intel_pxp_tee_cmd_create_arb_session(struct intel_pxp *pxp,
 	msg_in.header.command_id = PXP42_CMDID_INIT_SESSION;
 	msg_in.header.buffer_len = sizeof(msg_in) - sizeof(msg_in.header);
 	msg_in.protection_mode = PXP42_ARB_SESSION_MODE_HEAVY;
-	msg_in.session_id = arb_session_id;
+	msg_in.session_id = session_id;
 
-	ret = intel_pxp_tee_io_message(pxp,
-				       &msg_in, sizeof(msg_in),
-				       &msg_out, sizeof(msg_out),
-				       NULL);
+	ret = mei_tee_io_message(pxp,
+				 &msg_in, sizeof(msg_in),
+				 &msg_out, sizeof(msg_out),
+				 NULL);
 
 	if (ret)
 		drm_err(&i915->drm, "Failed to send tee msg ret=[%d]\n", ret);
@@ -320,6 +320,54 @@ int intel_pxp_tee_cmd_create_arb_session(struct intel_pxp *pxp,
 	return ret;
 }
 
+int intel_pxp_teelink_create_session(struct intel_pxp *pxp,
+				     int arb_session_id)
+{
+	struct drm_i915_private *i915 = pxp_to_gt(pxp)->i915;
+	int ret;
+
+	if (!pxp->tee_link.create_session)
+		ret = -ENOLINK;
+	else
+		ret = pxp->tee_link.create_session(pxp, arb_session_id);
+
+	if (ret)
+		drm_err(&i915->drm, "Failed to send tee msg ret=[%d]\n", ret);
+
+	return ret;
+}
+
+int intel_pxp_teelink_send_message(struct intel_pxp *pxp,
+				   void *msg_in, size_t msg_in_size,
+				   void *msg_out, size_t msg_out_size,
+				   size_t *msg_out_max_size)
+{
+	struct drm_i915_private *i915 = pxp_to_gt(pxp)->i915;
+
+	if (!pxp->tee_link.send_message) {
+		drm_dbg(&i915->drm, "Failed on func ptr for TEE send_message\n");
+		return -ENOLINK;
+	}
+
+	return pxp->tee_link.send_message(pxp,
+					  msg_in, msg_in_size,
+					  msg_out, msg_out_size,
+					  msg_out_max_size);
+}
+
+static void mei_tee_init_hooks(struct intel_pxp *pxp)
+{
+	struct drm_i915_private *i915 = pxp_to_gt(pxp)->i915;
+
+	pxp->tee_link.init = mei_tee_component_init;
+	pxp->tee_link.fini = mei_tee_component_fini;
+	pxp->tee_link.create_session = mei_tee_create_session;
+	if (IS_DG2(i915))
+		pxp->tee_link.send_message = mei_tee_gsc_stream_message;
+	else
+		pxp->tee_link.send_message = mei_tee_io_message;
+}
+
 static bool gt_supports_teelink_via_mei(struct intel_gt *gt)
 {
 	return (IS_ENABLED(CONFIG_INTEL_MEI_PXP) && !HAS_ENGINE(gt, GSC0));
@@ -333,15 +381,18 @@ int intel_pxp_teelink_init(struct intel_pxp *pxp)
 	if (!gt_supports_teelink_via_mei(gt))
 		return -ENODEV;
 
-	ret = intel_pxp_tee_component_init(pxp);
+	mei_tee_init_hooks(pxp);
+
+	if (pxp->tee_link.init)
+		ret = pxp->tee_link.init(pxp);
 	if (ret)
-		drm_warn(&gt->i915->drm, "Teelink initialization failed with %d\n", ret);
+		drm_warn(&gt->i915->drm, "Tee transport initialization failed with %d\n", ret);
 
 	return ret;
 }
 
 void intel_pxp_teelink_fini(struct intel_pxp *pxp)
 {
-	intel_pxp_tee_component_fini(pxp);
+	if (pxp->tee_link.fini)
+		pxp->tee_link.fini(pxp);
 }
-
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h
index 62995e95773f..4c1d38fa314a 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h
@@ -8,16 +8,13 @@
 
 #include "intel_pxp.h"
 
-int intel_pxp_tee_component_init(struct intel_pxp *pxp);
-void intel_pxp_tee_component_fini(struct intel_pxp *pxp);
+int intel_pxp_teelink_send_message(struct intel_pxp *pxp,
+				   void *msg_in, size_t msg_in_size,
+				   void *msg_out, size_t msg_out_size,
+				   size_t *msg_out_max_size);
 
-int intel_pxp_tee_cmd_create_arb_session(struct intel_pxp *pxp,
-					 int arb_session_id);
-
-int intel_pxp_tee_stream_message(struct intel_pxp *pxp,
-				 u8 client_id, u32 fence_id,
-				 void *msg_in, size_t msg_in_len,
-				 void *msg_out, size_t msg_out_len);
+int intel_pxp_teelink_create_session(struct intel_pxp *pxp,
+				     int arb_session_id);
 
 int intel_pxp_teelink_init(struct intel_pxp *pxp);
 void intel_pxp_teelink_fini(struct intel_pxp *pxp);
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
index f74b1e11a505..6de79a46ceed 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
@@ -82,6 +82,28 @@ struct intel_pxp {
 #define PXP_TERMINATION_REQUEST  BIT(0)
 #define PXP_TERMINATION_COMPLETE BIT(1)
 #define PXP_INVAL_REQUIRED       BIT(2)
+
+	/**
+	 * @tee_link: function pointers to backend tee transport layer.
+	 * These hooks will point to device specific implementations.
+	 */
+	struct {
+		/* Called to initialize the backend transport resources.*/
+		int (*init)(struct intel_pxp *pxp);
+
+		/* Called to free the backend transport resources.*/
+		void (*fini)(struct intel_pxp *pxp);
+
+		/* Called to create a pxp session.*/
+		int (*create_session)(struct intel_pxp *pxp, int session_id);
+
+		/* Called to send message packets to pxp firmware.*/
+		int (*send_message)(struct intel_pxp *pxp,
+				    void *msg_in, size_t msg_in_len,
+				    void *msg_out, size_t msg_out_max_len,
+				    size_t *msg_out_len);
+	} tee_link;
+
 };
 
 #endif /* __INTEL_PXP_TYPES_H__ */
-- 
2.34.1

