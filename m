Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14D57163634
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2020 23:33:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E70B6EAC9;
	Tue, 18 Feb 2020 22:33:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDC036EAC9
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2020 22:33:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Feb 2020 14:33:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,458,1574150400"; d="scan'208";a="434264123"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by fmsmga005.fm.intel.com with ESMTP; 18 Feb 2020 14:33:48 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Feb 2020 14:33:25 -0800
Message-Id: <20200218223327.11058-8-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200218223327.11058-1-daniele.ceraolospurio@intel.com>
References: <20200218223327.11058-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 08/10] drm/i915/uc: Abort early on uc_init failure
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

Now that we can differentiate wants vs uses GuC/HuC, intel_uc_init is
restricted to running only if we have successfully fetched the required
blob(s) and are committed to using the microcontroller(s).
The only remaining thing that can go wrong in uc_init is the allocation
of GuC/HuC related objects; if we get such a failure better to bail out
immediately instead of wedging later, like we do for e.g.
intel_engines_init, since without objects we can't use the HW, including
not being able to attempt the firmware load.

While at it, remove the unneeded fw_cleanup call (this is handled
outside of gt_init) and add a probe failure injection point for testing.
Also, update the logs for <g/h>uc_init failures to probe_failure() since
they will cause the driver load to fail.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
Reviewed-by: Fernando Pacheco <fernando.pacheco@intel.com>
Reviewed-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.c     |  4 +++-
 drivers/gpu/drm/i915/gt/uc/intel_guc.c |  2 +-
 drivers/gpu/drm/i915/gt/uc/intel_huc.c |  2 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc.c  | 24 +++++++++++++++++-------
 drivers/gpu/drm/i915/gt/uc/intel_uc.h  |  4 ++--
 5 files changed, 24 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index f1f1b306e0af..cd64f81a3e60 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -592,7 +592,9 @@ int intel_gt_init(struct intel_gt *gt)
 	if (err)
 		goto err_engines;
 
-	intel_uc_init(&gt->uc);
+	err = intel_uc_init(&gt->uc);
+	if (err)
+		goto err_engines;
 
 	err = intel_gt_resume(gt);
 	if (err)
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index f96d1bdf4bf2..97b9c71a6fd4 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -376,7 +376,7 @@ int intel_guc_init(struct intel_guc *guc)
 	intel_uc_fw_fini(&guc->fw);
 err_fetch:
 	intel_uc_fw_cleanup_fetch(&guc->fw);
-	DRM_DEV_DEBUG_DRIVER(gt->i915->drm.dev, "failed with %d\n", ret);
+	i915_probe_error(gt->i915, "failed with %d\n", ret);
 	return ret;
 }
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc.c b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
index 32a069841c14..5f448d0e360b 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_huc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
@@ -127,7 +127,7 @@ int intel_huc_init(struct intel_huc *huc)
 	intel_uc_fw_fini(&huc->fw);
 out:
 	intel_uc_fw_cleanup_fetch(&huc->fw);
-	DRM_DEV_DEBUG_DRIVER(i915->drm.dev, "failed with %d\n", err);
+	i915_probe_error(i915, "failed with %d\n", err);
 	return err;
 }
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
index f81b4d40bc90..1c74518c2459 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
@@ -273,7 +273,7 @@ static void __uc_cleanup_firmwares(struct intel_uc *uc)
 	intel_uc_fw_cleanup_fetch(&uc->guc.fw);
 }
 
-static void __uc_init(struct intel_uc *uc)
+static int __uc_init(struct intel_uc *uc)
 {
 	struct intel_guc *guc = &uc->guc;
 	struct intel_huc *huc = &uc->huc;
@@ -282,19 +282,29 @@ static void __uc_init(struct intel_uc *uc)
 	GEM_BUG_ON(!intel_uc_wants_guc(uc));
 
 	if (!intel_uc_uses_guc(uc))
-		return;
+		return 0;
+
+	if (i915_inject_probe_failure(uc_to_gt(uc)->i915))
+		return -ENOMEM;
 
 	/* XXX: GuC submission is unavailable for now */
 	GEM_BUG_ON(intel_uc_uses_guc_submission(uc));
 
 	ret = intel_guc_init(guc);
-	if (ret) {
-		intel_uc_fw_cleanup_fetch(&huc->fw);
-		return;
+	if (ret)
+		return ret;
+
+	if (intel_uc_uses_huc(uc)) {
+		ret = intel_huc_init(huc);
+		if (ret)
+			goto out_guc;
 	}
 
-	if (intel_uc_uses_huc(uc))
-		intel_huc_init(huc);
+	return 0;
+
+out_guc:
+	intel_guc_fini(guc);
+	return ret;
 }
 
 static void __uc_fini(struct intel_uc *uc)
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.h b/drivers/gpu/drm/i915/gt/uc/intel_uc.h
index c1f39bdc115a..5ae7b50b7dc1 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.h
@@ -17,7 +17,7 @@ struct intel_uc_ops {
 	int (*sanitize)(struct intel_uc *uc);
 	void (*init_fw)(struct intel_uc *uc);
 	void (*fini_fw)(struct intel_uc *uc);
-	void (*init)(struct intel_uc *uc);
+	int (*init)(struct intel_uc *uc);
 	void (*fini)(struct intel_uc *uc);
 	int (*init_hw)(struct intel_uc *uc);
 	void (*fini_hw)(struct intel_uc *uc);
@@ -90,7 +90,7 @@ static inline _TYPE intel_uc_##_NAME(struct intel_uc *uc) \
 intel_uc_ops_function(sanitize, sanitize, int, 0);
 intel_uc_ops_function(fetch_firmwares, init_fw, void, );
 intel_uc_ops_function(cleanup_firmwares, fini_fw, void, );
-intel_uc_ops_function(init, init, void, );
+intel_uc_ops_function(init, init, int, 0);
 intel_uc_ops_function(fini, fini, void, );
 intel_uc_ops_function(init_hw, init_hw, int, 0);
 intel_uc_ops_function(fini_hw, fini_hw, void, );
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
