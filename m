Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 10A547E2E14
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Nov 2023 21:20:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 339ED10E3F7;
	Mon,  6 Nov 2023 20:20:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D613D10E3F7
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Nov 2023 20:20:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699302017; x=1730838017;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=VbtxDnZAMlJKIwiZE0vlS4BKTaOK9tJN0f8my9FHIwk=;
 b=XpNwkbGeFCGDctPsHSuOYrEJ9TWtOgOUZzcusB7NvUHO3TQEVdV5EgWO
 cuXGpmDkxXl8P1DmPx+2YIIqNB1psKNZmCSejTn51JWs80ZgUFUKp1OHR
 YjaWcscVyGg/aZ7KJ/VPiyIGUnG+6aNi44H/bTLZhi3YdMk/Ae/RW5M7B
 VH4+O8Jp4hzfperl6fo7+t0qxQ/6BI6rEhf4+ZuEjvv3NqjWt6ceIR+ee
 POtV95MTm24KtDVdoGHcG4y735X0hlb7XddeY/b6v/+D4t7BxUBjeWFNg
 U1r2ABP4JZQ+JcMXLThSJDsN+ia89NOC1p/tWFckOMbQ02Ymxe2yCm22R w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="7994957"
X-IronPort-AV: E=Sophos;i="6.03,282,1694761200"; 
   d="scan'208";a="7994957"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 12:20:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,282,1694761200"; d="scan'208";a="10573051"
Received: from elyang-mobl1.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.92.96.190])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 12:20:16 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  6 Nov 2023 17:19:59 -0300
Message-ID: <20231106201959.156943-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/xelpmp: Add Wa_16021867713
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
Cc: Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This workaround applies to all steppings of Xe_LPM+. Implement the KMD
part.

v2:
    - Put the definition of VDBOX_CGCTL3F1C() in the correct sort order.
      (Matt)

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_regs.h |  2 ++
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 14 ++++++++++++++
 2 files changed, 16 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_regs.h b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
index c0c8c12edea1..a8eac59e3779 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
@@ -263,5 +263,7 @@
 #define VDBOX_CGCTL3F18(base)			_MMIO((base) + 0x3f18)
 #define   ALNUNIT_CLKGATE_DIS			REG_BIT(13)
 
+#define VDBOX_CGCTL3F1C(base)			_MMIO((base) + 0x3f1c)
+#define   MFXPIPE_CLKGATE_DIS			REG_BIT(3)
 
 #endif /* __INTEL_ENGINE_REGS__ */
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 12859b8d2092..63205edfea50 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1662,9 +1662,23 @@ xelpg_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 	debug_dump_steering(gt);
 }
 
+static void
+wa_16021867713(struct intel_gt *gt, struct i915_wa_list *wal)
+{
+	struct intel_engine_cs *engine;
+	int id;
+
+	for_each_engine(engine, gt, id)
+		if (engine->class == VIDEO_DECODE_CLASS)
+			wa_write_or(wal, VDBOX_CGCTL3F1C(engine->mmio_base),
+				    MFXPIPE_CLKGATE_DIS);
+}
+
 static void
 xelpmp_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 {
+	wa_16021867713(gt, wal);
+
 	/*
 	 * Wa_14018778641
 	 * Wa_18018781329
-- 
2.42.0

