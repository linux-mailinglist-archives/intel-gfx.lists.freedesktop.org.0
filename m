Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ED237DA178
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Oct 2023 21:51:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A438F10E0EF;
	Fri, 27 Oct 2023 19:50:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2C2A10E0EF
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Oct 2023 19:50:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698436258; x=1729972258;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qp0vLsKuheeQqK4wUOTfV1mvOjAY8viEHzpAiCFhvqQ=;
 b=O0bHaEa1YcsiruI+egJzdY9qcquGvt8T99U67wxflDUTyFNg/XC9/tDf
 q0kjB6c/66TfCF8bh3W9zT/aLk/zt9b+oV21N8PIaDTrLIY/6fRE9OpSU
 0xjbkjSXvzL7pgR+qHVWYkqcntZUGHBeRiqj/XKzk3tVfs3Qmcjkf0Efp
 hlZDfkR60KWtV+FljwZzW4N/sNHSBOfLDTkZcFl1ebWsyB4UrBqWgPKSL
 4gb5fyU8+jEN2YLHk3/AvAk6cwhgz6Ir+0scJR7Z44E+d3K0NhDz/zFM0
 wMbXtXkpC9oqxD4rxjmfsW2oqEAWxZcAYAcK7rz/hdCFJFxAPVs5ISNEN w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10876"; a="638536"
X-IronPort-AV: E=Sophos;i="6.03,257,1694761200"; 
   d="scan'208";a="638536"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2023 12:50:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,257,1694761200"; 
   d="scan'208";a="7314232"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by orviesa001.jf.intel.com with ESMTP; 27 Oct 2023 12:49:32 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 28 Oct 2023 01:20:52 +0530
Message-Id: <20231027195052.3676632-1-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4] drm/i915/mtl: Add Wa_14019821291
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

This workaround is primarily implemented by the BIOS.  However if the
BIOS applies the workaround it will reserve a small piece of our DSM
(which should be at the top, right below the WOPCM); we just need to
keep that region reserved so that nothing else attempts to re-use it.

v2: Declare regs in intel_gt_regs.h (Matt Roper)

v3: Shift WA implementation before calculation of *base (Matt Roper)

v4:
-  Change condition gscpmi base to be fall in DSM range.(Matt Roper)

Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c | 21 +++++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_gt_regs.h    |  3 +++
 2 files changed, 24 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index 1a766d8e7cce..8c88075eeab2 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -386,6 +386,27 @@ static void icl_get_stolen_reserved(struct drm_i915_private *i915,
 
 	drm_dbg(&i915->drm, "GEN6_STOLEN_RESERVED = 0x%016llx\n", reg_val);
 
+	/* Wa_14019821291 */
+	if (MEDIA_VER_FULL(i915) == IP_VER(13, 0)) {
+		/*
+		 * This workaround is primarily implemented by the BIOS.  We
+		 * just need to figure out whether the BIOS has applied the
+		 * workaround (meaning the programmed address falls within
+		 * the DSM) and, if so, reserve that part of the DSM to
+		 * prevent accidental reuse.  The DSM location should be just
+		 * below the WOPCM.
+		 */
+		u64 gscpsmi_base = intel_uncore_read64_2x32(uncore,
+							    MTL_GSCPSMI_BASEADDR_LSB,
+							    MTL_GSCPSMI_BASEADDR_MSB);
+		if (gscpsmi_base >= i915->dsm.stolen.start &&
+		    gscpsmi_base < i915->dsm.stolen.end) {
+			*base = gscpsmi_base;
+			*size = i915->dsm.stolen.end - gscpsmi_base;
+			return;
+		}
+	}
+
 	switch (reg_val & GEN8_STOLEN_RESERVED_SIZE_MASK) {
 	case GEN8_STOLEN_RESERVED_1M:
 		*size = 1024 * 1024;
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index eecd0a87a647..9de41703fae5 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -537,6 +537,9 @@
 #define XEHP_SQCM				MCR_REG(0x8724)
 #define   EN_32B_ACCESS				REG_BIT(30)
 
+#define MTL_GSCPSMI_BASEADDR_LSB		_MMIO(0x880c)
+#define MTL_GSCPSMI_BASEADDR_MSB		_MMIO(0x8810)
+
 #define HSW_IDICR				_MMIO(0x9008)
 #define   IDIHASHMSK(x)				(((x) & 0x3f) << 16)
 
-- 
2.34.1

