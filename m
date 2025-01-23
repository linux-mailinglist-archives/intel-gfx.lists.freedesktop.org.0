Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AEFE4A1A43F
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2025 13:30:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 551EA10E355;
	Thu, 23 Jan 2025 12:30:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NncAUJmz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B51410E355
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jan 2025 12:30:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737635409; x=1769171409;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=P7U5Y2BSnFSK2AwfNeXnlqYmBAoskq4Nde873g91IRk=;
 b=NncAUJmzeF6Tv+e5jAwgj/+Xlay0jYF1vkGKtwBSSd50YqvNuwGQFYyf
 P8XpzMi71q5jXZSxhBrOAhIc8o4AZtuIARZ1RLfcBLktYMtLFfNAzkcnR
 SS0GZpOrPDAhXf9M6eTdoCOtxmL/E3/qL91zeabVPcgGkKBt2kPszui+B
 B8F8QZuR1nSPjD6k+7+rhyXOwz2f0P0bh0cUgHrF1KHqTlmp6/vwFd2SV
 MDJfrQDYUhAuj9WEm7fsj6GTHGOraPR67nSnfZqVTF19fJAVCcmSqUNle
 dfldB2beM/W3WCKop66SKr0smW9zfonjz6gwg+zT3vYetxPmlS4M0uu6P g==;
X-CSE-ConnectionGUID: vMMmHtaoQHe0xCtsHB0i5w==
X-CSE-MsgGUID: WWYR3YRtTW6f9TrtzVHMGQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11324"; a="49525790"
X-IronPort-AV: E=Sophos;i="6.13,228,1732608000"; d="scan'208";a="49525790"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2025 04:30:08 -0800
X-CSE-ConnectionGUID: DqIZKCOWRYClADnbvjVFEg==
X-CSE-MsgGUID: NXCaH3PtRb+0o1m3u2e8+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,228,1732608000"; d="scan'208";a="107553296"
Received: from intelmailrelay-02.habana-labs.com ([10.111.11.21])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2025 04:30:06 -0800
Received: internal info suppressed
Received: from bnilawar-vm-u22.habana-labs.com (localhost [127.0.0.1])
 by bnilawar-vm-u22.habana-labs.com (8.15.2/8.15.2/Debian-22ubuntu3) with
 ESMTPS id 50NCTvqg925826
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
 Thu, 23 Jan 2025 14:29:57 +0200
Received: (from bnilawar@localhost)
 by bnilawar-vm-u22.habana-labs.com (8.15.2/8.15.2/Submit) id 50NCTvwa925825;
 Thu, 23 Jan 2025 14:29:57 +0200
From: Badal Nilawar <badal.nilawar@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: anshuman.gupta@intel.com, rodrigo.vivi@intel.com, andi.shyti@intel.com,
 andrzej.hajda@intel.com, sk.anirban@intel.com,
 Badal Nilawar <badal.nilawar@intel.com>
Subject: [PATCH v2] drm/i915: Disable RPG during live selftest
Date: Thu, 23 Jan 2025 14:29:41 +0200
Message-Id: <20250123122941.925789-1-badal.nilawar@intel.com>
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

The Forcewake timeout issue has been observed on Gen 12.0 and above. To address this,
disable Render Power-Gating (RPG) during live self-tests for these generations.
The temporary workaround 'drm/i915/mtl: do not enable render power-gating on MTL'
disables RPG globally, which is unnecessary since the issues were only seen during self-tests.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413
Fixes: 25e7976db86b ("drm/i915/mtl: do not enable render power-gating on MTL")
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Andi Shyti <andi.shyti@intel.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_rc6.c           | 19 ++++---------------
 .../gpu/drm/i915/selftests/i915_selftest.c    | 14 ++++++++++++++
 2 files changed, 18 insertions(+), 15 deletions(-)

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
index fee76c1d2f45..6aabbfde0695 100644
--- a/drivers/gpu/drm/i915/selftests/i915_selftest.c
+++ b/drivers/gpu/drm/i915/selftests/i915_selftest.c
@@ -23,7 +23,9 @@
 
 #include <linux/random.h>
 
+#include "gt/intel_gt.h"
 #include "gt/intel_gt_pm.h"
+#include "gt/intel_gt_regs.h"
 #include "gt/uc/intel_gsc_fw.h"
 
 #include "i915_driver.h"
@@ -254,10 +256,22 @@ int i915_live_selftests(struct pci_dev *pdev)
 {
 	struct drm_i915_private *i915 = pdev_to_i915(pdev);
 	int err;
+	u32 pg_enable;
 
 	if (!i915_selftest.live)
 		return 0;
 
+	/*
+	 * FIXME Disable render powergating, this is temporary wa and should be removed
+	 * after fixing real cause of forcewake timeouts.
+	 */
+	if (IS_GFX_GT_IP_RANGE(to_gt(i915), IP_VER(12, 00), IP_VER(12, 74))) {
+		pg_enable = intel_uncore_read(&i915->uncore, GEN9_PG_ENABLE);
+		if (pg_enable & GEN9_RENDER_PG_ENABLE)
+			intel_uncore_write_fw(&i915->uncore, GEN9_PG_ENABLE,
+						pg_enable & ~GEN9_RENDER_PG_ENABLE);
+	}
+
 	__wait_gsc_proxy_completed(i915);
 	__wait_gsc_huc_load_completed(i915);
 
-- 
2.34.1

