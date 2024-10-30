Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53FFA9B6608
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 15:35:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A833A10E7A9;
	Wed, 30 Oct 2024 14:35:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BEZEtgEZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D44910E7A9
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2024 14:35:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730298902; x=1761834902;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6mdfcWPqytIQSl1UvX0X7hYdfY6N1+RM2OSHPnZvS20=;
 b=BEZEtgEZ9HMfoXrJ8DJvJ7+RzIaGVDAwyw2C2ENwH+oXyNQPZ4oZt5mY
 vHKIwwWfoF8TlFiQZhuu31FKIZ7X6XSrWxpl2OTM+jHeJhL97XWSVPztt
 6r5Y0CiCcQKn98Bv5GCwZtDDwBLH1oETYrPygOA6CEqgpHTFy8ngzHUSI
 2s+kmYaboCsUEQmD2v1AXijUQ5GkXcRumf5Vd/UN09otzEU40J5YurrRP
 C3uHKdbkfjyvH3/GHJ1D3lZR+WzKfG4FfI4g9tM93/EQ27JzZcbkffv3W
 3u2hSyGTdY4cl3gI1PNaxVqqMob+RcQsjaZut1FIVkpocN235cA3jU0zF Q==;
X-CSE-ConnectionGUID: VN5QHMtTSYa8SSn4Xu0yMQ==
X-CSE-MsgGUID: lFOTQJZgSuCeLek+mi8uJQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11241"; a="55407452"
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="55407452"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 07:35:02 -0700
X-CSE-ConnectionGUID: JAikp6d/SCeZvmMT7LokiA==
X-CSE-MsgGUID: sI5Ll0otRPe38rW9RoMFQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="113180529"
Received: from jraag-nuc8i7beh.iind.intel.com ([10.145.169.79])
 by fmviesa001.fm.intel.com with ESMTP; 30 Oct 2024 07:34:59 -0700
From: Raag Jadav <raag.jadav@intel.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, matthew.d.roper@intel.com,
 andi.shyti@linux.intel.com
Cc: intel-gfx@lists.freedesktop.org, anshuman.gupta@intel.com,
 badal.nilawar@intel.com, riana.tauro@intel.com,
 Raag Jadav <raag.jadav@intel.com>
Subject: [PATCH v3 4/4] drm/i915/dg2: Implement Wa_14022698537
Date: Wed, 30 Oct 2024 20:04:18 +0530
Message-Id: <20241030143418.410406-5-raag.jadav@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241030143418.410406-1-raag.jadav@intel.com>
References: <20241030143418.410406-1-raag.jadav@intel.com>
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
enable it from driver with Wa_14022698537. For now we enable it for
all DG2 devices with the exception of a few, for which, we enable
only when paired with whitelisted CPU models. This works with Native
ASMP and reduces idle power consumption.

$ echo powersave > /sys/module/pcie_aspm/parameters/policy
$ lspci -s 0000:03:00.0 -vvv
LnkCtl: ASPM L1 Enabled; RCB 64 bytes, Disabled- CommClk-

v2: Fix Wa_ID and include it in subject (Badal)
    Rephrase commit message (Jani)
v3: Move workaround to i915_pcode_init() (Badal, Anshuman)
    Re-order macro (Riana)

Signed-off-by: Raag Jadav <raag.jadav@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 15 +++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h    |  1 +
 2 files changed, 16 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 365329ff8a07..59c6124c9bc2 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -93,12 +93,14 @@
 #include "i915_memcpy.h"
 #include "i915_perf.h"
 #include "i915_query.h"
+#include "i915_reg.h"
 #include "i915_suspend.h"
 #include "i915_switcheroo.h"
 #include "i915_sysfs.h"
 #include "i915_utils.h"
 #include "i915_vgpu.h"
 #include "intel_clock_gating.h"
+#include "intel_cpu_info.h"
 #include "intel_gvt.h"
 #include "intel_memory_region.h"
 #include "intel_pci_config.h"
@@ -415,6 +417,18 @@ static int i915_set_dma_info(struct drm_i915_private *i915)
 	return ret;
 }
 
+/* Wa_14022698537:dg2 */
+static void i915_enable_g8(struct drm_i915_private *i915)
+{
+	if (IS_DG2(i915)) {
+		if (IS_DG2_D(i915) && !intel_match_g8_cpu())
+			return;
+
+		snb_pcode_write_p(&i915->uncore, PCODE_POWER_SETUP,
+				  POWER_SETUP_SUBCOMMAND_G8_ENABLE, 0, 0);
+	}
+}
+
 static int i915_pcode_init(struct drm_i915_private *i915)
 {
 	struct intel_gt *gt;
@@ -428,6 +442,7 @@ static int i915_pcode_init(struct drm_i915_private *i915)
 		}
 	}
 
+	i915_enable_g8(i915);
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 89e4381f8baa..d400c77423a5 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3617,6 +3617,7 @@
 #define	    POWER_SETUP_I1_WATTS		REG_BIT(31)
 #define	    POWER_SETUP_I1_SHIFT		6	/* 10.6 fixed point format */
 #define	    POWER_SETUP_I1_DATA_MASK		REG_GENMASK(15, 0)
+#define     POWER_SETUP_SUBCOMMAND_G8_ENABLE	0x6
 #define GEN12_PCODE_READ_SAGV_BLOCK_TIME_US	0x23
 #define   XEHP_PCODE_FREQUENCY_CONFIG		0x6e	/* pvc */
 /* XEHP_PCODE_FREQUENCY_CONFIG sub-commands (param1) */
-- 
2.34.1

