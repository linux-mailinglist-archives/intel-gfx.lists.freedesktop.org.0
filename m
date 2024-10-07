Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F04709927D2
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2024 11:07:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9225010E19E;
	Mon,  7 Oct 2024 09:07:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OsNoKhEr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EACD010E19E
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Oct 2024 09:07:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728292071; x=1759828071;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=O2BJxHVy1Uy03ootV5RF9BZvzmK56DSfTqHgXY8asGw=;
 b=OsNoKhErTqvPy5AdSjz6prthXC1edpHEWz3u5xBzQQ8BidX60yR2TM+x
 CYgJbugOosP0gewnGDyV0j3kP3CUVjHk0gXusQDarS0GtdzIGVhcGUJW1
 vIOnnar8dy0i4qCNA/99Tmke/0UB2UtFy7LrUoLloxClW6hzMS6rZfcxw
 WTHfuenrG4F8Ls/AOe91gzuM0T0U+3DTzHhfm/yZZV56wkC5oV48DBPcA
 VJ494IihxxMhUK5+bz0O4v4HFmmGOCC4AiZjtVermgZgDs6EdZAhyHVog
 T+tR0q9DvJ3Gnmk2LebIurmEeUhVMvcTU9/f0m7isfw+bomh2Zr1byhH3 A==;
X-CSE-ConnectionGUID: Zi71jlpKT2izzCvO/7qIFw==
X-CSE-MsgGUID: /Bb1nMvvT4ChpgqcGxcWOA==
X-IronPort-AV: E=McAfee;i="6700,10204,11217"; a="38001708"
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="38001708"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2024 02:07:51 -0700
X-CSE-ConnectionGUID: UxivsJM3SpmcN4HBCmO3hg==
X-CSE-MsgGUID: 3DzA51riQPOFKgg3hjqbFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="80000234"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.244.179])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2024 02:07:49 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.saarinen@intel.com
Subject: [core-for-CI PATCH] Revert "platform/x86:intel/pmc: Enable the ACPI
 PM Timer to be turned off when suspended"
Date: Mon,  7 Oct 2024 12:05:03 +0300
Message-ID: <20241007090739.61293-1-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.45.2
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

This is causing a regression since 6.12-rc1.  We are getting the
following error messages when running flip-vs-suspend* tests:

[222.857770] =============================
[222.857771] [ BUG: Invalid wait context ]
[222.857772] 6.12.0-rc1-xe #1 Not tainted
[222.857773] -----------------------------
[222.857774] swapper/4/0 is trying to lock:
[222.857775] ffff8881174c88c8 (&pmcdev->lock){+.+.}-{3:3}, at: pmc_core_acpi_pm_timer_suspend_resume+0x50/0xe0 [intel_pmc_core]
[222.857782] other info that might help us debug this:
[222.857783] context-{4:4}
[222.857784] 1 lock held by swapper/4/0:
[222.857785]  #0: ffffffff83452258 (tick_freeze_lock){....}-{2:2}, at: tick_freeze+0x16/0x110
[222.857791] stack backtrace:
[222.857793] CPU: 4 UID: 0 PID: 0 Comm: swapper/4 Not tainted 6.12.0-rc1-xe #1
[222.857794] Hardware name: Intel Corporation Alder Lake Client Platform/AlderLake-P DDR5 RVP, BIOS RPLPFWI1.R00.4035.A00.2301200723 01/20/2023
[222.857796] Call Trace:
[222.857797]  <TASK>
[222.857798]  dump_stack_lvl+0x80/0xc0
[222.857802]  dump_stack+0x10/0x20
[222.857805]  __lock_acquire+0x943/0x2800
[222.857808]  ? stack_trace_save+0x4b/0x70
[222.857812]  lock_acquire+0xc5/0x2f0
[222.857814]  ? pmc_core_acpi_pm_timer_suspend_resume+0x50/0xe0 [intel_pmc_core]
[222.857817]  __mutex_lock+0xbe/0xc70
[222.857819]  ? pmc_core_acpi_pm_timer_suspend_resume+0x50/0xe0 [intel_pmc_core]
[222.857822]  ? pmc_core_acpi_pm_timer_suspend_resume+0x50/0xe0 [intel_pmc_core]
[222.857825]  mutex_lock_nested+0x1b/0x30
[222.857827]  ? mutex_lock_nested+0x1b/0x30
[222.857828]  pmc_core_acpi_pm_timer_suspend_resume+0x50/0xe0 [intel_pmc_core]
[222.857831]  acpi_pm_suspend+0x23/0x40
[222.857834]  clocksource_suspend+0x2b/0x50
[222.857836]  timekeeping_suspend+0x22a/0x360
[222.857839]  tick_freeze+0x89/0x110
[222.857840]  enter_s2idle_proper+0x34/0x1d0
[222.857843]  cpuidle_enter_s2idle+0xaa/0x120
[222.857845]  ? tsc_verify_tsc_adjust+0x42/0x100
[222.857849]  do_idle+0x221/0x250
[222.857852]  cpu_startup_entry+0x29/0x30
[222.857854]  start_secondary+0x12e/0x160
[222.857856]  common_startup_64+0x13e/0x141
[222.857859]  </TASK>

This reverts commit e86c8186d03a6ba018e881ed45f0962ad553e861.

Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---

drivers/platform/x86/intel/pmc/adl.c  |  2 --
 drivers/platform/x86/intel/pmc/cnp.c  |  2 --
 drivers/platform/x86/intel/pmc/core.c | 45 ---------------------------
 drivers/platform/x86/intel/pmc/core.h |  8 -----
 drivers/platform/x86/intel/pmc/icl.c  |  2 --
 drivers/platform/x86/intel/pmc/mtl.c  |  2 --
 drivers/platform/x86/intel/pmc/tgl.c  |  2 --
 7 files changed, 63 deletions(-)

diff --git a/drivers/platform/x86/intel/pmc/adl.c b/drivers/platform/x86/intel/pmc/adl.c
index 9d9c07f44ff6..e7878558fd90 100644
--- a/drivers/platform/x86/intel/pmc/adl.c
+++ b/drivers/platform/x86/intel/pmc/adl.c
@@ -295,8 +295,6 @@ const struct pmc_reg_map adl_reg_map = {
 	.ppfear_buckets = CNP_PPFEAR_NUM_ENTRIES,
 	.pm_cfg_offset = CNP_PMC_PM_CFG_OFFSET,
 	.pm_read_disable_bit = CNP_PMC_READ_DISABLE_BIT,
-	.acpi_pm_tmr_ctl_offset = SPT_PMC_ACPI_PM_TMR_CTL_OFFSET,
-	.acpi_pm_tmr_disable_bit = SPT_PMC_BIT_ACPI_PM_TMR_DISABLE,
 	.ltr_ignore_max = ADL_NUM_IP_IGN_ALLOWED,
 	.lpm_num_modes = ADL_LPM_NUM_MODES,
 	.lpm_num_maps = ADL_LPM_NUM_MAPS,
diff --git a/drivers/platform/x86/intel/pmc/cnp.c b/drivers/platform/x86/intel/pmc/cnp.c
index 513c02670c5a..dd72974bf71e 100644
--- a/drivers/platform/x86/intel/pmc/cnp.c
+++ b/drivers/platform/x86/intel/pmc/cnp.c
@@ -200,8 +200,6 @@ const struct pmc_reg_map cnp_reg_map = {
 	.ppfear_buckets = CNP_PPFEAR_NUM_ENTRIES,
 	.pm_cfg_offset = CNP_PMC_PM_CFG_OFFSET,
 	.pm_read_disable_bit = CNP_PMC_READ_DISABLE_BIT,
-	.acpi_pm_tmr_ctl_offset = SPT_PMC_ACPI_PM_TMR_CTL_OFFSET,
-	.acpi_pm_tmr_disable_bit = SPT_PMC_BIT_ACPI_PM_TMR_DISABLE,
 	.ltr_ignore_max = CNP_NUM_IP_IGN_ALLOWED,
 	.etr3_offset = ETR3_OFFSET,
 };
diff --git a/drivers/platform/x86/intel/pmc/core.c b/drivers/platform/x86/intel/pmc/core.c
index ecb47f8b4f83..d6c0f88f8c7b 100644
--- a/drivers/platform/x86/intel/pmc/core.c
+++ b/drivers/platform/x86/intel/pmc/core.c
@@ -11,7 +11,6 @@
 
 #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
 
-#include <linux/acpi_pmtmr.h>
 #include <linux/bitfield.h>
 #include <linux/debugfs.h>
 #include <linux/delay.h>
@@ -1258,38 +1257,6 @@ static bool pmc_core_is_pson_residency_enabled(struct pmc_dev *pmcdev)
 	return val == 1;
 }
 
-/*
- * Enable or disable ACPI PM Timer
- *
- * This function is intended to be a callback for ACPI PM suspend/resume event.
- * The ACPI PM Timer is enabled on resume only if it was enabled during suspend.
- */
-static void pmc_core_acpi_pm_timer_suspend_resume(void *data, bool suspend)
-{
-	struct pmc_dev *pmcdev = data;
-	struct pmc *pmc = pmcdev->pmcs[PMC_IDX_MAIN];
-	const struct pmc_reg_map *map = pmc->map;
-	bool enabled;
-	u32 reg;
-
-	if (!map->acpi_pm_tmr_ctl_offset)
-		return;
-
-	guard(mutex)(&pmcdev->lock);
-
-	if (!suspend && !pmcdev->enable_acpi_pm_timer_on_resume)
-		return;
-
-	reg = pmc_core_reg_read(pmc, map->acpi_pm_tmr_ctl_offset);
-	enabled = !(reg & map->acpi_pm_tmr_disable_bit);
-	if (suspend)
-		reg |= map->acpi_pm_tmr_disable_bit;
-	else
-		reg &= ~map->acpi_pm_tmr_disable_bit;
-	pmc_core_reg_write(pmc, map->acpi_pm_tmr_ctl_offset, reg);
-
-	pmcdev->enable_acpi_pm_timer_on_resume = suspend && enabled;
-}
 
 static void pmc_core_dbgfs_unregister(struct pmc_dev *pmcdev)
 {
@@ -1486,7 +1453,6 @@ static int pmc_core_probe(struct platform_device *pdev)
 	struct pmc_dev *pmcdev;
 	const struct x86_cpu_id *cpu_id;
 	int (*core_init)(struct pmc_dev *pmcdev);
-	const struct pmc_reg_map *map;
 	struct pmc *primary_pmc;
 	int ret;
 
@@ -1545,11 +1511,6 @@ static int pmc_core_probe(struct platform_device *pdev)
 	pm_report_max_hw_sleep(FIELD_MAX(SLP_S0_RES_COUNTER_MASK) *
 			       pmc_core_adjust_slp_s0_step(primary_pmc, 1));
 
-	map = primary_pmc->map;
-	if (map->acpi_pm_tmr_ctl_offset)
-		acpi_pmtmr_register_suspend_resume_callback(pmc_core_acpi_pm_timer_suspend_resume,
-							 pmcdev);
-
 	device_initialized = true;
 	dev_info(&pdev->dev, " initialized\n");
 
@@ -1559,12 +1520,6 @@ static int pmc_core_probe(struct platform_device *pdev)
 static void pmc_core_remove(struct platform_device *pdev)
 {
 	struct pmc_dev *pmcdev = platform_get_drvdata(pdev);
-	const struct pmc *pmc = pmcdev->pmcs[PMC_IDX_MAIN];
-	const struct pmc_reg_map *map = pmc->map;
-
-	if (map->acpi_pm_tmr_ctl_offset)
-		acpi_pmtmr_unregister_suspend_resume_callback();
-
 	pmc_core_dbgfs_unregister(pmcdev);
 	pmc_core_clean_structure(pdev);
 }
diff --git a/drivers/platform/x86/intel/pmc/core.h b/drivers/platform/x86/intel/pmc/core.h
index 75fd593a7b0f..b9d3291d0bf2 100644
--- a/drivers/platform/x86/intel/pmc/core.h
+++ b/drivers/platform/x86/intel/pmc/core.h
@@ -68,8 +68,6 @@ struct telem_endpoint;
 #define SPT_PMC_LTR_SCC				0x3A0
 #define SPT_PMC_LTR_ISH				0x3A4
 
-#define SPT_PMC_ACPI_PM_TMR_CTL_OFFSET		0x18FC
-
 /* Sunrise Point: PGD PFET Enable Ack Status Registers */
 enum ppfear_regs {
 	SPT_PMC_XRAM_PPFEAR0A = 0x590,
@@ -150,8 +148,6 @@ enum ppfear_regs {
 #define SPT_PMC_VRIC1_SLPS0LVEN			BIT(13)
 #define SPT_PMC_VRIC1_XTALSDQDIS		BIT(22)
 
-#define SPT_PMC_BIT_ACPI_PM_TMR_DISABLE		BIT(1)
-
 /* Cannonlake Power Management Controller register offsets */
 #define CNP_PMC_SLPS0_DBG_OFFSET		0x10B4
 #define CNP_PMC_PM_CFG_OFFSET			0x1818
@@ -355,8 +351,6 @@ struct pmc_reg_map {
 	const u8  *lpm_reg_index;
 	const u32 pson_residency_offset;
 	const u32 pson_residency_counter_step;
-	const u32 acpi_pm_tmr_ctl_offset;
-	const u32 acpi_pm_tmr_disable_bit;
 };
 
 /**
@@ -432,8 +426,6 @@ struct pmc_dev {
 	u32 die_c6_offset;
 	struct telem_endpoint *punit_ep;
 	struct pmc_info *regmap_list;
-
-	bool enable_acpi_pm_timer_on_resume;
 };
 
 enum pmc_index {
diff --git a/drivers/platform/x86/intel/pmc/icl.c b/drivers/platform/x86/intel/pmc/icl.c
index cbbd44054468..71b0fd6cb7d8 100644
--- a/drivers/platform/x86/intel/pmc/icl.c
+++ b/drivers/platform/x86/intel/pmc/icl.c
@@ -46,8 +46,6 @@ const struct pmc_reg_map icl_reg_map = {
 	.ppfear_buckets = ICL_PPFEAR_NUM_ENTRIES,
 	.pm_cfg_offset = CNP_PMC_PM_CFG_OFFSET,
 	.pm_read_disable_bit = CNP_PMC_READ_DISABLE_BIT,
-	.acpi_pm_tmr_ctl_offset = SPT_PMC_ACPI_PM_TMR_CTL_OFFSET,
-	.acpi_pm_tmr_disable_bit = SPT_PMC_BIT_ACPI_PM_TMR_DISABLE,
 	.ltr_ignore_max = ICL_NUM_IP_IGN_ALLOWED,
 	.etr3_offset = ETR3_OFFSET,
 };
diff --git a/drivers/platform/x86/intel/pmc/mtl.c b/drivers/platform/x86/intel/pmc/mtl.c
index 91f2fa728f5c..c7d15d864039 100644
--- a/drivers/platform/x86/intel/pmc/mtl.c
+++ b/drivers/platform/x86/intel/pmc/mtl.c
@@ -462,8 +462,6 @@ const struct pmc_reg_map mtl_socm_reg_map = {
 	.ppfear_buckets = MTL_SOCM_PPFEAR_NUM_ENTRIES,
 	.pm_cfg_offset = CNP_PMC_PM_CFG_OFFSET,
 	.pm_read_disable_bit = CNP_PMC_READ_DISABLE_BIT,
-	.acpi_pm_tmr_ctl_offset = SPT_PMC_ACPI_PM_TMR_CTL_OFFSET,
-	.acpi_pm_tmr_disable_bit = SPT_PMC_BIT_ACPI_PM_TMR_DISABLE,
 	.lpm_num_maps = ADL_LPM_NUM_MAPS,
 	.ltr_ignore_max = MTL_SOCM_NUM_IP_IGN_ALLOWED,
 	.lpm_res_counter_step_x2 = TGL_PMC_LPM_RES_COUNTER_STEP_X2,
diff --git a/drivers/platform/x86/intel/pmc/tgl.c b/drivers/platform/x86/intel/pmc/tgl.c
index 371b4e30f142..e0580de18077 100644
--- a/drivers/platform/x86/intel/pmc/tgl.c
+++ b/drivers/platform/x86/intel/pmc/tgl.c
@@ -197,8 +197,6 @@ const struct pmc_reg_map tgl_reg_map = {
 	.ppfear_buckets = ICL_PPFEAR_NUM_ENTRIES,
 	.pm_cfg_offset = CNP_PMC_PM_CFG_OFFSET,
 	.pm_read_disable_bit = CNP_PMC_READ_DISABLE_BIT,
-	.acpi_pm_tmr_ctl_offset = SPT_PMC_ACPI_PM_TMR_CTL_OFFSET,
-	.acpi_pm_tmr_disable_bit = SPT_PMC_BIT_ACPI_PM_TMR_DISABLE,
 	.ltr_ignore_max = TGL_NUM_IP_IGN_ALLOWED,
 	.lpm_num_maps = TGL_LPM_NUM_MAPS,
 	.lpm_res_counter_step_x2 = TGL_PMC_LPM_RES_COUNTER_STEP_X2,
-- 
2.45.2

