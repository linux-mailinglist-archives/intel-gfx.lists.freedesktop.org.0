Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B42896D7AB
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2024 13:53:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72C7F10E87A;
	Thu,  5 Sep 2024 11:53:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Vmd5Ribu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6683210E874;
 Thu,  5 Sep 2024 11:53:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725537216; x=1757073216;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Q6xZnDOKr/cHb7NhSovQ2Djte4HekHpr9mx+8SqSN3s=;
 b=Vmd5RibuuwUheUiv5UTt8F1kHLIMludd/Y/+F1hIUMPFc1jieQTwkyfO
 bRQwYN/OF6HwJDawnTVfxWXq9GbLNMNSv9Tz+7+zE0gw6g8ks+Fvlc6P1
 DF7yWI9mM1XAUOlmEjnq/Cbe6++CDTGwouZcev9EUb8N6b85bAK7eRJha
 EdeuAqOxEoYZx0imLFBR/K2zO1A8jI1vAoGqbRcOAr3Sja4hq82MftKwT
 t8xxdzwuOcLdltEXc26fLmqQ8EO+ErucfLeRsakArdPqc5gqd7UqjNFaN
 OkWSKW11TgXhBNLaFp2QYIGxcxx8E1Iah+XRBaToShi2eGe5fOzchRABL Q==;
X-CSE-ConnectionGUID: sJJX9EoyS46jMjkTOsDyfA==
X-CSE-MsgGUID: qaz/aVIrS56cpiIRJvW58g==
X-IronPort-AV: E=McAfee;i="6700,10204,11185"; a="24406126"
X-IronPort-AV: E=Sophos;i="6.10,204,1719903600"; d="scan'208";a="24406126"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2024 04:53:35 -0700
X-CSE-ConnectionGUID: azrI1p4sS+qd7vBixXRZrQ==
X-CSE-MsgGUID: nfcGNFd/Rxi07a+XRoII6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,204,1719903600"; d="scan'208";a="65918177"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2024 04:53:34 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com
Subject: [PATCH 5/5] drm/i915: Add Wa_14021768792 as per WA framework
Date: Thu,  5 Sep 2024 17:25:05 +0530
Message-ID: <20240905115505.3629087-6-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240905115505.3629087-1-ankit.k.nautiyal@intel.com>
References: <20240905115505.3629087-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
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

Modify the condition for WA as per Xe WA framework.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c    | 4 ++--
 drivers/gpu/drm/i915/display/intel_display_wa.h | 2 ++
 drivers/gpu/drm/xe/display/xe_display_wa.c      | 5 +++++
 drivers/gpu/drm/xe/xe_wa_oob.rules              | 1 +
 4 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f55a85f04ce5..4496ba30d64d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -75,6 +75,7 @@
 #include "intel_display_driver.h"
 #include "intel_display_power.h"
 #include "intel_display_types.h"
+#include "intel_display_wa.h"
 #include "intel_dmc.h"
 #include "intel_dp.h"
 #include "intel_dp_link_training.h"
@@ -3436,8 +3437,7 @@ int bmg_can_bypass_m_n_limit(struct intel_display *display,
 {
 	struct drm_i915_private *i915 = to_i915(display->drm);
 
-	if (DISPLAY_VER(display) != 14 || !IS_DGFX(i915) ||
-	    !IS_DISPLAY_STEP(display, STEP_C0, STEP_FOREVER))
+	if (!intel_display_needs_wa_14021768792(i915))
 		return false;
 
 	if (pipe != PIPE_A)
diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
index be644ab6ae00..10c1b5787d05 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.h
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
@@ -14,8 +14,10 @@ void intel_display_wa_apply(struct drm_i915_private *i915);
 
 #ifdef I915
 static inline bool intel_display_needs_wa_16023588340(struct drm_i915_private *i915) { return false; }
+static inline bool intel_display_needs_wa_14021768792(struct drm_i915_private *i915) { return false; }
 #else
 bool intel_display_needs_wa_16023588340(struct drm_i915_private *i915);
+bool intel_display_needs_wa_14021768792(struct drm_i915_private *i915);
 #endif
 
 #endif
diff --git a/drivers/gpu/drm/xe/display/xe_display_wa.c b/drivers/gpu/drm/xe/display/xe_display_wa.c
index 68e3d1959ad6..c4728e61e190 100644
--- a/drivers/gpu/drm/xe/display/xe_display_wa.c
+++ b/drivers/gpu/drm/xe/display/xe_display_wa.c
@@ -14,3 +14,8 @@ bool intel_display_needs_wa_16023588340(struct drm_i915_private *i915)
 {
 	return XE_WA(xe_root_mmio_gt(i915), 16023588340);
 }
+
+bool intel_display_needs_wa_14021768792(struct drm_i915_private *i915)
+{
+	return XE_WA(xe_root_mmio_gt(i915), 14021768792);
+}
diff --git a/drivers/gpu/drm/xe/xe_wa_oob.rules b/drivers/gpu/drm/xe/xe_wa_oob.rules
index 920ca5060146..a7cc2c2d98d0 100644
--- a/drivers/gpu/drm/xe/xe_wa_oob.rules
+++ b/drivers/gpu/drm/xe/xe_wa_oob.rules
@@ -37,3 +37,4 @@
 16023588340	GRAPHICS_VERSION(2001)
 14019789679	GRAPHICS_VERSION(1255)
 		GRAPHICS_VERSION_RANGE(1270, 2004)
+14021768792	PLATFORM(BATTLEMAGE), GRAPHICS_STEP(C0, FOREVER)
-- 
2.45.2

