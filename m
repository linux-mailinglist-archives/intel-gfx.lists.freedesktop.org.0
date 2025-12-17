Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CAF1CCC6CC3
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Dec 2025 10:29:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E88110E585;
	Wed, 17 Dec 2025 09:29:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DE2rrUCG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F1D310E584;
 Wed, 17 Dec 2025 09:29:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765963782; x=1797499782;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bg0QNI+eFJcSJHHaxIvGhOgggeThv4Q5/qtAlfZDeck=;
 b=DE2rrUCGEKp1prezC3pKrR4ERrEcWIH/VDd7cXdQRbEuEoN6iCQ7xXkJ
 vt1k/phvmt7PqFNnM9WNKaISXH78JSAWp2E9q4fAReONtXL0DQz0XdiUJ
 KOHWFBl/k2nSYYjuPKqTRF1udYD41AGku7hosM+lk8hKDbBX0gYAOj44C
 SHzf/2bHAAGKhrGhoGLLNdu9zNTFC5xIlWhjJTqEfm8nt44VHXmoRCYrI
 D7POgf6JzaKnkKz2H+9yse2ssJyReq2eOxzlhYxgGjBLcY5Z3k0CHcBt7
 dyK/EXrvXPmPdivDo/gRpKiuFyG9ONKhd5iBNPF2qHsAcc8NJEUZaH4Wx w==;
X-CSE-ConnectionGUID: nD2dlsJYTFuHPc0UDWpk/g==
X-CSE-MsgGUID: D70MnyhhTN2SHYFtdyTucQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11644"; a="79014553"
X-IronPort-AV: E=Sophos;i="6.21,155,1763452800"; d="scan'208";a="79014553"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2025 01:29:41 -0800
X-CSE-ConnectionGUID: 5lryVW6xRuec1l+5tKJyyQ==
X-CSE-MsgGUID: aGcDzaupSBi2VCNTku7XWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,155,1763452800"; d="scan'208";a="198752694"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa009.fm.intel.com with ESMTP; 17 Dec 2025 01:29:39 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>,
	Borah@freedesktop.org,
	Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
Subject: [core-for-CI] powercap: intel_rapl: Fix possible recursive lock
 warning
Date: Wed, 17 Dec 2025 11:20:57 +0200
Message-Id: <20251217092057.1231895-1-mika.kahola@intel.com>
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

From: Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>

With the RAPL PMU addition, there is a recursive locking when CPU online
callback function calls rapl_package_add_pmu(). Here cpu_hotplug_lock
is already acquired by cpuhp_thread_fun() and rapl_package_add_pmu()
tries to acquire again.

<4>[ 8.197433] ============================================
<4>[ 8.197437] WARNING: possible recursive locking detected
<4>[ 8.197440] 6.19.0-rc1-lgci-xe-xe-4242-05b7c58b3367dca84+ #1 Not tainted
<4>[ 8.197444] --------------------------------------------
<4>[ 8.197447] cpuhp/0/20 is trying to acquire lock:
<4>[ 8.197450] ffffffff83487870 (cpu_hotplug_lock){++++}-{0:0}, at:
rapl_package_add_pmu+0x37/0x370 [intel_rapl_common]
<4>[ 8.197463]
but task is already holding lock:
<4>[ 8.197466] ffffffff83487870 (cpu_hotplug_lock){++++}-{0:0}, at:
cpuhp_thread_fun+0x6d/0x290
<4>[ 8.197477]
other info that might help us debug this:
<4>[ 8.197480] Possible unsafe locking scenario:

<4>[ 8.197483] CPU0
<4>[ 8.197485] ----
<4>[ 8.197487] lock(cpu_hotplug_lock);
<4>[ 8.197490] lock(cpu_hotplug_lock);
<4>[ 8.197493]
*** DEADLOCK ***
..
..
<4>[ 8.197542] __lock_acquire+0x146e/0x2790
<4>[ 8.197548] lock_acquire+0xc4/0x2c0
<4>[ 8.197550] ? rapl_package_add_pmu+0x37/0x370 [intel_rapl_common]
<4>[ 8.197556] cpus_read_lock+0x41/0x110
<4>[ 8.197558] ? rapl_package_add_pmu+0x37/0x370 [intel_rapl_common]
<4>[ 8.197561] rapl_package_add_pmu+0x37/0x370 [intel_rapl_common]
<4>[ 8.197565] rapl_cpu_online+0x85/0x87 [intel_rapl_msr]
<4>[ 8.197568] ? __pfx_rapl_cpu_online+0x10/0x10 [intel_rapl_msr]
<4>[ 8.197570] cpuhp_invoke_callback+0x41f/0x6c0
<4>[ 8.197573] ? cpuhp_thread_fun+0x6d/0x290
<4>[ 8.197575] cpuhp_thread_fun+0x1e2/0x290
<4>[ 8.197578] ? smpboot_thread_fn+0x26/0x290
<4>[ 8.197581] smpboot_thread_fn+0x12f/0x290
<4>[ 8.197584] ? __pfx_smpboot_thread_fn+0x10/0x10
<4>[ 8.197586] kthread+0x11f/0x250
<4>[ 8.197589] ? __pfx_kthread+0x10/0x10
<4>[ 8.197592] ret_from_fork+0x344/0x3a0
<4>[ 8.197595] ? __pfx_kthread+0x10/0x10
<4>[ 8.197597] ret_from_fork_asm+0x1a/0x30
<4>[ 8.197604] </TASK>

Fix this issue in the same way as rapl powercap package domain is added
from the same CPU online callback by introducing another interface which
doesn't call cpu_read_lock(). Add rapl_package_add_pmu_locked() which
doesn't call cpu_read_lock(). The original rapl_package_add_pmu() still
calls cpu_read_lock() for TPMI RAPL.

Fixes: 748d6ba43afd ("powercap: intel_rapl: Enable MSR-based RAPL PMU support")
Reported-by: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
Closes: https://lore.kernel.org/linux-pm/5427ede1-57a0-43d1-99f3-8ca4b0643e82@intel.com/T/#u
Signed-off-by: Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>
---
 drivers/powercap/intel_rapl_common.c | 15 ++++++++++++---
 drivers/powercap/intel_rapl_msr.c    |  2 +-
 include/linux/intel_rapl.h           |  2 ++
 3 files changed, 15 insertions(+), 4 deletions(-)

diff --git a/drivers/powercap/intel_rapl_common.c b/drivers/powercap/intel_rapl_common.c
index b9d87e56cbbc..27eaf0d4265f 100644
--- a/drivers/powercap/intel_rapl_common.c
+++ b/drivers/powercap/intel_rapl_common.c
@@ -2032,7 +2032,7 @@ static int rapl_pmu_update(struct rapl_package *rp)
 	return ret;
 }
 
-int rapl_package_add_pmu(struct rapl_package *rp)
+int rapl_package_add_pmu_locked(struct rapl_package *rp)
 {
 	struct rapl_package_pmu_data *data = &rp->pmu_data;
 	int idx;
@@ -2040,8 +2040,6 @@ int rapl_package_add_pmu(struct rapl_package *rp)
 	if (rp->has_pmu)
 		return -EEXIST;
 
-	guard(cpus_read_lock)();
-
 	for (idx = 0; idx < rp->nr_domains; idx++) {
 		struct rapl_domain *rd = &rp->domains[idx];
 		int domain = rd->id;
@@ -2091,6 +2089,17 @@ int rapl_package_add_pmu(struct rapl_package *rp)
 
 	return rapl_pmu_update(rp);
 }
+EXPORT_SYMBOL_GPL(rapl_package_add_pmu_locked);
+
+int rapl_package_add_pmu(struct rapl_package *rp)
+{
+	if (rp->has_pmu)
+		return -EEXIST;
+
+	guard(cpus_read_lock)();
+
+	return rapl_package_add_pmu_locked(rp);
+}
 EXPORT_SYMBOL_GPL(rapl_package_add_pmu);
 
 void rapl_package_remove_pmu(struct rapl_package *rp)
diff --git a/drivers/powercap/intel_rapl_msr.c b/drivers/powercap/intel_rapl_msr.c
index 0ce1096b6314..ef3435de1926 100644
--- a/drivers/powercap/intel_rapl_msr.c
+++ b/drivers/powercap/intel_rapl_msr.c
@@ -82,7 +82,7 @@ static int rapl_cpu_online(unsigned int cpu)
 		if (IS_ERR(rp))
 			return PTR_ERR(rp);
 		if (rapl_msr_pmu)
-			rapl_package_add_pmu(rp);
+			rapl_package_add_pmu_locked(rp);
 	}
 	cpumask_set_cpu(cpu, &rp->cpumask);
 	return 0;
diff --git a/include/linux/intel_rapl.h b/include/linux/intel_rapl.h
index e9ade2ff4af6..68fea61ca77d 100644
--- a/include/linux/intel_rapl.h
+++ b/include/linux/intel_rapl.h
@@ -214,9 +214,11 @@ void rapl_remove_package(struct rapl_package *rp);
 
 #ifdef CONFIG_PERF_EVENTS
 int rapl_package_add_pmu(struct rapl_package *rp);
+int rapl_package_add_pmu_locked(struct rapl_package *rp);
 void rapl_package_remove_pmu(struct rapl_package *rp);
 #else
 static inline int rapl_package_add_pmu(struct rapl_package *rp) { return 0; }
+static inline int rapl_package_add_pmu_locked(struct rapl_package *rp) { return 0; }
 static inline void rapl_package_remove_pmu(struct rapl_package *rp) { }
 #endif
 
-- 
2.34.1

