Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 351B614EEE0
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 15:59:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9218B6FB7B;
	Fri, 31 Jan 2020 14:59:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14D016FB7B
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 14:59:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jan 2020 06:59:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,386,1574150400"; d="scan'208";a="428734295"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga005.fm.intel.com with ESMTP; 31 Jan 2020 06:59:01 -0800
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.138])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 00VEx0jJ031392; Fri, 31 Jan 2020 14:59:00 GMT
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 31 Jan 2020 14:58:34 +0000
Message-Id: <20200131145834.77756-1-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/guc: Stop using mutex while sending
 CTB messages
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

While we are always using CT "send" buffer to send request messages
to GuC, we usually don't ask GuC to use CT "receive" buffer to send
back response messages, since almost all returned data can fit into
reserved bits in status dword inside CT descriptor. However, relying
on data modifications inside CT descriptor requires use of mutex to
allow only single CT request in flight, until we read back that status
dword from the CT descriptor.

But some H2G actions (like AUTHENTICATE_HUC, and more to come) are
like one-way requests for which we don't care about immediate status,
since we will use a different way to confirm that given action was
completed (ie. HUC_STATUS reg is used to verify HuC authentication).

If we ask GuC to always send response messages over "receive" buffer
for all requests for which we care about their status, then we can
use CT descriptor option only for our new one-way requests, for which
status can be temporary ignored.

Since we only need to protect CT descriptor during reading/writing
from the command buffer, we can drop mutex and switch to spinlock.

Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc.c    |   2 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 147 ++++++++--------------
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h |   3 +
 3 files changed, 57 insertions(+), 95 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index c4c1523da7a6..d5938c1d44a2 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -519,7 +519,7 @@ int intel_guc_sample_forcewake(struct intel_guc *guc)
 int intel_guc_auth_huc(struct intel_guc *guc, u32 rsa_offset)
 {
 	u32 action[] = {
-		INTEL_GUC_ACTION_AUTHENTICATE_HUC,
+		INTEL_GUC_ACTION_AUTHENTICATE_HUC | GUC_SEND_FLAG_NO_RESPONSE,
 		rsa_offset
 	};
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
index d84812683364..760e03cc2bad 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
@@ -41,6 +41,7 @@ static void ct_incoming_request_worker_func(struct work_struct *w);
  */
 void intel_guc_ct_init_early(struct intel_guc_ct *ct)
 {
+	spin_lock_init(&ct->lock);
 	spin_lock_init(&ct->requests.lock);
 	INIT_LIST_HEAD(&ct->requests.pending);
 	INIT_LIST_HEAD(&ct->requests.incoming);
@@ -88,13 +89,6 @@ static void guc_ct_buffer_desc_init(struct guc_ct_buffer_desc *desc,
 	desc->owner = CTB_OWNER_HOST;
 }
 
-static void guc_ct_buffer_desc_reset(struct guc_ct_buffer_desc *desc)
-{
-	desc->head = 0;
-	desc->tail = 0;
-	desc->is_in_error = 0;
-}
-
 static int guc_action_register_ct_buffer(struct intel_guc *guc,
 					 u32 desc_addr,
 					 u32 type)
@@ -317,6 +311,7 @@ static int ct_write(struct intel_guc_ct *ct,
 {
 	struct intel_guc_ct_buffer *ctb = &ct->ctbs[CTB_SEND];
 	struct guc_ct_buffer_desc *desc = ctb->desc;
+	u32 action_code = action[0] & GUC_CT_MSG_ACTION_MASK;
 	u32 head = desc->head;
 	u32 tail = desc->tail;
 	u32 size = desc->size;
@@ -325,6 +320,8 @@ static int ct_write(struct intel_guc_ct *ct,
 	u32 *cmds = ctb->cmds;
 	unsigned int i;
 
+	lockdep_assert_held(&ct->lock);
+
 	if (unlikely(desc->is_in_error))
 		return -EPIPE;
 
@@ -359,7 +356,7 @@ static int ct_write(struct intel_guc_ct *ct,
 	header = (len << GUC_CT_MSG_LEN_SHIFT) |
 		 (GUC_CT_MSG_WRITE_FENCE_TO_DESC) |
 		 (want_response ? GUC_CT_MSG_SEND_STATUS : 0) |
-		 (action[0] << GUC_CT_MSG_ACTION_SHIFT);
+		 (action_code << GUC_CT_MSG_ACTION_SHIFT);
 
 	CT_DEBUG(ct, "writing %*ph %*ph %*ph\n",
 		 4, &header, 4, &fence, 4 * (len - 1), &action[1]);
@@ -387,62 +384,11 @@ static int ct_write(struct intel_guc_ct *ct,
 	return -EPIPE;
 }
 
-/**
- * wait_for_ctb_desc_update - Wait for the CT buffer descriptor update.
- * @desc:	buffer descriptor
- * @fence:	response fence
- * @status:	placeholder for status
- *
- * Guc will update CT buffer descriptor with new fence and status
- * after processing the command identified by the fence. Wait for
- * specified fence and then read from the descriptor status of the
- * command.
- *
- * Return:
- * *	0 response received (status is valid)
- * *	-ETIMEDOUT no response within hardcoded timeout
- * *	-EPROTO no response, CT buffer is in error
- */
-static int wait_for_ctb_desc_update(struct guc_ct_buffer_desc *desc,
-				    u32 fence,
-				    u32 *status)
-{
-	int err;
-
-	/*
-	 * Fast commands should complete in less than 10us, so sample quickly
-	 * up to that length of time, then switch to a slower sleep-wait loop.
-	 * No GuC command should ever take longer than 10ms.
-	 */
-#define done (READ_ONCE(desc->fence) == fence)
-	err = wait_for_us(done, 10);
-	if (err)
-		err = wait_for(done, 10);
-#undef done
-
-	if (unlikely(err)) {
-		DRM_ERROR("CT: fence %u failed; reported fence=%u\n",
-			  fence, desc->fence);
-
-		if (WARN_ON(desc->is_in_error)) {
-			/* Something went wrong with the messaging, try to reset
-			 * the buffer and hope for the best
-			 */
-			guc_ct_buffer_desc_reset(desc);
-			err = -EPROTO;
-		}
-	}
-
-	*status = desc->status;
-	return err;
-}
-
 /**
  * wait_for_ct_request_update - Wait for CT request state update.
  * @req:	pointer to pending request
- * @status:	placeholder for status
  *
- * For each sent request, Guc shall send bac CT response message.
+ * For each sent request, Guc shall send back CT response message.
  * Our message handler will update status of tracked request once
  * response message with given fence is received. Wait here and
  * check for valid response status value.
@@ -451,7 +397,7 @@ static int wait_for_ctb_desc_update(struct guc_ct_buffer_desc *desc,
  * *	0 response received (status is valid)
  * *	-ETIMEDOUT no response within hardcoded timeout
  */
-static int wait_for_ct_request_update(struct ct_request *req, u32 *status)
+static int wait_for_ct_request_update(struct ct_request *req)
 {
 	int err;
 
@@ -466,10 +412,6 @@ static int wait_for_ct_request_update(struct ct_request *req, u32 *status)
 		err = wait_for(done, 10);
 #undef done
 
-	if (unlikely(err))
-		DRM_ERROR("CT: fence %u err %d\n", req->fence, err);
-
-	*status = req->status;
 	return err;
 }
 
@@ -477,14 +419,10 @@ static int ct_send(struct intel_guc_ct *ct,
 		   const u32 *action,
 		   u32 len,
 		   u32 *response_buf,
-		   u32 response_buf_size,
-		   u32 *status)
+		   u32 response_buf_size)
 {
-	struct intel_guc_ct_buffer *ctb = &ct->ctbs[CTB_SEND];
-	struct guc_ct_buffer_desc *desc = ctb->desc;
 	struct ct_request request;
 	unsigned long flags;
-	u32 fence;
 	int err;
 
 	GEM_BUG_ON(!ct->enabled);
@@ -492,31 +430,32 @@ static int ct_send(struct intel_guc_ct *ct,
 	GEM_BUG_ON(len & ~GUC_CT_MSG_LEN_MASK);
 	GEM_BUG_ON(!response_buf && response_buf_size);
 
-	fence = ct_get_next_fence(ct);
-	request.fence = fence;
+	spin_lock_irqsave(&ct->lock, flags);
+	request.fence = ct_get_next_fence(ct);
 	request.status = 0;
 	request.response_len = response_buf_size;
 	request.response_buf = response_buf;
 
-	spin_lock_irqsave(&ct->requests.lock, flags);
+	spin_lock(&ct->requests.lock);
 	list_add_tail(&request.link, &ct->requests.pending);
-	spin_unlock_irqrestore(&ct->requests.lock, flags);
+	spin_unlock(&ct->requests.lock);
+
+	err = ct_write(ct, action, len, request.fence, true);
+	spin_unlock_irqrestore(&ct->lock, flags);
 
-	err = ct_write(ct, action, len, fence, !!response_buf);
 	if (unlikely(err))
 		goto unlink;
 
 	intel_guc_notify(ct_to_guc(ct));
 
-	if (response_buf)
-		err = wait_for_ct_request_update(&request, status);
-	else
-		err = wait_for_ctb_desc_update(desc, fence, status);
+	err = wait_for_ct_request_update(&request);
 	if (unlikely(err))
 		goto unlink;
 
-	if (!INTEL_GUC_MSG_IS_RESPONSE_SUCCESS(*status)) {
-		err = -EIO;
+	if (!INTEL_GUC_MSG_IS_RESPONSE_SUCCESS(request.status)) {
+		CT_ERROR(ct, "Error response: action=%#x fence=%u status=%#x\n",
+			 action[0], request.fence, request.status);
+		err = -ENXIO;
 		goto unlink;
 	}
 
@@ -529,7 +468,7 @@ static int ct_send(struct intel_guc_ct *ct,
 		/* There shall be no response payload */
 		WARN_ON(request.response_len);
 		/* Return data decoded from the status dword */
-		err = INTEL_GUC_MSG_TO_DATA(*status);
+		err = INTEL_GUC_MSG_TO_DATA(request.status);
 	}
 
 unlink:
@@ -540,14 +479,32 @@ static int ct_send(struct intel_guc_ct *ct,
 	return err;
 }
 
+static int ct_send_no_response(struct intel_guc_ct *ct,
+			       const u32 *action, u32 len)
+{
+	unsigned long flags;
+	int err;
+
+	GEM_BUG_ON(!ct->enabled);
+	GEM_BUG_ON(!len);
+	GEM_BUG_ON(len & ~GUC_CT_MSG_LEN_MASK);
+
+	spin_lock_irqsave(&ct->lock, flags);
+	err = ct_write(ct, action, len, ct_get_next_fence(ct), false);
+	spin_unlock_irqrestore(&ct->lock, flags);
+
+	if (likely(!err))
+		intel_guc_notify(ct_to_guc(ct));
+
+	return err;
+}
+
 /*
  * Command Transport (CT) buffer based GuC send function.
  */
 int intel_guc_ct_send(struct intel_guc_ct *ct, const u32 *action, u32 len,
 		      u32 *response_buf, u32 response_buf_size)
 {
-	struct intel_guc *guc = ct_to_guc(ct);
-	u32 status = ~0; /* undefined */
 	int ret;
 
 	if (unlikely(!ct->enabled)) {
@@ -555,18 +512,15 @@ int intel_guc_ct_send(struct intel_guc_ct *ct, const u32 *action, u32 len,
 		return -ENODEV;
 	}
 
-	mutex_lock(&guc->send_mutex);
+	if (*action & GUC_SEND_FLAG_NO_RESPONSE)
+		ret = ct_send_no_response(ct, action, len);
+	else
+		ret = ct_send(ct, action, len, response_buf, response_buf_size);
 
-	ret = ct_send(ct, action, len, response_buf, response_buf_size, &status);
-	if (unlikely(ret < 0)) {
-		CT_ERROR(ct, "Sending action %#x failed (err=%d status=%#X)\n",
-			 action[0], ret, status);
-	} else if (unlikely(ret)) {
-		CT_DEBUG(ct, "send action %#x returned %d (%#x)\n",
-			 action[0], ret, ret);
-	}
+	if (unlikely(ret < 0))
+		CT_ERROR(ct, "Failed send: action=%#x (err=%d)\n",
+			 *action, ret);
 
-	mutex_unlock(&guc->send_mutex);
 	return ret;
 }
 
@@ -597,6 +551,8 @@ static int ct_read(struct intel_guc_ct *ct, u32 *data)
 	unsigned int len;
 	unsigned int i;
 
+	lockdep_assert_held(&ct->lock);
+
 	if (unlikely(desc->is_in_error))
 		return -EPIPE;
 
@@ -841,6 +797,7 @@ static int ct_handle_request(struct intel_guc_ct *ct, const u32 *msg)
 void intel_guc_ct_event_handler(struct intel_guc_ct *ct)
 {
 	u32 msg[GUC_CT_MSG_LEN_MASK + 1]; /* one extra dw for the header */
+	unsigned long flags;
 	int err = 0;
 
 	if (unlikely(!ct->enabled)) {
@@ -849,7 +806,9 @@ void intel_guc_ct_event_handler(struct intel_guc_ct *ct)
 	}
 
 	do {
+		spin_lock_irqsave(&ct->lock, flags);
 		err = ct_read(ct, msg);
+		spin_unlock_irqrestore(&ct->lock, flags);
 		if (err)
 			break;
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
index 97913bbb8be3..2c15eee4b315 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
@@ -47,6 +47,7 @@ struct intel_guc_ct {
 
 	/* buffers for sending(0) and receiving(1) commands */
 	struct intel_guc_ct_buffer ctbs[2];
+	spinlock_t lock; /* protects descriptors */
 
 	struct {
 		u32 last_fence; /* last fence used to send request */
@@ -70,6 +71,8 @@ static inline bool intel_guc_ct_enabled(struct intel_guc_ct *ct)
 	return ct->enabled;
 }
 
+#define GUC_SEND_FLAG_NO_RESPONSE	0x80000000
+
 int intel_guc_ct_send(struct intel_guc_ct *ct, const u32 *action, u32 len,
 		      u32 *response_buf, u32 response_buf_size);
 void intel_guc_ct_event_handler(struct intel_guc_ct *ct);
-- 
2.19.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
