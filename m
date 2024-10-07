Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3600A992BA8
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2024 14:25:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75B4D10E33B;
	Mon,  7 Oct 2024 12:25:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YhtR4CiO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A571F10E33B
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Oct 2024 12:25:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728303945; x=1759839945;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=L7H4n0b3lZXrRU2ZsgUJ+ua5dtufnQxulabSkwFA84c=;
 b=YhtR4CiOuVVz4DT3f0ehUTAESYufk95Hsde9QnZwcylFNU0AyCCB7ZnA
 p6ETriyOYkm41sEYKW23W5HjLD/o+3Y1qgYLZX2/unFGD8orxIsi81Sh/
 6Wl4U1vVke+ZREJNaMbSsUNv77P6BoC0zJkvSK2BUBrbQkVdSK5ErIBxv
 SpJEepI/TSxIwrd4S8hCIn/wKKaBaoV76y7frJx7b1JqkGaUubmS0VoLP
 eIl2MySx5U8oG50Trk1xH1xbKTnVDQyrCDiMtEyMjS9pDE3Me8OWF1Vbr
 D5YN10RjDRxQj8keVnV4fHOX0Y4WOdIn2TDv4l8gCFLHzRdLxAD4VpS5/ g==;
X-CSE-ConnectionGUID: 5Ak2KJ9XSDGf6HUXsy8iug==
X-CSE-MsgGUID: aSVaMjUJTYKlPlYahvHhXg==
X-IronPort-AV: E=McAfee;i="6700,10204,11217"; a="52853516"
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="52853516"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2024 05:25:45 -0700
X-CSE-ConnectionGUID: 5JSBrprbRYCWHf5wWLWV+A==
X-CSE-MsgGUID: gwa7r5nLQdqjMvVU3nTzpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="79445184"
Received: from jraag-nuc8i7beh.iind.intel.com ([10.145.169.79])
 by fmviesa003.fm.intel.com with ESMTP; 07 Oct 2024 05:25:41 -0700
From: Raag Jadav <raag.jadav@intel.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, matthew.d.roper@intel.com,
 andi.shyti@linux.intel.com
Cc: intel-gfx@lists.freedesktop.org, anshuman.gupta@intel.com,
 badal.nilawar@intel.com, riana.tauro@intel.com,
 Raag Jadav <raag.jadav@intel.com>
Subject: [PATCH v1] drm/i915/dg2: enable G8 with a workaround
Date: Mon,  7 Oct 2024 17:54:24 +0530
Message-Id: <20241007122424.642796-1-raag.jadav@intel.com>
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

Host BIOS doesn't enable G8 power mode due to an issue on DG2, so we
enable it from kernel with Wa_14022698589. Currently it is enabled for
all DG2 devices with the exception of a few, for which, it is enabled
only when paired with whitelisted CPU models.

Signed-off-by: Raag Jadav <raag.jadav@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 43 +++++++++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h             |  1 +
 2 files changed, 44 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index e539a656cfc3..b2db51377488 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -14,11 +14,30 @@
 #include "intel_gt_mcr.h"
 #include "intel_gt_print.h"
 #include "intel_gt_regs.h"
+#include "intel_pcode.h"
 #include "intel_ring.h"
 #include "intel_workarounds.h"
 
 #include "display/intel_fbc_regs.h"
 
+#ifdef CONFIG_X86
+#include <asm/cpu_device_id.h>
+#include <asm/intel-family.h>
+
+static const struct x86_cpu_id g8_cpu_ids[] = {
+	X86_MATCH_VFM(INTEL_ALDERLAKE,		NULL),
+	X86_MATCH_VFM(INTEL_ALDERLAKE_L,	NULL),
+	X86_MATCH_VFM(INTEL_COMETLAKE,		NULL),
+	X86_MATCH_VFM(INTEL_KABYLAKE,		NULL),
+	X86_MATCH_VFM(INTEL_KABYLAKE_L,		NULL),
+	X86_MATCH_VFM(INTEL_RAPTORLAKE,		NULL),
+	X86_MATCH_VFM(INTEL_RAPTORLAKE_P,	NULL),
+	X86_MATCH_VFM(INTEL_RAPTORLAKE_S,	NULL),
+	X86_MATCH_VFM(INTEL_ROCKETLAKE,		NULL),
+	{}
+};
+#endif
+
 /**
  * DOC: Hardware workarounds
  *
@@ -1770,9 +1789,33 @@ static void wa_list_apply(const struct i915_wa_list *wal)
 	intel_gt_mcr_unlock(gt, flags);
 }
 
+#define DG2_G8_WA_RANGE_1		0x56A0 ... 0x56AF
+#define DG2_G8_WA_RANGE_2		0x56B0 ... 0x56B9
+
+/* Wa_14022698589:dg2 */
+static void intel_enable_g8(struct intel_uncore *uncore)
+{
+	if (IS_DG2(uncore->i915)) {
+		switch (INTEL_DEVID(uncore->i915)) {
+		case DG2_G8_WA_RANGE_1:
+		case DG2_G8_WA_RANGE_2:
+#ifdef CONFIG_X86
+			if (!x86_match_cpu(g8_cpu_ids))
+#endif
+				return;
+		}
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

