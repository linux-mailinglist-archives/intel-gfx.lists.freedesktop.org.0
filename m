Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CEF958D3DA3
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2024 19:48:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A569010E1EA;
	Wed, 29 May 2024 17:48:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Rr4+O1Mw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC07710E350;
 Wed, 29 May 2024 17:48:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717004894; x=1748540894;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DDSD+ifMmZLOI86JIN9ZjQUgvxtvQOkyhhQmI2aCg98=;
 b=Rr4+O1Mww9iZ+IQUqTDmtxeDDdSgIhx8rrbfyKt5PFUd1d/vyV7ZSLYK
 PZNnnZ7SMdr0wB9JFhKtES/dAXOwiAupLXA9lfUHeKXngot1Kdytieu82
 Z2mpzHJzbOH6X8NjZh8K9mpcPRoyy6cVwystoOL3ivYlDwI0rCP8NWzJ5
 GFfEaP7sLvhAEzjb7li6Om9rh/WkQ3c5ah+ICPXl0sZtReDxle0zNivOZ
 TbZqpXp9ceVkQ6dT0/SgcdRzgAL9Wi6vshOshmpIVE0Zm6jT8LLf65Vgo
 yx47KTr9QuCvCejGpWwfA+CDS0cvKB5MaTkc9CNyLCPyB0jCPNrqRAuwn g==;
X-CSE-ConnectionGUID: hbB+n3F6Q5uCdOk4af9J3w==
X-CSE-MsgGUID: oyBFDZEzRQypJNd5Lkw68Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11087"; a="24082648"
X-IronPort-AV: E=Sophos;i="6.08,199,1712646000"; d="scan'208";a="24082648"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 10:48:13 -0700
X-CSE-ConnectionGUID: LxaA6alqSIeydpKxQBpJQg==
X-CSE-MsgGUID: HEUta/LpQkexoJmS/wdKvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,199,1712646000"; d="scan'208";a="35452778"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.86])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 10:48:11 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	rodrigo.vivi@intel.com,
	lucas.demarchi@intel.com
Subject: [PATCH 02/10] drm/i915/display: include gt/intel_gt_types.h where
 needed
Date: Wed, 29 May 2024 20:48:06 +0300
Message-Id: <df73c0934ad21f157714a41b33b81cebd2a523a6.1717004739.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1717004739.git.jani.nikula@intel.com>
References: <cover.1717004739.git.jani.nikula@intel.com>
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

Include what you use. We need to move the compat intel_gt_types.h under
gt subdir. With this, we can drop the include from xe compat i915_drv.h.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c                         | 1 +
 drivers/gpu/drm/xe/compat-i915-headers/{ => gt}/intel_gt_types.h | 0
 drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h                | 1 -
 3 files changed, 1 insertion(+), 1 deletion(-)
 rename drivers/gpu/drm/xe/compat-i915-headers/{ => gt}/intel_gt_types.h (100%)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 6985abeb6102..8e956e7a1964 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -44,6 +44,7 @@
 #include <drm/drm_fourcc.h>
 
 #include "gem/i915_gem_stolen.h"
+#include "gt/intel_gt_types.h"
 #include "i915_drv.h"
 #include "i915_reg.h"
 #include "i915_utils.h"
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_gt_types.h b/drivers/gpu/drm/xe/compat-i915-headers/gt/intel_gt_types.h
similarity index 100%
rename from drivers/gpu/drm/xe/compat-i915-headers/intel_gt_types.h
rename to drivers/gpu/drm/xe/compat-i915-headers/gt/intel_gt_types.h
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
index 3be3d419530a..fb784ab64cd4 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
@@ -22,7 +22,6 @@
 #include "i915_gpu_error.h"
 #include "i915_reg_defs.h"
 #include "i915_utils.h"
-#include "intel_gt_types.h"
 #include "intel_step.h"
 #include "intel_uncore.h"
 #include "intel_runtime_pm.h"
-- 
2.39.2

