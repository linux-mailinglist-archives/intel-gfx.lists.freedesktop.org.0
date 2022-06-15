Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A21C154C155
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jun 2022 07:53:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5F5C10E8D5;
	Wed, 15 Jun 2022 05:53:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B7E710E8D5
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jun 2022 05:53:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655272406; x=1686808406;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=e7S8srk6m5b7j4gyX1z9DqZPZbEgdBHUdGq7rzLHKw4=;
 b=d+ADGdsuyTlligS75X2NP2eTkPNoz1QctFJLwr8puDo/CbQw67tWwqHW
 ZyAl3RRZ5Yo1+SavyMELnJ0p/n2lKDD6iBogM3ufCsLtNeFKopMEaO2xL
 OUzHJlN2KN1R6hELEMcDL14Sfs/2a+oxPC5aMvWYL6n7E4zfyOaNK8vpo
 sQ7lgi+brCQYum3M8C7UAxdIfmuUFnM4EWfayLVQdL7n8uDbzZDsZyIU5
 6LkpNm6MHhDbXMWdcL2Ysf08JpfyKftYvhzFpCnM0ic9PoVYqlUEAU4Gf
 54W9PYoEOQPIT7a4gA3MYxTo7sDH5DccZn7XlV7D0xBf7aEOvguy0kbpa w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10378"; a="258697506"
X-IronPort-AV: E=Sophos;i="5.91,300,1647327600"; d="scan'208";a="258697506"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2022 22:53:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,300,1647327600"; d="scan'208";a="727212205"
Received: from priyanka-nuc7i7bnh.iind.intel.com ([10.145.162.209])
 by fmsmga001.fm.intel.com with ESMTP; 14 Jun 2022 22:53:24 -0700
From: priyanka.dandamudi@intel.com
To: priyanka.dandamudi@intel.com, matthew.auld@intel.com,
 intel-gfx@lists.freedesktop.org
Date: Wed, 15 Jun 2022 11:13:06 +0530
Message-Id: <20220615054306.1175736-3-priyanka.dandamudi@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220615054306.1175736-1-priyanka.dandamudi@intel.com>
References: <20220615054306.1175736-1-priyanka.dandamudi@intel.com>
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

lmem_bar_size is used to resize lmem bar.
It sets to only one of the supported sizes.
Setting this param will be in MB unit.

Cc: Matthew Auld <matthew.auld@intel.com>
Signed-off-by: Priyanka Dandamudi <priyanka.dandamudi@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_region_lmem.c |  3 +++
 drivers/gpu/drm/i915/i915_driver.c          | 25 ++++++++++++++++++++-
 drivers/gpu/drm/i915/i915_params.c          |  2 ++
 drivers/gpu/drm/i915/i915_params.h          |  1 +
 4 files changed, 30 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
index 119e53f5d9b1..d73d8b2adfa2 100644
--- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
+++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
@@ -132,6 +132,9 @@ static struct intel_memory_region *setup_lmem(struct intel_gt *gt)
 				  mul_u32_u32(i915->params.lmem_size, SZ_1M));
 	}
 
+	if (i915->params.lmem_bar_size > 0)
+		lmem_size = pci_resource_len(pdev, 2);
+
 	io_start = pci_resource_start(pdev, 2);
 	io_size = min(pci_resource_len(pdev, 2), lmem_size);
 	if (!io_size)
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 8d33a6a31675..2f5d7a1f1a7b 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -371,7 +371,30 @@ static void i915_resize_lmem_bar(struct drm_i915_private *i915)
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
+			if (set_bit & rebar)
+				if (set_bit == lmem_bar_size) {
+					rebar_size = 1ULL << (__fls(lmem_bar_size) + BAR_SIZE_SHIFT);
+
+					if (rebar_size == pci_resource_len(pdev, LMEM_BAR_NUM))
+						return;
+					break;
+				}
+		}
+	} else if (!rebar_size)
 		return;
 
 	/* Find out if root bus contains 64bit memory addressing */
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
2.27.0

