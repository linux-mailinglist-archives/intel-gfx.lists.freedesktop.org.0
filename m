Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E64D31383EE
	for <lists+intel-gfx@lfdr.de>; Sun, 12 Jan 2020 00:12:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AEC56E488;
	Sat, 11 Jan 2020 23:12:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB1406E44C
 for <intel-gfx@lists.freedesktop.org>; Sat, 11 Jan 2020 23:12:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jan 2020 15:12:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,422,1571727600"; d="scan'208";a="241735891"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga002.jf.intel.com with ESMTP; 11 Jan 2020 15:12:33 -0800
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.152.25])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 00BNCVOS021857; Sat, 11 Jan 2020 23:12:32 GMT
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 11 Jan 2020 23:11:13 +0000
Message-Id: <20200111231114.59208-4-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20200111231114.59208-1-michal.wajdeczko@intel.com>
References: <20200111231114.59208-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/4] drm/i915/guc: Update CTB helpers to use
 CT_ERROR
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

Update GuC CTB action helpers to benefit from new CT_ERROR macro.

Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 57 ++++++++++++-----------
 1 file changed, 31 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
index eb123543392a..1da69425029b 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
@@ -107,31 +107,40 @@ static int guc_action_register_ct_buffer(struct intel_guc *guc,
 		sizeof(struct guc_ct_buffer_desc),
 		type
 	};
-	int err;
 
 	/* Can't use generic send(), CT registration must go over MMIO */
-	err = intel_guc_send_mmio(guc, action, ARRAY_SIZE(action), NULL, 0);
-	if (err)
-		DRM_ERROR("CT: register %s buffer failed; err=%d\n",
-			  guc_ct_buffer_type_to_str(type), err);
+	return intel_guc_send_mmio(guc, action, ARRAY_SIZE(action), NULL, 0);
+}
+
+static int ct_register_buffer(struct intel_guc_ct *ct, u32 desc_addr, u32 type)
+{
+	int err = guc_action_register_ct_buffer(ct_to_guc(ct), desc_addr, type);
+
+	if (unlikely(err))
+		CT_ERROR(ct, "Failed to register %s buffer (err=%d)\n",
+			 guc_ct_buffer_type_to_str(type), err);
 	return err;
 }
 
-static int guc_action_deregister_ct_buffer(struct intel_guc *guc,
-					   u32 type)
+static int guc_action_deregister_ct_buffer(struct intel_guc *guc, u32 type)
 {
 	u32 action[] = {
 		INTEL_GUC_ACTION_DEREGISTER_COMMAND_TRANSPORT_BUFFER,
 		CTB_OWNER_HOST,
 		type
 	};
-	int err;
 
 	/* Can't use generic send(), CT deregistration must go over MMIO */
-	err = intel_guc_send_mmio(guc, action, ARRAY_SIZE(action), NULL, 0);
-	if (err)
-		DRM_ERROR("CT: deregister %s buffer failed; err=%d\n",
-			  guc_ct_buffer_type_to_str(type), err);
+	return intel_guc_send_mmio(guc, action, ARRAY_SIZE(action), NULL, 0);
+}
+
+static int ct_deregister_buffer(struct intel_guc_ct *ct, u32 type)
+{
+	int err = guc_action_deregister_ct_buffer(ct_to_guc(ct), type);
+
+	if (unlikely(err))
+		CT_ERROR(ct, "Failed to deregister %s buffer (err=%d)\n",
+			 guc_ct_buffer_type_to_str(type), err);
 	return err;
 }
 
@@ -235,18 +244,17 @@ int intel_guc_ct_enable(struct intel_guc_ct *ct)
 					PAGE_SIZE/4);
 	}
 
-	/* register buffers, starting wirh RECV buffer
-	 * descriptors are in first half of the blob
+	/*
+	 * Register both CT buffers starting with RECV buffer.
+	 * Descriptors are in first half of the blob.
 	 */
-	err = guc_action_register_ct_buffer(guc,
-					    base + PAGE_SIZE/4 * CTB_RECV,
-					    INTEL_GUC_CT_BUFFER_TYPE_RECV);
+	err = ct_register_buffer(ct, base + PAGE_SIZE/4 * CTB_RECV,
+				 INTEL_GUC_CT_BUFFER_TYPE_RECV);
 	if (unlikely(err))
 		goto err_out;
 
-	err = guc_action_register_ct_buffer(guc,
-					    base + PAGE_SIZE/4 * CTB_SEND,
-					    INTEL_GUC_CT_BUFFER_TYPE_SEND);
+	err = ct_register_buffer(ct, base + PAGE_SIZE/4 * CTB_SEND,
+				 INTEL_GUC_CT_BUFFER_TYPE_SEND);
 	if (unlikely(err))
 		goto err_deregister;
 
@@ -255,8 +263,7 @@ int intel_guc_ct_enable(struct intel_guc_ct *ct)
 	return 0;
 
 err_deregister:
-	guc_action_deregister_ct_buffer(guc,
-					INTEL_GUC_CT_BUFFER_TYPE_RECV);
+	ct_deregister_buffer(ct, INTEL_GUC_CT_BUFFER_TYPE_RECV);
 err_out:
 	CT_ERROR(ct, "Failed to open open CT channel (err=%d)\n", err);
 	return err;
@@ -275,10 +282,8 @@ void intel_guc_ct_disable(struct intel_guc_ct *ct)
 	ct->enabled = false;
 
 	if (intel_guc_is_running(guc)) {
-		guc_action_deregister_ct_buffer(guc,
-						INTEL_GUC_CT_BUFFER_TYPE_SEND);
-		guc_action_deregister_ct_buffer(guc,
-						INTEL_GUC_CT_BUFFER_TYPE_RECV);
+		ct_deregister_buffer(ct, INTEL_GUC_CT_BUFFER_TYPE_SEND);
+		ct_deregister_buffer(ct, INTEL_GUC_CT_BUFFER_TYPE_RECV);
 	}
 }
 
-- 
2.19.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
