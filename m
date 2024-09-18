Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E59C597BFBE
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 19:36:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C82510E602;
	Wed, 18 Sep 2024 17:36:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y7pE1lql";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BA3810E602;
 Wed, 18 Sep 2024 17:36:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726680967; x=1758216967;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8zb8SLIdREhtRl/HyOPrNlhoLmtAblhU0yWCQWTXNbE=;
 b=Y7pE1lql4O0jK0nENDgEOTrj83ZU7uNGmkFzVZa1JpfDU6zwYkD3FMa2
 RFFmgiZsPa/YQo+/su+A88i5eXcl8Da7EYKX+rRfVyMAQKUw2bjRBBqw3
 6Wp8aE/9kuQMF/ZzeUOTX9/4O2nQAsjMdqO2Uclwnj+dOqFaU4hqvznu8
 IHLebWqzTc7LLs721cJWxn+hi/ZOWinQCeQOyWQqXU/VtAacvS/9fHGfl
 DnIPMfNOcCkjfcn55SsE1CXC2BkFx+SzBeIfFdKjHA/DGgieopJEdOvIC
 LrVy6rlYwdBQ4V+kb7Z19ZxgwN/Ioo49BEDY6lwNJF8MjSPQvtxlLlpAK w==;
X-CSE-ConnectionGUID: MT27BEvjQOOa/VNgXnJyoA==
X-CSE-MsgGUID: JXOi7WU6QJqbLw8y7++kTg==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="25704114"
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="25704114"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 10:36:07 -0700
X-CSE-ConnectionGUID: u5XmBsj9QnK9zmRmEuySwQ==
X-CSE-MsgGUID: 2qiTWRH+TwKjHiOrp1IXog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="107102582"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.202])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 10:36:05 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 2/6] drm/i915: use INTEL_WAKEREF_DEF instead of magic -1
 for intel_wakeref_t
Date: Wed, 18 Sep 2024 20:35:44 +0300
Message-Id: <57e5f1989113be4d63386478d9438cfc35a2a1f7.1726680898.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1726680898.git.jani.nikula@intel.com>
References: <cover.1726680898.git.jani.nikula@intel.com>
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

A number of places rely on the magic -1 to denote
INTEL_WAKEREF_DEF. Switch to the macro. Define it for xe as well.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c        | 2 +-
 drivers/gpu/drm/i915/display/intel_display_power.h        | 4 ++--
 drivers/gpu/drm/i915/intel_runtime_pm.c                   | 6 +++---
 drivers/gpu/drm/i915/intel_wakeref.h                      | 2 +-
 drivers/gpu/drm/xe/compat-i915-headers/intel_runtime_pm.h | 7 ++++---
 drivers/gpu/drm/xe/compat-i915-headers/intel_wakeref.h    | 2 ++
 6 files changed, 13 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index ecabb674644b..40727a22f18b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -895,7 +895,7 @@ intel_display_power_put_mask_in_set(struct drm_i915_private *i915,
 		    !bitmap_subset(mask->bits, power_domain_set->mask.bits, POWER_DOMAIN_NUM));
 
 	for_each_power_domain(domain, mask) {
-		intel_wakeref_t __maybe_unused wf = -1;
+		intel_wakeref_t __maybe_unused wf = INTEL_WAKEREF_DEF;
 
 #if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
 		wf = fetch_and_zero(&power_domain_set->wakerefs[domain]);
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index 425452c5a469..3b7c1a0bb1de 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -232,7 +232,7 @@ intel_display_power_put_async(struct drm_i915_private *i915,
 			      enum intel_display_power_domain domain,
 			      intel_wakeref_t wakeref)
 {
-	__intel_display_power_put_async(i915, domain, -1, -1);
+	__intel_display_power_put_async(i915, domain, INTEL_WAKEREF_DEF, -1);
 }
 
 static inline void
@@ -241,7 +241,7 @@ intel_display_power_put_async_delay(struct drm_i915_private *i915,
 				    intel_wakeref_t wakeref,
 				    int delay_ms)
 {
-	__intel_display_power_put_async(i915, domain, -1, delay_ms);
+	__intel_display_power_put_async(i915, domain, INTEL_WAKEREF_DEF, delay_ms);
 }
 #endif
 
diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c b/drivers/gpu/drm/i915/intel_runtime_pm.c
index 2d0647aca964..a21f5a1c89bc 100644
--- a/drivers/gpu/drm/i915/intel_runtime_pm.c
+++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
@@ -66,7 +66,7 @@ static intel_wakeref_t
 track_intel_runtime_pm_wakeref(struct intel_runtime_pm *rpm)
 {
 	if (!rpm->available || rpm->no_wakeref_tracking)
-		return -1;
+		return INTEL_WAKEREF_DEF;
 
 	return intel_ref_tracker_alloc(&rpm->debug);
 }
@@ -114,7 +114,7 @@ static void init_intel_runtime_pm_wakeref(struct intel_runtime_pm *rpm)
 static intel_wakeref_t
 track_intel_runtime_pm_wakeref(struct intel_runtime_pm *rpm)
 {
-	return -1;
+	return INTEL_WAKEREF_DEF;
 }
 
 static void untrack_intel_runtime_pm_wakeref(struct intel_runtime_pm *rpm,
@@ -336,7 +336,7 @@ intel_runtime_pm_put_raw(struct intel_runtime_pm *rpm, intel_wakeref_t wref)
  */
 void intel_runtime_pm_put_unchecked(struct intel_runtime_pm *rpm)
 {
-	__intel_runtime_pm_put(rpm, -1, true);
+	__intel_runtime_pm_put(rpm, INTEL_WAKEREF_DEF, true);
 }
 
 #if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
diff --git a/drivers/gpu/drm/i915/intel_wakeref.h b/drivers/gpu/drm/i915/intel_wakeref.h
index 68aa3be48251..3944587a5e78 100644
--- a/drivers/gpu/drm/i915/intel_wakeref.h
+++ b/drivers/gpu/drm/i915/intel_wakeref.h
@@ -314,7 +314,7 @@ static inline void intel_wakeref_untrack(struct intel_wakeref *wf,
 
 static inline intel_wakeref_t intel_wakeref_track(struct intel_wakeref *wf)
 {
-	return -1;
+	return INTEL_WAKEREF_DEF;
 }
 
 static inline void intel_wakeref_untrack(struct intel_wakeref *wf,
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_runtime_pm.h b/drivers/gpu/drm/xe/compat-i915-headers/intel_runtime_pm.h
index 8c7b315aa8ac..380d25428bdb 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/intel_runtime_pm.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/intel_runtime_pm.h
@@ -24,14 +24,14 @@ static inline intel_wakeref_t intel_runtime_pm_get(struct xe_runtime_pm *pm)
 {
 	struct xe_device *xe = container_of(pm, struct xe_device, runtime_pm);
 
-	return xe_pm_runtime_resume_and_get(xe);
+	return xe_pm_runtime_resume_and_get(xe) ? INTEL_WAKEREF_DEF : 0;
 }
 
 static inline intel_wakeref_t intel_runtime_pm_get_if_in_use(struct xe_runtime_pm *pm)
 {
 	struct xe_device *xe = container_of(pm, struct xe_device, runtime_pm);
 
-	return xe_pm_runtime_get_if_in_use(xe);
+	return xe_pm_runtime_get_if_in_use(xe) ? INTEL_WAKEREF_DEF : 0;
 }
 
 static inline intel_wakeref_t intel_runtime_pm_get_noresume(struct xe_runtime_pm *pm)
@@ -39,7 +39,8 @@ static inline intel_wakeref_t intel_runtime_pm_get_noresume(struct xe_runtime_pm
 	struct xe_device *xe = container_of(pm, struct xe_device, runtime_pm);
 
 	xe_pm_runtime_get_noresume(xe);
-	return true;
+
+	return INTEL_WAKEREF_DEF;
 }
 
 static inline void intel_runtime_pm_put_unchecked(struct xe_runtime_pm *pm)
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_wakeref.h b/drivers/gpu/drm/xe/compat-i915-headers/intel_wakeref.h
index ecb1c0707706..5c139ba144a6 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/intel_wakeref.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/intel_wakeref.h
@@ -6,3 +6,5 @@
 #include <linux/types.h>
 
 typedef unsigned long intel_wakeref_t;
+
+#define INTEL_WAKEREF_DEF ((intel_wakeref_t)(-1))
-- 
2.39.2

