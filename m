Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 330C71545BD
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2020 15:07:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1253D89EF7;
	Thu,  6 Feb 2020 14:07:49 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 827D96EA8D
 for <Intel-gfx@lists.freedesktop.org>; Thu,  6 Feb 2020 14:07:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Feb 2020 06:07:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,409,1574150400"; d="scan'208";a="404492933"
Received: from aabader-mobl1.ccr.corp.intel.com (HELO localhost.localdomain)
 ([10.252.21.249])
 by orsmga005.jf.intel.com with ESMTP; 06 Feb 2020 06:07:42 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Thu,  6 Feb 2020 14:07:25 +0000
Message-Id: <20200206140725.10973-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/debugfs: Remove i915_energy_uJ
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

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Last IGT user (intel_gpu_overlay) stopped using it in October 2019 so we
are good to remove the file.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/i915_debugfs.c | 24 ------------------------
 drivers/gpu/drm/i915/i915_reg.h     |  2 --
 2 files changed, 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index c313c90405cb..3cae18d1d20c 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -2188,29 +2188,6 @@ DEFINE_SIMPLE_ATTRIBUTE(i915_edp_psr_debug_fops,
 			i915_edp_psr_debug_get, i915_edp_psr_debug_set,
 			"%llu\n");
 
-static int i915_energy_uJ(struct seq_file *m, void *data)
-{
-	struct drm_i915_private *dev_priv = node_to_i915(m->private);
-	unsigned long long power;
-	intel_wakeref_t wakeref;
-	u32 units;
-
-	if (INTEL_GEN(dev_priv) < 6)
-		return -ENODEV;
-
-	if (rdmsrl_safe(MSR_RAPL_POWER_UNIT, &power))
-		return -ENODEV;
-
-	units = (power & 0x1f00) >> 8;
-	with_intel_runtime_pm(&dev_priv->runtime_pm, wakeref)
-		power = I915_READ(MCH_SECP_NRG_STTS);
-
-	power = (1000000 * power) >> units; /* convert to uJ */
-	seq_printf(m, "%llu", power);
-
-	return 0;
-}
-
 static int i915_runtime_pm_status(struct seq_file *m, void *unused)
 {
 	struct drm_i915_private *dev_priv = node_to_i915(m->private);
@@ -4258,7 +4235,6 @@ static const struct drm_info_list i915_debugfs_list[] = {
 	{"i915_swizzle_info", i915_swizzle_info, 0},
 	{"i915_llc", i915_llc, 0},
 	{"i915_edp_psr_status", i915_edp_psr_status, 0},
-	{"i915_energy_uJ", i915_energy_uJ, 0},
 	{"i915_runtime_pm_status", i915_runtime_pm_status, 0},
 	{"i915_power_domain_info", i915_power_domain_info, 0},
 	{"i915_dmc_info", i915_dmc_info, 0},
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index dc206723f25e..c1f5c21b56e1 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3748,8 +3748,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define   MCH_SSKPD_WM0_MASK		0x3f
 #define   MCH_SSKPD_WM0_VAL		0xc
 
-#define MCH_SECP_NRG_STTS		_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x592c)
-
 /* Clocking configuration register */
 #define CLKCFG			_MMIO(MCHBAR_MIRROR_BASE + 0xc00)
 #define CLKCFG_FSB_400					(5 << 0)	/* hrawclk 100 */
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
