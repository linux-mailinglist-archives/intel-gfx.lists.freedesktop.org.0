Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BCA021B486
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 14:00:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA0ED6EC18;
	Fri, 10 Jul 2020 12:00:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED1746EC03
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2020 12:00:43 +0000 (UTC)
IronPort-SDR: xdHo5oGkG73eLqK00NBk16d00VryMKgej4V5SzAaKfacFMxi9koWGbwmBS7RFChDLuggqRZIYZ
 JtvJOUPsIyZg==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="209716684"
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="209716684"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 05:00:43 -0700
IronPort-SDR: 1+qsS+B8LQatNJWsHV6LFTXO66TXMAKH8acFeP6wspf8hWXkQNsP7d7TlvDZqU9sMFTG4En+xV
 FIuF/wbHrgZw==
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="458257975"
Received: from nmartino-mobl1.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.255.207.224])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 05:00:40 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jul 2020 12:57:36 +0100
Message-Id: <20200710115757.290984-40-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200710115757.290984-1-matthew.auld@intel.com>
References: <20200710115757.290984-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 39/60] drm/i915: setup the LMEM region
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
Cc: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hook up the LMEM region. Addresses will start from zero, and for CPU
access we get LMEM_BAR which is just a 1:1 mapping of said region.

Based on a patch from Michel Thierry.

Cc: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h            |  3 ++
 drivers/gpu/drm/i915/intel_memory_region.c | 11 ++++++-
 drivers/gpu/drm/i915/intel_region_lmem.c   | 38 ++++++++++++++++++++++
 drivers/gpu/drm/i915/intel_region_lmem.h   |  2 ++
 4 files changed, 53 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 7191ebd7c13f..cebcd702d968 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -12035,6 +12035,9 @@ enum skl_power_gate {
 
 #define GEN12_GLOBAL_MOCS(i)	_MMIO(0x4000 + (i) * 4) /* Global MOCS regs */
 
+#define GEN12_LMEM_CFG_ADDR		_MMIO(0xcf58)
+#define   LMEM_ENABLE			(1 << 31)
+
 /* gamt regs */
 #define GEN8_L3_LRA_1_GPGPU _MMIO(0x4dd4)
 #define   GEN8_L3_LRA_1_GPGPU_DEFAULT_VALUE_BDW  0x67F1427F /* max/min for LRA1/2 */
diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
index 609a65935c98..1e9f52feec59 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/intel_memory_region.c
@@ -297,7 +297,16 @@ int intel_memory_regions_hw_probe(struct drm_i915_private *i915)
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
 
diff --git a/drivers/gpu/drm/i915/intel_region_lmem.c b/drivers/gpu/drm/i915/intel_region_lmem.c
index 40d8f1a95df6..e98582c76de1 100644
--- a/drivers/gpu/drm/i915/intel_region_lmem.c
+++ b/drivers/gpu/drm/i915/intel_region_lmem.c
@@ -136,3 +136,41 @@ intel_setup_fake_lmem(struct drm_i915_private *i915)
 
 	return mem;
 }
+
+static struct intel_memory_region *
+setup_lmem(struct drm_i915_private *dev_priv)
+{
+	struct pci_dev *pdev = dev_priv->drm.pdev;
+	struct intel_memory_region *mem;
+	resource_size_t io_start;
+	resource_size_t size;
+
+	/* Enables Local Memory functionality in GAM */
+	I915_WRITE(GEN12_LMEM_CFG_ADDR, I915_READ(GEN12_LMEM_CFG_ADDR) | LMEM_ENABLE);
+
+	io_start = pci_resource_start(pdev, 2);
+	size = pci_resource_len(pdev, 2);
+
+	mem = intel_memory_region_create(dev_priv,
+					 0,
+					 size,
+					 I915_GTT_PAGE_SIZE_4K,
+					 io_start,
+					 &intel_region_lmem_ops);
+	if (!IS_ERR(mem)) {
+		DRM_INFO("Intel graphics LMEM: %pR\n", &mem->region);
+		DRM_INFO("Intel graphics LMEM IO start: %llx\n",
+			 (u64)mem->io_start);
+		DRM_INFO("Intel graphics LMEM size: %llx\n",
+			 (u64)size);
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
+
diff --git a/drivers/gpu/drm/i915/intel_region_lmem.h b/drivers/gpu/drm/i915/intel_region_lmem.h
index 213def7c7b8a..054e729035c1 100644
--- a/drivers/gpu/drm/i915/intel_region_lmem.h
+++ b/drivers/gpu/drm/i915/intel_region_lmem.h
@@ -10,6 +10,8 @@ struct drm_i915_private;
 
 extern const struct intel_memory_region_ops intel_region_lmem_ops;
 
+struct intel_memory_region *i915_gem_setup_lmem(struct drm_i915_private *i915);
+
 struct intel_memory_region *
 intel_setup_fake_lmem(struct drm_i915_private *i915);
 
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
