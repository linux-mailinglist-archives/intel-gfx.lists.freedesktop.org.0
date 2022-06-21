Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 772035531EB
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jun 2022 14:22:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CCDE10F1B2;
	Tue, 21 Jun 2022 12:22:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D8C510F157
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jun 2022 12:22:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655814169; x=1687350169;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=MWIMPr5e+77awb6sli+BLfkcpYcj4i60kc6bJvSlkz8=;
 b=Y3GbyXaEcesQEwe5h8b2i4mMne4X0MoE9jGpX0v5Zd85P8oDvvaLlxW8
 KPUme7+hpUHur8YIQLN+j4DHMKbej8TiEFwdhbAe6aR4EowThf4ARvNLs
 hVtfEiaHdZ6p+avV4BRU+k6/HngqcA7B2pCLzNCUjIRqp+wiGZ+je7xZK
 bgMA8i2wvsSazpm5NrZc/ZTrigpQPofAg5E/1OiwhknWfPL6JJQxRFlUA
 YoIx8ocCcP/RzFWbqIigORUEDMD06bMoqC4FqTRVyPQs0d2Q5a7YOwjbw
 ds3u1sNuYAw8pF8gyyO1Xu7C57a+x2YSi7LRnTfdToGzzori9q1t5Oire g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10384"; a="268823178"
X-IronPort-AV: E=Sophos;i="5.92,209,1650956400"; d="scan'208";a="268823178"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2022 05:22:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,209,1650956400"; d="scan'208";a="714955878"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga004.jf.intel.com with ESMTP; 21 Jun 2022 05:22:45 -0700
Received: from intel.com (tttangud-desk.iind.intel.com [10.145.144.118])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 25LCMKjr013778; Tue, 21 Jun 2022 13:22:42 +0100
From: Tilak Tangudu <tilak.tangudu@intel.com>
To: intel-gfx@lists.freedesktop.org, jon.ewins@intel.com,
 rodrigo.vivi@intel.com, vinay.belgaumkar@intel.com,
 chris.p.wilson@intel.com, ashutosh.dixit@intel.com,
 badal.nilawar@intel.com, anshuman.gupta@intel.com,
 tilak.tangudu@intel.com, matthew.d.roper@intel.com,
 saurabhg.gupta@intel.com, Aravind.Iddamsetty@intel.com,
 Sujaritha.Sundaresan@intel.com
Date: Tue, 21 Jun 2022 18:05:11 +0530
Message-Id: <20220621123516.370479-7-tilak.tangudu@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220621123516.370479-1-tilak.tangudu@intel.com>
References: <20220621123516.370479-1-tilak.tangudu@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/11] drm/i915: Avoid rpm helpers in
 try_context_registration
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Guard rpm helpers in try_context_registration with
is_intel_rpm_allowed

Avoid rpm helpers in guc_init_engine_stats and
rpm helpers not needed at higher level functions.
as intel_guc_submission_enable is called from
intel_gt_init_hw (which already holds wakeref)

Signed-off-by: Tilak Tangudu <tilak.tangudu@intel.com>
---
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 28 +++++++++++--------
 1 file changed, 16 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index e62ea35513ea..1be469810154 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -1364,18 +1364,16 @@ static int guc_action_enable_usage_stats(struct intel_guc *guc)
 static void guc_init_engine_stats(struct intel_guc *guc)
 {
 	struct intel_gt *gt = guc_to_gt(guc);
-	intel_wakeref_t wakeref;
+	int ret;
 
 	mod_delayed_work(system_highpri_wq, &guc->timestamp.work,
 			 guc->timestamp.ping_delay);
 
-	with_intel_runtime_pm(&gt->i915->runtime_pm, wakeref) {
-		int ret = guc_action_enable_usage_stats(guc);
+	ret = guc_action_enable_usage_stats(guc);
 
-		if (ret)
-			drm_err(&gt->i915->drm,
-				"Failed to enable usage stats: %d!\n", ret);
-	}
+	if (ret)
+		drm_err(&gt->i915->drm,
+			"Failed to enable usage stats: %d!\n", ret);
 }
 
 void intel_guc_busyness_park(struct intel_gt *gt)
@@ -2478,7 +2476,7 @@ static int try_context_registration(struct intel_context *ce, bool loop)
 	struct intel_engine_cs *engine = ce->engine;
 	struct intel_runtime_pm *runtime_pm = engine->uncore->rpm;
 	struct intel_guc *guc = &engine->gt->uc.guc;
-	intel_wakeref_t wakeref;
+	intel_wakeref_t wakeref = 0;
 	u32 ctx_id = ce->guc_id.id;
 	bool context_registered;
 	int ret = 0;
@@ -2522,13 +2520,19 @@ static int try_context_registration(struct intel_context *ce, bool loop)
 		 * If stealing the guc_id, this ce has the same guc_id as the
 		 * context whose guc_id was stolen.
 		 */
-		with_intel_runtime_pm(runtime_pm, wakeref)
-			ret = deregister_context(ce, ce->guc_id.id);
+		if (is_intel_rpm_allowed(runtime_pm))
+			wakeref = intel_runtime_pm_get(runtime_pm);
+		ret = deregister_context(ce, ce->guc_id.id);
+		if (wakeref)
+			intel_runtime_pm_put(runtime_pm, wakeref);
 		if (unlikely(ret == -ENODEV))
 			ret = 0;	/* Will get registered later */
 	} else {
-		with_intel_runtime_pm(runtime_pm, wakeref)
-			ret = register_context(ce, loop);
+		if (is_intel_rpm_allowed(runtime_pm))
+			wakeref = intel_runtime_pm_get(runtime_pm);
+		ret = register_context(ce, loop);
+		if (wakeref)
+			intel_runtime_pm_put(runtime_pm, wakeref);
 		if (unlikely(ret == -EBUSY)) {
 			clr_ctx_id_mapping(guc, ctx_id);
 		} else if (unlikely(ret == -ENODEV)) {
-- 
2.25.1

