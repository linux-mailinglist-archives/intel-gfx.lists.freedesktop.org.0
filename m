Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CC03AAC1D2
	for <lists+intel-gfx@lfdr.de>; Tue,  6 May 2025 12:57:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8C8210E34A;
	Tue,  6 May 2025 10:57:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LB8dgadN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A3BE10E239;
 Tue,  6 May 2025 10:57:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746529052; x=1778065052;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DkR9hBF9JinicmlFpS4CUierkXOHt/zBZnUakiL7+cA=;
 b=LB8dgadN3rqjQugFxr9XwqOv5t3+LnW6JFOSAmdvpvGX54+MJx51Bka4
 oqWm3FZNSPPKU18ZC0QH4PzNzSrb9lqHhOtQWy3yxLSArAKrqMQWPG08n
 G9Tw9cHmSvhkzaPxPUoFjs9yfCOZ2NnKSh5Fil1yhFQcEblnykOqpCeYF
 tVszqpplwqVKxO9cZqxKqft0dqMmjlMTz55ifMM524VF3IhIE4mcInBz8
 GuRNDvvN/HiBdV23JoVluIjYBjAtSRyWVcTYPS4di1sjzwq0nueAWRkUQ
 xUrQ48CQnfs83ZnPkZ6sA4UorrqHD6as8xKIT3mv4dgWmEDOr+pmikLn/ A==;
X-CSE-ConnectionGUID: PnbtmmV+QFeirtcpXKIHeQ==
X-CSE-MsgGUID: 4RYEuUZUQw+2fozvaXvC0A==
X-IronPort-AV: E=McAfee;i="6700,10204,11424"; a="59580297"
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="59580297"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 03:57:32 -0700
X-CSE-ConnectionGUID: 2JXdsI+7QYulzIcwrilq2g==
X-CSE-MsgGUID: W+Gfs6FBQOmrqEKubQ/vug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="139636357"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.221])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 03:57:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/4] drm/i915/display: remove struct drm_i915_private forward
 declaration
Date: Tue,  6 May 2025 13:57:17 +0300
Message-Id: <fbccf45339a61711b377b35fd479a67b378c5571.1746529001.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1746529001.git.jani.nikula@intel.com>
References: <cover.1746529001.git.jani.nikula@intel.com>
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

Remove unused struct drm_i915_private forward declaration from
intel_display_core.h. Sort and group forward declarations while at it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_core.h | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index dc834cef75c7..577eece30f46 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -30,9 +30,6 @@
 #include "intel_pch.h"
 #include "intel_wm_types.h"
 
-struct task_struct;
-
-struct drm_i915_private;
 struct drm_property;
 struct drm_property_blob;
 struct i915_audio_component;
@@ -53,6 +50,7 @@ struct intel_hotplug_funcs;
 struct intel_initial_plane_config;
 struct intel_opregion;
 struct intel_overlay;
+struct task_struct;
 
 /* Amount of SAGV/QGV points, BSpec precisely defines this */
 #define I915_NUM_QGV_POINTS 8
-- 
2.39.5

