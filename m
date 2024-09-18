Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6D4D97BB77
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 13:18:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0488010E25B;
	Wed, 18 Sep 2024 11:18:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JL44lNd+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40C4010E259;
 Wed, 18 Sep 2024 11:18:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726658282; x=1758194282;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NWjS4z1E5kv8Tf7OKdkXsqFnLaUxkD6wt2NVwDq4dks=;
 b=JL44lNd+bo7OfWQahezsKHdZwDNFimDSAvS8dblIxDjoG7XD56cqAv8e
 M7syLtU4PhRnvo0YS7kILbL71nK/r3iLteNaIyXpBjDaE1QGb5wyxzZuF
 tCraToWmcclJxwBRbFgHOw/ZoNkS/TRIv/uciJ+ydj4pO92558mKri3/P
 rERzASAVCro8U5mky+0ooNyE+mR0Sw1YjpM8MetInEOZ++pjGgelKF54y
 QvaMZM4KqdtxoKEKoFHzFuEN02V0C/Rrje6C7I2cuUb59GFZFcFe9RzNh
 4F4R5D8q2TzNNJlzHs4eGacQUvPNusntV/KWRHoYLWjh3Ah7GJfVIPDMO A==;
X-CSE-ConnectionGUID: eKN75tZBTYSJVxnKNvm4TQ==
X-CSE-MsgGUID: +CwI66/PSJyjyhIWeKhJvg==
X-IronPort-AV: E=McAfee;i="6700,10204,11198"; a="25048942"
X-IronPort-AV: E=Sophos;i="6.10,238,1719903600"; d="scan'208";a="25048942"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 04:18:02 -0700
X-CSE-ConnectionGUID: CpjlNfprS1C/WL8I48QDAA==
X-CSE-MsgGUID: G9C+VaP6Siqgbn1//l5+ZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,238,1719903600"; d="scan'208";a="69839468"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.202])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 04:17:58 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Matthew Auld <matthew.auld@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Anshuman Gupta <anshuman.gupta@intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>, stable@vger.kernel.org
Subject: [PATCH 1/5] drm/i915/gem: fix bitwise and logical AND mixup
Date: Wed, 18 Sep 2024 14:17:44 +0300
Message-Id: <dec5992d78db5bc556600c64ce72aa9b19c96c77.1726658138.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1726658138.git.jani.nikula@intel.com>
References: <cover.1726658138.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND is an int, defaulting to 250. When
the wakeref is non-zero, it's either -1 or a dynamically allocated
pointer, depending on CONFIG_DRM_I915_DEBUG_RUNTIME_PM. It's likely that
the code works by coincidence with the bitwise AND, but with
CONFIG_DRM_I915_DEBUG_RUNTIME_PM=y, there's the off chance that the
condition evaluates to false, and intel_wakeref_auto() doesn't get
called. Switch to the intended logical AND.

Fixes: ad74457a6b5a ("drm/i915/dgfx: Release mmap on rpm suspend")
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Anshuman Gupta <anshuman.gupta@intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>
Cc: <stable@vger.kernel.org> # v6.1+
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index 5c72462d1f57..c157ade48c39 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -1131,7 +1131,7 @@ static vm_fault_t vm_fault_ttm(struct vm_fault *vmf)
 		GEM_WARN_ON(!i915_ttm_cpu_maps_iomem(bo->resource));
 	}
 
-	if (wakeref & CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND)
+	if (wakeref && CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND)
 		intel_wakeref_auto(&to_i915(obj->base.dev)->runtime_pm.userfault_wakeref,
 				   msecs_to_jiffies_timeout(CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND));
 
-- 
2.39.2

