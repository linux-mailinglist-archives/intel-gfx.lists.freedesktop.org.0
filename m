Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D7B7610D5F
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Oct 2022 11:34:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44CD610E7B0;
	Fri, 28 Oct 2022 09:34:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CDEF10E7B9
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Oct 2022 09:34:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666949687; x=1698485687;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8Ogecr6T+x7BB2J8xPMxJROm4uRqeUith4pKwFpbxvQ=;
 b=R8uL+MqqHLTvzgtWaEW48nVCNIc062x3HwehjxMQqqOAqYbmQAaAoxnF
 INyYpDPwSuubK4qC77esstY2uI2p2IRUMZTaTsd9Q4RR83aRoudogXsfI
 qyJ+W3aC28iolbiE83RrvJCwMs1doaU2KVudw8VPB2EcKDeFQp0G1LU0B
 7IXybi36FR5B2MNEa4zKNPd0Uh1V6PUht7KdleUtuaeHT/5itxQ6eImK5
 n+VK2iXHST8CTLISdFfdADAXiA0p/dbG/VW0JHpddCTrTfVERLlEo1XGY
 kCa05LAs0qn4XPvY9lds9FloNq6LqXIk5hFpXXpqqlCQIITiyyz4QAN7V A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="295864842"
X-IronPort-AV: E=Sophos;i="5.95,220,1661842800"; d="scan'208";a="295864842"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2022 02:34:46 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="610687640"
X-IronPort-AV: E=Sophos;i="5.95,220,1661842800"; d="scan'208";a="610687640"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2022 02:34:45 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Oct 2022 11:34:25 +0200
Message-Id: <20221028093425.968648-1-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/guc: add CAT error handler
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Bad GPU memory accesses can result in catastrophic error notifications
being send from the GPU to the KMD via the GuC. Add a handler to process
the notification by printing a kernel message and dumping the related
engine state (if appropriate).
Since the same CAT error can be reported twice, log only 1st one and
assume error for the same context reported in less than 100ms after the
1st one is duplicated.

Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 .../gpu/drm/i915/gt/uc/abi/guc_actions_abi.h  |  1 +
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  2 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c     |  3 ++
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 47 +++++++++++++++++++
 4 files changed, 53 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
index f359bef046e0b2..f9a1c5642855e3 100644
--- a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
+++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
@@ -138,6 +138,7 @@ enum intel_guc_action {
 	INTEL_GUC_ACTION_REGISTER_CONTEXT_MULTI_LRC = 0x4601,
 	INTEL_GUC_ACTION_CLIENT_SOFT_RESET = 0x5507,
 	INTEL_GUC_ACTION_SET_ENG_UTIL_BUFF = 0x550A,
+	INTEL_GUC_ACTION_NOTIFY_MEMORY_CAT_ERROR = 0x6000,
 	INTEL_GUC_ACTION_STATE_CAPTURE_NOTIFICATION = 0x8002,
 	INTEL_GUC_ACTION_NOTIFY_FLUSH_LOG_BUFFER_TO_FILE = 0x8003,
 	INTEL_GUC_ACTION_NOTIFY_CRASH_DUMP_POSTED = 0x8004,
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
index 804133df1ac9b4..61b412732d095a 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
@@ -445,6 +445,8 @@ int intel_guc_engine_failure_process_msg(struct intel_guc *guc,
 					 const u32 *msg, u32 len);
 int intel_guc_error_capture_process_msg(struct intel_guc *guc,
 					const u32 *msg, u32 len);
+int intel_guc_cat_error_process_msg(struct intel_guc *guc,
+				    const u32 *msg, u32 len);
 
 struct intel_engine_cs *
 intel_guc_lookup_engine(struct intel_guc *guc, u8 guc_class, u8 instance);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
index 2b22065e87bf9a..f55f724e264407 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
@@ -1035,6 +1035,9 @@ static int ct_process_request(struct intel_guc_ct *ct, struct ct_incoming_msg *r
 		CT_ERROR(ct, "Received GuC exception notification!\n");
 		ret = 0;
 		break;
+	case INTEL_GUC_ACTION_NOTIFY_MEMORY_CAT_ERROR:
+		ret = intel_guc_cat_error_process_msg(guc, payload, len);
+		break;
 	default:
 		ret = -EOPNOTSUPP;
 		break;
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 693b07a977893d..f68ae4a0ad864d 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -4659,6 +4659,53 @@ int intel_guc_engine_failure_process_msg(struct intel_guc *guc,
 	return 0;
 }
 
+int intel_guc_cat_error_process_msg(struct intel_guc *guc,
+				    const u32 *msg, u32 len)
+{
+	static struct {
+		u32 ctx_id;
+		unsigned long after;
+	} ratelimit;
+	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
+	struct drm_printer p = drm_info_printer(i915->drm.dev);
+	struct intel_context *ce;
+	unsigned long flags;
+	u32 ctx_id;
+
+	if (unlikely(len != 1)) {
+		drm_dbg(&i915->drm, "Invalid length %u\n", len);
+		return -EPROTO;
+	}
+	ctx_id = msg[0];
+
+	if (ctx_id == ratelimit.ctx_id && time_is_after_jiffies(ratelimit.after))
+		return 0;
+
+	ratelimit.ctx_id = ctx_id;
+	ratelimit.after = jiffies + msecs_to_jiffies(100);
+
+	if (unlikely(ctx_id == -1)) {
+		drm_err(&i915->drm,
+			"GPU reported catastrophic error without providing valid context\n");
+		return 0;
+	}
+
+	xa_lock_irqsave(&guc->context_lookup, flags);
+	ce = g2h_context_lookup(guc, ctx_id);
+	if (ce)
+		intel_context_get(ce);
+	xa_unlock_irqrestore(&guc->context_lookup, flags);
+	if (unlikely(!ce))
+		return -EPROTO;
+
+	drm_err(&i915->drm, "GPU reported catastrophic error associated with context %u on %s\n",
+		ctx_id, ce->engine->name);
+	intel_engine_dump(ce->engine, &p, "%s\n", ce->engine->name);
+	intel_context_put(ce);
+
+	return 0;
+}
+
 void intel_guc_find_hung_context(struct intel_engine_cs *engine)
 {
 	struct intel_guc *guc = &engine->gt->uc.guc;
-- 
2.34.1

