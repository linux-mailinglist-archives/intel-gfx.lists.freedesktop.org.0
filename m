Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAF1B636D2D
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 23:32:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A093610E653;
	Wed, 23 Nov 2022 22:31:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC9F210E655
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 22:31:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669242701; x=1700778701;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ewL94pPjF2En/3MY8fUOIpCj2aEWeCM2hlBMSYYtcQg=;
 b=bXpCaDNxY5nmeuadUzFIRdDYm4Icvv7MqPJueO4GWssCzGHE2JkSeZgn
 ojpMwXt9ZEZ8u1J7aHsBGGwwHNUFXiWreUOLOo6ctrAcOuewT4LnyxbyU
 1qZA+O7pA+I/lyHjCX8H0SVU3cUfyLapfFlgsflxK/PJVCnOL0syhqv2h
 hEK07BRp7/jc3bchcI2JTYJjOQc4hB2cAj2Y4OCyo2BD89l4DI6hZN2wU
 9xW3B7WILVHuh/duyG830+xUtmW9f/FfLQD0vEQr2aKgyZJ5tvl7ZN79M
 1Ekh1vWmJPkZBsgHXKhOE3iSsTN73XAi0EBRMMSXWUF3WKF9qZZm/jhag w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="293875381"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="293875381"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 14:31:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="784404455"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="784404455"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga001.fm.intel.com with ESMTP; 23 Nov 2022 14:31:40 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Nov 2022 14:34:08 -0800
Message-Id: <20221123223410.2846296-6-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221123223410.2846296-1-alan.previn.teres.alexis@intel.com>
References: <20221123223410.2846296-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 5/7] drm/i915/pxp: move mei-pxp and mei-gsc
 resources to be backend-private
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

drm/i915/pxp: move mei-pxp and mei-gsc resources to be backend-private

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/pxp/intel_pxp.c         |  14 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_huc.c     |   4 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.c      |   3 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c     |   8 ++
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.h     |   2 +
 drivers/gpu/drm/i915/pxp/intel_pxp_tee_mei.c | 143 +++++++++++++------
 drivers/gpu/drm/i915/pxp/intel_pxp_types.h   |  38 ++---
 7 files changed, 132 insertions(+), 80 deletions(-)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index 33f86bb05148..49105bb1d694 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -230,18 +230,6 @@ static void pxp_queue_termination(struct intel_pxp *pxp)
 	spin_unlock_irq(gt->irq_lock);
 }
 
-static bool pxp_component_bound(struct intel_pxp *pxp)
-{
-	bool bound = false;
-
-	mutex_lock(&pxp->tee_mutex);
-	if (pxp->pxp_component)
-		bound = true;
-	mutex_unlock(&pxp->tee_mutex);
-
-	return bound;
-}
-
 /*
  * the arb session is restarted from the irq work when we receive the
  * termination completion interrupt
@@ -260,7 +248,7 @@ int intel_pxp_start(struct drm_i915_private *i915)
 	if (!intel_pxp_is_enabled_on_gt(pxp))
 		return -ENODEV;
 
-	if (wait_for(pxp_component_bound(pxp), 250))
+	if (wait_for(intel_pxp_teelink_is_ready(pxp), 250))
 		return -ENXIO;
 
 	mutex_lock(&pxp->arb_mutex);
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c b/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c
index 043344dbf566..69ee261a1f7e 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c
@@ -11,10 +11,10 @@
 #include "gt/intel_gt.h"
 
 #include "intel_pxp.h"
+#include "intel_pxp_cmd_interface_43.h"
 #include "intel_pxp_huc.h"
 #include "intel_pxp_tee.h"
 #include "intel_pxp_types.h"
-#include "intel_pxp_cmd_interface_43.h"
 
 int intel_pxp_huc_load_and_auth(struct intel_pxp *pxp)
 {
@@ -25,7 +25,7 @@ int intel_pxp_huc_load_and_auth(struct intel_pxp *pxp)
 	dma_addr_t huc_phys_addr;
 	int err;
 
-	if (!pxp->pxp_component)
+	if (!intel_pxp_teelink_is_ready(pxp))
 		return -ENODEV;
 
 	huc_phys_addr = i915_gem_object_get_dma_address(huc->fw.obj, 0);
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
index 19ac8828cbde..dc907a338fdb 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
@@ -7,6 +7,7 @@
 #include "intel_pxp_irq.h"
 #include "intel_pxp_pm.h"
 #include "intel_pxp_session.h"
+#include "intel_pxp_tee.h"
 #include "i915_drv.h"
 
 void intel_pxp_suspend_prepare(struct intel_pxp *pxp)
@@ -42,7 +43,7 @@ void intel_pxp_resume(struct intel_pxp *pxp)
 	 * re-bound after we come out, so in that scenario we can defer the
 	 * hw init to the bind call.
 	 */
-	if (!pxp->pxp_component)
+	if (!intel_pxp_teelink_is_ready(pxp))
 		return;
 
 	intel_pxp_init_hw(pxp);
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
index 034e2eee5075..1171f339643c 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
@@ -43,6 +43,14 @@ int intel_pxp_teelink_send_message(struct intel_pxp *pxp,
 					  msg_out_max_size);
 }
 
+bool intel_pxp_teelink_is_ready(struct intel_pxp *pxp)
+{
+	if (pxp->tee_link.is_ready)
+		return pxp->tee_link.is_ready(pxp);
+
+	return false;
+}
+
 static bool gt_supports_teelink_via_mei(struct intel_gt *gt)
 {
 	return (IS_ENABLED(CONFIG_INTEL_MEI_PXP) && !HAS_ENGINE(gt, GSC0));
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h
index 6c09fa11bcca..46852f164e36 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h
@@ -13,6 +13,8 @@ struct intel_pxp;
 int intel_pxp_teelink_init(struct intel_pxp *pxp);
 void intel_pxp_teelink_fini(struct intel_pxp *pxp);
 
+bool intel_pxp_teelink_is_ready(struct intel_pxp *pxp);
+
 int intel_pxp_teelink_create_session(struct intel_pxp *pxp,
 				     int arb_session_id);
 
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee_mei.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee_mei.c
index cd54219ced06..a81e8859335e 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee_mei.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee_mei.c
@@ -17,6 +17,34 @@
 #include "intel_pxp_session.h"
 #include "intel_pxp_tee_mei.h"
 
+struct mei_teelink_priv {
+	/**
+	 * @pxp_component: i915_pxp_component struct of the bound mei_pxp
+	 * module. Only set and cleared inside component bind/unbind functions,
+	 * which are protected by &tee_mutex.
+	 */
+	struct i915_pxp_component *pxp_component;
+	/**
+	 * @pxp_component_added: track if the pxp component has been added.
+	 * Set and cleared in tee init and fini functions respectively.
+	 */
+	bool pxp_component_added;
+
+	/** @tee_mutex: protects the tee channel binding and messaging. */
+	struct mutex tee_mutex;
+
+	/** @stream_cmd: LMEM obj used to send stream PXP commands to the GSC */
+	struct {
+		struct drm_i915_gem_object *obj; /* contains PXP command memory */
+		void *vaddr; /* virtual memory for PXP command */
+	} stream_cmd;
+};
+
+static inline struct mei_teelink_priv *pxp_to_mei_priv(struct intel_pxp *pxp)
+{
+	return (struct mei_teelink_priv *)pxp->tee_link.priv;
+}
+
 static inline struct intel_pxp *i915_dev_to_pxp(struct device *i915_kdev)
 {
 	struct drm_i915_private *i915 = kdev_to_i915(i915_kdev);
@@ -34,10 +62,11 @@ static int mei_tee_io_message(struct intel_pxp *pxp,
 			      size_t *msg_out_size)
 {
 	struct drm_i915_private *i915 = pxp_to_gt(pxp)->i915;
-	struct i915_pxp_component *pxp_component = pxp->pxp_component;
+	struct mei_teelink_priv *mei = pxp_to_mei_priv(pxp);
+	struct i915_pxp_component *pxp_component = mei->pxp_component;
 	int ret = 0;
 
-	mutex_lock(&pxp->tee_mutex);
+	mutex_lock(&mei->tee_mutex);
 
 	/*
 	 * The binding of the component is asynchronous from i915 probe, so we
@@ -72,7 +101,7 @@ static int mei_tee_io_message(struct intel_pxp *pxp,
 
 	ret = 0;
 unlock:
-	mutex_unlock(&pxp->tee_mutex);
+	mutex_unlock(&mei->tee_mutex);
 	return ret;
 }
 
@@ -84,7 +113,8 @@ static int mei_tee_gsc_stream_message(struct intel_pxp *pxp,
 	/* TODO: for bigger objects we need to use a sg of 4k pages */
 	const size_t max_msg_size = PAGE_SIZE;
 	struct drm_i915_private *i915 = pxp_to_gt(pxp)->i915;
-	struct i915_pxp_component *pxp_component = pxp->pxp_component;
+	struct mei_teelink_priv *mei = pxp_to_mei_priv(pxp);
+	struct i915_pxp_component *pxp_component = mei->pxp_component;
 	unsigned int offset = 0;
 	struct scatterlist *sg;
 	int ret;
@@ -92,28 +122,28 @@ static int mei_tee_gsc_stream_message(struct intel_pxp *pxp,
 	if (msg_in_size > max_msg_size || msg_out_max_size > max_msg_size)
 		return -ENOSPC;
 
-	mutex_lock(&pxp->tee_mutex);
+	mutex_lock(&mei->tee_mutex);
 
 	if (unlikely(!pxp_component || !pxp_component->ops->gsc_command)) {
 		ret = -ENODEV;
 		goto unlock;
 	}
 
-	GEM_BUG_ON(!pxp->stream_cmd.obj);
+	GEM_BUG_ON(!mei->stream_cmd.obj);
 
-	sg = i915_gem_object_get_sg_dma(pxp->stream_cmd.obj, 0, &offset);
+	sg = i915_gem_object_get_sg_dma(mei->stream_cmd.obj, 0, &offset);
 
-	memcpy(pxp->stream_cmd.vaddr, msg_in, msg_in_size);
+	memcpy(mei->stream_cmd.vaddr, msg_in, msg_in_size);
 
 	ret = pxp_component->ops->gsc_command(pxp_component->tee_dev, 0, 0,
 					      sg, msg_in_size, sg);
 	if (ret < 0)
 		drm_err(&i915->drm, "Failed to send PXP TEE gsc command\n");
 	else
-		memcpy(msg_out, pxp->stream_cmd.vaddr, msg_out_max_size);
+		memcpy(msg_out, mei->stream_cmd.vaddr, msg_out_max_size);
 
 unlock:
-	mutex_unlock(&pxp->tee_mutex);
+	mutex_unlock(&mei->tee_mutex);
 	return ret;
 }
 
@@ -127,11 +157,12 @@ static int mei_tee_gsc_stream_message(struct intel_pxp *pxp,
  *
  * Return: return 0 if successful.
  */
-static int i915_pxp_tee_component_bind(struct device *i915_kdev,
+static int i915_mei_tee_component_bind(struct device *i915_kdev,
 				       struct device *tee_kdev, void *data)
 {
 	struct drm_i915_private *i915 = kdev_to_i915(i915_kdev);
 	struct intel_pxp *pxp = i915_dev_to_pxp(i915_kdev);
+	struct mei_teelink_priv *mei = pxp_to_mei_priv(pxp);
 	struct intel_uc *uc;
 	intel_wakeref_t wakeref;
 	int ret = 0;
@@ -142,10 +173,10 @@ static int i915_pxp_tee_component_bind(struct device *i915_kdev,
 	}
 	uc = &pxp_to_gt(pxp)->uc;
 
-	mutex_lock(&pxp->tee_mutex);
-	pxp->pxp_component = data;
-	pxp->pxp_component->tee_dev = tee_kdev;
-	mutex_unlock(&pxp->tee_mutex);
+	mutex_lock(&mei->tee_mutex);
+	mei->pxp_component = data;
+	mei->pxp_component->tee_dev = tee_kdev;
+	mutex_unlock(&mei->tee_mutex);
 
 	if (intel_uc_uses_huc(uc) && intel_huc_is_loaded_by_gsc(&uc->huc)) {
 		with_intel_runtime_pm(&i915->runtime_pm, wakeref) {
@@ -170,36 +201,38 @@ static int i915_pxp_tee_component_bind(struct device *i915_kdev,
 	return ret;
 }
 
-static void i915_pxp_tee_component_unbind(struct device *i915_kdev,
+static void i915_mei_tee_component_unbind(struct device *i915_kdev,
 					  struct device *tee_kdev, void *data)
 {
 	struct drm_i915_private *i915 = kdev_to_i915(i915_kdev);
 	struct intel_pxp *pxp = i915_dev_to_pxp(i915_kdev);
+	struct mei_teelink_priv *mei = pxp_to_mei_priv(pxp);
 	intel_wakeref_t wakeref;
 
 	if (intel_pxp_is_enabled_on_gt(pxp))
 		with_intel_runtime_pm_if_in_use(&i915->runtime_pm, wakeref)
 			intel_pxp_fini_hw(pxp);
 
-	mutex_lock(&pxp->tee_mutex);
-	pxp->pxp_component = NULL;
-	mutex_unlock(&pxp->tee_mutex);
+	mutex_lock(&mei->tee_mutex);
+	mei->pxp_component = NULL;
+	mutex_unlock(&mei->tee_mutex);
 }
 
-static const struct component_ops i915_pxp_tee_component_ops = {
-	.bind   = i915_pxp_tee_component_bind,
-	.unbind = i915_pxp_tee_component_unbind,
+static const struct component_ops i915_mei_tee_component_ops = {
+	.bind   = i915_mei_tee_component_bind,
+	.unbind = i915_mei_tee_component_unbind,
 };
 
-static int alloc_streaming_command(struct intel_pxp *pxp)
+static int mei_tee_alloc_streaming_command(struct intel_pxp *pxp)
 {
 	struct drm_i915_private *i915 = pxp_to_gt(pxp)->i915;
+	struct mei_teelink_priv *mei = pxp_to_mei_priv(pxp);
 	struct drm_i915_gem_object *obj = NULL;
 	void *cmd;
 	int err;
 
-	pxp->stream_cmd.obj = NULL;
-	pxp->stream_cmd.vaddr = NULL;
+	mei->stream_cmd.obj = NULL;
+	mei->stream_cmd.vaddr = NULL;
 
 	if (!IS_DGFX(i915))
 		return 0;
@@ -227,8 +260,8 @@ static int alloc_streaming_command(struct intel_pxp *pxp)
 
 	memset(cmd, 0, obj->base.size);
 
-	pxp->stream_cmd.obj = obj;
-	pxp->stream_cmd.vaddr = cmd;
+	mei->stream_cmd.obj = obj;
+	mei->stream_cmd.vaddr = cmd;
 
 	return 0;
 
@@ -239,9 +272,9 @@ static int alloc_streaming_command(struct intel_pxp *pxp)
 	return err;
 }
 
-static void free_streaming_command(struct intel_pxp *pxp)
+static void mei_tee_free_streaming_command(struct intel_pxp *pxp)
 {
-	struct drm_i915_gem_object *obj = fetch_and_zero(&pxp->stream_cmd.obj);
+	struct drm_i915_gem_object *obj = fetch_and_zero(&pxp_to_mei_priv(pxp)->stream_cmd.obj);
 
 	if (!obj)
 		return;
@@ -251,45 +284,74 @@ static void free_streaming_command(struct intel_pxp *pxp)
 	i915_gem_object_put(obj);
 }
 
+static bool mei_tee_is_component_bound(struct intel_pxp *pxp)
+{
+	struct mei_teelink_priv *mei = pxp_to_mei_priv(pxp);
+	bool bound = false;
+
+	mutex_lock(&mei->tee_mutex);
+	if (mei->pxp_component)
+		bound = true;
+	mutex_unlock(&mei->tee_mutex);
+
+	return bound;
+}
+
 static int mei_tee_component_init(struct intel_pxp *pxp)
 {
 	int ret;
 	struct intel_gt *gt = pxp_to_gt(pxp);
 	struct drm_i915_private *i915 = gt->i915;
+	struct mei_teelink_priv *mei;
+
+	mei = kzalloc(sizeof(*mei), GFP_KERNEL);
+	if (!mei)
+		return -ENOMEM;
 
-	mutex_init(&pxp->tee_mutex);
+	pxp->tee_link.priv = mei;
 
-	ret = alloc_streaming_command(pxp);
+	mutex_init(&mei->tee_mutex);
+
+	ret = mei_tee_alloc_streaming_command(pxp);
 	if (ret)
-		return ret;
+		goto out_free;
 
-	ret = component_add_typed(i915->drm.dev, &i915_pxp_tee_component_ops,
+	ret = component_add_typed(i915->drm.dev, &i915_mei_tee_component_ops,
 				  I915_COMPONENT_PXP);
 	if (ret < 0) {
 		drm_err(&i915->drm, "Failed to add PXP component (%d)\n", ret);
-		goto out_free;
+		goto out_free_stream;
 	}
 
-	pxp->pxp_component_added = true;
+	mei->pxp_component_added = true;
 
 	return 0;
 
+out_free_stream:
+	mei_tee_free_streaming_command(pxp);
 out_free:
-	free_streaming_command(pxp);
+	kfree(mei);
+	pxp->tee_link.priv = NULL;
 	return ret;
 }
 
 static void mei_tee_component_fini(struct intel_pxp *pxp)
 {
 	struct drm_i915_private *i915 = pxp_to_gt(pxp)->i915;
+	struct mei_teelink_priv *mei = pxp_to_mei_priv(pxp);
+
+	if (!mei)
+		return;
 
-	if (!pxp->pxp_component_added)
+	if (!mei->pxp_component_added)
 		return;
 
-	component_del(i915->drm.dev, &i915_pxp_tee_component_ops);
-	pxp->pxp_component_added = false;
+	component_del(i915->drm.dev, &i915_mei_tee_component_ops);
+	mei->pxp_component_added = false;
 
-	free_streaming_command(pxp);
+	mei_tee_free_streaming_command(pxp);
+	kfree(mei);
+	pxp->tee_link.priv = NULL;
 }
 
 static int mei_tee_create_session(struct intel_pxp *pxp,
@@ -326,6 +388,7 @@ void intel_pxp_init_mei_tee_hooks(struct intel_pxp *pxp)
 
 	pxp->tee_link.init = mei_tee_component_init;
 	pxp->tee_link.fini = mei_tee_component_fini;
+	pxp->tee_link.is_ready = mei_tee_is_component_bound;
 	pxp->tee_link.create_session = mei_tee_create_session;
 	if (IS_DG2(i915))
 		pxp->tee_link.send_message = mei_tee_gsc_stream_message;
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
index 6de79a46ceed..f1bddf8500d4 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
@@ -18,17 +18,6 @@ struct i915_pxp_component;
  * struct intel_pxp - pxp state
  */
 struct intel_pxp {
-	/**
-	 * @pxp_component: i915_pxp_component struct of the bound mei_pxp
-	 * module. Only set and cleared inside component bind/unbind functions,
-	 * which are protected by &tee_mutex.
-	 */
-	struct i915_pxp_component *pxp_component;
-	/**
-	 * @pxp_component_added: track if the pxp component has been added.
-	 * Set and cleared in tee init and fini functions respectively.
-	 */
-	bool pxp_component_added;
 
 	/** @ce: kernel-owned context used for PXP operations */
 	struct intel_context *ce;
@@ -50,15 +39,6 @@ struct intel_pxp {
 	 */
 	u32 key_instance;
 
-	/** @tee_mutex: protects the tee channel binding and messaging. */
-	struct mutex tee_mutex;
-
-	/** @stream_cmd: LMEM obj used to send stream PXP commands to the GSC */
-	struct {
-		struct drm_i915_gem_object *obj; /* contains PXP command memory */
-		void *vaddr; /* virtual memory for PXP command */
-	} stream_cmd;
-
 	/**
 	 * @hw_state_invalidated: if the HW perceives an attack on the integrity
 	 * of the encryption it will invalidate the keys and expect SW to
@@ -88,16 +68,26 @@ struct intel_pxp {
 	 * These hooks will point to device specific implementations.
 	 */
 	struct {
-		/* Called to initialize the backend transport resources.*/
+		/** @priv: Pointer exclusively for backend layer to store private context.*/
+		void *priv;
+
+		/** @init: Func-ptr called to initialize the backend transport resources.*/
 		int (*init)(struct intel_pxp *pxp);
 
-		/* Called to free the backend transport resources.*/
+		/** @fini: Func-ptr called to free the backend transport resources.*/
 		void (*fini)(struct intel_pxp *pxp);
 
-		/* Called to create a pxp session.*/
+		/**
+		 * @is_ready: Func-ptr called to query if the backend transport is available
+		 * for use. Depending on the backend, some, such as mei, have asyncronous workers
+		 * or callbacks that setup the backend tee link to the security firmware.
+		 **/
+		bool (*is_ready)(struct intel_pxp *pxp);
+
+		/** @init: Func-ptr called to create a pxp session.*/
 		int (*create_session)(struct intel_pxp *pxp, int session_id);
 
-		/* Called to send message packets to pxp firmware.*/
+		/** @init: Func-ptr called to send message packets to pxp firmware.*/
 		int (*send_message)(struct intel_pxp *pxp,
 				    void *msg_in, size_t msg_in_len,
 				    void *msg_out, size_t msg_out_max_len,
-- 
2.34.1

