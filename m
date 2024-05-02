Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D96238B9A8E
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2024 14:14:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 113A910EA49;
	Thu,  2 May 2024 12:14:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MaO0claT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 584A510EA49
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2024 12:14:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714652070; x=1746188070;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=cDuXSMSgmkGwGyinic5a3tIwhbucTwWdrZneI+CYQj8=;
 b=MaO0claTwcZ63zyEcTr7KQmzX/NFkv+tPqgOb16qjjKBoiyjKYwod04i
 e9/7bbu6LypMe/M1qV6bNFBqhuknAzw1ksqaS/Lgu1xntECR56WD7TfY4
 xmgnrNlQLbySSfS5FJU9dF0H/fnu7nHo0p+JFmmOY65blOTEYMballjcB
 YrJS+HFfgIzYrbmD+Rl2BdSQnX5LWROn7fE2cuNBGL1s5x8wwuHBNAU2v
 cClRjK4Hk/QWMY/QHJsQC+8nVKhWJ6mXnEqGPTzVBa+inVuBfGTI/czLJ
 VcV2yS+wi0AfK7ZbixrqjPcdaKEK/9qP3QaGaCUpSVIgkGGXX4JGL6f8v A==;
X-CSE-ConnectionGUID: AQErbYViTwWHZT9lbYNtsQ==
X-CSE-MsgGUID: NXCcf5sORyezO3K8UPPG5A==
X-IronPort-AV: E=McAfee;i="6600,9927,11061"; a="10344450"
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; d="scan'208";a="10344450"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2024 05:14:30 -0700
X-CSE-ConnectionGUID: o+0l+GW8R6mLgGpHQSep+w==
X-CSE-MsgGUID: zeFBjk/XTuCY4yF0cmJceg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; d="scan'208";a="27108192"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 02 May 2024 05:14:29 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 02 May 2024 15:14:26 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/3] drm/i915: Pass the region ID rather than a bitmask to
 HAS_REGION()
Date: Thu,  2 May 2024 15:14:22 +0300
Message-ID: <20240502121423.1002-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240502121423.1002-1-ville.syrjala@linux.intel.com>
References: <20240502121423.1002-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The name 'HAS_REGION()' suggests we are checking for a single
region, so seem more sensible to pass in the region ID rather
than a bitmask.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.c         | 2 +-
 drivers/gpu/drm/i915/i915_drv.h            | 4 ++--
 drivers/gpu/drm/i915/intel_memory_region.c | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 5a7ecf823ae6..626b166e67ef 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -105,7 +105,7 @@ static int intel_gt_probe_lmem(struct intel_gt *gt)
 
 	intel_memory_region_set_name(mem, "local%u", mem->instance);
 
-	GEM_BUG_ON(!HAS_REGION(i915, BIT(id)));
+	GEM_BUG_ON(!HAS_REGION(i915, id));
 	GEM_BUG_ON(i915->mm.regions[id]);
 	i915->mm.regions[id] = mem;
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index ee0d7d5f135d..5cae1fe42c2a 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -715,8 +715,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
  */
 #define HAS_64K_PAGES(i915) (INTEL_INFO(i915)->has_64k_pages)
 
-#define HAS_REGION(i915, i) (INTEL_INFO(i915)->memory_regions & (i))
-#define HAS_LMEM(i915) HAS_REGION(i915, REGION_LMEM)
+#define HAS_REGION(i915, id) (INTEL_INFO(i915)->memory_regions & BIT(id))
+#define HAS_LMEM(i915) HAS_REGION(i915, INTEL_REGION_LMEM_0)
 
 #define HAS_EXTRA_GT_LIST(i915)   (INTEL_INFO(i915)->extra_gt_list)
 
diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
index 52d998e5c21a..172dfa7c3588 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/intel_memory_region.c
@@ -332,7 +332,7 @@ int intel_memory_regions_hw_probe(struct drm_i915_private *i915)
 		struct intel_memory_region *mem = ERR_PTR(-ENODEV);
 		u16 type, instance;
 
-		if (!HAS_REGION(i915, BIT(i)))
+		if (!HAS_REGION(i915, i))
 			continue;
 
 		type = intel_region_map[i].class;
-- 
2.43.2

