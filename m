Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EF18878987
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Mar 2024 21:35:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A867310FCFC;
	Mon, 11 Mar 2024 20:35:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jaBZFtfM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B8AB10FFDC;
 Mon, 11 Mar 2024 20:35:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710189324; x=1741725324;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=yfJCKzuALB15/FqEipqi0uCNNaEPRKVBSD43k66TkaQ=;
 b=jaBZFtfMxGp6lWF2KM97COjOjtGtr3cs/I8vrfJNcLtUFTbCkDjs1fBw
 igNUJ0aE403N7JNsocMuRsZwL5aJVkZHmaEYBhWjgX0O9NF7PuG3Oepay
 f0ZknuVmuWg71VAsEVVPsjBTaMhla081vVgimcu6t2IYzBeM0QYVwVy+1
 Ru+hPDY7vQa0p5QcYuLdJjx+0XVdt7Q7RkbkVzG1mJq7ZEgumT3IgNroL
 YqjMuV2EypOPL9xYjAErPQCE5Y2+VxdCZBiHLgOzqAtqAYe4eTuZDL9fq
 8ZBPFPqY7GPcD9odYsDVrHQwQdeZgO9DNqE91x62XTJfGYvfq2+R+T8gD A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11010"; a="4729220"
X-IronPort-AV: E=Sophos;i="6.07,117,1708416000"; 
   d="scan'208";a="4729220"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2024 13:35:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,117,1708416000"; d="scan'208";a="11383222"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.intranet) ([10.213.25.93])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2024 13:35:20 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>,
 Anshuman Gupta <anshuman.gupta@intel.com>,
 Badal Nilawar <badal.nilawar@intel.com>,
 Guenter Roeck <linux@roeck-us.net>,
 Dale B Stimson <dale.b.stimson@intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Jonathan Cavitt <jonathan.cavitt@intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH v2] drm/i915/hwmon: Fix locking inversion in sysfs getter
Date: Mon, 11 Mar 2024 21:34:58 +0100
Message-ID: <20240311203500.518675-2-janusz.krzysztofik@linux.intel.com>
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

In i915 hwmon sysfs getter path we now take a hwmon_lock, then acquire an
rpm wakeref.  That results in lock inversion:

<4> [197.079335] ======================================================
<4> [197.085473] WARNING: possible circular locking dependency detected
<4> [197.091611] 6.8.0-rc7-Patchwork_129026v7-gc4dc92fb1152+ #1 Not tainted
<4> [197.098096] ------------------------------------------------------
<4> [197.104231] prometheus-node/839 is trying to acquire lock:
<4> [197.109680] ffffffff82764d80 (fs_reclaim){+.+.}-{0:0}, at: __kmalloc+0x9a/0x350
<4> [197.116939]
but task is already holding lock:
<4> [197.122730] ffff88811b772a40 (&hwmon->hwmon_lock){+.+.}-{3:3}, at: hwm_energy+0x4b/0x100 [i915]
<4> [197.131543]
which lock already depends on the new lock.
...
<4> [197.507922] Chain exists of:
  fs_reclaim --> &gt->reset.mutex --> &hwmon->hwmon_lock
<4> [197.518528]  Possible unsafe locking scenario:
<4> [197.524411]        CPU0                    CPU1
<4> [197.528916]        ----                    ----
<4> [197.533418]   lock(&hwmon->hwmon_lock);
<4> [197.537237]                                lock(&gt->reset.mutex);
<4> [197.543376]                                lock(&hwmon->hwmon_lock);
<4> [197.549682]   lock(fs_reclaim);
...
<4> [197.632548] Call Trace:
<4> [197.634990]  <TASK>
<4> [197.637088]  dump_stack_lvl+0x64/0xb0
<4> [197.640738]  check_noncircular+0x15e/0x180
<4> [197.652968]  check_prev_add+0xe9/0xce0
<4> [197.656705]  __lock_acquire+0x179f/0x2300
<4> [197.660694]  lock_acquire+0xd8/0x2d0
<4> [197.673009]  fs_reclaim_acquire+0xa1/0xd0
<4> [197.680478]  __kmalloc+0x9a/0x350
<4> [197.689063]  acpi_ns_internalize_name.part.0+0x4a/0xb0
<4> [197.694170]  acpi_ns_get_node_unlocked+0x60/0xf0
<4> [197.720608]  acpi_ns_get_node+0x3b/0x60
<4> [197.724428]  acpi_get_handle+0x57/0xb0
<4> [197.728164]  acpi_has_method+0x20/0x50
<4> [197.731896]  acpi_pci_set_power_state+0x43/0x120
<4> [197.736485]  pci_power_up+0x24/0x1c0
<4> [197.740047]  pci_pm_default_resume_early+0x9/0x30
<4> [197.744725]  pci_pm_runtime_resume+0x2d/0x90
<4> [197.753911]  __rpm_callback+0x3c/0x110
<4> [197.762586]  rpm_callback+0x58/0x70
<4> [197.766064]  rpm_resume+0x51e/0x730
<4> [197.769542]  rpm_resume+0x267/0x730
<4> [197.773020]  rpm_resume+0x267/0x730
<4> [197.776498]  rpm_resume+0x267/0x730
<4> [197.779974]  __pm_runtime_resume+0x49/0x90
<4> [197.784055]  __intel_runtime_pm_get+0x19/0xa0 [i915]
<4> [197.789070]  hwm_energy+0x55/0x100 [i915]
<4> [197.793183]  hwm_read+0x9a/0x310 [i915]
<4> [197.797124]  hwmon_attr_show+0x36/0x120
<4> [197.800946]  dev_attr_show+0x15/0x60
<4> [197.804509]  sysfs_kf_seq_show+0xb5/0x100

Acquire the wakeref before the lock and hold it as long as the lock is
also held.  Follow that pattern across the whole source file where similar
lock inversion can happen.

v2: Keep hardware read under the lock so the whole operation of updating
    energy from hardware is still atomic (Guenter),
  - instead, acquire the rpm wakeref before the lock and hold it as long
    as the lock is held,
  - use the same aproach for other similar places across the i915_hwmon.c
    source file (Rodrigo).

Fixes: c41b8bdcc297 ("drm/i915/hwmon: Show device level energy usage")
Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Guenter Roeck <linux@roeck-us.net>
Cc: <stable@vger.kernel.org> # v6.2+
---
 drivers/gpu/drm/i915/i915_hwmon.c | 37 ++++++++++++++++---------------
 1 file changed, 19 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
index 8c3f443c8347e..b758fd110c204 100644
--- a/drivers/gpu/drm/i915/i915_hwmon.c
+++ b/drivers/gpu/drm/i915/i915_hwmon.c
@@ -72,12 +72,13 @@ hwm_locked_with_pm_intel_uncore_rmw(struct hwm_drvdata *ddat,
 	struct intel_uncore *uncore = ddat->uncore;
 	intel_wakeref_t wakeref;
 
-	mutex_lock(&hwmon->hwmon_lock);
+	with_intel_runtime_pm(uncore->rpm, wakeref) {
+		mutex_lock(&hwmon->hwmon_lock);
 
-	with_intel_runtime_pm(uncore->rpm, wakeref)
 		intel_uncore_rmw(uncore, reg, clear, set);
 
-	mutex_unlock(&hwmon->hwmon_lock);
+		mutex_unlock(&hwmon->hwmon_lock);
+	}
 }
 
 /*
@@ -136,20 +137,21 @@ hwm_energy(struct hwm_drvdata *ddat, long *energy)
 	else
 		rgaddr = hwmon->rg.energy_status_all;
 
-	mutex_lock(&hwmon->hwmon_lock);
+	with_intel_runtime_pm(uncore->rpm, wakeref) {
+		mutex_lock(&hwmon->hwmon_lock);
 
-	with_intel_runtime_pm(uncore->rpm, wakeref)
 		reg_val = intel_uncore_read(uncore, rgaddr);
 
-	if (reg_val >= ei->reg_val_prev)
-		ei->accum_energy += reg_val - ei->reg_val_prev;
-	else
-		ei->accum_energy += UINT_MAX - ei->reg_val_prev + reg_val;
-	ei->reg_val_prev = reg_val;
+		if (reg_val >= ei->reg_val_prev)
+			ei->accum_energy += reg_val - ei->reg_val_prev;
+		else
+			ei->accum_energy += UINT_MAX - ei->reg_val_prev + reg_val;
+		ei->reg_val_prev = reg_val;
 
-	*energy = mul_u64_u32_shr(ei->accum_energy, SF_ENERGY,
-				  hwmon->scl_shift_energy);
-	mutex_unlock(&hwmon->hwmon_lock);
+		*energy = mul_u64_u32_shr(ei->accum_energy, SF_ENERGY,
+					  hwmon->scl_shift_energy);
+		mutex_unlock(&hwmon->hwmon_lock);
+	}
 }
 
 static ssize_t
@@ -404,6 +406,7 @@ hwm_power_max_write(struct hwm_drvdata *ddat, long val)
 
 	/* Block waiting for GuC reset to complete when needed */
 	for (;;) {
+		wakeref = intel_runtime_pm_get(ddat->uncore->rpm);
 		mutex_lock(&hwmon->hwmon_lock);
 
 		prepare_to_wait(&ddat->waitq, &wait, TASK_INTERRUPTIBLE);
@@ -417,14 +420,13 @@ hwm_power_max_write(struct hwm_drvdata *ddat, long val)
 		}
 
 		mutex_unlock(&hwmon->hwmon_lock);
+		intel_runtime_pm_put(ddat->uncore->rpm, wakeref);
 
 		schedule();
 	}
 	finish_wait(&ddat->waitq, &wait);
 	if (ret)
-		goto unlock;
-
-	wakeref = intel_runtime_pm_get(ddat->uncore->rpm);
+		goto exit;
 
 	/* Disable PL1 limit and verify, because the limit cannot be disabled on all platforms */
 	if (val == PL1_DISABLE) {
@@ -444,9 +446,8 @@ hwm_power_max_write(struct hwm_drvdata *ddat, long val)
 	intel_uncore_rmw(ddat->uncore, hwmon->rg.pkg_rapl_limit,
 			 PKG_PWR_LIM_1_EN | PKG_PWR_LIM_1, nval);
 exit:
-	intel_runtime_pm_put(ddat->uncore->rpm, wakeref);
-unlock:
 	mutex_unlock(&hwmon->hwmon_lock);
+	intel_runtime_pm_put(ddat->uncore->rpm, wakeref);
 	return ret;
 }
 
-- 
2.43.0

