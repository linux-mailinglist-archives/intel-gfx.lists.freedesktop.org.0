Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EA601383EF
	for <lists+intel-gfx@lfdr.de>; Sun, 12 Jan 2020 00:12:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C7886E499;
	Sat, 11 Jan 2020 23:12:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1284F6E44C
 for <intel-gfx@lists.freedesktop.org>; Sat, 11 Jan 2020 23:12:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jan 2020 15:12:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,423,1571727600"; d="scan'208";a="237277345"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga001.fm.intel.com with ESMTP; 11 Jan 2020 15:12:33 -0800
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.152.25])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 00BNCVOR021857; Sat, 11 Jan 2020 23:12:32 GMT
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 11 Jan 2020 23:11:12 +0000
Message-Id: <20200111231114.59208-3-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20200111231114.59208-1-michal.wajdeczko@intel.com>
References: <20200111231114.59208-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/guc: Introduce CT_ERROR
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

We should start using dev variants of error logging and
to simplify that introduce helper macro that will do any
necessary conversions to obtain pointer to device struct.

Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 46 ++++++++++++++++-------
 1 file changed, 32 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
index 4aa07a53a9cf..eb123543392a 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
@@ -5,7 +5,10 @@
 
 #include "i915_drv.h"
 #include "intel_guc_ct.h"
+#include "gt/intel_gt.h"
 
+#define CT_ERROR(_ct, _fmt, ...) \
+	DRM_DEV_ERROR(ct_to_dev(_ct), "CT: " _fmt, ##__VA_ARGS__)
 #ifdef CONFIG_DRM_I915_DEBUG_GUC
 #define CT_DEBUG_DRIVER(...)	DRM_DEBUG_DRIVER(__VA_ARGS__)
 #else
@@ -48,6 +51,21 @@ static inline struct intel_guc *ct_to_guc(struct intel_guc_ct *ct)
 	return container_of(ct, struct intel_guc, ct);
 }
 
+static inline struct intel_gt *ct_to_gt(struct intel_guc_ct *ct)
+{
+	return guc_to_gt(ct_to_guc(ct));
+}
+
+static inline struct drm_i915_private *ct_to_i915(struct intel_guc_ct *ct)
+{
+	return ct_to_gt(ct)->i915;
+}
+
+static inline struct device *ct_to_dev(struct intel_guc_ct *ct)
+{
+	return ct_to_i915(ct)->drm.dev;
+}
+
 static inline const char *guc_ct_buffer_type_to_str(u32 type)
 {
 	switch (type) {
@@ -157,8 +175,8 @@ int intel_guc_ct_init(struct intel_guc_ct *ct)
 	 */
 
 	err = intel_guc_allocate_and_map_vma(guc, PAGE_SIZE, &ct->vma, &blob);
-	if (err) {
-		DRM_ERROR("CT: channel allocation failed; err=%d\n", err);
+	if (unlikely(err)) {
+		CT_ERROR(ct, "Failed to allocate CT channel (err=%d)\n", err);
 		return err;
 	}
 
@@ -240,7 +258,7 @@ int intel_guc_ct_enable(struct intel_guc_ct *ct)
 	guc_action_deregister_ct_buffer(guc,
 					INTEL_GUC_CT_BUFFER_TYPE_RECV);
 err_out:
-	DRM_ERROR("CT: can't open channel; err=%d\n", err);
+	CT_ERROR(ct, "Failed to open open CT channel (err=%d)\n", err);
 	return err;
 }
 
@@ -526,8 +544,8 @@ int intel_guc_ct_send(struct intel_guc_ct *ct, const u32 *action, u32 len,
 
 	ret = ct_send(ct, action, len, response_buf, response_buf_size, &status);
 	if (unlikely(ret < 0)) {
-		DRM_ERROR("CT: send action %#X failed; err=%d status=%#X\n",
-			  action[0], ret, status);
+		CT_ERROR(ct, "Sending action %#x failed (err=%d status=%#X)\n",
+			 action[0], ret, status);
 	} else if (unlikely(ret)) {
 		CT_DEBUG_DRIVER("CT: send action %#x returned %d (%#x)\n",
 				action[0], ret, ret);
@@ -639,7 +657,7 @@ static int ct_handle_response(struct intel_guc_ct *ct, const u32 *msg)
 
 	/* Response payload shall at least include fence and status */
 	if (unlikely(len < 2)) {
-		DRM_ERROR("CT: corrupted response %*ph\n", msgsize, msg);
+		CT_ERROR(ct, "Corrupted response %*ph\n", msgsize, msg);
 		return -EPROTO;
 	}
 
@@ -649,7 +667,7 @@ static int ct_handle_response(struct intel_guc_ct *ct, const u32 *msg)
 
 	/* Format of the status follows RESPONSE message */
 	if (unlikely(!INTEL_GUC_MSG_IS_RESPONSE(status))) {
-		DRM_ERROR("CT: corrupted response %*ph\n", msgsize, msg);
+		CT_ERROR(ct, "Corrupted response %*ph\n", msgsize, msg);
 		return -EPROTO;
 	}
 
@@ -663,8 +681,8 @@ static int ct_handle_response(struct intel_guc_ct *ct, const u32 *msg)
 			continue;
 		}
 		if (unlikely(datalen > req->response_len)) {
-			DRM_ERROR("CT: response %u too long %*ph\n",
-				  req->fence, msgsize, msg);
+			CT_ERROR(ct, "Response for %u is too long %*ph\n",
+				 req->fence, msgsize, msg);
 			datalen = 0;
 		}
 		if (datalen)
@@ -677,7 +695,7 @@ static int ct_handle_response(struct intel_guc_ct *ct, const u32 *msg)
 	spin_unlock(&ct->requests.lock);
 
 	if (!found)
-		DRM_ERROR("CT: unsolicited response %*ph\n", msgsize, msg);
+		CT_ERROR(ct, "Unsolicited response %*ph\n", msgsize, msg);
 	return 0;
 }
 
@@ -698,8 +716,8 @@ static void ct_process_request(struct intel_guc_ct *ct,
 
 	default:
 fail_unexpected:
-		DRM_ERROR("CT: unexpected request %x %*ph\n",
-			  action, 4 * len, payload);
+		CT_ERROR(ct, "Unexpected request %x %*ph\n",
+			 action, 4 * len, payload);
 		break;
 	}
 }
@@ -775,7 +793,7 @@ static int ct_handle_request(struct intel_guc_ct *ct, const u32 *msg)
 
 	request = kmalloc(sizeof(*request) + msgsize, GFP_ATOMIC);
 	if (unlikely(!request)) {
-		DRM_ERROR("CT: dropping request %*ph\n", msgsize, msg);
+		CT_ERROR(ct, "Dropping request %*ph\n", msgsize, msg);
 		return 0; /* XXX: -ENOMEM ? */
 	}
 	memcpy(request->msg, msg, msgsize);
@@ -815,7 +833,7 @@ void intel_guc_ct_event_handler(struct intel_guc_ct *ct)
 	} while (!err);
 
 	if (GEM_WARN_ON(err == -EPROTO)) {
-		DRM_ERROR("CT: corrupted message detected!\n");
+		CT_ERROR(ct, "Corrupted message: %#x\n", msg[0]);
 		ctb->desc->is_in_error = 1;
 	}
 }
-- 
2.19.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
