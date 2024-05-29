Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8A038D3DAD
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2024 19:48:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6FBC10E52D;
	Wed, 29 May 2024 17:48:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TjahsMpt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50B8010E350;
 Wed, 29 May 2024 17:48:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717004910; x=1748540910;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XnsDVQY4LWcJFZGLTI6/D7A6A4roVSb7NCajoegtaqA=;
 b=TjahsMptOkXZk2hMBfwzbm+wPUwHBncM7v3b2sugTVqmOYjJ0/QwfG3J
 RlaZCvVlYzwB4FdC+4gcYCK7RVj9gaQk7G6v/oU0uTsxyTdbzHQm3KsAV
 jOKmwLhdKvKZ0L2beSyrVfCugORqFv4fggzYMGL52QTmwoORAMuv+2QTo
 hhzmSof9NUXR17YYQio4TC+Bh/5MXDsxhgS41HtpA5kxQFOzDpVv7L6fZ
 5rgW73MsIv/RZaqM+J9obww4uosmkeUMgiK35i73nYY7Ncop4CsZ7fQBe
 evGQpOSzAhIEqKGb6pWfrBv5roDAfAa0iri6J2Zu68b/98UMv1wTNgmFM A==;
X-CSE-ConnectionGUID: ul2Ixb9XTSC9aIO6m0AL3Q==
X-CSE-MsgGUID: AZB6M949Qu+UDRyGz4ViBg==
X-IronPort-AV: E=McAfee;i="6600,9927,11087"; a="24082667"
X-IronPort-AV: E=Sophos;i="6.08,199,1712646000"; d="scan'208";a="24082667"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 10:48:30 -0700
X-CSE-ConnectionGUID: x1XhajggQuKAM924XHsFgQ==
X-CSE-MsgGUID: 6KuaI5hZSdSOqwVYMNpjdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,199,1712646000"; d="scan'208";a="35452796"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.86])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 10:48:28 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	rodrigo.vivi@intel.com,
	lucas.demarchi@intel.com
Subject: [PATCH 05/10] drm/i915/display: include intel_step.h where needed
Date: Wed, 29 May 2024 20:48:09 +0300
Message-Id: <abee71a6c6edbd1a3ddf0f97838977e53feaa5ff.1717004739.git.jani.nikula@intel.com>
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

Include what you use. With this, we can drop the include along with
xe_step.h from xe compat i915_drv.h.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c          | 1 +
 drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h | 2 --
 2 files changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index b5ebb0f5b269..852c11aa3205 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -31,6 +31,7 @@
 #include "intel_de.h"
 #include "intel_dmc.h"
 #include "intel_dmc_regs.h"
+#include "intel_step.h"
 
 /**
  * DOC: DMC Firmware Support
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
index e5966f07a924..3e930ce25c90 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
@@ -18,10 +18,8 @@
 #include "xe_device.h"
 #include "xe_bo.h"
 #include "xe_pm.h"
-#include "xe_step.h"
 #include "i915_reg_defs.h"
 #include "i915_utils.h"
-#include "intel_step.h"
 #include "intel_runtime_pm.h"
 #include <linux/pm_runtime.h>
 
-- 
2.39.2

