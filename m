Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D4DC330394B
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jan 2021 10:46:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C48096E416;
	Tue, 26 Jan 2021 09:46:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA1F16E135
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Jan 2021 09:46:40 +0000 (UTC)
IronPort-SDR: 4ogDv8XcjFIE0pjw508QI3SA+7jNv+xxn67filqJ5w/d0vuppEhyBglK0TTu8Wzgse3tQKargu
 /6voUFplOelw==
X-IronPort-AV: E=McAfee;i="6000,8403,9875"; a="159651562"
X-IronPort-AV: E=Sophos;i="5.79,375,1602572400"; d="scan'208";a="159651562"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 01:46:38 -0800
IronPort-SDR: ddSOIgLrT3Q8ZfDlyhOQKMLO87s96co3vgundlFgYaPb27Y+a3+0qqYFiR7Pybp0GEKCSH9ZSK
 W4aeRviMcl9Q==
X-IronPort-AV: E=Sophos;i="5.79,375,1602572400"; d="scan'208";a="387766428"
Received: from shogg-mobl.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.19.250])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 01:46:36 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Jan 2021 09:46:06 +0000
Message-Id: <20210126094612.163290-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/7] drm/i915: setup the LMEM region
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hook up the LMEM region. Addresses will start from zero, and for CPU
access we get LMEM_BAR which is just a 1:1 mapping of said region.

Based on a patch from Michel Thierry.

v2 by Jani:
- use intel_uncore_read/intel_uncore_write
- remove trailing blank line

v3: s/drm_info/drm_dbg for info which in non-pertinent for the user

Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_region_lmem.c | 37 +++++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_region_lmem.h |  2 ++
 drivers/gpu/drm/i915/i915_reg.h             |  3 ++
 drivers/gpu/drm/i915/intel_memory_region.c  | 11 +++++-
 4 files changed, 52 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
index 28a1d5e1fb92..bdd38efe0811 100644
--- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
+++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
@@ -136,3 +136,40 @@ intel_setup_fake_lmem(struct drm_i915_private *i915)
 
 	return mem;
 }
+
+static struct intel_memory_region *
+setup_lmem(struct drm_i915_private *i915)
+{
+	struct pci_dev *pdev = i915->drm.pdev;
+	struct intel_memory_region *mem;
+	resource_size_t io_start;
+	resource_size_t size;
+
+	/* Enables Local Memory functionality in GAM */
+	intel_uncore_write(&i915->uncore, GEN12_LMEM_CFG_ADDR,
+			   intel_uncore_read(&i915->uncore, GEN12_LMEM_CFG_ADDR) | LMEM_ENABLE);
+
+	io_start = pci_resource_start(pdev, 2);
+	size = pci_resource_len(pdev, 2);
+
+	mem = intel_memory_region_create(i915,
+					 0,
+					 size,
+					 I915_GTT_PAGE_SIZE_4K,
+					 io_start,
+					 &intel_region_lmem_ops);
+	if (!IS_ERR(mem)) {
+		drm_dbg(&i915->drm, "Intel graphics LMEM: %pR\n", &mem->region);
+		drm_dbg(&i915->drm, "Intel graphics LMEM IO start: %pa\n",
+			 &mem->io_start);
+		drm_info(&i915->drm, "Intel graphics LMEM size: %pa\n", &size);
+	}
+
+	return mem;
+}
+
+struct intel_memory_region *
+i915_gem_setup_lmem(struct drm_i915_private *i915)
+{
+	return setup_lmem(i915);
+}
diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.h b/drivers/gpu/drm/i915/gt/intel_region_lmem.h
index 8ea43e538dab..b32222bd493c 100644
--- a/drivers/gpu/drm/i915/gt/intel_region_lmem.h
+++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.h
@@ -8,6 +8,8 @@
 
 struct drm_i915_private;
 
+struct intel_memory_region *i915_gem_setup_lmem(struct drm_i915_private *i915);
+
 struct intel_memory_region *
 intel_setup_fake_lmem(struct drm_i915_private *i915);
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index e7e41a3c467e..28001b5a3cb5 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -12111,6 +12111,9 @@ enum skl_power_gate {
 
 #define GEN12_GLOBAL_MOCS(i)	_MMIO(0x4000 + (i) * 4) /* Global MOCS regs */
 
+#define GEN12_LMEM_CFG_ADDR		_MMIO(0xcf58)
+#define   LMEM_ENABLE			(1 << 31)
+
 /* gamt regs */
 #define GEN8_L3_LRA_1_GPGPU _MMIO(0x4dd4)
 #define   GEN8_L3_LRA_1_GPGPU_DEFAULT_VALUE_BDW  0x67F1427F /* max/min for LRA1/2 */
diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
index 1bfcdd89b241..9ce4a81c48b1 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/intel_memory_region.c
@@ -259,7 +259,16 @@ int intel_memory_regions_hw_probe(struct drm_i915_private *i915)
 			mem = i915_gem_stolen_setup(i915);
 			break;
 		case INTEL_MEMORY_LOCAL:
-			mem = intel_setup_fake_lmem(i915);
+#if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
+			if (IS_ENABLED(CONFIG_DRM_I915_UNSTABLE_FAKE_LMEM)) {
+				if (INTEL_GEN(i915) >= 9 && i915_selftest.live < 0 &&
+				    i915->params.fake_lmem_start)
+					mem = intel_setup_fake_lmem(i915);
+			}
+#endif
+
+			if (IS_ERR(mem))
+				mem = i915_gem_setup_lmem(i915);
 			break;
 		}
 
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
