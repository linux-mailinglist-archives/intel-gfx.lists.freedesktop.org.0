Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15FA8A3D173
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2025 07:41:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2E4C10E12C;
	Thu, 20 Feb 2025 06:41:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OovVaWDO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3903510E12C
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Feb 2025 06:41:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740033668; x=1771569668;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zghl+dbaqgFuOhi2Wm/zOqWfDUBhVQ+Cmit1AVB0EZ8=;
 b=OovVaWDOP/sJrHT613ns0Zyu2prMlHZjhGUCK32tY36rdUH+WdiXziKF
 yor31mtBRFx9du2G67fu2fVNLj3ppZG0+vcUe+/f2HWViqsKoxr3X8Bso
 9Zu0LE5IJOR2tNDXtffAs1pXQRWl+bll0hjvqTvEJLdQ0CrnrE/ziket3
 WSfZG3qTje0XTSzhF1XGbTtLBofMEqcJRu1wlz0nJR2CPGQTKQCrtd5n+
 EoMd/Kqqdk16QD5KdpG3+oqckTU3L0EhH6mNSdpLLXewoyTICyXoQk8Y+
 5phyg9zgi4X/bJ+ACFyVvyzFQb2F9fBpDnP76kFApPDKAMLnLW2LAZlf2 g==;
X-CSE-ConnectionGUID: OZUZ9dOuR/6VmAFUbe323w==
X-CSE-MsgGUID: C5bgs91rQ+mg2v/9G4PJTg==
X-IronPort-AV: E=McAfee;i="6700,10204,11350"; a="51440679"
X-IronPort-AV: E=Sophos;i="6.13,300,1732608000"; d="scan'208";a="51440679"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2025 22:41:08 -0800
X-CSE-ConnectionGUID: HIKsEQHgSouz1iUcH0i6vQ==
X-CSE-MsgGUID: fnoHhVFYTxOpb6xjeBbVZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,300,1732608000"; d="scan'208";a="114898858"
Received: from unknown (HELO anirban-Z690I-A-ULTRA-PLUS.iind.intel.com)
 ([10.190.216.83])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2025 22:41:05 -0800
From: sk.anirban@intel.com
To: intel-gfx@lists.freedesktop.org
Cc: anshuman.gupta@intel.com, badal.nilawar@intel.com, riana.tauro@intel.com,
 karthik.poosa@intel.com, varun.gupta@intel.com,
 Sk Anirban <sk.anirban@intel.com>
Subject: [PATCH] drm/i915/selftests: Re-enable power gating after live_selftest
Date: Thu, 20 Feb 2025 12:10:27 +0530
Message-Id: <20250220064027.1377797-1-sk.anirban@intel.com>
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
 drivers/gpu/drm/i915/gt/selftest_rc6.c | 37 ++++++++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/selftest_rc6.c b/drivers/gpu/drm/i915/gt/selftest_rc6.c
index 30bc2ff040ce..b24d3d7de67b 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rc6.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rc6.c
@@ -34,6 +34,7 @@ int live_rc6_manual(void *arg)
 	struct intel_gt *gt = arg;
 	struct intel_rc6 *rc6 = &gt->rc6;
 	struct intel_rps *rps = &gt->rps;
+	struct intel_uncore *uncore = rc6_to_uncore(rc6);
 	intel_wakeref_t wakeref;
 	u64 sleep_time = 1000;
 	u32 rc0_freq = 0;
@@ -42,10 +43,12 @@ int live_rc6_manual(void *arg)
 	u64 rc6_power[3];
 	bool has_power;
 	u64 threshold;
+	u32 pg_enable;
 	ktime_t dt;
 	u64 res[2];
 	int err = 0;
 	u64 diff;
+	int i;
 
 
 	/*
@@ -148,6 +151,40 @@ int live_rc6_manual(void *arg)
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
+
 	intel_runtime_pm_put(gt->uncore->rpm, wakeref);
 	return err;
 }
-- 
2.34.1

