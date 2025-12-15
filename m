Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA7C8CBEA3D
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Dec 2025 16:28:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7558C10E5B4;
	Mon, 15 Dec 2025 15:28:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fAyeOVZx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32FBB10E5AC;
 Mon, 15 Dec 2025 15:28:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765812520; x=1797348520;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qI7GX0RproCor158otAGv5/K84QurKO7kWWwpn2sHkQ=;
 b=fAyeOVZx8J7NG7UtsIA6iHdUrj0uDbkWrbRH8CdoktNK1niLeTjNygEp
 4u/cyqhzY1DzNrQX92tHgavfEzMPKz1470F34dv5+M0iJAOZ6YPJoUGgf
 u8698s6yFHXrFEszqhwa4lPu0v5O/9pfq3cuH+kN8tcflITrmRj/eh/DE
 RNF6/idHWTeSZwT0PK0QfLhh88+cMySwQ9x15VLsWmx3REM7BRbAXU9Y2
 5Cqhp/TcZ9cjv9NbcUcbfeLtmx2gVYxSSCgzRqWhiyOVT3KHuxJIv/CGV
 mdnT2V9kqt4ywdb56nrwuCiwsXPJhEwNCUQC1SenBoYlTzFk3rEKeWwWs g==;
X-CSE-ConnectionGUID: E3nsl2yTTSqnkMQ3cplYGg==
X-CSE-MsgGUID: WJdx80a8SlGdJ6Mp/tfHag==
X-IronPort-AV: E=McAfee;i="6800,10657,11643"; a="78354305"
X-IronPort-AV: E=Sophos;i="6.21,151,1763452800"; d="scan'208";a="78354305"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 07:28:40 -0800
X-CSE-ConnectionGUID: BA5xdPpATZW9re+ZeXKuvA==
X-CSE-MsgGUID: MPQ3U5t8RUSOySDbHrqbNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,151,1763452800"; d="scan'208";a="201931601"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.106])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 07:28:38 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 01/15] drm/i915: move display/intel_plane_initial.c to
 i915_initial_plane.c
Date: Mon, 15 Dec 2025 17:28:15 +0200
Message-ID: <cdad733192690a61fbb44921c57fc68cc1cd809f.1765812266.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1765812266.git.jani.nikula@intel.com>
References: <cover.1765812266.git.jani.nikula@intel.com>
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

intel_plane_initial.c is i915 specific. Move it to i915 core. Start
renaming stuff with the slightly more natural "initial plane" rather
than "plane initial".

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile                   |  2 +-
 ...tel_plane_initial.c => i915_initial_plane.c} | 17 +++++++++--------
 2 files changed, 10 insertions(+), 9 deletions(-)
 rename drivers/gpu/drm/i915/{display/intel_plane_initial.c => i915_initial_plane.c} (97%)

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index f01b5d8a07c7..8d2ca226c86f 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -77,6 +77,7 @@ i915-$(CONFIG_PERF_EVENTS) += \
 # core display adaptation
 i915-y += \
 	i915_hdcp_gsc.o \
+	i915_initial_plane.o \
 	i915_panic.o
 
 # "Graphics Technology" (aka we talk to the gpu)
@@ -299,7 +300,6 @@ i915-y += \
 	display/intel_pch_display.o \
 	display/intel_pch_refclk.o \
 	display/intel_plane.o \
-	display/intel_plane_initial.o \
 	display/intel_pmdemand.o \
 	display/intel_psr.o \
 	display/intel_quirks.o \
diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/i915_initial_plane.c
similarity index 97%
rename from drivers/gpu/drm/i915/display/intel_plane_initial.c
rename to drivers/gpu/drm/i915/i915_initial_plane.c
index ff1afd3a8f20..87c964485a41 100644
--- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
+++ b/drivers/gpu/drm/i915/i915_initial_plane.c
@@ -5,17 +5,18 @@
 
 #include <drm/drm_print.h>
 
+#include "display/intel_crtc.h"
+#include "display/intel_display.h"
+#include "display/intel_display_core.h"
+#include "display/intel_display_types.h"
+#include "display/intel_fb.h"
+#include "display/intel_frontbuffer.h"
+#include "display/intel_plane.h"
+#include "display/intel_plane_initial.h"
 #include "gem/i915_gem_lmem.h"
 #include "gem/i915_gem_region.h"
+
 #include "i915_drv.h"
-#include "intel_crtc.h"
-#include "intel_display.h"
-#include "intel_display_core.h"
-#include "intel_display_types.h"
-#include "intel_fb.h"
-#include "intel_frontbuffer.h"
-#include "intel_plane.h"
-#include "intel_plane_initial.h"
 
 void intel_plane_initial_vblank_wait(struct intel_crtc *crtc)
 {
-- 
2.47.3

