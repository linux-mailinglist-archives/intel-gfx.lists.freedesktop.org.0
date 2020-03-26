Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B3B8819462E
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2020 19:12:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 104576E8FD;
	Thu, 26 Mar 2020 18:12:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 854086E8FB
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2020 18:12:07 +0000 (UTC)
IronPort-SDR: pE24OAtIyCUnN1xMdcPCDQQgwzOE4hmO+ZEBbeeSKMlIYKVMRUZ0SUjlFM4BSIxQv82QSia7EX
 /VWuEUgn1Q5A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2020 11:12:07 -0700
IronPort-SDR: 1V2m0mBbNZgS54D/3aK/jnRa+z9yLglKAfnttP90UmrL1FZFkjicAMeKH67/G/wKK7AKAVoKlY
 /tx5FT81hkdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,309,1580803200"; d="scan'208";a="265956027"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga002.jf.intel.com with ESMTP; 26 Mar 2020 11:12:07 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Mar 2020 11:11:21 -0700
Message-Id: <20200326181121.16869-7-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200326181121.16869-1-daniele.ceraolospurio@intel.com>
References: <20200326181121.16869-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 6/6] drm/i915/uc: do not free err log on
 uc_fini
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

We need to keep the GuC error logs around to debug the load failure,
so we can't clean them in the error unwind, which includes uc_fini().
Moving the cleanup to driver remove ensures that the logs stick around
long enough for us to dump them.

v2: reword commit msg (John)

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.c    | 3 +--
 drivers/gpu/drm/i915/gt/uc/intel_uc.c | 9 +++++++--
 drivers/gpu/drm/i915/gt/uc/intel_uc.h | 1 +
 3 files changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index d09f7596cb98..1c99cc72305a 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -635,8 +635,7 @@ void intel_gt_driver_remove(struct intel_gt *gt)
 {
 	__intel_gt_disable(gt);
 
-	intel_uc_fini_hw(&gt->uc);
-	intel_uc_fini(&gt->uc);
+	intel_uc_driver_remove(&gt->uc);
 
 	intel_engines_release(gt);
 }
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
index a4cbe06e06bd..b11e564ef22e 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
@@ -131,6 +131,13 @@ static void __uc_free_load_err_log(struct intel_uc *uc)
 		i915_gem_object_put(log);
 }
 
+void intel_uc_driver_remove(struct intel_uc *uc)
+{
+	intel_uc_fini_hw(uc);
+	intel_uc_fini(uc);
+	__uc_free_load_err_log(uc);
+}
+
 static inline bool guc_communication_enabled(struct intel_guc *guc)
 {
 	return intel_guc_ct_enabled(&guc->ct);
@@ -311,8 +318,6 @@ static void __uc_fini(struct intel_uc *uc)
 {
 	intel_huc_fini(&uc->huc);
 	intel_guc_fini(&uc->guc);
-
-	__uc_free_load_err_log(uc);
 }
 
 static int __uc_sanitize(struct intel_uc *uc)
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.h b/drivers/gpu/drm/i915/gt/uc/intel_uc.h
index 5ae7b50b7dc1..9c954c589edf 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.h
@@ -34,6 +34,7 @@ struct intel_uc {
 
 void intel_uc_init_early(struct intel_uc *uc);
 void intel_uc_driver_late_release(struct intel_uc *uc);
+void intel_uc_driver_remove(struct intel_uc *uc);
 void intel_uc_init_mmio(struct intel_uc *uc);
 void intel_uc_reset_prepare(struct intel_uc *uc);
 void intel_uc_suspend(struct intel_uc *uc);
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
