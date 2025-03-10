Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3573A599FE
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Mar 2025 16:30:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0BF910E472;
	Mon, 10 Mar 2025 15:30:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y7pzfaAn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B02AB10E470
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Mar 2025 15:30:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741620622; x=1773156622;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LqVWUeKzmg0U+f3JiqRQ9ia7eadOZuG25Kt4RyhNr6c=;
 b=Y7pzfaAnRle8YrRcyL6IL86CJNmGzT8IHdKJ0VFU7It9YjOEXFw2QDdk
 7ONN7usp0DlrZ0Q6omdCNektTZrfZynC6O6kg2mj2RnbvMs2pbjBSc5+Q
 uUtt6KNz6G1ZsHmvbXjbAbUM4Eru2jc0w9hCqPMvNRHNjQ+YPTu1akcVR
 VP/BDIUqNYtAKcfyU6wqE5JK66hANcz2Pyv2pHXHi0z9J9MtBP0tEOhz/
 nKbl50tYtaybcz3LBu0ECv/DMjTofHO9NjRkVA87X1dreMfA6e4pVkX4V
 Afgi3pt4/5iD19eF+9Xh9SPJJX8nQFlZO67ifoeyKkgJP2q2OgnLZnse/ g==;
X-CSE-ConnectionGUID: ngmWQbwhQoK66d3Bksowjg==
X-CSE-MsgGUID: 1yj8u/rTSA2hGcz5Gg6phQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="42837638"
X-IronPort-AV: E=Sophos;i="6.14,236,1736841600"; d="scan'208";a="42837638"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 08:30:21 -0700
X-CSE-ConnectionGUID: IrSFenEXRWaaCQuNXMQvLg==
X-CSE-MsgGUID: SXkTgnZ2TiKgvx/AV6iTzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,236,1736841600"; d="scan'208";a="119739639"
Received: from unknown (HELO anirban-Z690I-A-ULTRA-PLUS.iind.intel.com)
 ([10.190.216.83])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 08:30:19 -0700
From: Sk Anirban <sk.anirban@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: anshuman.gupta@intel.com, badal.nilawar@intel.com, riana.tauro@intel.com,
 karthik.poosa@intel.com, raag.jadav@intel.com,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Andi Shyti <andi.shyti@intel.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Sk Anirban <sk.anirban@intel.com>
Subject: [v3] drm/i915: Disable RPG during live selftest
Date: Mon, 10 Mar 2025 20:58:21 +0530
Message-Id: <20250310152821.2931678-1-sk.anirban@intel.com>
X-Mailer: git-send-email 2.34.1
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

From: Badal Nilawar <badal.nilawar@intel.com>

The Forcewake timeout issue has been observed on Gen 12.0 and above.
To address this, disable Render Power-Gating (RPG) during live self-tests
for these generations. The temporary workaround 'drm/i915/mtl: do not
enable render power-gating on MTL' disables RPG globally, which is
unnecessary since the issues were only seen during self-tests.

v2: take runtime pm wakeref

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413
Fixes: 25e7976db86b ("drm/i915/mtl: do not enable render power-gating on MTL")
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Andi Shyti <andi.shyti@intel.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
Signed-off-by: Sk Anirban <sk.anirban@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_rc6.c           | 19 ++++---------------
 .../gpu/drm/i915/selftests/i915_selftest.c    | 18 ++++++++++++++++++
 2 files changed, 22 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index 9378d5901c49..9ca42589da4d 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -117,21 +117,10 @@ static void gen11_rc6_enable(struct intel_rc6 *rc6)
 			GEN6_RC_CTL_RC6_ENABLE |
 			GEN6_RC_CTL_EI_MODE(1);
 
-	/*
-	 * BSpec 52698 - Render powergating must be off.
-	 * FIXME BSpec is outdated, disabling powergating for MTL is just
-	 * temporary wa and should be removed after fixing real cause
-	 * of forcewake timeouts.
-	 */
-	if (IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 70), IP_VER(12, 74)))
-		pg_enable =
-			GEN9_MEDIA_PG_ENABLE |
-			GEN11_MEDIA_SAMPLER_PG_ENABLE;
-	else
-		pg_enable =
-			GEN9_RENDER_PG_ENABLE |
-			GEN9_MEDIA_PG_ENABLE |
-			GEN11_MEDIA_SAMPLER_PG_ENABLE;
+	pg_enable =
+		GEN9_RENDER_PG_ENABLE |
+		GEN9_MEDIA_PG_ENABLE |
+		GEN11_MEDIA_SAMPLER_PG_ENABLE;
 
 	if (GRAPHICS_VER(gt->i915) >= 12 && !IS_DG1(gt->i915)) {
 		for (i = 0; i < I915_MAX_VCS; i++)
diff --git a/drivers/gpu/drm/i915/selftests/i915_selftest.c b/drivers/gpu/drm/i915/selftests/i915_selftest.c
index fee76c1d2f45..889281819c5b 100644
--- a/drivers/gpu/drm/i915/selftests/i915_selftest.c
+++ b/drivers/gpu/drm/i915/selftests/i915_selftest.c
@@ -23,7 +23,9 @@
 
 #include <linux/random.h>
 
+#include "gt/intel_gt.h"
 #include "gt/intel_gt_pm.h"
+#include "gt/intel_gt_regs.h"
 #include "gt/uc/intel_gsc_fw.h"
 
 #include "i915_driver.h"
@@ -253,11 +255,27 @@ int i915_mock_selftests(void)
 int i915_live_selftests(struct pci_dev *pdev)
 {
 	struct drm_i915_private *i915 = pdev_to_i915(pdev);
+	struct intel_uncore *uncore = &i915->uncore;
 	int err;
+	u32 pg_enable;
+	intel_wakeref_t wakeref;
 
 	if (!i915_selftest.live)
 		return 0;
 
+	/*
+	 * FIXME Disable render powergating, this is temporary wa and should be removed
+	 * after fixing real cause of forcewake timeouts.
+	 */
+	with_intel_runtime_pm(uncore->rpm, wakeref) {
+		if (IS_GFX_GT_IP_RANGE(to_gt(i915), IP_VER(12, 00), IP_VER(12, 74))) {
+			pg_enable = intel_uncore_read(uncore, GEN9_PG_ENABLE);
+			if (pg_enable & GEN9_RENDER_PG_ENABLE)
+				intel_uncore_write_fw(uncore, GEN9_PG_ENABLE,
+						      pg_enable & ~GEN9_RENDER_PG_ENABLE);
+		}
+	}
+
 	__wait_gsc_proxy_completed(i915);
 	__wait_gsc_huc_load_completed(i915);
 
-- 
2.34.1

