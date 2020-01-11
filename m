Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F2FD1383ED
	for <lists+intel-gfx@lfdr.de>; Sun, 12 Jan 2020 00:12:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B83336E46B;
	Sat, 11 Jan 2020 23:12:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 576BE6E44C
 for <intel-gfx@lists.freedesktop.org>; Sat, 11 Jan 2020 23:12:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jan 2020 15:12:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,422,1571727600"; d="scan'208";a="255434977"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga002.fm.intel.com with ESMTP; 11 Jan 2020 15:12:32 -0800
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.152.25])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 00BNCVOQ021857; Sat, 11 Jan 2020 23:12:31 GMT
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 11 Jan 2020 23:11:11 +0000
Message-Id: <20200111231114.59208-2-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20200111231114.59208-1-michal.wajdeczko@intel.com>
References: <20200111231114.59208-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/4] drm/i915/guc: Simpler CT message size
 calculation
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

We need CT message size in bytes so just use that in helper var.

Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
index c6f971a049f9..4aa07a53a9cf 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
@@ -627,7 +627,7 @@ static int ct_handle_response(struct intel_guc_ct *ct, const u32 *msg)
 {
 	u32 header = msg[0];
 	u32 len = ct_header_get_len(header);
-	u32 msglen = len + 1; /* total message length including header */
+	u32 msgsize = (len + 1) * sizeof(u32); /* msg size in bytes w/header */
 	u32 fence;
 	u32 status;
 	u32 datalen;
@@ -639,7 +639,7 @@ static int ct_handle_response(struct intel_guc_ct *ct, const u32 *msg)
 
 	/* Response payload shall at least include fence and status */
 	if (unlikely(len < 2)) {
-		DRM_ERROR("CT: corrupted response %*ph\n", 4 * msglen, msg);
+		DRM_ERROR("CT: corrupted response %*ph\n", msgsize, msg);
 		return -EPROTO;
 	}
 
@@ -649,7 +649,7 @@ static int ct_handle_response(struct intel_guc_ct *ct, const u32 *msg)
 
 	/* Format of the status follows RESPONSE message */
 	if (unlikely(!INTEL_GUC_MSG_IS_RESPONSE(status))) {
-		DRM_ERROR("CT: corrupted response %*ph\n", 4 * msglen, msg);
+		DRM_ERROR("CT: corrupted response %*ph\n", msgsize, msg);
 		return -EPROTO;
 	}
 
@@ -664,7 +664,7 @@ static int ct_handle_response(struct intel_guc_ct *ct, const u32 *msg)
 		}
 		if (unlikely(datalen > req->response_len)) {
 			DRM_ERROR("CT: response %u too long %*ph\n",
-				  req->fence, 4 * msglen, msg);
+				  req->fence, msgsize, msg);
 			datalen = 0;
 		}
 		if (datalen)
@@ -677,7 +677,7 @@ static int ct_handle_response(struct intel_guc_ct *ct, const u32 *msg)
 	spin_unlock(&ct->requests.lock);
 
 	if (!found)
-		DRM_ERROR("CT: unsolicited response %*ph\n", 4 * msglen, msg);
+		DRM_ERROR("CT: unsolicited response %*ph\n", msgsize, msg);
 	return 0;
 }
 
@@ -767,18 +767,18 @@ static int ct_handle_request(struct intel_guc_ct *ct, const u32 *msg)
 {
 	u32 header = msg[0];
 	u32 len = ct_header_get_len(header);
-	u32 msglen = len + 1; /* total message length including header */
+	u32 msgsize = (len + 1) * sizeof(u32); /* msg size in bytes w/header */
 	struct ct_incoming_request *request;
 	unsigned long flags;
 
 	GEM_BUG_ON(ct_header_is_response(header));
 
-	request = kmalloc(sizeof(*request) + 4 * msglen, GFP_ATOMIC);
+	request = kmalloc(sizeof(*request) + msgsize, GFP_ATOMIC);
 	if (unlikely(!request)) {
-		DRM_ERROR("CT: dropping request %*ph\n", 4 * msglen, msg);
+		DRM_ERROR("CT: dropping request %*ph\n", msgsize, msg);
 		return 0; /* XXX: -ENOMEM ? */
 	}
-	memcpy(request->msg, msg, 4 * msglen);
+	memcpy(request->msg, msg, msgsize);
 
 	spin_lock_irqsave(&ct->requests.lock, flags);
 	list_add_tail(&request->link, &ct->requests.incoming);
-- 
2.19.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
