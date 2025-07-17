Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27B1CB08449
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Jul 2025 07:33:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8665310E304;
	Thu, 17 Jul 2025 05:33:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JXcoAHhc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DB7410E083;
 Thu, 17 Jul 2025 05:33:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752730436; x=1784266436;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=RgjSkunlfsMsRbpS/iOhjqxkBKDBrBwYG111zD1EWkQ=;
 b=JXcoAHhcTlqsmlQctHii4bCP9yHOitqNL2+pP4H2Vu9oPrqkEF+CXk3a
 vzOCsOJtn87PGlT2bI4yNSShIMMlkSN1Sc+u80YcgdpIlcAqehEn3mF7L
 UW0JEFao+s1XradOY4W5kDCeaJv+OZLI2FmHOoxI9GoDTJ5IgERgVht8j
 lqRnV/+NRqz/szO7tHTqoRgEyJhy4b5qFdaKotT9Vsuh7YQyeeJfJQ0lo
 Hgii7NiwFiXOesbrl0hg5hSNyQ/J9b9cRjiu//E3WvxOKIrUQZTz+88J/
 FChfO3yewyIqSMvCsHDFJ3DkbPHIXbooeeU+jmYoSm+GhUZ4PG8eiyOmi A==;
X-CSE-ConnectionGUID: HCvfEhD5Qvm410CXbgSjYw==
X-CSE-MsgGUID: Q+2P9/hgTVaslHf2r/Vm+Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11493"; a="54708854"
X-IronPort-AV: E=Sophos;i="6.16,317,1744095600"; d="scan'208";a="54708854"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2025 22:33:56 -0700
X-CSE-ConnectionGUID: k0EiWGKoS8GfZ0LKn05M5w==
X-CSE-MsgGUID: rqZXelYqSki4aiJYPwfMTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,317,1744095600"; d="scan'208";a="158164860"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by orviesa008.jf.intel.com with ESMTP; 16 Jul 2025 22:33:53 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: gustavo.sousa@intel.com, dnyaneshwar.bhadane@intel.com,
 dibin.moolakadan.subrahmanian@intel.com, imre.deak@intel.com
Subject: [PATCH] drm/i915/display: Skip unavailable power wells based on pipe
 mask
Date: Thu, 17 Jul 2025 10:46:03 +0530
Message-Id: <20250717051603.1036746-1-chaitanya.kumar.borah@intel.com>
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

Some power wells are only relevant for certain display pipes. Add a check
to ensure we only allocate and initialize power wells whose associated
pipes are available on the platform.

This avoids unnecessary mapping of power wells, particularly when platforms
support a subset of pipes described in the power well descriptors.

Suggested-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 .../i915/display/intel_display_power_map.c    | 19 +++++++++++++++++--
 1 file changed, 17 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
index 77268802b55e..ca73e4084354 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
@@ -1748,6 +1748,16 @@ static void init_power_well_domains(const struct i915_power_well_instance *inst,
 		for_each_power_well_instance_in_desc_list((_descs)->list, (_descs)->count, \
 							  (_desc), (_inst))
 
+static bool
+is_power_well_available(struct intel_display *display, const struct i915_power_well_desc *desc)
+{
+	if (desc->irq_pipe_mask &&
+	    !(desc->irq_pipe_mask & DISPLAY_RUNTIME_INFO(display)->pipe_mask))
+		return false;
+
+	return true;
+}
+
 static int
 __set_power_wells(struct i915_power_domains *power_domains,
 		  const struct i915_power_well_desc_list *power_well_descs,
@@ -1763,8 +1773,10 @@ __set_power_wells(struct i915_power_domains *power_domains,
 	int power_well_count = 0;
 	int plt_idx = 0;
 
-	for_each_power_well_instance(power_well_descs, power_well_descs_sz, desc_list, desc, inst)
-		power_well_count++;
+	for_each_power_well_instance(power_well_descs, power_well_descs_sz, desc_list, desc, inst) {
+		if (is_power_well_available(display, desc))
+			power_well_count++;
+	}
 
 	power_domains->power_well_count = power_well_count;
 	power_domains->power_wells =
@@ -1778,6 +1790,9 @@ __set_power_wells(struct i915_power_domains *power_domains,
 		struct i915_power_well *pw = &power_domains->power_wells[plt_idx];
 		enum i915_power_well_id id = inst->id;
 
+		if (!is_power_well_available(display, desc))
+			continue;
+
 		pw->desc = desc;
 		drm_WARN_ON(display->drm,
 			    overflows_type(inst - desc->instances->list, pw->instance_idx));
-- 
2.25.1

