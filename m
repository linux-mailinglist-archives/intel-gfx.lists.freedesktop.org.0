Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0575122168
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2019 02:23:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37C2E6E924;
	Tue, 17 Dec 2019 01:23:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 603856E922
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Dec 2019 01:23:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Dec 2019 17:23:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,323,1571727600"; d="scan'208";a="227317211"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga002.jf.intel.com with ESMTP; 16 Dec 2019 17:23:13 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Dec 2019 17:23:12 -0800
Message-Id: <20191217012316.13271-3-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191217012316.13271-1-daniele.ceraolospurio@intel.com>
References: <20191217012316.13271-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 3/7] drm/i915/guc/ct: Stop expecting multiple
 CT channels
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

The GuC supports having multiple CT buffer pairs and we designed our
implementation with that in mind. However, the different channels are not
processed in parallel within the GuC, so there is very little advantage
in having multiple channels (independent locks?), compared to the
drawbacks (one channel can starve the other if messages keep being
submitted to it). Given this, it is unlikely we'll ever add a second
channel and therefore we can simplify our code by removing the
flexibility.

v2: split substructure grouping to separate patch, improve docs (Michal)

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 219 ++++++++--------------
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h |  43 ++---
 2 files changed, 90 insertions(+), 172 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
index b23b46619742..4e20f6c48a4f 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
@@ -37,9 +37,6 @@ static void ct_incoming_request_worker_func(struct work_struct *w);
  */
 void intel_guc_ct_init_early(struct intel_guc_ct *ct)
 {
-	/* we're using static channel owners */
-	ct->host_channel.owner = CTB_OWNER_HOST;
-
 	spin_lock_init(&ct->lock);
 	INIT_LIST_HEAD(&ct->pending_requests);
 	INIT_LIST_HEAD(&ct->incoming_requests);
@@ -64,14 +61,13 @@ static inline const char *guc_ct_buffer_type_to_str(u32 type)
 }
 
 static void guc_ct_buffer_desc_init(struct guc_ct_buffer_desc *desc,
-				    u32 cmds_addr, u32 size, u32 owner)
+				    u32 cmds_addr, u32 size)
 {
-	CT_DEBUG_DRIVER("CT: desc %p init addr=%#x size=%u owner=%u\n",
-			desc, cmds_addr, size, owner);
+	CT_DEBUG_DRIVER("CT: init addr=%#x size=%u\n", cmds_addr, size);
 	memset(desc, 0, sizeof(*desc));
 	desc->addr = cmds_addr;
 	desc->size = size;
-	desc->owner = owner;
+	desc->owner = CTB_OWNER_HOST;
 }
 
 static void guc_ct_buffer_desc_reset(struct guc_ct_buffer_desc *desc)
@@ -104,12 +100,11 @@ static int guc_action_register_ct_buffer(struct intel_guc *guc,
 }
 
 static int guc_action_deregister_ct_buffer(struct intel_guc *guc,
-					   u32 owner,
 					   u32 type)
 {
 	u32 action[] = {
 		INTEL_GUC_ACTION_DEREGISTER_COMMAND_TRANSPORT_BUFFER,
-		owner,
+		CTB_OWNER_HOST,
 		type
 	};
 	int err;
@@ -117,19 +112,27 @@ static int guc_action_deregister_ct_buffer(struct intel_guc *guc,
 	/* Can't use generic send(), CT deregistration must go over MMIO */
 	err = intel_guc_send_mmio(guc, action, ARRAY_SIZE(action), NULL, 0);
 	if (err)
-		DRM_ERROR("CT: deregister %s buffer failed; owner=%d err=%d\n",
-			  guc_ct_buffer_type_to_str(type), owner, err);
+		DRM_ERROR("CT: deregister %s buffer failed; err=%d\n",
+			  guc_ct_buffer_type_to_str(type), err);
 	return err;
 }
 
-static int ctch_init(struct intel_guc *guc,
-		     struct intel_guc_ct_channel *ctch)
+/**
+ * intel_guc_ct_init - Init buffer-based communication
+ * @ct: pointer to CT struct
+ *
+ * Allocate memory required for buffer-based communication.
+ *
+ * Return: 0 on success, a negative errno code on failure.
+ */
+int intel_guc_ct_init(struct intel_guc_ct *ct)
 {
+	struct intel_guc *guc = ct_to_guc(ct);
 	void *blob;
 	int err;
 	int i;
 
-	GEM_BUG_ON(ctch->vma);
+	GEM_BUG_ON(ct->vma);
 
 	/* We allocate 1 page to hold both descriptors and both buffers.
 	 *       ___________.....................
@@ -153,57 +156,65 @@ static int ctch_init(struct intel_guc *guc,
 	 * other code will need updating as well.
 	 */
 
-	err = intel_guc_allocate_and_map_vma(guc, PAGE_SIZE, &ctch->vma, &blob);
+	err = intel_guc_allocate_and_map_vma(guc, PAGE_SIZE, &ct->vma, &blob);
 	if (err) {
-		CT_DEBUG_DRIVER("CT: channel %d initialization failed; err=%d\n",
-				ctch->owner, err);
+		DRM_ERROR("CT: channel allocation failed; err=%d\n", err);
 		return err;
 	}
 
 	CT_DEBUG_DRIVER("CT: vma base=%#x\n",
-			intel_guc_ggtt_offset(guc, ctch->vma));
+			intel_guc_ggtt_offset(guc, ct->vma));
 
 	/* store pointers to desc and cmds */
-	for (i = 0; i < ARRAY_SIZE(ctch->ctbs); i++) {
-		GEM_BUG_ON((i != CTB_SEND) && (i != CTB_RECV));
-		ctch->ctbs[i].desc = blob + PAGE_SIZE/4 * i;
-		ctch->ctbs[i].cmds = blob + PAGE_SIZE/4 * i + PAGE_SIZE/2;
+	for (i = 0; i < ARRAY_SIZE(ct->ctbs); i++) {
+		GEM_BUG_ON((i !=  CTB_SEND) && (i != CTB_RECV));
+		ct->ctbs[i].desc = blob + PAGE_SIZE/4 * i;
+		ct->ctbs[i].cmds = blob + PAGE_SIZE/4 * i + PAGE_SIZE/2;
 	}
 
 	return 0;
 }
 
-static void ctch_fini(struct intel_guc *guc,
-		      struct intel_guc_ct_channel *ctch)
+/**
+ * intel_guc_ct_fini - Fini buffer-based communication
+ * @ct: pointer to CT struct
+ *
+ * Deallocate memory required for buffer-based communication.
+ */
+void intel_guc_ct_fini(struct intel_guc_ct *ct)
 {
-	GEM_BUG_ON(ctch->enabled);
+	GEM_BUG_ON(ct->enabled);
 
-	i915_vma_unpin_and_release(&ctch->vma, I915_VMA_RELEASE_MAP);
+	i915_vma_unpin_and_release(&ct->vma, I915_VMA_RELEASE_MAP);
 }
 
-static int ctch_enable(struct intel_guc *guc,
-		       struct intel_guc_ct_channel *ctch)
+/**
+ * intel_guc_ct_enable - Enable buffer based command transport.
+ * @ct: pointer to CT struct
+ *
+ * Return: 0 on success, a negative errno code on failure.
+ */
+int intel_guc_ct_enable(struct intel_guc_ct *ct)
 {
+	struct intel_guc *guc = ct_to_guc(ct);
 	u32 base;
 	int err;
 	int i;
 
-	GEM_BUG_ON(!ctch->vma);
-
-	GEM_BUG_ON(ctch->enabled);
+	GEM_BUG_ON(ct->enabled);
 
 	/* vma should be already allocated and map'ed */
-	base = intel_guc_ggtt_offset(guc, ctch->vma);
+	GEM_BUG_ON(!ct->vma);
+	base = intel_guc_ggtt_offset(guc, ct->vma);
 
 	/* (re)initialize descriptors
 	 * cmds buffers are in the second half of the blob page
 	 */
-	for (i = 0; i < ARRAY_SIZE(ctch->ctbs); i++) {
+	for (i = 0; i < ARRAY_SIZE(ct->ctbs); i++) {
 		GEM_BUG_ON((i != CTB_SEND) && (i != CTB_RECV));
-		guc_ct_buffer_desc_init(ctch->ctbs[i].desc,
+		guc_ct_buffer_desc_init(ct->ctbs[i].desc,
 					base + PAGE_SIZE/4 * i + PAGE_SIZE/2,
-					PAGE_SIZE/4,
-					ctch->owner);
+					PAGE_SIZE/4);
 	}
 
 	/* register buffers, starting wirh RECV buffer
@@ -221,40 +232,42 @@ static int ctch_enable(struct intel_guc *guc,
 	if (unlikely(err))
 		goto err_deregister;
 
-	ctch->enabled = true;
+	ct->enabled = true;
 
 	return 0;
 
 err_deregister:
 	guc_action_deregister_ct_buffer(guc,
-					ctch->owner,
 					INTEL_GUC_CT_BUFFER_TYPE_RECV);
 err_out:
-	DRM_ERROR("CT: can't open channel %d; err=%d\n", ctch->owner, err);
+	DRM_ERROR("CT: can't open channel; err=%d\n", err);
 	return err;
 }
 
-static void ctch_disable(struct intel_guc *guc,
-			 struct intel_guc_ct_channel *ctch)
+/**
+ * intel_guc_ct_disable - Disable buffer based command transport.
+ * @ct: pointer to CT struct
+ */
+void intel_guc_ct_disable(struct intel_guc_ct *ct)
 {
-	GEM_BUG_ON(!ctch->enabled);
+	struct intel_guc *guc = ct_to_guc(ct);
 
-	ctch->enabled = false;
+	GEM_BUG_ON(!ct->enabled);
+
+	ct->enabled = false;
 
 	if (intel_guc_is_running(guc)) {
 		guc_action_deregister_ct_buffer(guc,
-						ctch->owner,
 						INTEL_GUC_CT_BUFFER_TYPE_SEND);
 		guc_action_deregister_ct_buffer(guc,
-						ctch->owner,
 						INTEL_GUC_CT_BUFFER_TYPE_RECV);
 	}
 }
 
-static u32 ctch_get_next_fence(struct intel_guc_ct_channel *ctch)
+static u32 ct_get_next_fence(struct intel_guc_ct *ct)
 {
 	/* For now it's trivial */
-	return ++ctch->next_fence;
+	return ++ct->next_fence;
 }
 
 /**
@@ -427,27 +440,26 @@ static int wait_for_ct_request_update(struct ct_request *req, u32 *status)
 	return err;
 }
 
-static int ctch_send(struct intel_guc_ct *ct,
-		     struct intel_guc_ct_channel *ctch,
-		     const u32 *action,
-		     u32 len,
-		     u32 *response_buf,
-		     u32 response_buf_size,
-		     u32 *status)
+static int ct_send(struct intel_guc_ct *ct,
+		   const u32 *action,
+		   u32 len,
+		   u32 *response_buf,
+		   u32 response_buf_size,
+		   u32 *status)
 {
-	struct intel_guc_ct_buffer *ctb = &ctch->ctbs[CTB_SEND];
+	struct intel_guc_ct_buffer *ctb = &ct->ctbs[CTB_SEND];
 	struct guc_ct_buffer_desc *desc = ctb->desc;
 	struct ct_request request;
 	unsigned long flags;
 	u32 fence;
 	int err;
 
-	GEM_BUG_ON(!ctch->enabled);
+	GEM_BUG_ON(!ct->enabled);
 	GEM_BUG_ON(!len);
 	GEM_BUG_ON(len & ~GUC_CT_MSG_LEN_MASK);
 	GEM_BUG_ON(!response_buf && response_buf_size);
 
-	fence = ctch_get_next_fence(ctch);
+	fence = ct_get_next_fence(ct);
 	request.fence = fence;
 	request.status = 0;
 	request.response_len = response_buf_size;
@@ -502,14 +514,12 @@ int intel_guc_send_ct(struct intel_guc *guc, const u32 *action, u32 len,
 		      u32 *response_buf, u32 response_buf_size)
 {
 	struct intel_guc_ct *ct = &guc->ct;
-	struct intel_guc_ct_channel *ctch = &ct->host_channel;
 	u32 status = ~0; /* undefined */
 	int ret;
 
 	mutex_lock(&guc->send_mutex);
 
-	ret = ctch_send(ct, ctch, action, len, response_buf, response_buf_size,
-			&status);
+	ret = ct_send(ct, action, len, response_buf, response_buf_size, &status);
 	if (unlikely(ret < 0)) {
 		DRM_ERROR("CT: send action %#X failed; err=%d status=%#X\n",
 			  action[0], ret, status);
@@ -772,14 +782,18 @@ static int ct_handle_request(struct intel_guc_ct *ct, const u32 *msg)
 	return 0;
 }
 
-static void ct_process_host_channel(struct intel_guc_ct *ct)
+/*
+ * When we're communicating with the GuC over CT, GuC uses events
+ * to notify us about new messages being posted on the RECV buffer.
+ */
+void intel_guc_to_host_event_handler_ct(struct intel_guc *guc)
 {
-	struct intel_guc_ct_channel *ctch = &ct->host_channel;
-	struct intel_guc_ct_buffer *ctb = &ctch->ctbs[CTB_RECV];
+	struct intel_guc_ct *ct = &guc->ct;
+	struct intel_guc_ct_buffer *ctb = &ct->ctbs[CTB_RECV];
 	u32 msg[GUC_CT_MSG_LEN_MASK + 1]; /* one extra dw for the header */
 	int err = 0;
 
-	if (!ctch->enabled)
+	if (!ct->enabled)
 		return;
 
 	do {
@@ -799,80 +813,3 @@ static void ct_process_host_channel(struct intel_guc_ct *ct)
 	}
 }
 
-/*
- * When we're communicating with the GuC over CT, GuC uses events
- * to notify us about new messages being posted on the RECV buffer.
- */
-void intel_guc_to_host_event_handler_ct(struct intel_guc *guc)
-{
-	struct intel_guc_ct *ct = &guc->ct;
-
-	ct_process_host_channel(ct);
-}
-
-/**
- * intel_guc_ct_init - Init CT communication
- * @ct: pointer to CT struct
- *
- * Allocate memory required for communication via
- * the CT channel.
- *
- * Return: 0 on success, a negative errno code on failure.
- */
-int intel_guc_ct_init(struct intel_guc_ct *ct)
-{
-	struct intel_guc *guc = ct_to_guc(ct);
-	struct intel_guc_ct_channel *ctch = &ct->host_channel;
-	int err;
-
-	err = ctch_init(guc, ctch);
-	if (unlikely(err)) {
-		DRM_ERROR("CT: can't open channel %d; err=%d\n",
-			  ctch->owner, err);
-		return err;
-	}
-
-	GEM_BUG_ON(!ctch->vma);
-	return 0;
-}
-
-/**
- * intel_guc_ct_fini - Fini CT communication
- * @ct: pointer to CT struct
- *
- * Deallocate memory required for communication via
- * the CT channel.
- */
-void intel_guc_ct_fini(struct intel_guc_ct *ct)
-{
-	struct intel_guc *guc = ct_to_guc(ct);
-	struct intel_guc_ct_channel *ctch = &ct->host_channel;
-
-	ctch_fini(guc, ctch);
-}
-
-/**
- * intel_guc_ct_enable - Enable buffer based command transport.
- * @ct: pointer to CT struct
- *
- * Return: 0 on success, a negative errno code on failure.
- */
-int intel_guc_ct_enable(struct intel_guc_ct *ct)
-{
-	struct intel_guc *guc = ct_to_guc(ct);
-	struct intel_guc_ct_channel *ctch = &ct->host_channel;
-
-	return ctch_enable(guc, ctch);
-}
-
-/**
- * intel_guc_ct_disable - Disable buffer based command transport.
- * @ct: pointer to CT struct
- */
-void intel_guc_ct_disable(struct intel_guc_ct *ct)
-{
-	struct intel_guc *guc = ct_to_guc(ct);
-	struct intel_guc_ct_channel *ctch = &ct->host_channel;
-
-	ctch_disable(guc, ctch);
-}
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
index 77c80d6cc25d..6e3d789b9f01 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
@@ -35,44 +35,25 @@ struct intel_guc_ct_buffer {
 	u32 *cmds;
 };
 
-/** Represents pair of command transport buffers.
- *
- * Buffers go in pairs to allow bi-directional communication.
- * To simplify the code we place both of them in the same vma.
- * Buffers from the same pair must share unique owner id.
- *
- * @vma: pointer to the vma with pair of CT buffers
- * @ctbs: buffers for sending(0) and receiving(1) commands
- * @owner: unique identifier
- * @next_fence: fence to be used with next send command
- */
-struct intel_guc_ct_channel {
-	struct i915_vma *vma;
-	struct intel_guc_ct_buffer ctbs[2];
-	u32 owner;
-	u32 next_fence;
-	bool enabled;
-};
 
-/** Holds all command transport channels.
+/** Top-level structure for Command Transport related data
  *
- * @host_channel: main channel used by the host
+ * Includes a pair of CT buffers for bi-directional communication and tracking
+ * for the H2G and G2H requests sent and received through the buffers.
  */
 struct intel_guc_ct {
-	struct intel_guc_ct_channel host_channel;
-	/* other channels are tbd */
-
-	/** @lock: protects pending requests list */
-	spinlock_t lock;
+	struct i915_vma *vma;
+	bool enabled;
 
-	/** @pending_requests: list of requests waiting for response */
-	struct list_head pending_requests;
+	/* buffers for sending(0) and receiving(1) commands */
+	struct intel_guc_ct_buffer ctbs[2];
 
-	/** @incoming_requests: list of incoming requests */
-	struct list_head incoming_requests;
+	u32 next_fence; /* fence to be used with next send command */
 
-	/** @worker: worker for handling incoming requests */
-	struct work_struct worker;
+	spinlock_t lock; /* protects pending requests list */
+	struct list_head pending_requests; /* requests waiting for response */
+	struct list_head incoming_requests; /* incoming requests */
+	struct work_struct worker; /* handler for incoming requests */
 };
 
 void intel_guc_ct_init_early(struct intel_guc_ct *ct);
-- 
2.23.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
