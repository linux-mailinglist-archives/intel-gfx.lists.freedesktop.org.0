Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 234BE603B7E
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 10:33:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B207610EA96;
	Wed, 19 Oct 2022 08:33:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A52CA10E482
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Oct 2022 08:33:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666168417; x=1697704417;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3Apur8zrg5FKRVluN+JUTfObXSrtOCA3guZ4Pmj+YwE=;
 b=X2dN6KJJagA4u7x8rQYT8iagvmI1LqFJr6OS0f2x2C2nIyDyVgbmG3nY
 reO1DmlC5SFaUhJIUZS/VqkcO7EBCzON0kZ6YQYbKhfgt307Apkk9H9yF
 zbNS2EdO1WetEigQ4eGR/Afy0mLNbEm02d0l2tLvtgstTDaM87ZBr+H2d
 IzWbyvK/7xQM0GT+O40Vzixv5txlZR4XS75J6s4LcDZrfoMqTCKF9nbYO
 aplzMz+CKhXc9Wg4rdpAbleCh/YYZln7lL6wThnsI3gctU4hxoNmlUPqP
 A/md+F0z6EP2IXEc3W1UB9By9eRuo0bLW+Fo8x3KrhrRz6TcyCIQ1RWFU Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="332900587"
X-IronPort-AV: E=Sophos;i="5.95,195,1661842800"; d="scan'208";a="332900587"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 01:33:37 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="754469374"
X-IronPort-AV: E=Sophos;i="5.95,195,1661842800"; d="scan'208";a="754469374"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 01:33:34 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Oct 2022 10:33:25 +0200
Message-Id: <20221019083325.214960-1-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/guc: add CAT error handler
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In case of catastrophic errors GuC sends notification, which results in
cryptic message. Let's add handler which, for starters, dumps state
of affected engine.

Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 .../gpu/drm/i915/gt/uc/abi/guc_actions_abi.h  |  1 +
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  2 ++
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c     |  3 ++
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 31 +++++++++++++++++++
 4 files changed, 37 insertions(+)

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
index 693b07a977893d..94f91dfa3ec456 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -4659,6 +4659,37 @@ int intel_guc_engine_failure_process_msg(struct intel_guc *guc,
 	return 0;
 }
 
+int intel_guc_cat_error_process_msg(struct intel_guc *guc,
+				    const u32 *msg, u32 len)
+{
+	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
+	struct intel_engine_cs *engine;
+	struct intel_context *ce;
+	struct drm_printer p;
+	unsigned long flags;
+	int ctx_id;
+
+	if (unlikely(len != 1)) {
+		drm_dbg(&i915->drm, "Invalid length %u", len);
+		return -EPROTO;
+	}
+	ctx_id = msg[0];
+
+	xa_lock_irqsave(&guc->context_lookup, flags);
+	ce = g2h_context_lookup(guc, ctx_id);
+	if (ce)
+		engine = ce->engine;
+	xa_unlock_irqrestore(&guc->context_lookup, flags);
+	if (unlikely(!ce || !engine))
+		return -EPROTO;
+
+	drm_err(&i915->drm, "%s: CAT error reported by GuC\n", engine->name);
+	p = drm_info_printer(i915->drm.dev);
+	intel_engine_dump(engine, &p, "%s\n", engine->name);
+
+	return 0;
+}
+
 void intel_guc_find_hung_context(struct intel_engine_cs *engine)
 {
 	struct intel_guc *guc = &engine->gt->uc.guc;
-- 
2.34.1

