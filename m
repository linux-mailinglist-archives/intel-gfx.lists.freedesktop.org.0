Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24394375A92
	for <lists+intel-gfx@lfdr.de>; Thu,  6 May 2021 20:57:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 186766EDA7;
	Thu,  6 May 2021 18:57:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5BB16ECEC;
 Thu,  6 May 2021 18:57:11 +0000 (UTC)
IronPort-SDR: k7JNJPPRT65K1o5d4n2fNsLPjg7gLZPs3LSPNv88aSrNqtr27iMQsrABW6Twg3hWFaWDFh9qmy
 pB/sF11dWZcQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9976"; a="196530990"
X-IronPort-AV: E=Sophos;i="5.82,278,1613462400"; d="scan'208";a="196530990"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2021 11:57:10 -0700
IronPort-SDR: OVz5hrFRoy3g4Ez6pcCd0nu2eVS1AEBm4J9nAqNxsk30Gq4Ay3X+zLAPF8SMMZHKq9c8Yib5Gx
 FEJIvd2QR3NQ==
X-IronPort-AV: E=Sophos;i="5.82,278,1613462400"; d="scan'208";a="469583408"
Received: from dhiatt-server.jf.intel.com ([10.54.81.3])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2021 11:57:08 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Thu,  6 May 2021 12:13:30 -0700
Message-Id: <20210506191451.77768-17-matthew.brost@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210506191451.77768-1-matthew.brost@intel.com>
References: <20210506191451.77768-1-matthew.brost@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH 16/97] drm/i915/guc: Start protecting access
 to CTB descriptors
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
Cc: jason.ekstrand@intel.com, daniel.vetter@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Michal Wajdeczko <michal.wajdeczko@intel.com>

We want to stop using guc.send_mutex while sending CTB messages
so we have to start protecting access to CTB send descriptor.

For completeness protect also CTB send descriptor.

Add spinlock to struct intel_guc_ct_buffer and start using it.

Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
Signed-off-by: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 14 ++++++++++++--
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h |  2 ++
 2 files changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
index a4b2e7fe318b..bee0958d8bae 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
@@ -89,6 +89,8 @@ static void ct_incoming_request_worker_func(struct work_struct *w);
  */
 void intel_guc_ct_init_early(struct intel_guc_ct *ct)
 {
+	spin_lock_init(&ct->ctbs.send.lock);
+	spin_lock_init(&ct->ctbs.recv.lock);
 	spin_lock_init(&ct->requests.lock);
 	INIT_LIST_HEAD(&ct->requests.pending);
 	INIT_LIST_HEAD(&ct->requests.incoming);
@@ -479,17 +481,22 @@ static int ct_send(struct intel_guc_ct *ct,
 	GEM_BUG_ON(len & ~GUC_CT_MSG_LEN_MASK);
 	GEM_BUG_ON(!response_buf && response_buf_size);
 
+	spin_lock_irqsave(&ct->ctbs.send.lock, flags);
+
 	fence = ct_get_next_fence(ct);
 	request.fence = fence;
 	request.status = 0;
 	request.response_len = response_buf_size;
 	request.response_buf = response_buf;
 
-	spin_lock_irqsave(&ct->requests.lock, flags);
+	spin_lock(&ct->requests.lock);
 	list_add_tail(&request.link, &ct->requests.pending);
-	spin_unlock_irqrestore(&ct->requests.lock, flags);
+	spin_unlock(&ct->requests.lock);
 
 	err = ct_write(ct, action, len, fence);
+
+	spin_unlock_irqrestore(&ct->ctbs.send.lock, flags);
+
 	if (unlikely(err))
 		goto unlink;
 
@@ -825,6 +832,7 @@ static int ct_handle_request(struct intel_guc_ct *ct, const u32 *msg)
 void intel_guc_ct_event_handler(struct intel_guc_ct *ct)
 {
 	u32 msg[GUC_CT_MSG_LEN_MASK + 1]; /* one extra dw for the header */
+	unsigned long flags;
 	int err = 0;
 
 	if (unlikely(!ct->enabled)) {
@@ -833,7 +841,9 @@ void intel_guc_ct_event_handler(struct intel_guc_ct *ct)
 	}
 
 	do {
+		spin_lock_irqsave(&ct->ctbs.recv.lock, flags);
 		err = ct_read(ct, msg);
+		spin_unlock_irqrestore(&ct->ctbs.recv.lock, flags);
 		if (err)
 			break;
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
index fc9486779e87..bc52dc479a14 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
@@ -27,11 +27,13 @@ struct intel_guc;
  * record (command transport buffer descriptor) and the actual buffer which
  * holds the commands.
  *
+ * @lock: protects access to the commands buffer and buffer descriptor
  * @desc: pointer to the buffer descriptor
  * @cmds: pointer to the commands buffer
  * @size: size of the commands buffer
  */
 struct intel_guc_ct_buffer {
+	spinlock_t lock;
 	struct guc_ct_buffer_desc *desc;
 	u32 *cmds;
 	u32 size;
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
