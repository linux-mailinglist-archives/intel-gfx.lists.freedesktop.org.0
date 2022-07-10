Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DDDA56D08E
	for <lists+intel-gfx@lfdr.de>; Sun, 10 Jul 2022 19:40:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D72ED18A109;
	Sun, 10 Jul 2022 17:40:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A865918A109
 for <intel-gfx@lists.freedesktop.org>; Sun, 10 Jul 2022 17:40:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657474837; x=1689010837;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ULZUa8bIUC3WYPMbicN4Rh6ymyi0lhg6OE9YwGvd/h0=;
 b=Qjs9IMyOBlqActYE2Sqf6GuBen1fiH11qor91xuBkQgDS2aW8nBMqxfv
 5SfcWwEZp7PwmxPx/b3n8YqFtbGw6HNi71NOsbLtggv3tx+TO+kT3Z9WU
 BTsrPmsZ7xKjtXsyjYKjMlddmzc7cCfHWIMv0cbl0OICYpa4kwcUTm0EI
 csZPrSarJpv+sNbexi5mYVvf1HZ2yxb/70dKRWby/IPf6N3ofUfhmovrc
 47HlGAQONjHbpRyCJIwCrZIFdw6i8ISKOeMaelU0+KyyWsWZqRqDPodur
 ec54iGOZtcd5KUp1ou08SPWt+kTbgIx6mpijvggsEloFpY/W4TXmrNcfr Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10404"; a="282078847"
X-IronPort-AV: E=Sophos;i="5.92,261,1650956400"; d="scan'208";a="282078847"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2022 10:40:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,261,1650956400"; d="scan'208";a="662304992"
Received: from priyanka-nuc7i7bnh.iind.intel.com ([10.145.162.209])
 by fmsmga004.fm.intel.com with ESMTP; 10 Jul 2022 10:40:35 -0700
From: priyanka.dandamudi@intel.com
To: priyanka.dandamudi@intel.com, matthew.auld@intel.com, nirmoy.das@intel.com,
 intel-gfx@lists.freedesktop.org
Date: Sun, 10 Jul 2022 22:59:25 +0530
Message-Id: <20220710172925.2465158-3-priyanka.dandamudi@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220710172925.2465158-1-priyanka.dandamudi@intel.com>
References: <20220710172925.2465158-1-priyanka.dandamudi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 2/2] drm/i915: Add lmem_bar_size modparam
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

v3: Optimised lmem bar size code and modified code to resize
bar maximum upto lmem_size instead of maximum supported size.(Nirmoy)

v4: Optimised lmem bar size code.(Nirmoy)

Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Nirmoy Das <nirmoy.das@intel.com>

Signed-off-by: Priyanka Dandamudi <priyanka.dandamudi@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_region_lmem.c | 33 +++++++++++++++++----
 drivers/gpu/drm/i915/i915_params.c          |  2 ++
 drivers/gpu/drm/i915/i915_params.h          |  1 +
 3 files changed, 31 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
index 129e5d8b080d..22dbf986217c 100644
--- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
+++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
@@ -51,15 +51,38 @@ static void i915_resize_lmem_bar(struct drm_i915_private *i915, resource_size_t
 	struct pci_bus *root = pdev->bus;
 	struct resource *root_res;
 	resource_size_t rebar_size;
+	resource_size_t current_size;
 	u32 pci_cmd;
 	int i;
 
-	rebar_size = roundup_pow_of_two(pci_resource_len(pdev, LMEM_BAR_NUM));
+	current_size = roundup_pow_of_two(pci_resource_len(pdev, LMEM_BAR_NUM));
 
-	if (rebar_size != roundup_pow_of_two(lmem_size))
-		rebar_size = lmem_size;
-	else
-		return;
+	if (i915->params.lmem_bar_size) {
+		u32 bar_sizes;
+
+		rebar_size = i915->params.lmem_bar_size *
+			(resource_size_t)SZ_1M;
+		bar_sizes = pci_rebar_get_possible_sizes(pdev,
+							 LMEM_BAR_NUM);
+
+		if (rebar_size == current_size)
+			return;
+
+		if (!(bar_sizes & BIT(pci_rebar_bytes_to_size(rebar_size))) ||
+		    rebar_size >= roundup_pow_of_two(lmem_size)) {
+				rebar_size = lmem_size;
+
+				drm_info(&i915->drm, "Given bar size is not within supported size,"
+						     "setting it to default: %llu\n", lmem_size);
+		}
+	} else {
+		rebar_size = current_size;
+
+		if (rebar_size != roundup_pow_of_two(lmem_size))
+			rebar_size = lmem_size;
+		else
+			return;
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
2.27.0

