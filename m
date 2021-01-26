Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B25F3041CE
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jan 2021 16:13:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 494FE6E471;
	Tue, 26 Jan 2021 15:13:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5680C6E457
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Jan 2021 15:13:09 +0000 (UTC)
IronPort-SDR: y+n419SZ3YnlRXflbF8eT/ckm2O0CXpm0UX7TmI30vha/zYF++6IBrCboYny+5mtLkGO4M065O
 OgTpkD8Jxlnw==
X-IronPort-AV: E=McAfee;i="6000,8403,9876"; a="243995120"
X-IronPort-AV: E=Sophos;i="5.79,375,1602572400"; d="scan'208";a="243995120"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 07:13:09 -0800
IronPort-SDR: nR0G43vOU8A0++8aRM48ghHzoQk/ChwSGANgBzb2QymmeI6Qssgm7E6A1Df2IeIFn/PrLLtwIY
 zBqXX7rPkuww==
X-IronPort-AV: E=Sophos;i="5.79,375,1602572400"; d="scan'208";a="387856682"
Received: from shogg-mobl.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.19.250])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 07:13:07 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Jan 2021 15:12:53 +0000
Message-Id: <20210126151259.253885-2-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210126151259.253885-1-matthew.auld@intel.com>
References: <20210126151259.253885-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 2/8] drm/i915: setup the LMEM region
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
 drivers/gpu/drm/i915/gt/intel_gt.c          | 12 ++++++--
 drivers/gpu/drm/i915/gt/intel_region_lmem.c | 32 +++++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_region_lmem.h |  2 ++
 3 files changed, 44 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 989cd2106b09..78866e766989 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -42,7 +42,7 @@ void intel_gt_init_early(struct intel_gt *gt, struct drm_i915_private *i915)
 int intel_gt_probe_lmem(struct intel_gt *gt)
 {
 	struct drm_i915_private *i915 = gt->i915;
-	struct intel_memory_region *mem;
+	struct intel_memory_region *mem = ERR_PTR(-ENODEV);
 	int id;
 	int err;
 
@@ -50,7 +50,15 @@ int intel_gt_probe_lmem(struct intel_gt *gt)
 	if (!HAS_REGION(i915, id))
 		return 0;
 
-	mem = intel_gt_setup_fake_lmem(gt);
+#if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
+	if (IS_ENABLED(CONFIG_DRM_I915_UNSTABLE_FAKE_LMEM)) {
+		if (INTEL_GEN(i915) >= 9 && i915_selftest.live < 0 &&
+		    i915->params.fake_lmem_start)
+			mem = intel_gt_setup_fake_lmem(gt);
+	}
+#endif
+	if (IS_ERR(mem))
+		mem = intel_gt_setup_lmem(gt);
 	if (IS_ERR(mem)) {
 		err = PTR_ERR(mem);
 		drm_err(&i915->drm,
diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
index ad80ff0b935c..b676dc67dc2a 100644
--- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
+++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
@@ -137,3 +137,35 @@ intel_gt_setup_fake_lmem(struct intel_gt *gt)
 
 	return mem;
 }
+
+static struct intel_memory_region *setup_lmem(struct intel_gt *gt)
+{
+	struct drm_i915_private *i915 = gt->i915;
+	struct pci_dev *pdev = i915->drm.pdev;
+	struct intel_memory_region *mem;
+	resource_size_t io_start;
+	resource_size_t size;
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
+		drm_dbg(&i915->drm, "Local memory: %pR\n", &mem->region);
+		drm_dbg(&i915->drm, "Local memory IO start: %pa\n",
+			&mem->io_start);
+		drm_info(&i915->drm, "Local memory available: %pa\n", &size);
+	}
+
+	return mem;
+}
+
+struct intel_memory_region *intel_gt_setup_lmem(struct intel_gt *gt)
+{
+	return setup_lmem(gt);
+}
diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.h b/drivers/gpu/drm/i915/gt/intel_region_lmem.h
index a4baa0f077a1..062d0542ae34 100644
--- a/drivers/gpu/drm/i915/gt/intel_region_lmem.h
+++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.h
@@ -8,6 +8,8 @@
 
 struct intel_gt;
 
+struct intel_memory_region *intel_gt_setup_lmem(struct intel_gt *gt);
+
 struct intel_memory_region *
 intel_gt_setup_fake_lmem(struct intel_gt *gt);
 
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
