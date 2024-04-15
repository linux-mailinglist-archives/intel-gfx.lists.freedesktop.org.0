Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 241088A5850
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Apr 2024 18:58:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9598010ECC1;
	Mon, 15 Apr 2024 16:58:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iB20ANEs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DEDA810ED08
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Apr 2024 16:58:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713200323; x=1744736323;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=yhMga3Nuh+TMi1KGavajYB0S64wE1/YvymaaIRkFVp4=;
 b=iB20ANEsJp7KDfEDbV4VAHbjL4KYk0/vUF9379CX6MwBZ+HNP1L1PA23
 5MHQgF3Odon5cktBhd+Y4UPRUULoWIi5NdcA1goY8UOcIbnj+5ahnf16Z
 /CU81XMDuaKNukRRwM9suBASgddNgwUgp5n3AfwhRgI7ckK+Gensv1yQN
 invUUFESyo8LgWkye2gkLmvkZ0f3uQ9oGbWOK6WLU5pCAJ+/mQotdmh7V
 4W3MskcuGHNxH+FrcvwTPrRt04ZhtPdiEfhucyZa1XiTkLLqhw67RBy05
 IcHeObZS1Y70ADtiXZg7AzwAhNMtEUbdLtakufJqCyXL+GITScCGt2Zkw Q==;
X-CSE-ConnectionGUID: p9Urkt/aQ160GOCAN9RarQ==
X-CSE-MsgGUID: 1VYZTD/uSo+R73G8wPJZng==
X-IronPort-AV: E=McAfee;i="6600,9927,11045"; a="12381166"
X-IronPort-AV: E=Sophos;i="6.07,203,1708416000"; d="scan'208";a="12381166"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 09:58:42 -0700
X-CSE-ConnectionGUID: P5SG3pI1Qh+kIwKWlcfMMg==
X-CSE-MsgGUID: dQuPgCXGRd28qrc1V5ebxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,203,1708416000"; d="scan'208";a="26636860"
Received: from nirmoyda-desk.igk.intel.com ([10.102.138.190])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 09:58:41 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Nirmoy Das <nirmoy.das@intel.com>,
 John Harrison <John.C.Harrison@Intel.com>
Subject: [RFC PATCH] drm/i915: Don't reset GuC before engine reset on full GT
 reset
Date: Mon, 15 Apr 2024 18:44:41 +0200
Message-ID: <20240415164441.5684-1-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Organization: Intel Deutschland GmbH, Registered Address: Am Campeon 10,
 85579 Neubiberg, Germany,
 Commercial Register: Amtsgericht Muenchen HRB 186928 
Content-Transfer-Encoding: 8bit
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

Currently intel_gt_reset() happens as follows:

reset_prepare() ---> Sends GDRST to GuC, GuC is in GS_MIA_IN_RESET
do_reset()
	__intel_gt_reset()
		*_engine_reset_prepare() -->RESET_CTL expects running
		GuC
		*_reset_engines()
intel_gt_init_hw() --> GuC FW loading happens, GuC comes out of
GS_MIA_IN_RESET.

Fix the above flow so that GuC reset happens after all the
engines reset is done.

Cc: John Harrison <John.C.Harrison@Intel.com>
Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_reset.c |  9 ++++--
 drivers/gpu/drm/i915/gt/uc/intel_uc.c | 42 +++++++++++++++++++++------
 drivers/gpu/drm/i915/gt/uc/intel_uc.h |  1 +
 3 files changed, 41 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index c8e9aa41fdea..9ebd68ce0c22 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -879,8 +879,11 @@ static intel_engine_mask_t reset_prepare(struct intel_gt *gt)
 	intel_engine_mask_t awake = 0;
 	enum intel_engine_id id;
 
-	/* For GuC mode, ensure submission is disabled before stopping ring */
-	intel_uc_reset_prepare(&gt->uc);
+	/*
+	 * For GuC mode, ensure submission is disabled before stopping ring.
+	 * Don't reset the GuC a engine reset requires GuC to be running.
+	 */
+	intel_uc_reset_prepare_without_guc_reset(&gt->uc);
 
 	for_each_engine(engine, gt, id) {
 		if (intel_engine_pm_get_if_awake(engine))
@@ -1227,6 +1230,8 @@ void intel_gt_reset(struct intel_gt *gt,
 
 	intel_overlay_reset(gt->i915);
 
+	/* Now that all engines are clean, Reset the GuC */
+	intel_uc_reset_prepare(&gt->uc);
 	/*
 	 * Next we need to restore the context, but we don't use those
 	 * yet either...
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
index 7a63abf8f644..5feee4db2ccc 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
@@ -345,7 +345,7 @@ static void __uc_fini(struct intel_uc *uc)
 	intel_guc_fini(&uc->guc);
 }
 
-static int __uc_sanitize(struct intel_uc *uc)
+static void __uc_sanitize_without_guc_reset(struct intel_uc *uc)
 {
 	struct intel_guc *guc = &uc->guc;
 	struct intel_huc *huc = &uc->huc;
@@ -354,7 +354,11 @@ static int __uc_sanitize(struct intel_uc *uc)
 
 	intel_huc_sanitize(huc);
 	intel_guc_sanitize(guc);
+}
 
+static int __uc_sanitize(struct intel_uc *uc)
+{
+	__uc_sanitize_without_guc_reset(uc);
 	return __intel_uc_reset_hw(uc);
 }
 
@@ -593,13 +597,7 @@ static void __uc_fini_hw(struct intel_uc *uc)
 	__uc_sanitize(uc);
 }
 
-/**
- * intel_uc_reset_prepare - Prepare for reset
- * @uc: the intel_uc structure
- *
- * Preparing for full gpu reset.
- */
-void intel_uc_reset_prepare(struct intel_uc *uc)
+static void __intel_uc_reset_prepare(struct intel_uc *uc, bool reset_guc)
 {
 	struct intel_guc *guc = &uc->guc;
 
@@ -617,9 +615,35 @@ void intel_uc_reset_prepare(struct intel_uc *uc)
 		intel_guc_submission_reset_prepare(guc);
 
 sanitize:
-	__uc_sanitize(uc);
+	if (reset_guc)
+		__uc_sanitize(uc);
+	else
+		__uc_sanitize_without_guc_reset(uc);
 }
 
+/**
+ * intel_uc_reset_prepare - Prepare for reset
+ * @uc: the intel_uc structure
+ *
+ * Preparing for full gpu reset.
+ */
+void intel_uc_reset_prepare(struct intel_uc *uc)
+{
+	__intel_uc_reset_prepare(uc, true);
+}
+/**
+ * intel_uc_reset_prepare_without_guc_reset - Prepare for reset but don't reset
+ * the GuC
+ * @uc: the intel_uc structure
+ *
+ * Preparing for full gpu reset.
+ */
+void intel_uc_reset_prepare_without_guc_reset(struct intel_uc *uc)
+{
+	__intel_uc_reset_prepare(uc, false);
+}
+
+
 void intel_uc_reset(struct intel_uc *uc, intel_engine_mask_t stalled)
 {
 	struct intel_guc *guc = &uc->guc;
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.h b/drivers/gpu/drm/i915/gt/uc/intel_uc.h
index 014bb7d83689..9d6191ece498 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.h
@@ -46,6 +46,7 @@ void intel_uc_driver_late_release(struct intel_uc *uc);
 void intel_uc_driver_remove(struct intel_uc *uc);
 void intel_uc_init_mmio(struct intel_uc *uc);
 void intel_uc_reset_prepare(struct intel_uc *uc);
+void intel_uc_reset_prepare_without_guc_reset(struct intel_uc *uc);
 void intel_uc_reset(struct intel_uc *uc, intel_engine_mask_t stalled);
 void intel_uc_reset_finish(struct intel_uc *uc);
 void intel_uc_cancel_requests(struct intel_uc *uc);
-- 
2.42.0

