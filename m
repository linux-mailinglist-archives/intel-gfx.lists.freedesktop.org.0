Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D146914052C
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 09:20:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3CCC6E4DE;
	Fri, 17 Jan 2020 08:20:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB53D6E4DE
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2020 08:20:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jan 2020 00:20:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,329,1574150400"; d="scan'208";a="249157308"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga004.fm.intel.com with ESMTP; 17 Jan 2020 00:20:47 -0800
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.152.24])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 00H8KhBr014377; Fri, 17 Jan 2020 08:20:46 GMT
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Jan 2020 08:20:39 +0000
Message-Id: <20200117082039.65644-6-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20200117082039.65644-1-michal.wajdeczko@intel.com>
References: <20200117082039.65644-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 5/5] drm/i915/guc: Introduce CT_DEBUG
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

As we now have "ct" available almost in all functions we can
start using dev variants of logs also for debug.

Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 41 +++++++++++------------
 1 file changed, 19 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
index 09467728bc9b..873246d0bbfc 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
@@ -10,9 +10,10 @@
 #define CT_ERROR(_ct, _fmt, ...) \
 	DRM_DEV_ERROR(ct_to_dev(_ct), "CT: " _fmt, ##__VA_ARGS__)
 #ifdef CONFIG_DRM_I915_DEBUG_GUC
-#define CT_DEBUG_DRIVER(...)	DRM_DEBUG_DRIVER(__VA_ARGS__)
+#define CT_DEBUG(_ct, _fmt, ...) \
+	DRM_DEV_DEBUG_DRIVER(ct_to_dev(_ct), "CT: " _fmt, ##__VA_ARGS__)
 #else
-#define CT_DEBUG_DRIVER(...)	do { } while (0)
+#define CT_DEBUG(...)	do { } while (0)
 #endif
 
 struct ct_request {
@@ -81,7 +82,6 @@ static inline const char *guc_ct_buffer_type_to_str(u32 type)
 static void guc_ct_buffer_desc_init(struct guc_ct_buffer_desc *desc,
 				    u32 cmds_addr, u32 size)
 {
-	CT_DEBUG_DRIVER("CT: init addr=%#x size=%u\n", cmds_addr, size);
 	memset(desc, 0, sizeof(*desc));
 	desc->addr = cmds_addr;
 	desc->size = size;
@@ -90,8 +90,6 @@ static void guc_ct_buffer_desc_init(struct guc_ct_buffer_desc *desc,
 
 static void guc_ct_buffer_desc_reset(struct guc_ct_buffer_desc *desc)
 {
-	CT_DEBUG_DRIVER("CT: desc %p reset head=%u tail=%u\n",
-			desc, desc->head, desc->tail);
 	desc->head = 0;
 	desc->tail = 0;
 	desc->is_in_error = 0;
@@ -189,8 +187,7 @@ int intel_guc_ct_init(struct intel_guc_ct *ct)
 		return err;
 	}
 
-	CT_DEBUG_DRIVER("CT: vma base=%#x\n",
-			intel_guc_ggtt_offset(guc, ct->vma));
+	CT_DEBUG(ct, "vma base=%#x\n", intel_guc_ggtt_offset(guc, ct->vma));
 
 	/* store pointers to desc and cmds */
 	for (i = 0; i < ARRAY_SIZE(ct->ctbs); i++) {
@@ -224,7 +221,7 @@ void intel_guc_ct_fini(struct intel_guc_ct *ct)
 int intel_guc_ct_enable(struct intel_guc_ct *ct)
 {
 	struct intel_guc *guc = ct_to_guc(ct);
-	u32 base;
+	u32 base, cmds, size;
 	int err;
 	int i;
 
@@ -239,9 +236,10 @@ int intel_guc_ct_enable(struct intel_guc_ct *ct)
 	 */
 	for (i = 0; i < ARRAY_SIZE(ct->ctbs); i++) {
 		GEM_BUG_ON((i != CTB_SEND) && (i != CTB_RECV));
-		guc_ct_buffer_desc_init(ct->ctbs[i].desc,
-					base + PAGE_SIZE/4 * i + PAGE_SIZE/2,
-					PAGE_SIZE/4);
+		cmds = base + PAGE_SIZE / 4 * i + PAGE_SIZE / 2;
+		size = PAGE_SIZE / 4;
+		CT_DEBUG(ct, "%d: addr=%#x size=%u\n", i, cmds, size);
+		guc_ct_buffer_desc_init(ct->ctbs[i].desc, cmds, size);
 	}
 
 	/*
@@ -356,9 +354,8 @@ static int ct_write(struct intel_guc_ct *ct,
 		 (want_response ? GUC_CT_MSG_SEND_STATUS : 0) |
 		 (action[0] << GUC_CT_MSG_ACTION_SHIFT);
 
-	CT_DEBUG_DRIVER("CT: writing %*ph %*ph %*ph\n",
-			4, &header, 4, &fence,
-			4 * (len - 1), &action[1]);
+	CT_DEBUG(ct, "writing %*ph %*ph %*ph\n",
+		 4, &header, 4, &fence, 4 * (len - 1), &action[1]);
 
 	cmds[tail] = header;
 	tail = (tail + 1) % size;
@@ -553,8 +550,8 @@ int intel_guc_ct_send(struct intel_guc_ct *ct, const u32 *action, u32 len,
 		CT_ERROR(ct, "Sending action %#x failed (err=%d status=%#X)\n",
 			 action[0], ret, status);
 	} else if (unlikely(ret)) {
-		CT_DEBUG_DRIVER("CT: send action %#x returned %d (%#x)\n",
-				action[0], ret, ret);
+		CT_DEBUG(ct, "send action %#x returned %d (%#x)\n",
+			 action[0], ret, ret);
 	}
 
 	mutex_unlock(&guc->send_mutex);
@@ -611,7 +608,7 @@ static int ct_read(struct intel_guc_ct *ct, u32 *data)
 	/* beware of buffer wrap case */
 	if (unlikely(available < 0))
 		available += size;
-	CT_DEBUG_DRIVER("CT: available %d (%u:%u)\n", available, head, tail);
+	CT_DEBUG(ct, "available %d (%u:%u)\n", available, head, tail);
 	GEM_BUG_ON(available < 0);
 
 	data[0] = cmds[head];
@@ -633,7 +630,7 @@ static int ct_read(struct intel_guc_ct *ct, u32 *data)
 		data[i] = cmds[head];
 		head = (head + 1) % size;
 	}
-	CT_DEBUG_DRIVER("CT: received %*ph\n", 4 * len, data);
+	CT_DEBUG(ct, "received %*ph\n", 4 * len, data);
 
 	desc->head = head * 4;
 	return 0;
@@ -693,13 +690,13 @@ static int ct_handle_response(struct intel_guc_ct *ct, const u32 *msg)
 		return -EPROTO;
 	}
 
-	CT_DEBUG_DRIVER("CT: response fence %u status %#x\n", fence, status);
+	CT_DEBUG(ct, "response fence %u status %#x\n", fence, status);
 
 	spin_lock(&ct->requests.lock);
 	list_for_each_entry(req, &ct->requests.pending, link) {
 		if (unlikely(fence != req->fence)) {
-			CT_DEBUG_DRIVER("CT: request %u awaits response\n",
-					req->fence);
+			CT_DEBUG(ct, "request %u awaits response\n",
+				 req->fence);
 			continue;
 		}
 		if (unlikely(datalen > req->response_len)) {
@@ -727,7 +724,7 @@ static void ct_process_request(struct intel_guc_ct *ct,
 	struct intel_guc *guc = ct_to_guc(ct);
 	int ret;
 
-	CT_DEBUG_DRIVER("CT: request %x %*ph\n", action, 4 * len, payload);
+	CT_DEBUG(ct, "request %x %*ph\n", action, 4 * len, payload);
 
 	switch (action) {
 	case INTEL_GUC_ACTION_DEFAULT:
-- 
2.19.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
