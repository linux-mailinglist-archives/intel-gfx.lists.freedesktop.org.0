Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 680C8305CAE
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 14:14:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 015A26E808;
	Wed, 27 Jan 2021 13:14:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B04C6E7F1
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 13:14:25 +0000 (UTC)
IronPort-SDR: SiCSmHRYp1qJDasKRbwVUyC+96KpS/RRtTjGlRCV2JA31Bvcxb7X1vhtniJ03FTsFmiZ7gSx8p
 EyfVSWDpdu7w==
X-IronPort-AV: E=McAfee;i="6000,8403,9876"; a="180209876"
X-IronPort-AV: E=Sophos;i="5.79,379,1602572400"; d="scan'208";a="180209876"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 05:14:25 -0800
IronPort-SDR: y7+8yTdXZbILWeQKaCYyrtHtXuwOn6wy9yxD8B3PtOBqJ0RN7airTje25Hn+rwB6j4BGwHpJex
 diZ6unJrpNCQ==
X-IronPort-AV: E=Sophos;i="5.79,379,1602572400"; d="scan'208";a="369471238"
Received: from gladkina-mobl.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.19.195])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 05:14:24 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Jan 2021 13:14:11 +0000
Message-Id: <20210127131417.393872-2-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210127131417.393872-1-matthew.auld@intel.com>
References: <20210127131417.393872-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 2/8] drm/i915: setup the LMEM region
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
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_gt.c          |  4 ++-
 drivers/gpu/drm/i915/gt/intel_region_lmem.c | 36 +++++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_region_lmem.h |  2 ++
 3 files changed, 41 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index edbee9991248..9ac67e0534b7 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -46,7 +46,9 @@ int intel_gt_probe_lmem(struct intel_gt *gt)
 	int id;
 	int err;
 
-	mem = intel_gt_setup_fake_lmem(gt);
+	mem = intel_gt_setup_lmem(gt);
+	if (mem == ERR_PTR(-ENODEV))
+		mem = intel_gt_setup_fake_lmem(gt);
 	if (IS_ERR(mem)) {
 		err = PTR_ERR(mem);
 		if (err == -ENODEV)
diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
index a2401e1fe1a3..14c7370e601c 100644
--- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
+++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
@@ -142,3 +142,39 @@ intel_gt_setup_fake_lmem(struct intel_gt *gt)
 
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
+	if (!IS_DGFX(i915))
+		return ERR_PTR(-ENODEV);
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
+	if (IS_ERR(mem))
+		return mem;
+
+	drm_dbg(&i915->drm, "Local memory: %pR\n", &mem->region);
+	drm_dbg(&i915->drm, "Local memory IO start: %pa\n",
+		&mem->io_start);
+	drm_info(&i915->drm, "Local memory available: %pa\n", &size);
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
