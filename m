Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 092014F2070
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Apr 2022 02:12:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15A0D10E116;
	Tue,  5 Apr 2022 00:12:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BBB910E116
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Apr 2022 00:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649117519; x=1680653519;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+KSmCjjA7mwrStReHHkAQbCTS9KeI7Iqb3aSteR9dFU=;
 b=jOY762DdS5w+MinHh5qD1E0Y1of/gRX2IGbBIaFvADuAg6EC51nvlbcH
 MTxe3v6pLY+1kGRGN/5dVEdGfB6IjwILK3hZDP4HB6crRFeFXJAzgV6Sl
 XnVsb336+I/qeEWf5JvCeXSwXsC9uuXgIGJvo6vzoA72CcC9lImoDHvTA
 rHBprffh0wEV/jygo5Tk68tnn9a/03qJdrE/ZoSXfuRfGoFWTutPPoqVr
 2+r/ALth+VFzHkw0V+0xSJUEuyS2JmBvZf56z0vrJ8zA2qJRYyRWTv48B
 ZrsUHpi0whtq3/qSBoYWw6rHmGToKaQNA2hshZLzM6tViMbWnvLCp6RQQ Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10307"; a="323809119"
X-IronPort-AV: E=Sophos;i="5.90,235,1643702400"; d="scan'208";a="323809119"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2022 17:11:52 -0700
X-IronPort-AV: E=Sophos;i="5.90,235,1643702400"; d="scan'208";a="523238666"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2022 17:11:52 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  4 Apr 2022 17:11:49 -0700
Message-Id: <20220405001149.2675226-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/uncore: Warn on previous unclaimed
 accesses
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since gen6 we use FPGA_DBG register to detect unclaimed MMIO registers.
This register is in the display engine IP and can only ever detect
unclaimed accesses to registers in this area. However sometimes there
are reports of this triggering for registers in other areas, which
should not be possible.

Right now we always warn after the read/write of registers going through
unclaimed_reg_debug(). However places using __raw_uncore_* may be
triggering the unclaimed access and those being later accounted to a
different register. Let's warn both before and after the read/write
with a slightly different message, so it's clear if the register
reported in the warning is actually the culprit.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/intel_uncore.c | 29 +++++++++++++++++++++--------
 1 file changed, 21 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index 8b9caaaacc21..df59ec88459e 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -1502,11 +1502,10 @@ ilk_dummy_write(struct intel_uncore *uncore)
 static void
 __unclaimed_reg_debug(struct intel_uncore *uncore,
 		      const i915_reg_t reg,
-		      const bool read,
-		      const bool before)
+		      const bool read)
 {
 	if (drm_WARN(&uncore->i915->drm,
-		     check_for_unclaimed_mmio(uncore) && !before,
+		     check_for_unclaimed_mmio(uncore),
 		     "Unclaimed %s register 0x%x\n",
 		     read ? "read from" : "write to",
 		     i915_mmio_reg_offset(reg)))
@@ -1514,6 +1513,20 @@ __unclaimed_reg_debug(struct intel_uncore *uncore,
 		uncore->i915->params.mmio_debug--;
 }
 
+static void
+__unclaimed_previous_reg_debug(struct intel_uncore *uncore,
+			       const i915_reg_t reg,
+			       const bool read)
+{
+	if (drm_WARN(&uncore->i915->drm,
+		     check_for_unclaimed_mmio(uncore),
+		     "Unclaimed access detected before %s register 0x%x\n",
+		     read ? "read from" : "write to",
+		     i915_mmio_reg_offset(reg)))
+		/* Only report the first N failures */
+		uncore->i915->params.mmio_debug--;
+}
+
 static inline void
 unclaimed_reg_debug(struct intel_uncore *uncore,
 		    const i915_reg_t reg,
@@ -1526,13 +1539,13 @@ unclaimed_reg_debug(struct intel_uncore *uncore,
 	/* interrupts are disabled and re-enabled around uncore->lock usage */
 	lockdep_assert_held(&uncore->lock);
 
-	if (before)
+	if (before) {
 		spin_lock(&uncore->debug->lock);
-
-	__unclaimed_reg_debug(uncore, reg, read, before);
-
-	if (!before)
+		__unclaimed_previous_reg_debug(uncore, reg, read);
+	} else {
+		__unclaimed_reg_debug(uncore, reg, read);
 		spin_unlock(&uncore->debug->lock);
+	}
 }
 
 #define __vgpu_read(x) \
-- 
2.35.1

