Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5795958E5B
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2024 21:01:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CDD910E838;
	Tue, 20 Aug 2024 19:01:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m83Bc6w9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3788E10E838;
 Tue, 20 Aug 2024 19:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724180465; x=1755716465;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TsibsLNQQ8fEXg65tRZtyJEY/C6Rw3aCF1m6WtYxnPE=;
 b=m83Bc6w95zCmL0g8QjvHruWBbh74GMYR5sppVvE7gVB1gh+lHC++uNWJ
 fFV6gjBfWjiSS8wqn3HoNRn81k/69RdWXpbzORLLdVejkFVaYQCoj7msj
 Xu3+PVNGNllKC91q458ypV6gCD0C3v9N/K0VjTnCfJxvFjfiLTG9OPAiE
 6pUPTAZPXki1OvFxip+r6iM9TzbBa3QTfkMVmGXTVdOTpOdg/IKAn1P0N
 Amk/rzpHVhzoHu+GS94t/MRSuGW2he0n7YnOqv3cn0fJSMrm1n3n41z2u
 2WeGx/c/hMoBacl5uV1wgbUYTfBX7WlXgt2kVdD+UFkEQhXfwL1JZ5Ln3 Q==;
X-CSE-ConnectionGUID: qw7gvFvPRWmKvXliTeorQg==
X-CSE-MsgGUID: /eO2gZlVTfWdJP2/IPfZfA==
X-IronPort-AV: E=McAfee;i="6700,10204,11170"; a="22035906"
X-IronPort-AV: E=Sophos;i="6.10,162,1719903600"; d="scan'208";a="22035906"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2024 12:01:05 -0700
X-CSE-ConnectionGUID: 4Z/bd7jJSAmh6hKJljy/Nw==
X-CSE-MsgGUID: ogO8O3e1RcaOJf2IDrQekQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,162,1719903600"; d="scan'208";a="65676294"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.184])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2024 12:01:02 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: lucas.demarchi@intel.com, rodrigo.vivi@intel.com,
 matthew.d.roper@intel.com, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 02/10] drm/xe/display: remove intel_display_step_name() to
 simplify
Date: Tue, 20 Aug 2024 22:00:35 +0300
Message-Id: <cbea7def331cc9d2438da49ae344b9987f27cd12.1724180287.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1724180287.git.jani.nikula@intel.com>
References: <cover.1724180287.git.jani.nikula@intel.com>
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

The intel_display_step_name() is an unnecessary extra
indirection. Simplify by just adding a macro to map intel_step_name() to
xe_step_name().

We'll need to temporarily add a compat INTEL_DISPLAY_STEP() for this.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c            | 2 +-
 drivers/gpu/drm/i915/intel_step.c                   | 5 -----
 drivers/gpu/drm/i915/intel_step.h                   | 1 -
 drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h   | 2 ++
 drivers/gpu/drm/xe/compat-i915-headers/intel_step.h | 9 +--------
 5 files changed, 4 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 73977b173898..7c756d5ba2a2 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -391,7 +391,7 @@ static const struct stepping_info *
 intel_get_stepping_info(struct drm_i915_private *i915,
 			struct stepping_info *si)
 {
-	const char *step_name = intel_display_step_name(i915);
+	const char *step_name = intel_step_name(INTEL_DISPLAY_STEP(i915));
 
 	si->stepping = step_name[0];
 	si->substepping = step_name[1];
diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
index a5adfb5d8fd2..80464e4edcce 100644
--- a/drivers/gpu/drm/i915/intel_step.c
+++ b/drivers/gpu/drm/i915/intel_step.c
@@ -275,8 +275,3 @@ const char *intel_step_name(enum intel_step step)
 		return "**";
 	}
 }
-
-const char *intel_display_step_name(struct drm_i915_private *i915)
-{
-	return intel_step_name(RUNTIME_INFO(i915)->step.display_step);
-}
diff --git a/drivers/gpu/drm/i915/intel_step.h b/drivers/gpu/drm/i915/intel_step.h
index b6f43b624774..96dfca4cba73 100644
--- a/drivers/gpu/drm/i915/intel_step.h
+++ b/drivers/gpu/drm/i915/intel_step.h
@@ -78,6 +78,5 @@ enum intel_step {
 
 void intel_step_init(struct drm_i915_private *i915);
 const char *intel_step_name(enum intel_step step);
-const char *intel_display_step_name(struct drm_i915_private *i915);
 
 #endif /* __INTEL_STEP_H__ */
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
index 1f1ad4d3ef51..82b934fe230a 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
@@ -82,6 +82,8 @@ static inline struct drm_i915_private *kdev_to_i915(struct device *kdev)
 
 #define HAS_GMD_ID(xe) GRAPHICS_VERx100(xe) >= 1270
 
+#define INTEL_DISPLAY_STEP(xe) ((xe)->info.step.display)
+
 /* Workarounds not handled yet */
 #define IS_DISPLAY_STEP(xe, first, last) ({u8 __step = (xe)->info.step.display; first <= __step && __step < last; })
 
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_step.h b/drivers/gpu/drm/xe/compat-i915-headers/intel_step.h
index 0006ef812346..ee3f45b668b9 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/intel_step.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/intel_step.h
@@ -6,15 +6,8 @@
 #ifndef __INTEL_STEP_H__
 #define __INTEL_STEP_H__
 
-#include "xe_device_types.h"
 #include "xe_step.h"
 
-#define intel_display_step_name xe_display_step_name
-
-static inline
-const char *xe_display_step_name(struct xe_device *xe)
-{
-	return xe_step_name(xe->info.step.display);
-}
+#define intel_step_name xe_step_name
 
 #endif /* __INTEL_STEP_H__ */
-- 
2.39.2

