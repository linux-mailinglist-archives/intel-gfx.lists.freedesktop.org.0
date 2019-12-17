Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CC60122169
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2019 02:23:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B95E76E92C;
	Tue, 17 Dec 2019 01:23:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75BF76E924
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Dec 2019 01:23:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Dec 2019 17:23:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,323,1571727600"; d="scan'208";a="227317214"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga002.jf.intel.com with ESMTP; 16 Dec 2019 17:23:14 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Dec 2019 17:23:13 -0800
Message-Id: <20191217012316.13271-4-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191217012316.13271-1-daniele.ceraolospurio@intel.com>
References: <20191217012316.13271-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 4/7] drm/i915/guc/ct: Group request-related
 variables in a sub-structure
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

For better isolation of the request tracking from the rest of the
CT-related data.

v2: split to separate patch, move next_fence to substructure (Michal)

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 47 ++++++++++++-----------
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h | 13 ++++---
 2 files changed, 32 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
index 4e20f6c48a4f..f22cd9b2311b 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
@@ -37,10 +37,10 @@ static void ct_incoming_request_worker_func(struct work_struct *w);
  */
 void intel_guc_ct_init_early(struct intel_guc_ct *ct)
 {
-	spin_lock_init(&ct->lock);
-	INIT_LIST_HEAD(&ct->pending_requests);
-	INIT_LIST_HEAD(&ct->incoming_requests);
-	INIT_WORK(&ct->worker, ct_incoming_request_worker_func);
+	spin_lock_init(&ct->requests.lock);
+	INIT_LIST_HEAD(&ct->requests.pending);
+	INIT_LIST_HEAD(&ct->requests.incoming);
+	INIT_WORK(&ct->requests.worker, ct_incoming_request_worker_func);
 }
 
 static inline struct intel_guc *ct_to_guc(struct intel_guc_ct *ct)
@@ -267,7 +267,7 @@ void intel_guc_ct_disable(struct intel_guc_ct *ct)
 static u32 ct_get_next_fence(struct intel_guc_ct *ct)
 {
 	/* For now it's trivial */
-	return ++ct->next_fence;
+	return ++ct->requests.next_fence;
 }
 
 /**
@@ -465,9 +465,9 @@ static int ct_send(struct intel_guc_ct *ct,
 	request.response_len = response_buf_size;
 	request.response_buf = response_buf;
 
-	spin_lock_irqsave(&ct->lock, flags);
-	list_add_tail(&request.link, &ct->pending_requests);
-	spin_unlock_irqrestore(&ct->lock, flags);
+	spin_lock_irqsave(&ct->requests.lock, flags);
+	list_add_tail(&request.link, &ct->requests.pending);
+	spin_unlock_irqrestore(&ct->requests.lock, flags);
 
 	err = ctb_write(ctb, action, len, fence, !!response_buf);
 	if (unlikely(err))
@@ -500,9 +500,9 @@ static int ct_send(struct intel_guc_ct *ct,
 	}
 
 unlink:
-	spin_lock_irqsave(&ct->lock, flags);
+	spin_lock_irqsave(&ct->requests.lock, flags);
 	list_del(&request.link);
-	spin_unlock_irqrestore(&ct->lock, flags);
+	spin_unlock_irqrestore(&ct->requests.lock, flags);
 
 	return err;
 }
@@ -650,8 +650,8 @@ static int ct_handle_response(struct intel_guc_ct *ct, const u32 *msg)
 
 	CT_DEBUG_DRIVER("CT: response fence %u status %#x\n", fence, status);
 
-	spin_lock(&ct->lock);
-	list_for_each_entry(req, &ct->pending_requests, link) {
+	spin_lock(&ct->requests.lock);
+	list_for_each_entry(req, &ct->requests.pending, link) {
 		if (unlikely(fence != req->fence)) {
 			CT_DEBUG_DRIVER("CT: request %u awaits response\n",
 					req->fence);
@@ -669,7 +669,7 @@ static int ct_handle_response(struct intel_guc_ct *ct, const u32 *msg)
 		found = true;
 		break;
 	}
-	spin_unlock(&ct->lock);
+	spin_unlock(&ct->requests.lock);
 
 	if (!found)
 		DRM_ERROR("CT: unsolicited response %*ph\n", 4 * msglen, msg);
@@ -707,13 +707,13 @@ static bool ct_process_incoming_requests(struct intel_guc_ct *ct)
 	u32 *payload;
 	bool done;
 
-	spin_lock_irqsave(&ct->lock, flags);
-	request = list_first_entry_or_null(&ct->incoming_requests,
+	spin_lock_irqsave(&ct->requests.lock, flags);
+	request = list_first_entry_or_null(&ct->requests.incoming,
 					   struct ct_incoming_request, link);
 	if (request)
 		list_del(&request->link);
-	done = !!list_empty(&ct->incoming_requests);
-	spin_unlock_irqrestore(&ct->lock, flags);
+	done = !!list_empty(&ct->requests.incoming);
+	spin_unlock_irqrestore(&ct->requests.lock, flags);
 
 	if (!request)
 		return true;
@@ -731,12 +731,13 @@ static bool ct_process_incoming_requests(struct intel_guc_ct *ct)
 
 static void ct_incoming_request_worker_func(struct work_struct *w)
 {
-	struct intel_guc_ct *ct = container_of(w, struct intel_guc_ct, worker);
+	struct intel_guc_ct *ct =
+		container_of(w, struct intel_guc_ct, requests.worker);
 	bool done;
 
 	done = ct_process_incoming_requests(ct);
 	if (!done)
-		queue_work(system_unbound_wq, &ct->worker);
+		queue_work(system_unbound_wq, &ct->requests.worker);
 }
 
 /**
@@ -774,11 +775,11 @@ static int ct_handle_request(struct intel_guc_ct *ct, const u32 *msg)
 	}
 	memcpy(request->msg, msg, 4 * msglen);
 
-	spin_lock_irqsave(&ct->lock, flags);
-	list_add_tail(&request->link, &ct->incoming_requests);
-	spin_unlock_irqrestore(&ct->lock, flags);
+	spin_lock_irqsave(&ct->requests.lock, flags);
+	list_add_tail(&request->link, &ct->requests.incoming);
+	spin_unlock_irqrestore(&ct->requests.lock, flags);
 
-	queue_work(system_unbound_wq, &ct->worker);
+	queue_work(system_unbound_wq, &ct->requests.worker);
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
index 6e3d789b9f01..29a026dc3a13 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
@@ -48,12 +48,15 @@ struct intel_guc_ct {
 	/* buffers for sending(0) and receiving(1) commands */
 	struct intel_guc_ct_buffer ctbs[2];
 
-	u32 next_fence; /* fence to be used with next send command */
+	struct {
+		u32 next_fence; /* fence to be used with next request to send */
 
-	spinlock_t lock; /* protects pending requests list */
-	struct list_head pending_requests; /* requests waiting for response */
-	struct list_head incoming_requests; /* incoming requests */
-	struct work_struct worker; /* handler for incoming requests */
+		spinlock_t lock; /* protects pending requests list */
+		struct list_head pending; /* requests waiting for response */
+
+		struct list_head incoming; /* incoming requests */
+		struct work_struct worker; /* handler for incoming requests */
+	} requests;
 };
 
 void intel_guc_ct_init_early(struct intel_guc_ct *ct);
-- 
2.23.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
