Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BFA27172ED5
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 03:29:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E67F96EDCA;
	Fri, 28 Feb 2020 02:29:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19CEA6EDCE
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 02:29:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Feb 2020 18:29:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,493,1574150400"; d="scan'208";a="227392689"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga007.jf.intel.com with ESMTP; 27 Feb 2020 18:29:45 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Feb 2020 18:28:43 -0800
Message-Id: <20200228022843.1936-7-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200228022843.1936-1-daniele.ceraolospurio@intel.com>
References: <20200228022843.1936-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/6] drm/i915/uc: do not free err log on uc_fini
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

we do call uc_fini if there is an issue while loading the GuC, so we
can't delete in there the logs we need to debug the load failure.
Moving the log free to driver remove ensures the logs stick around ong
enough for us to dump them.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.c    | 3 +--
 drivers/gpu/drm/i915/gt/uc/intel_uc.c | 9 +++++++--
 drivers/gpu/drm/i915/gt/uc/intel_uc.h | 1 +
 3 files changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 3dea8881e915..eda66b0d44bd 100644
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
index 2f7d3028af08..52b6e4e64ced 100644
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
