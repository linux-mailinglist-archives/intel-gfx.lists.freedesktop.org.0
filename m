Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A51599A172
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2024 12:34:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4071F10EAB2;
	Fri, 11 Oct 2024 10:34:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Rh3rz2E1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A2EC10EAB2
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2024 10:34:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728642852; x=1760178852;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RHuPy1XFzq+aHYz9w1R1x2SAacRrvE4130JQZ2Snnnw=;
 b=Rh3rz2E1YOdbGRg2XIFV47wO4krmrHrIRYDl5Q5QvhQp7Ty+ztR8/eQO
 7KWaqqz+wwvTH0Ei3NlUNYoT2XtPaTqbm9yggTkqxx02ARA2FN7tpleua
 DKo0HL0BTOvJ296hx28T6uHSghD6xXvQFXPTXaVhCgPERfjk85rI8NDQv
 HulxeOipWtnM1jP5h7bl+yM+/uoTGSUcWy+x+gQ+U6jnj4reqw4A+wdDH
 VjVF28VciMsFjjQO+KIo7L/gHp2XFC47MPA6ZJPgUPFvgJM5XQy3lkAvj
 hEN0j/dcHOKHy1k105Kg6HSnYofIYNuMHyc0kgGfsWINdcjLUaOi75Le9 Q==;
X-CSE-ConnectionGUID: 1tPHjM9yTjqKfenesvVVCA==
X-CSE-MsgGUID: ygpNL94FSd2NBiD5l0FAcA==
X-IronPort-AV: E=McAfee;i="6700,10204,11221"; a="38619609"
X-IronPort-AV: E=Sophos;i="6.11,195,1725346800"; d="scan'208";a="38619609"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2024 03:34:12 -0700
X-CSE-ConnectionGUID: fgtQjqv1SlqVv7IlaPQ+Mw==
X-CSE-MsgGUID: cL74FHLlRcisW1LI+kzz4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,195,1725346800"; d="scan'208";a="77341130"
Received: from jraag-nuc8i7beh.iind.intel.com ([10.145.169.79])
 by orviesa007.jf.intel.com with ESMTP; 11 Oct 2024 03:34:10 -0700
From: Raag Jadav <raag.jadav@intel.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, matthew.d.roper@intel.com,
 andi.shyti@linux.intel.com
Cc: intel-gfx@lists.freedesktop.org, anshuman.gupta@intel.com,
 badal.nilawar@intel.com, riana.tauro@intel.com,
 Raag Jadav <raag.jadav@intel.com>
Subject: [PATCH v2 4/4] drm/i915/dg2: Implement Wa_14022698537
Date: Fri, 11 Oct 2024 16:02:50 +0530
Message-Id: <20241011103250.1035316-5-raag.jadav@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241011103250.1035316-1-raag.jadav@intel.com>
References: <20241011103250.1035316-1-raag.jadav@intel.com>
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

G8 power state entry is disabled due to a limitation on DG2, so we
enable it from driver with Wa_14022698537. Fow now we enable it for
all DG2 devices with the exception of a few, for which, we enable
only when paired with whitelisted CPU models.

v2: Fix Wa_ID and include it in subject (Badal)
    Rephrase commit message (Jani)

Signed-off-by: Raag Jadav <raag.jadav@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 18 ++++++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h             |  1 +
 2 files changed, 19 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index e539a656cfc3..bcd7630c1631 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -14,6 +14,7 @@
 #include "intel_gt_mcr.h"
 #include "intel_gt_print.h"
 #include "intel_gt_regs.h"
+#include "intel_pcode.h"
 #include "intel_ring.h"
 #include "intel_workarounds.h"
 
@@ -1770,9 +1771,26 @@ static void wa_list_apply(const struct i915_wa_list *wal)
 	intel_gt_mcr_unlock(gt, flags);
 }
 
+/* Wa_14022698537:dg2 */
+static void intel_enable_g8(struct intel_uncore *uncore)
+{
+	struct drm_i915_private *i915 = uncore->i915;
+
+	if (IS_DG2(i915)) {
+		if (IS_DG2_WA(i915) && !intel_match_wa_cpu())
+			return;
+
+		snb_pcode_write_p(uncore, PCODE_POWER_SETUP,
+				  POWER_SETUP_SUBCOMMAND_G8_ENABLE, 0, 0);
+	}
+}
+
 void intel_gt_apply_workarounds(struct intel_gt *gt)
 {
 	wa_list_apply(&gt->wa_list);
+
+	/* Special case for pcode mailbox which can't be on wa_list */
+	intel_enable_g8(gt->uncore);
 }
 
 static bool wa_list_verify(struct intel_gt *gt,
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 41f4350a7c6c..e948b194550c 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3568,6 +3568,7 @@
 #define   PCODE_POWER_SETUP			0x7C
 #define     POWER_SETUP_SUBCOMMAND_READ_I1	0x4
 #define     POWER_SETUP_SUBCOMMAND_WRITE_I1	0x5
+#define     POWER_SETUP_SUBCOMMAND_G8_ENABLE	0x6
 #define	    POWER_SETUP_I1_WATTS		REG_BIT(31)
 #define	    POWER_SETUP_I1_SHIFT		6	/* 10.6 fixed point format */
 #define	    POWER_SETUP_I1_DATA_MASK		REG_GENMASK(15, 0)
-- 
2.34.1

