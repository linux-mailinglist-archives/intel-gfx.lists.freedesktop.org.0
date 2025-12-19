Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89BACCCF774
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Dec 2025 11:50:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B1BE10EF25;
	Fri, 19 Dec 2025 10:50:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fhMVfNT9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F21010EF24;
 Fri, 19 Dec 2025 10:50:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766141447; x=1797677447;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xF9BwkHQkhMKGxrmjkFUpBnq355ouapTnsAy8bngLm0=;
 b=fhMVfNT9ySk3p0MEElDxOIFXJospMPiF9Ckcu0TTgjpSGpOoRvrLk311
 kzG3AAXQEa2PLcye8Lt+/irWnCDGO91T3NXdHOYiBTtfWeUhxaRA7AgKT
 KAgSM4P3MoqunHxeQK1znIZx0xoswYnEa0CxapH9LJ1A9q7MwoC9oA1+5
 eYJh5QASdsfiqK2KIzS+S7Lj1PSAqqOhpp7tvY5BaqkxZc4w+UohfngsD
 ZXA3fs/Ix70pmqUR4Svvi+HHMRzpQyWF72/tp+GOLDIxzlq744ih8W0Ut
 krm/rl4KADRuNIMdJG+blWdmc6teskLHTC482Xt1SM3efBE3NEDPH8BEW Q==;
X-CSE-ConnectionGUID: TDVYLMDZRRGldk5e19Mt6g==
X-CSE-MsgGUID: rtkQSYxsSp6pL6SPd0IKqA==
X-IronPort-AV: E=McAfee;i="6800,10657,11646"; a="71962305"
X-IronPort-AV: E=Sophos;i="6.21,161,1763452800"; d="scan'208";a="71962305"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2025 02:50:47 -0800
X-CSE-ConnectionGUID: XtVdvbtqTzyEDrMuWEvdjg==
X-CSE-MsgGUID: Mz4sTya4QdmPBUkHsV/aSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,161,1763452800"; d="scan'208";a="199089820"
Received: from mwiniars-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.34])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2025 02:50:45 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Ville Syrjala <ville.syrjala@linux.intel.com>
Subject: [PATCH 1/2] drm/xe/compat: convert uncore macros to static inlines
Date: Fri, 19 Dec 2025 12:50:33 +0200
Message-ID: <5699a0a0d1cbfff4dcc933de429f8bb413a2cdb6.1766141244.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1766141244.git.jani.nikula@intel.com>
References: <cover.1766141244.git.jani.nikula@intel.com>
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

Use static inlines instead of macros to avoid the need for
__maybe_unused annotations.

Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c    |  2 +-
 .../gpu/drm/i915/display/intel_display_power.c  |  2 +-
 .../drm/xe/compat-i915-headers/intel_uncore.h   | 17 ++++++++++++++---
 3 files changed, 16 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index d5947cc9b94c..32de0bab0982 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7381,7 +7381,7 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 {
 	struct intel_display *display = to_intel_display(state);
-	struct drm_i915_private __maybe_unused *dev_priv = to_i915(display->drm);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_crtc_state *new_crtc_state, *old_crtc_state;
 	struct intel_crtc *crtc;
 	struct intel_power_domain_mask put_domains[I915_MAX_PIPES] = {};
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 9f323c39d798..68e475f79965 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1328,7 +1328,7 @@ static void hsw_disable_lcpll(struct intel_display *display,
  */
 static void hsw_restore_lcpll(struct intel_display *display)
 {
-	struct drm_i915_private __maybe_unused *dev_priv = to_i915(display->drm);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u32 val;
 	int ret;
 
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h b/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
index d93ddacdf743..c89728231d0a 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
@@ -154,9 +154,20 @@ static inline void intel_uncore_write_notrace(struct intel_uncore *uncore,
 	xe_mmio_write32(__compat_uncore_to_mmio(uncore), reg, val);
 }
 
-#define intel_uncore_forcewake_get(x, y) do { } while (0)
-#define intel_uncore_forcewake_put(x, y) do { } while (0)
+static inline void intel_uncore_forcewake_get(struct intel_uncore *uncore,
+					      int fw_domains)
+{
+}
 
-#define intel_uncore_arm_unclaimed_mmio_detection(x) do { } while (0)
+static inline void intel_uncore_forcewake_put(struct intel_uncore *uncore,
+					      int fw_domains)
+{
+}
+
+static inline bool
+intel_uncore_arm_unclaimed_mmio_detection(struct intel_uncore *uncore)
+{
+	return false;
+}
 
 #endif /* __INTEL_UNCORE_H__ */
-- 
2.47.3

