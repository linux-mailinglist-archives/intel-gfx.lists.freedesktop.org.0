Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AFB5754E5EE
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jun 2022 17:23:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC8B610E2DA;
	Thu, 16 Jun 2022 15:23:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1B9310E784
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jun 2022 15:23:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655392988; x=1686928988;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=py8l564JVZtoL3FVjILa+yhh0wAa2MLCAS56BoDOMzc=;
 b=WZq/Y4xZp1gl1AFDqPBsPnL4uial41pNWnghP22ogrGxzBYhcSjS3nBL
 h0SLOkAmRGosiSf05jGgDCkdM51SatGeNrlOLGS8MSf7satPJ8Dd+BnTo
 GEaeu8Hpu1xVNW2crhHAdOg4lDt5dLKywqZ5LMoDBt0zwAS7+KfPGxvE4
 68IDuGrGRLhApdJnKwe6PsSpVnZ1jDwk5eHgDR4svLHxyFvE6kf04Co1I
 c3VJKm6Le4FwS7+/A0DwkaKxcoyic3omQPHuYJ+TADPlviHc6uBs2u6Me
 PENasYBvOYaU4wpyOi+rhVhPMukZqUL4lJUsETblSU62/zkLaM5cdxQCX w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10379"; a="259734241"
X-IronPort-AV: E=Sophos;i="5.92,305,1650956400"; d="scan'208";a="259734241"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 08:23:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,305,1650956400"; d="scan'208";a="687862249"
Received: from priyanka-nuc7i7bnh.iind.intel.com ([10.145.162.209])
 by fmsmga002.fm.intel.com with ESMTP; 16 Jun 2022 08:23:05 -0700
From: priyanka.dandamudi@intel.com
To: priyanka.dandamudi@intel.com, matthew.auld@intel.com,
 intel-gfx@lists.freedesktop.org
Date: Thu, 16 Jun 2022 20:42:47 +0530
Message-Id: <20220616151247.1192063-3-priyanka.dandamudi@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220616151247.1192063-1-priyanka.dandamudi@intel.com>
References: <20220616151247.1192063-1-priyanka.dandamudi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Add lmem_bar_size modparam
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

From: Priyanka Dandamudi <priyanka.dandamudi@intel.com>

For testing purposes, support forcing the lmem_bar_size through a new
modparam. In CI we only have a limited number of configurations for DG2,
but we still need to be reasonably sure we get a usable device (also
verifying we report the correct values for things like
probed_cpu_visible_size etc) with all the potential lmem_bar sizes that
we might expect see in the wild.

v2: Update commit message and a minor modification.(Matt)

Cc: Matthew Auld <matthew.auld@intel.com>
Signed-off-by: Priyanka Dandamudi <priyanka.dandamudi@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_region_lmem.c |  4 +++
 drivers/gpu/drm/i915/i915_driver.c          | 28 ++++++++++++++++++++-
 drivers/gpu/drm/i915/i915_params.c          |  2 ++
 drivers/gpu/drm/i915/i915_params.h          |  1 +
 4 files changed, 34 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
index e9c12e0d6f59..4614c30f878f 100644
--- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
+++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
@@ -111,6 +111,10 @@ static struct intel_memory_region *setup_lmem(struct intel_gt *gt)
 		flat_ccs_base = intel_gt_read_register(gt, XEHPSDV_FLAT_CCS_BASE_ADDR);
 		flat_ccs_base = (flat_ccs_base >> XEHPSDV_CCS_BASE_SHIFT) * SZ_64K;
 
+		/* XXX: Remove this once we have small-bar uapi bits */
+		if (i915->params.lmem_bar_size > 0)
+			lmem_size = pci_resource_len(pdev, 2);
+
 		/* FIXME: Remove this when we have small-bar enabled */
 		if (pci_resource_len(pdev, 2) < lmem_size) {
 			drm_err(&i915->drm, "System requires small-BAR support, which is currently unsupported on this kernel\n");
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 4bdb471cb2e2..b2763b032012 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -362,8 +362,34 @@ static void i915_resize_lmem_bar(struct drm_i915_private *i915)
 	u32 pci_cmd;
 	int i;
 
-	if (!rebar_size)
+	if (i915->params.lmem_bar_size > 0) {
+		u32 lmem_bar_size;
+		u32 set_bit;
+		u32 rebar;
+		u32 msb;
+		int k;
+
+		lmem_bar_size = i915->params.lmem_bar_size;
+		rebar = pci_rebar_get_possible_sizes(pdev, LMEM_BAR_NUM);
+		msb = __fls(rebar);
+
+		for (k = msb; k >= 0; k--) {
+			set_bit = (1 << k);
+
+			if (set_bit & rebar) {
+				if (set_bit == lmem_bar_size) {
+					rebar_size = 1ULL << (__fls(lmem_bar_size) +
+							BAR_SIZE_SHIFT);
+
+					if (rebar_size == pci_resource_len(pdev, LMEM_BAR_NUM))
+						return;
+					break;
+				}
+			}
+		}
+	} else if (!rebar_size) {
 		return;
+	}
 
 	/* Find out if root bus contains 64bit memory addressing */
 	while (root->parent)
diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
index 701fbc98afa0..6fc475a5db61 100644
--- a/drivers/gpu/drm/i915/i915_params.c
+++ b/drivers/gpu/drm/i915/i915_params.c
@@ -204,6 +204,8 @@ i915_param_named_unsafe(request_timeout_ms, uint, 0600,
 
 i915_param_named_unsafe(lmem_size, uint, 0400,
 			"Set the lmem size(in MiB) for each region. (default: 0, all memory)");
+i915_param_named_unsafe(lmem_bar_size, uint, 0400,
+			"Set the lmem bar size(in MiB).");
 
 static __always_inline void _print_param(struct drm_printer *p,
 					 const char *name,
diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
index b5e7ea45d191..2733cb6cfe09 100644
--- a/drivers/gpu/drm/i915/i915_params.h
+++ b/drivers/gpu/drm/i915/i915_params.h
@@ -74,6 +74,7 @@ struct drm_printer;
 	param(char *, force_probe, CONFIG_DRM_I915_FORCE_PROBE, 0400) \
 	param(unsigned int, request_timeout_ms, CONFIG_DRM_I915_REQUEST_TIMEOUT, CONFIG_DRM_I915_REQUEST_TIMEOUT ? 0600 : 0) \
 	param(unsigned int, lmem_size, 0, 0400) \
+	param(unsigned int, lmem_bar_size, 0, 0400) \
 	/* leave bools at the end to not create holes */ \
 	param(bool, enable_hangcheck, true, 0600) \
 	param(bool, load_detect_test, false, 0600) \
-- 
2.25.1

