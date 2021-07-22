Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B4B83D306D
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jul 2021 01:37:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C6CB6F5DC;
	Thu, 22 Jul 2021 23:36:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0C356F5A8;
 Thu, 22 Jul 2021 23:36:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10053"; a="208659273"
X-IronPort-AV: E=Sophos;i="5.84,262,1620716400"; d="scan'208";a="208659273"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2021 16:36:38 -0700
X-IronPort-AV: E=Sophos;i="5.84,262,1620716400"; d="scan'208";a="470860947"
Received: from dhiatt-server.jf.intel.com ([10.54.81.3])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2021 16:36:38 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Thu, 22 Jul 2021 16:54:09 -0700
Message-Id: <20210722235426.31831-17-matthew.brost@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210722235426.31831-1-matthew.brost@intel.com>
References: <20210722235426.31831-1-matthew.brost@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 16/33] drm/i915/guc: Don't complain about reset
 races
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

From: John Harrison <John.C.Harrison@Intel.com>

It is impossible to seal all race conditions of resets occurring
concurrent to other operations. At least, not without introducing
excesive mutex locking. Instead, don't complain if it occurs. In
particular, don't complain if trying to send a H2G during a reset.
Whatever the H2G was about should get redone once the reset is over.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
Signed-off-by: Matthew Brost <matthew.brost@intel.com>
Reviewed-by: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 5 ++++-
 drivers/gpu/drm/i915/gt/uc/intel_uc.c     | 3 +++
 drivers/gpu/drm/i915/gt/uc/intel_uc.h     | 2 ++
 3 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
index 18917b443f05..22b4733b55e2 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
@@ -760,7 +760,10 @@ int intel_guc_ct_send(struct intel_guc_ct *ct, const u32 *action, u32 len,
 	int ret;
 
 	if (unlikely(!ct->enabled)) {
-		WARN(1, "Unexpected send: action=%#x\n", *action);
+		struct intel_guc *guc = ct_to_guc(ct);
+		struct intel_uc *uc = container_of(guc, struct intel_uc, guc);
+
+		WARN(!uc->reset_in_progress, "Unexpected send: action=%#x\n", *action);
 		return -ENODEV;
 	}
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
index b523a8521351..77c1fe2ed883 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
@@ -550,6 +550,7 @@ void intel_uc_reset_prepare(struct intel_uc *uc)
 {
 	struct intel_guc *guc = &uc->guc;
 
+	uc->reset_in_progress = true;
 
 	/* Nothing to do if GuC isn't supported */
 	if (!intel_uc_supports_guc(uc))
@@ -579,6 +580,8 @@ void intel_uc_reset_finish(struct intel_uc *uc)
 {
 	struct intel_guc *guc = &uc->guc;
 
+	uc->reset_in_progress = false;
+
 	/* Firmware expected to be running when this function is called */
 	if (intel_guc_is_fw_running(guc) && intel_uc_uses_guc_submission(uc))
 		intel_guc_submission_reset_finish(guc);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.h b/drivers/gpu/drm/i915/gt/uc/intel_uc.h
index eaa3202192ac..91315e3f1c58 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.h
@@ -30,6 +30,8 @@ struct intel_uc {
 
 	/* Snapshot of GuC log from last failed load */
 	struct drm_i915_gem_object *load_err_log;
+
+	bool reset_in_progress;
 };
 
 void intel_uc_init_early(struct intel_uc *uc);
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
