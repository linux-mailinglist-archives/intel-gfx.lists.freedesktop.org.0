Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2656A85872
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Apr 2025 11:54:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72F8610EB59;
	Fri, 11 Apr 2025 09:54:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NXEjTmLc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1BD410EB5C;
 Fri, 11 Apr 2025 09:54:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744365284; x=1775901284;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=D/7eC9pjgV4UGlrW5qNilefdbGkx9Gac+s0qXKuOWxg=;
 b=NXEjTmLcmjTP98G/bIprxvPO8Hh0euPCtMCsvoAFWWmuM2JWYt+4QppE
 lvOs5Gk3HGqxFix5nX4vymnbeKnVgn5CxOqNlFo5+7MXm69IfJrHhGFsR
 j7RR7OCA3osvetL46Uz+1u/atiB7j4P4eWixF7UskLZgH+575yzxxHLPg
 xE7+kYusIYgQKfb5B1ZFWIVNJ1XMn6sjm/bLZBmHDDzCzCxYv1oDt4r+z
 /egTTU1uKjxAJRKVOMHHCcvKxg5gHwPKft6oPuubbNHBw8jTjjdEb+YID
 tDv4kk0DwYzpnZVPCR4SEUDS9g+IdoSkKXR4Izf6OnN0RfTXxfArYH7Ok g==;
X-CSE-ConnectionGUID: CFjaFExrSdWzY45+pGsq4g==
X-CSE-MsgGUID: sMmXVXfJRfmnrV4xAcomLQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11400"; a="56094880"
X-IronPort-AV: E=Sophos;i="6.15,203,1739865600"; d="scan'208";a="56094880"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2025 02:54:43 -0700
X-CSE-ConnectionGUID: BWBoT/huRRu11Xdt3zcE7g==
X-CSE-MsgGUID: pyd0YEA/QAiGsDttQEk8ew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,203,1739865600"; d="scan'208";a="133265688"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.115])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2025 02:54:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 4/4] drm/i915/pch: clean up includes
Date: Fri, 11 Apr 2025 12:54:14 +0300
Message-Id: <68ec70f6880b7af19bc93b9817959299634a555d.1744364975.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1744364975.git.jani.nikula@intel.com>
References: <cover.1744364975.git.jani.nikula@intel.com>
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

We no longer need i915_drv.h in intel_pch.c, and we no longer need
intel_pch.h universally.

With intel_pch.h being included from intel_display_core.h, it's still
included pretty much everywhere, but there's no need to include it
explicitly from i915_drv.h or xe_device_types.h.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_pch.c | 4 +++-
 drivers/gpu/drm/i915/i915_drv.h          | 1 -
 drivers/gpu/drm/xe/xe_device_types.h     | 1 -
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pch.c b/drivers/gpu/drm/i915/display/intel_pch.c
index c5045d2527b4..fec1919e5386 100644
--- a/drivers/gpu/drm/i915/display/intel_pch.c
+++ b/drivers/gpu/drm/i915/display/intel_pch.c
@@ -3,8 +3,10 @@
  * Copyright 2025 Intel Corporation.
  */
 
-#include "i915_drv.h"
+#include <drm/drm_print.h>
+
 #include "i915_utils.h"
+#include "intel_display_core.h"
 #include "intel_pch.h"
 
 #define INTEL_PCH_DEVICE_ID_MASK		0xff80
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 38cd1750bc99..c0eec8fe5cad 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -38,7 +38,6 @@
 
 #include "display/intel_display_limits.h"
 #include "display/intel_display_core.h"
-#include "display/intel_pch.h"
 
 #include "gem/i915_gem_context_types.h"
 #include "gem/i915_gem_shrinker.h"
diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_device_types.h
index b69cd91c46d1..b9a892c44c67 100644
--- a/drivers/gpu/drm/xe/xe_device_types.h
+++ b/drivers/gpu/drm/xe/xe_device_types.h
@@ -31,7 +31,6 @@
 #endif
 
 #if IS_ENABLED(CONFIG_DRM_XE_DISPLAY)
-#include "intel_pch.h"
 #include "intel_display_core.h"
 #include "intel_display_device.h"
 #endif
-- 
2.39.5

