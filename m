Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1996DA3D535
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2025 10:48:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 802BE10E4A7;
	Thu, 20 Feb 2025 09:48:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KMCDs41W";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AEED10E4A7
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Feb 2025 09:48:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740044885; x=1771580885;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=hyJtQhwbasXlYlZ1FoTDfd9MCJ/9VyMglqkgl/l9yQo=;
 b=KMCDs41Wox8BCiPjmVXvx/GLp31lVI5r8yezsSHoUOEI4SXANvdx6IKV
 UinhJteO/QyFjZFQESNBTQ3pLToGaYSu/sb+Q//chG+UGo0Vuv1yx+UcB
 nLVyk54YabqMuM5JfieQzyKVEEyITJ425hihg0Er3rTUxGmZwcyvr/UXD
 towggMI8XtlDEBcnjsO+SdYcoObiydJ9M3NFz2pLCpjv7/OI1l6+CtC5L
 50vLtZr5JBJOChvhW25N1w9kcM5CiYE0ow26Hy5ZEJjVwAJn5irlUGWZy
 Z/lrX0797UyzOyu5XqnncQZc54V4BV+LY8cLqNdoSSpBH97OfPE4s8qz8 Q==;
X-CSE-ConnectionGUID: 9Hcn0VpASc6bBRnzBss5Kg==
X-CSE-MsgGUID: W7uAJagVSnSfzNoFHroOoQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11350"; a="40670077"
X-IronPort-AV: E=Sophos;i="6.13,301,1732608000"; d="scan'208";a="40670077"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2025 01:48:04 -0800
X-CSE-ConnectionGUID: cMfDUdVnTcix5UYIvt385w==
X-CSE-MsgGUID: WBu4x7hvQ26uN0SEwgmOJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,301,1732608000"; d="scan'208";a="114974378"
Received: from unknown (HELO anirban-Z690I-A-ULTRA-PLUS.iind.intel.com)
 ([10.190.216.83])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2025 01:48:02 -0800
From: sk.anirban@intel.com
To: intel-gfx@lists.freedesktop.org
Cc: Sk Anirban <sk.anirban@intel.com>
Subject: [PATCH] drm/i915/selftests: Re-enable power gating after live_selftest
Date: Thu, 20 Feb 2025 15:17:24 +0530
Message-Id: <20250220094724.1389462-1-sk.anirban@intel.com>
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

From: Sk Anirban <sk.anirban@intel.com>

The current implementation of live_rc6_manual disables power gating
after execution due to the deactivation of RC6.
This update aims to re-enable power gating following the completion
of the self-test. However, as a temporary workaround
for forcewake timeouts, power gating will remain disabled for MTL.

Signed-off-by: Sk Anirban <sk.anirban@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_rc6.c | 36 ++++++++++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/selftest_rc6.c b/drivers/gpu/drm/i915/gt/selftest_rc6.c
index 908483ab0bc8..cca81231045a 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rc6.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rc6.c
@@ -33,15 +33,18 @@ int live_rc6_manual(void *arg)
 {
 	struct intel_gt *gt = arg;
 	struct intel_rc6 *rc6 = &gt->rc6;
+	struct intel_uncore *uncore = rc6_to_uncore(rc6);
 	u64 rc0_power, rc6_power;
 	intel_wakeref_t wakeref;
 	bool has_power;
+	u32 pg_enable;
 	ktime_t dt;
 	u64 res[2];
 	int err = 0;
 	u32 rc0_freq = 0;
 	u32 rc6_freq = 0;
 	struct intel_rps *rps = &gt->rps;
+	int i;
 
 	/*
 	 * Our claim is that we can "encourage" the GPU to enter rc6 at will.
@@ -129,6 +132,39 @@ int live_rc6_manual(void *arg)
 	intel_rc6_unpark(rc6);
 
 out_unlock:
+	if (GRAPHICS_VER(gt->i915) >= 9) {
+		if (!intel_guc_rc_enable(gt_to_guc(gt)))
+			rc6->ctl_enable = GEN6_RC_CTL_RC6_ENABLE;
+		else
+			rc6->ctl_enable =
+				GEN6_RC_CTL_HW_ENABLE |
+				GEN6_RC_CTL_RC6_ENABLE |
+				GEN6_RC_CTL_EI_MODE(1);
+
+		if (IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 70), IP_VER(12, 74)))
+			pg_enable =
+				GEN9_MEDIA_PG_ENABLE |
+				GEN11_MEDIA_SAMPLER_PG_ENABLE;
+		else
+			pg_enable =
+				GEN9_RENDER_PG_ENABLE |
+				GEN9_MEDIA_PG_ENABLE |
+				GEN11_MEDIA_SAMPLER_PG_ENABLE;
+
+		if (GRAPHICS_VER(gt->i915) >= 12 && !IS_DG1(gt->i915)) {
+			for (i = 0; i < I915_MAX_VCS; i++)
+				if (HAS_ENGINE(gt, _VCS(i)))
+					pg_enable |= (VDN_HCP_POWERGATE_ENABLE(i) |
+								VDN_MFX_POWERGATE_ENABLE(i));
+		}
+
+		if (!NEEDS_WaRsDisableCoarsePowerGating(rc6_to_i915(rc6)) &&
+		    GRAPHICS_VER(gt->i915) < 11)
+			intel_uncore_write_fw(uncore, GEN9_PG_ENABLE,
+					      GEN9_RENDER_PG_ENABLE | GEN9_MEDIA_PG_ENABLE);
+		else
+			intel_uncore_write_fw(uncore, GEN9_PG_ENABLE, pg_enable);
+	}
 	intel_runtime_pm_put(gt->uncore->rpm, wakeref);
 	return err;
 }
-- 
2.34.1

