Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ED4DCB6C4C
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Dec 2025 18:37:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22ED810E87E;
	Thu, 11 Dec 2025 17:37:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ON6W9fDk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6609810E83A;
 Thu, 11 Dec 2025 17:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765474643; x=1797010643;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7AVG9BLaStdVQTkP92Zrrg0YFhBfnPgdpBGMIRqONbU=;
 b=ON6W9fDkRqWg8udkN7Uxsr9uQW8LtPcRgdv73p/Ucl3pBDdo0prfOGDX
 IPIMQ3d6dPxVZmXCCCEdDvC+RY1/FyYv7+MPHihAz5VkD4rqHiWA09ESE
 MDnuxNFudzKGOKIFh3TsaVcBruqJMgqiM9RZEMjDLC8bMVoLilVrVhRiX
 2fAsYgqfqOwY5I/Vkc8VsIOR1jB9BnQHghsLLAD/McdxzbKHPONiIQBzp
 fd7y9W5yj/bgFAYR5aM0FPvYyVQSK0lYJWb8M0z/PBQwyuMnx+XeUEOVH
 aNbJ8tK2Q5OrwrccqnINxirR7zwJP0l8uDKbTtCTvQsNjdpvGXafnRmTe A==;
X-CSE-ConnectionGUID: 79AfdPkaT1al57R0cBurBQ==
X-CSE-MsgGUID: xoBo5DZ8TfCzv/34AC57Mw==
X-IronPort-AV: E=McAfee;i="6800,10657,11639"; a="71087905"
X-IronPort-AV: E=Sophos;i="6.21,141,1763452800"; d="scan'208";a="71087905"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2025 09:37:23 -0800
X-CSE-ConnectionGUID: TZGkrnq/T9mwan/znIFxpA==
X-CSE-MsgGUID: A7feAEa5Rye5LkXM35hTQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,141,1763452800"; d="scan'208";a="196756939"
Received: from mwiniars-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.251])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2025 09:37:21 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/2] drm/i915/panic: move i915 specific panic implementation
 to i915
Date: Thu, 11 Dec 2025 19:37:11 +0200
Message-ID: <8dc7af0ae1f859d17b0be269a545146c5536d8fc.1765474612.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1765474612.git.jani.nikula@intel.com>
References: <cover.1765474612.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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

The intel_panic.c implementation is i915 specific, and xe has its
own. Move it to i915 core as i915_panic.c.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile                               | 4 ++--
 .../gpu/drm/i915/{display/intel_panic.c => i915_panic.c}    | 6 +++---
 2 files changed, 5 insertions(+), 5 deletions(-)
 rename drivers/gpu/drm/i915/{display/intel_panic.c => i915_panic.c} (84%)

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 175bd99e1d0d..f01b5d8a07c7 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -76,7 +76,8 @@ i915-$(CONFIG_PERF_EVENTS) += \
 
 # core display adaptation
 i915-y += \
-	i915_hdcp_gsc.o
+	i915_hdcp_gsc.o \
+	i915_panic.o
 
 # "Graphics Technology" (aka we talk to the gpu)
 gt-y += \
@@ -293,7 +294,6 @@ i915-y += \
 	display/intel_modeset_setup.o \
 	display/intel_modeset_verify.o \
 	display/intel_overlay.o \
-	display/intel_panic.o \
 	display/intel_parent.o \
 	display/intel_pch.o \
 	display/intel_pch_display.o \
diff --git a/drivers/gpu/drm/i915/display/intel_panic.c b/drivers/gpu/drm/i915/i915_panic.c
similarity index 84%
rename from drivers/gpu/drm/i915/display/intel_panic.c
rename to drivers/gpu/drm/i915/i915_panic.c
index 7311ce4e8b6c..028ff83b2519 100644
--- a/drivers/gpu/drm/i915/display/intel_panic.c
+++ b/drivers/gpu/drm/i915/i915_panic.c
@@ -3,10 +3,10 @@
 
 #include <drm/drm_panic.h>
 
+#include "display/intel_display_types.h"
+#include "display/intel_fb.h"
+#include "display/intel_panic.h"
 #include "gem/i915_gem_object.h"
-#include "intel_display_types.h"
-#include "intel_fb.h"
-#include "intel_panic.h"
 
 struct intel_panic *intel_panic_alloc(void)
 {
-- 
2.47.3

