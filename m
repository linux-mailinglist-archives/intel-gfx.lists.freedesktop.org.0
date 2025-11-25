Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17106C862C6
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Nov 2025 18:17:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A616D10E564;
	Tue, 25 Nov 2025 17:17:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K5MPS5I5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FAE310E564;
 Tue, 25 Nov 2025 17:17:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764091077; x=1795627077;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CHoL9snMmpYlzUeeG0rCTTON9sitRj/zlJaO7HuOQAg=;
 b=K5MPS5I5MpA1z6cgW/dZeFvg2B3bSOimCR0sTTrrdQIAZrwQZgJ0D9CD
 W4tJsTgexdcgaLoIUbk7bSxijsgJ2WC+8yi0q07bfF3bgKFTcGf4krsM6
 LiOpD2gFLGMebsURQ38glgg2Mrbin32R9g3JpJeV+GtEQiBN1aiBI4r12
 Pcu52IirXlPGzs94u4IOMf9lkoMKwWnpFd7eBeoH6FviNXZn1jydH2z5v
 HD2VNxHc02irdcUZhMhPstss7LpDojs5t8J7FPKuKhf7HmNgjEhIkxmxD
 LB8VdpOI6KtEsk6lAUyfD6UGXFjCfc6ocGtSiK6U5fzs6vJYaakvwFOsP w==;
X-CSE-ConnectionGUID: dYMvI0yrRXKuLvxjzyftuA==
X-CSE-MsgGUID: I83qL4uNQLWoBqHjMqp7HQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11624"; a="77593429"
X-IronPort-AV: E=Sophos;i="6.20,226,1758610800"; d="scan'208";a="77593429"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 09:17:57 -0800
X-CSE-ConnectionGUID: +6otSEYSRAmPXoIQURQiqQ==
X-CSE-MsgGUID: D8RSBBUKQBeXXlX1mkEb4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,226,1758610800"; d="scan'208";a="197807404"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.213])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 09:17:54 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 1/2] drm/i915/hdcp: move i915 specific HDCP GSC implementation
 to i915
Date: Tue, 25 Nov 2025 19:17:43 +0200
Message-ID: <d362b256934c6c739d9decda717df2dbc3752481.1764090990.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1764090990.git.jani.nikula@intel.com>
References: <cover.1764090990.git.jani.nikula@intel.com>
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

The HDCP GSC implementation is different for both i915 and xe. Move the
i915 specific implementation from display to i915 core.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile                                | 5 ++++-
 .../drm/i915/{display/intel_hdcp_gsc.c => i915_hdcp_gsc.c}   | 2 +-
 2 files changed, 5 insertions(+), 2 deletions(-)
 rename drivers/gpu/drm/i915/{display/intel_hdcp_gsc.c => i915_hdcp_gsc.c} (99%)

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 2ff8938b3a7c..b2250432ae98 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -74,6 +74,10 @@ i915-$(CONFIG_DEBUG_FS) += \
 i915-$(CONFIG_PERF_EVENTS) += \
 	i915_pmu.o
 
+# core display adaptation
+i915-y += \
+	i915_hdcp_gsc.o
+
 # "Graphics Technology" (aka we talk to the gpu)
 gt-y += \
 	gt/gen2_engine_cs.o \
@@ -277,7 +281,6 @@ i915-y += \
 	display/intel_frontbuffer.o \
 	display/intel_global_state.o \
 	display/intel_hdcp.o \
-	display/intel_hdcp_gsc.o \
 	display/intel_hdcp_gsc_message.o \
 	display/intel_hotplug.o \
 	display/intel_hotplug_irq.o \
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c b/drivers/gpu/drm/i915/i915_hdcp_gsc.c
similarity index 99%
rename from drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
rename to drivers/gpu/drm/i915/i915_hdcp_gsc.c
index 3e7b480ee9f1..38df5318e13a 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
+++ b/drivers/gpu/drm/i915/i915_hdcp_gsc.c
@@ -6,11 +6,11 @@
 #include <drm/drm_print.h>
 #include <drm/intel/i915_hdcp_interface.h>
 
+#include "display/intel_hdcp_gsc.h"
 #include "gem/i915_gem_region.h"
 #include "gt/intel_gt.h"
 #include "gt/uc/intel_gsc_uc_heci_cmd_submit.h"
 #include "i915_drv.h"
-#include "intel_hdcp_gsc.h"
 
 struct intel_hdcp_gsc_context {
 	struct drm_i915_private *i915;
-- 
2.47.3

