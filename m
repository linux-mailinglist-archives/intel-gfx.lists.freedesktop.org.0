Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFFCF9ECBAF
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2024 13:03:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99FBE10E607;
	Wed, 11 Dec 2024 12:03:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mU5mmgke";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C82110E07B
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2024 12:03:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733918586; x=1765454586;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yYmfoeBqZrY16PpBVTFRSvbka4L4aZ/VYEePaTp1XAc=;
 b=mU5mmgkeWrB6MbUpeooy/fCSGJIiqam0PNz+VmQ2u978XaJ3g/Ij/HzG
 wtsqdN8qhIRaVR4yln1/1WpB0oqOAedtO9Ho3+PeKVWxzb+72FAs6zaDc
 R/4uyH+mqKKgAnkHyWWwOgKqt88DOveFDu5cyxmosZDcF7W+FekNFSRRS
 vhmPhKJsfRa6WsL7gveaK5noSQotqkjxXyVsKKrEdsTNvyTKaNqEVJ9px
 h7gIONEwSMJrpU5pCe9yogSUN9oAs4yydkVROxadziEaoD98rhAnju2Nd
 7tXkfKsBPlIcrU3EkgBK3VT0ATc9vRzE1+KDHcdwEavQMaEtWBvpPI9Wa A==;
X-CSE-ConnectionGUID: nl/amySPTmOfruJmANrlbw==
X-CSE-MsgGUID: 3xCJpqy5T7OGSLa4DLv1/g==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="33614199"
X-IronPort-AV: E=Sophos;i="6.12,225,1728975600"; d="scan'208";a="33614199"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2024 04:01:50 -0800
X-CSE-ConnectionGUID: a26rnnWIQBuTXZ9w7QDwoQ==
X-CSE-MsgGUID: OMlON2DjS8quO6/c9pHa+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="100837010"
Received: from jraag-nuc8i7beh.iind.intel.com ([10.145.169.79])
 by orviesa003.jf.intel.com with ESMTP; 11 Dec 2024 04:01:46 -0800
From: Raag Jadav <raag.jadav@intel.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, matthew.d.roper@intel.com,
 andi.shyti@linux.intel.com
Cc: intel-gfx@lists.freedesktop.org, anshuman.gupta@intel.com,
 badal.nilawar@intel.com, riana.tauro@intel.com,
 Raag Jadav <raag.jadav@intel.com>, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v4 4/4] drm/i915/dg2: Implement Wa_14022698537
Date: Wed, 11 Dec 2024 17:29:52 +0530
Message-Id: <20241211115952.1659287-5-raag.jadav@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241211115952.1659287-1-raag.jadav@intel.com>
References: <20241211115952.1659287-1-raag.jadav@intel.com>
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
only when paired with whitelisted CPU models. This works with native
ASPM and reduces idle power consumption.

$ echo powersave > /sys/module/pcie_aspm/parameters/policy
$ lspci -s 0000:03:00.0 -vvv
LnkCtl: ASPM L1 Enabled; RCB 64 bytes, Disabled- CommClk-

v2: Fix Wa_ID and include it in subject (Badal)
    Rephrase commit message (Jani)
v3: Move workaround to i915_pcode_init() (Badal, Anshuman)
    Re-order macro (Riana)
v4: Spell fix (Riana)

Signed-off-by: Raag Jadav <raag.jadav@intel.com>
Acked-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Riana Tauro <riana.tauro@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 15 +++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h    |  1 +
 2 files changed, 16 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index eb3fcc9e77a5..2251bedf9e3c 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -95,11 +95,13 @@
 #include "i915_memcpy.h"
 #include "i915_perf.h"
 #include "i915_query.h"
+#include "i915_reg.h"
 #include "i915_switcheroo.h"
 #include "i915_sysfs.h"
 #include "i915_utils.h"
 #include "i915_vgpu.h"
 #include "intel_clock_gating.h"
+#include "intel_cpu_info.h"
 #include "intel_gvt.h"
 #include "intel_memory_region.h"
 #include "intel_pci_config.h"
@@ -424,6 +426,18 @@ static int i915_set_dma_info(struct drm_i915_private *i915)
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
@@ -437,6 +451,7 @@ static int i915_pcode_init(struct drm_i915_private *i915)
 		}
 	}
 
+	i915_enable_g8(i915);
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index f48b5c809cec..8dfa1f01500c 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3578,6 +3578,7 @@
 #define	    POWER_SETUP_I1_WATTS		REG_BIT(31)
 #define	    POWER_SETUP_I1_SHIFT		6	/* 10.6 fixed point format */
 #define	    POWER_SETUP_I1_DATA_MASK		REG_GENMASK(15, 0)
+#define     POWER_SETUP_SUBCOMMAND_G8_ENABLE	0x6
 #define GEN12_PCODE_READ_SAGV_BLOCK_TIME_US	0x23
 #define   XEHP_PCODE_FREQUENCY_CONFIG		0x6e	/* pvc */
 /* XEHP_PCODE_FREQUENCY_CONFIG sub-commands (param1) */
-- 
2.34.1

