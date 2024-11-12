Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9F639C4EF3
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2024 07:53:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFEB310E578;
	Tue, 12 Nov 2024 06:53:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ccgPjcjA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 763CF10E0D8;
 Tue, 12 Nov 2024 06:53:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731394427; x=1762930427;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=6BvsErVQrk1gHB0N9SsuXfLXLVJxDWvcSezWC4hkLho=;
 b=ccgPjcjA1CQ8FhOVPl+JrFzvLtzdFoKxUwAdwbf4FlBvvVYFaRrKDeem
 ZtNaIk7uK8NiGdHn7n8XIklrtpVciV8pJEb1xxc37DtHFMEL8nVx4/TFy
 MJd68rHCYMl5qnGCQB5j48F2IXQicSxeVmQGefUF7xFVD+n9lRxfvaGmJ
 2+DGEfBqXiXn2pzhmwX2/6vxOX1y6ICMvXkNJ8H7mnlpBqSwtFZjYXPuD
 KAbCqbGgXyE3QG8NZ0OpCPxnApSs+c2C6X4gXQ8V4a2D/xlu4oAgNMv65
 VMpYMqpelcIA54cpMeADvVM6CVF8sWhg606Q+opy4s524UUG64ZI9QgZZ Q==;
X-CSE-ConnectionGUID: dnchVPdXQ1SDcUZOY9hUjA==
X-CSE-MsgGUID: Zb6lVSJUSfq1zRBA0t/26g==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="31073484"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="31073484"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 22:53:46 -0800
X-CSE-ConnectionGUID: Z6QDmTbiSy+XSAj9vMGIfQ==
X-CSE-MsgGUID: WeLcyaCrRqqVlBXqT5acTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,147,1728975600"; d="scan'208";a="87257200"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by orviesa009.jf.intel.com with ESMTP; 11 Nov 2024 22:53:44 -0800
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, suresh.kumar.kurmi@intel.com,
 jani.saarinen@intel.com
Subject: [core-for-CI] cpufreq: intel_pstate: Rearrange locking in
 hybrid_init_cpu_capacity_scaling()
Date: Tue, 12 Nov 2024 12:19:37 +0530
Message-Id: <20241112064938.1332287-1-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
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

From: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>

Notice that hybrid_init_cpu_capacity_scaling() only needs to hold
hybrid_capacity_lock around __hybrid_init_cpu_capacity_scaling()
calls, so introduce a "locked" wrapper around the latter and call
it from the former.  This allows to drop a local variable and a
label that are not needed any more.

Also, rename __hybrid_init_cpu_capacity_scaling() to
__hybrid_refresh_cpu_capacity_scaling() for consistency.

No intentional functional impact.

This is Core-for-CI patch for regression seen [1]

[1] https://lore.kernel.org/linux-pm/SJ1PR11MB6129EDBF22F8A90FC3A3EDC8B9582@SJ1PR11MB6129.namprd11.prod.outlook.com/

Signed-off-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
References: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12763
Link: https://lore.kernel.org/linux-pm/12554508.O9o76ZdvQC@rjwysocki.net/
Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/cpufreq/intel_pstate.c | 35 ++++++++++++++++------------------
 1 file changed, 16 insertions(+), 19 deletions(-)

diff --git a/drivers/cpufreq/intel_pstate.c b/drivers/cpufreq/intel_pstate.c
index cd2ac1ba53d2..400337f3b572 100644
--- a/drivers/cpufreq/intel_pstate.c
+++ b/drivers/cpufreq/intel_pstate.c
@@ -1028,26 +1028,29 @@ static void hybrid_update_cpu_capacity_scaling(void)
 	}
 }
 
-static void __hybrid_init_cpu_capacity_scaling(void)
+static void __hybrid_refresh_cpu_capacity_scaling(void)
 {
 	hybrid_max_perf_cpu = NULL;
 	hybrid_update_cpu_capacity_scaling();
 }
 
-static void hybrid_init_cpu_capacity_scaling(bool refresh)
+static void hybrid_refresh_cpu_capacity_scaling(void)
 {
-	bool disable_itmt = false;
+	guard(mutex)(&hybrid_capacity_lock);
 
-	mutex_lock(&hybrid_capacity_lock);
+	__hybrid_refresh_cpu_capacity_scaling();
+}
 
+static void hybrid_init_cpu_capacity_scaling(bool refresh)
+{
 	/*
 	 * If hybrid_max_perf_cpu is set at this point, the hybrid CPU capacity
 	 * scaling has been enabled already and the driver is just changing the
 	 * operation mode.
 	 */
 	if (refresh) {
-		__hybrid_init_cpu_capacity_scaling();
-		goto unlock;
+		hybrid_refresh_cpu_capacity_scaling();
+		return;
 	}
 
 	/*
@@ -1056,19 +1059,13 @@ static void hybrid_init_cpu_capacity_scaling(bool refresh)
 	 * do not do that when SMT is in use.
 	 */
 	if (hwp_is_hybrid && !sched_smt_active() && arch_enable_hybrid_capacity_scale()) {
-		__hybrid_init_cpu_capacity_scaling();
-		disable_itmt = true;
-	}
-
-unlock:
-	mutex_unlock(&hybrid_capacity_lock);
-
-	/*
-	 * Disabling ITMT causes sched domains to be rebuilt to disable asym
-	 * packing and enable asym capacity.
-	 */
-	if (disable_itmt)
+		hybrid_refresh_cpu_capacity_scaling();
+		/*
+		 * Disabling ITMT causes sched domains to be rebuilt to disable asym
+		 * packing and enable asym capacity.
+		 */
 		sched_clear_itmt_support();
+	}
 }
 
 static bool hybrid_clear_max_perf_cpu(void)
@@ -1404,7 +1401,7 @@ static void intel_pstate_update_limits_for_all(void)
 	mutex_lock(&hybrid_capacity_lock);
 
 	if (hybrid_max_perf_cpu)
-		__hybrid_init_cpu_capacity_scaling();
+		__hybrid_refresh_cpu_capacity_scaling();
 
 	mutex_unlock(&hybrid_capacity_lock);
 }
-- 
2.25.1

