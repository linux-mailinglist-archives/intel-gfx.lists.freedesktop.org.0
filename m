Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA8ADA3DFD3
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2025 17:07:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 561AE10E19D;
	Thu, 20 Feb 2025 16:07:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="amMmghih";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D42710E19D;
 Thu, 20 Feb 2025 16:07:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740067657; x=1771603657;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=KXd6HmaYWSKCdFUWjFo6dbjbrQlIxzPrhqN2Q+aeBeg=;
 b=amMmghihAq5onKg3B87q7bYUFs31/A/oAfVDZdoPOmKSOqdiUJYhQLyk
 tI3eXEKTVFmpahgzbOZdvUorJBo8VjDdqWwd5H5T6JWxJcismRS2orlW0
 OK86hrbWV7xDVGhj6WOe9iLIceFDddvkNLEP9flfWI730fJz3QqjODuck
 6TlzKwyd3XBWahk7C8v8czHBLxrp3pEW/q6/cJ9bKBjOfrPr3XOew0MQg
 1cvq7j5+NJC54FyjmW0PqQ3/iyYnSS5lztOeKWErRVbpDYhMtxjKNTENm
 4g1tQNEJXcF6vh+xU2JOsDw6eEdCs2Oy+afAjKL0cyVFYJvbn8ZA4DUpY Q==;
X-CSE-ConnectionGUID: xPwDtDpXQEi9VvShGRePtg==
X-CSE-MsgGUID: xea0uw4ZR/6Lk0+Z3UCNAg==
X-IronPort-AV: E=McAfee;i="6700,10204,11351"; a="40041573"
X-IronPort-AV: E=Sophos;i="6.13,302,1732608000"; d="scan'208";a="40041573"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2025 08:07:37 -0800
X-CSE-ConnectionGUID: P9rw0PJMQPOjnB73mf/YRg==
X-CSE-MsgGUID: yoaCzzJdTf6r8NYE7bT8Mg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="152268814"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2025 08:07:36 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: linux-perf-users@vger.kernel.org, x86@kernel.org,
 linux-kernel@vger.kernel.org
Cc: dave.hansen@linux.intel.com, Zhang Rui <rui.zhang@intel.com>,
 Kan Liang <kan.liang@linux.intel.com>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Ulisses Furquim <ulisses.furquim@intel.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Subject: [PATCH] perf/x86/rapl: Fix PP1 event for Intel Meteor/Lunar Lake
Date: Thu, 20 Feb 2025 07:36:30 -0800
Message-ID: <20250220153857.2593704-6-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.48.1
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

On some boots the read of MSR_PP1_ENERGY_STATUS msr returns 0, causing
perf_msr_probe() to make the power/events/energy-gpu event non-visible.
When that happens, the msr always read 0 until the graphics module (i915
for Meteor Lake, xe for Lunar Lake) is loaded. Then it starts returning
something different and re-loading the rapl module "fixes" it.

This is tested on the following platforms with the fail rates before
this patch:

	Alder Lake S	0/20
	Arrow Lake H	0/20
	Lunar Lake M	8/20
	Meteor Lake U	6/20
	Raptor Lake P	4/20
	Raptor Lake S	0/20

For those platforms failing, use a separate msr list with .no_check
set so it doesn't check the runtime value to create the event - it will
just return 0 until the i915/xe module initializes the GPU.

The issue https://github.com/ulissesf/qmassa/issues/4 is workarounded by
reading the MSR directly since it works after xe is loaded, but the
issue with not having the perf event is still there.

Closes: https://github.com/ulissesf/qmassa/issues/4
Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/4241
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com
---

Maybe a clearer alternative is to just move all the platforms after
RAPTORLAKE with a gpu to use the new msr list.

 arch/x86/events/rapl.c | 26 ++++++++++++++++++++++----
 1 file changed, 22 insertions(+), 4 deletions(-)

diff --git a/arch/x86/events/rapl.c b/arch/x86/events/rapl.c
index 4952faf03e82d..18e324b8fa82c 100644
--- a/arch/x86/events/rapl.c
+++ b/arch/x86/events/rapl.c
@@ -588,6 +588,14 @@ static struct perf_msr intel_rapl_spr_msrs[] = {
 	[PERF_RAPL_PSYS] = { MSR_PLATFORM_ENERGY_STATUS, &rapl_events_psys_group,  test_msr, true, RAPL_MSR_MASK },
 };
 
+static struct perf_msr intel_rapl_mtl_msrs[] = {
+	[PERF_RAPL_PP0]  = { MSR_PP0_ENERGY_STATUS,      &rapl_events_cores_group, test_msr, false, RAPL_MSR_MASK },
+	[PERF_RAPL_PKG]  = { MSR_PKG_ENERGY_STATUS,      &rapl_events_pkg_group,   test_msr, false, RAPL_MSR_MASK },
+	[PERF_RAPL_RAM]  = { MSR_DRAM_ENERGY_STATUS,     &rapl_events_ram_group,   test_msr, false, RAPL_MSR_MASK },
+	[PERF_RAPL_PP1]  = { MSR_PP1_ENERGY_STATUS,      &rapl_events_gpu_group,   test_msr, true,  RAPL_MSR_MASK },
+	[PERF_RAPL_PSYS] = { MSR_PLATFORM_ENERGY_STATUS, &rapl_events_psys_group,  test_msr, false, RAPL_MSR_MASK },
+};
+
 /*
  * Force to PERF_RAPL_PKG_EVENTS_MAX size due to:
  * - perf_msr_probe(PERF_RAPL_PKG_EVENTS_MAX)
@@ -826,6 +834,16 @@ static struct rapl_model model_spr = {
 	.rapl_pkg_msrs	= intel_rapl_spr_msrs,
 };
 
+static struct rapl_model model_rpl = {
+	.pkg_events	= BIT(PERF_RAPL_PP0) |
+			  BIT(PERF_RAPL_PKG) |
+			  BIT(PERF_RAPL_RAM) |
+			  BIT(PERF_RAPL_PP1) |
+			  BIT(PERF_RAPL_PSYS),
+	.msr_power_unit = MSR_RAPL_POWER_UNIT,
+	.rapl_pkg_msrs  = intel_rapl_mtl_msrs,
+};
+
 static struct rapl_model model_amd_hygon = {
 	.pkg_events	= BIT(PERF_RAPL_PKG),
 	.core_events	= BIT(PERF_RAPL_CORE),
@@ -873,13 +891,13 @@ static const struct x86_cpu_id rapl_model_match[] __initconst = {
 	X86_MATCH_VFM(INTEL_SAPPHIRERAPIDS_X,	&model_spr),
 	X86_MATCH_VFM(INTEL_EMERALDRAPIDS_X,	&model_spr),
 	X86_MATCH_VFM(INTEL_RAPTORLAKE,		&model_skl),
-	X86_MATCH_VFM(INTEL_RAPTORLAKE_P,	&model_skl),
+	X86_MATCH_VFM(INTEL_RAPTORLAKE_P,	&model_rpl),
 	X86_MATCH_VFM(INTEL_RAPTORLAKE_S,	&model_skl),
-	X86_MATCH_VFM(INTEL_METEORLAKE,		&model_skl),
-	X86_MATCH_VFM(INTEL_METEORLAKE_L,	&model_skl),
+	X86_MATCH_VFM(INTEL_METEORLAKE,		&model_rpl),
+	X86_MATCH_VFM(INTEL_METEORLAKE_L,	&model_rpl),
 	X86_MATCH_VFM(INTEL_ARROWLAKE_H,	&model_skl),
 	X86_MATCH_VFM(INTEL_ARROWLAKE,		&model_skl),
-	X86_MATCH_VFM(INTEL_LUNARLAKE_M,	&model_skl),
+	X86_MATCH_VFM(INTEL_LUNARLAKE_M,	&model_rpl),
 	{},
 };
 MODULE_DEVICE_TABLE(x86cpu, rapl_model_match);
-- 
2.48.1

