Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3018F8A011B
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Apr 2024 22:15:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33F3310F564;
	Wed, 10 Apr 2024 20:15:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AEA3SHC2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0082510F564
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Apr 2024 20:15:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712780118; x=1744316118;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=APhlTcm5U3PhxiDbiPztpkF73Vlw66ByHS9PWY1k5D4=;
 b=AEA3SHC2fZ32dqc2015fXEAJvyzRdZpy234Zxr29AQPeLXnLHeepj4Rv
 EyCb691ofHaIicyeF+AbsA+NgPWzhNv7PDrmDeih9KNlPsqcvbuzSLSIQ
 ojoy0pr+nRlGOnMZek0T/FvFsxZtvcuuUaq+SqMR+UZbNxVBXuNzL8tz+
 kFq6tNV/3AeE7iDtB8gzGTSdrBVMD3IULuQczjNgwAYjk3PRwTtQjm2FF
 bH7TC+JcNIhm+/gljGCHRZ1QVFv9wyuL/OOG7YY1E28hbwWrjudbc6E3j
 dOgAV2kegLxL90O6LILLF4ziUR1eEic5T6CuEy5HeHlddb4DTZDtEF8k0 w==;
X-CSE-ConnectionGUID: l9G0IxkUTXeVjrXozkgdrA==
X-CSE-MsgGUID: l1JRqFKRSTO39p38titlzg==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="8330249"
X-IronPort-AV: E=Sophos;i="6.07,191,1708416000"; 
   d="scan'208";a="8330249"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2024 13:15:18 -0700
X-CSE-ConnectionGUID: 10jpiXRFTk+btsL1f3J+/Q==
X-CSE-MsgGUID: NGaIJfCFTjqAhatDv30Rpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,191,1708416000"; d="scan'208";a="20565319"
Received: from valcore-skull-1.fm.intel.com ([10.1.39.17])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2024 13:15:17 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 John Harrison <John.C.Harrison@Intel.com>
Subject: [PATCH] drm/i915/dg2: wait for HuC load completion before running
 selftests
Date: Wed, 10 Apr 2024 13:15:05 -0700
Message-ID: <20240410201505.894594-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
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

On DG2, submissions to VCS engines tied to a gem context are blocked
until the HuC is loaded. Since some selftests do use a gem context,
wait for the HuC load to complete before running the tests to avoid
contamination.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/10564
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>
---
 .../gpu/drm/i915/selftests/i915_selftest.c    | 36 ++++++++++++++++---
 1 file changed, 32 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/selftests/i915_selftest.c b/drivers/gpu/drm/i915/selftests/i915_selftest.c
index ee79e0809a6d..fee76c1d2f45 100644
--- a/drivers/gpu/drm/i915/selftests/i915_selftest.c
+++ b/drivers/gpu/drm/i915/selftests/i915_selftest.c
@@ -154,6 +154,30 @@ __wait_gsc_proxy_completed(struct drm_i915_private *i915)
 		pr_warn(DRIVER_NAME "Timed out waiting for gsc_proxy_completion!\n");
 }
 
+static void
+__wait_gsc_huc_load_completed(struct drm_i915_private *i915)
+{
+	/* this only applies to DG2, so we only care about GT0 */
+	struct intel_huc *huc = &to_gt(i915)->uc.huc;
+	bool need_to_wait = (IS_ENABLED(CONFIG_INTEL_MEI_PXP) &&
+			     intel_huc_wait_required(huc));
+	/*
+	 * The GSC and PXP mei bringup depends on the kernel boot ordering, so
+	 * to account for the worst case scenario the HuC code waits for up to
+	 * 10s for the GSC driver to load and then another 5s for the PXP
+	 * component to bind before giving up, even though those steps normally
+	 * complete in less than a second from the i915 load. We match that
+	 * timeout here, but we expect to bail early due to the fence being
+	 * signalled even in a failure case, as it is extremely unlikely that
+	 * both components will use their full timeout.
+	 */
+	unsigned long timeout_ms = 15000;
+
+	if (need_to_wait &&
+	    wait_for(i915_sw_fence_done(&huc->delayed_load.fence), timeout_ms))
+		pr_warn(DRIVER_NAME "Timed out waiting for huc load via GSC!\n");
+}
+
 static int __run_selftests(const char *name,
 			   struct selftest *st,
 			   unsigned int count,
@@ -228,14 +252,16 @@ int i915_mock_selftests(void)
 
 int i915_live_selftests(struct pci_dev *pdev)
 {
+	struct drm_i915_private *i915 = pdev_to_i915(pdev);
 	int err;
 
 	if (!i915_selftest.live)
 		return 0;
 
-	__wait_gsc_proxy_completed(pdev_to_i915(pdev));
+	__wait_gsc_proxy_completed(i915);
+	__wait_gsc_huc_load_completed(i915);
 
-	err = run_selftests(live, pdev_to_i915(pdev));
+	err = run_selftests(live, i915);
 	if (err) {
 		i915_selftest.live = err;
 		return err;
@@ -251,14 +277,16 @@ int i915_live_selftests(struct pci_dev *pdev)
 
 int i915_perf_selftests(struct pci_dev *pdev)
 {
+	struct drm_i915_private *i915 = pdev_to_i915(pdev);
 	int err;
 
 	if (!i915_selftest.perf)
 		return 0;
 
-	__wait_gsc_proxy_completed(pdev_to_i915(pdev));
+	__wait_gsc_proxy_completed(i915);
+	__wait_gsc_huc_load_completed(i915);
 
-	err = run_selftests(perf, pdev_to_i915(pdev));
+	err = run_selftests(perf, i915);
 	if (err) {
 		i915_selftest.perf = err;
 		return err;
-- 
2.43.0

