Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 888B29DAC38
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2024 18:06:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2199610EB7C;
	Wed, 27 Nov 2024 17:06:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YADmp6nn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F38D10EB7D;
 Wed, 27 Nov 2024 17:06:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732727180; x=1764263180;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dSzTzE1cMRnB9cjgx+P5Q0c9PVXHLyU9kon5XyfkNmc=;
 b=YADmp6nnWFlKq6D10HUilfM153JhmMJb9xs8DPr9AllraJIPq/r/PMCG
 3J27flBg2fqVrFlWjWIGyG6khjHWqZUWpuMnveUfQ1MJdUhiId5neeHMH
 MVjORZ3VBSMf0bu8zf+oP+c9Wg8lGVdmG7UxfeVcE8daJ0HAyhptzBHv6
 lTdZ06hRuxyKmK2dcJ0ODq+7EJ0WqAwsMbMpskOu+gXSoqTEJIeMc8IGp
 tfTJmhHqO7YSO8ONyUhsse/r6z6xWYbPNUiv6jcWJqKji88rpTxiWZEzx
 +gg938PvxqpedbjuNC5ZaIGumvfgEhP3cNzH4fsomCTvKGNp8MdyPXYiW Q==;
X-CSE-ConnectionGUID: nl2/eslKQVumuYMed/Ydbw==
X-CSE-MsgGUID: 2vOjsZ/DSSGgc3pK7r4xlg==
X-IronPort-AV: E=McAfee;i="6700,10204,11269"; a="32994334"
X-IronPort-AV: E=Sophos;i="6.12,189,1728975600"; d="scan'208";a="32994334"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2024 09:06:19 -0800
X-CSE-ConnectionGUID: 2SjW9/8pQ1q+pWfIiMk9hA==
X-CSE-MsgGUID: AZLn+kE+SzWMuKPHWvKVXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,189,1728975600"; d="scan'208";a="91621173"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.110])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2024 09:06:17 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	imre.deak@intel.com
Subject: [PATCH 1/7] drm/i915/display: simplify conditional compilation on
 runtime PM debug
Date: Wed, 27 Nov 2024 19:06:02 +0200
Message-Id: <566defd545f4ea021b0baa1e62d506befbf68a91.1732727056.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1732727056.git.jani.nikula@intel.com>
References: <cover.1732727056.git.jani.nikula@intel.com>
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

Simplify conditional compilation on CONFIG_DRM_I915_DEBUG_RUNTIME_PM.
Hide it all inside intel_display_power.c.

This will unnecessarily pass in the wakeref also when debug is disabled,
but it should not matter a whole lot.

Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_power.c    | 49 +++++++++-------
 .../drm/i915/display/intel_display_power.h    | 56 +++----------------
 2 files changed, 37 insertions(+), 68 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 59dee2dc0552..fe94ef310f6b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -706,10 +706,10 @@ intel_display_power_put_async_work(struct work_struct *work)
  * The power down is delayed by @delay_ms if this is >= 0, or by a default
  * 100 ms otherwise.
  */
-void __intel_display_power_put_async(struct drm_i915_private *i915,
-				     enum intel_display_power_domain domain,
-				     intel_wakeref_t wakeref,
-				     int delay_ms)
+static void __intel_display_power_put_async(struct drm_i915_private *i915,
+					    enum intel_display_power_domain domain,
+					    intel_wakeref_t wakeref,
+					    int delay_ms)
 {
 	struct i915_power_domains *power_domains = &i915->display.power.domains;
 	struct intel_runtime_pm *rpm = &i915->runtime_pm;
@@ -750,6 +750,27 @@ void __intel_display_power_put_async(struct drm_i915_private *i915,
 	intel_runtime_pm_put(rpm, wakeref);
 }
 
+void intel_display_power_put_async(struct drm_i915_private *i915,
+				   enum intel_display_power_domain domain,
+				   intel_wakeref_t wakeref)
+{
+	if (!IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM))
+		wakeref = INTEL_WAKEREF_DEF;
+
+	__intel_display_power_put_async(i915, domain, wakeref, -1);
+}
+
+void intel_display_power_put_async_delay(struct drm_i915_private *i915,
+					 enum intel_display_power_domain domain,
+					 intel_wakeref_t wakeref,
+					 int delay_ms)
+{
+	if (!IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM))
+		wakeref = INTEL_WAKEREF_DEF;
+
+	__intel_display_power_put_async(i915, domain, wakeref, delay_ms);
+}
+
 /**
  * intel_display_power_flush_work - flushes the async display power disabling work
  * @i915: i915 device instance
@@ -807,7 +828,6 @@ intel_display_power_flush_work_sync(struct drm_i915_private *i915)
 	drm_WARN_ON(&i915->drm, power_domains->async_put_wakeref);
 }
 
-#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
 /**
  * intel_display_power_put - release a power domain reference
  * @dev_priv: i915 device instance
@@ -818,6 +838,7 @@ intel_display_power_flush_work_sync(struct drm_i915_private *i915)
  * intel_display_power_get() and might power down the corresponding hardware
  * block right away if this is the last reference.
  */
+#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
 void intel_display_power_put(struct drm_i915_private *dev_priv,
 			     enum intel_display_power_domain domain,
 			     intel_wakeref_t wakeref)
@@ -826,21 +847,9 @@ void intel_display_power_put(struct drm_i915_private *dev_priv,
 	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
 }
 #else
-/**
- * intel_display_power_put_unchecked - release an unchecked power domain reference
- * @dev_priv: i915 device instance
- * @domain: power domain to reference
- *
- * This function drops the power domain reference obtained by
- * intel_display_power_get() and might power down the corresponding hardware
- * block right away if this is the last reference.
- *
- * This function is only for the power domain code's internal use to suppress wakeref
- * tracking when the correspondig debug kconfig option is disabled, should not
- * be used otherwise.
- */
-void intel_display_power_put_unchecked(struct drm_i915_private *dev_priv,
-				       enum intel_display_power_domain domain)
+void intel_display_power_put(struct drm_i915_private *dev_priv,
+			     enum intel_display_power_domain domain,
+			     intel_wakeref_t wakeref)
 {
 	__intel_display_power_put(dev_priv, domain);
 	intel_runtime_pm_put_unchecked(&dev_priv->runtime_pm);
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index 688f3b60b5c5..c6bd4f122487 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -190,60 +190,20 @@ intel_wakeref_t intel_display_power_get(struct drm_i915_private *dev_priv,
 intel_wakeref_t
 intel_display_power_get_if_enabled(struct drm_i915_private *dev_priv,
 				   enum intel_display_power_domain domain);
-void __intel_display_power_put_async(struct drm_i915_private *i915,
-				     enum intel_display_power_domain domain,
-				     intel_wakeref_t wakeref,
-				     int delay_ms);
 void intel_display_power_flush_work(struct drm_i915_private *i915);
-#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
+
 void intel_display_power_put(struct drm_i915_private *dev_priv,
 			     enum intel_display_power_domain domain,
 			     intel_wakeref_t wakeref);
-static inline void
-intel_display_power_put_async(struct drm_i915_private *i915,
-			      enum intel_display_power_domain domain,
-			      intel_wakeref_t wakeref)
-{
-	__intel_display_power_put_async(i915, domain, wakeref, -1);
-}
 
-static inline void
-intel_display_power_put_async_delay(struct drm_i915_private *i915,
-				    enum intel_display_power_domain domain,
-				    intel_wakeref_t wakeref,
-				    int delay_ms)
-{
-	__intel_display_power_put_async(i915, domain, wakeref, delay_ms);
-}
-#else
-void intel_display_power_put_unchecked(struct drm_i915_private *dev_priv,
-				       enum intel_display_power_domain domain);
+void intel_display_power_put_async(struct drm_i915_private *i915,
+				   enum intel_display_power_domain domain,
+				   intel_wakeref_t wakeref);
 
-static inline void
-intel_display_power_put(struct drm_i915_private *i915,
-			enum intel_display_power_domain domain,
-			intel_wakeref_t wakeref)
-{
-	intel_display_power_put_unchecked(i915, domain);
-}
-
-static inline void
-intel_display_power_put_async(struct drm_i915_private *i915,
-			      enum intel_display_power_domain domain,
-			      intel_wakeref_t wakeref)
-{
-	__intel_display_power_put_async(i915, domain, INTEL_WAKEREF_DEF, -1);
-}
-
-static inline void
-intel_display_power_put_async_delay(struct drm_i915_private *i915,
-				    enum intel_display_power_domain domain,
-				    intel_wakeref_t wakeref,
-				    int delay_ms)
-{
-	__intel_display_power_put_async(i915, domain, INTEL_WAKEREF_DEF, delay_ms);
-}
-#endif
+void intel_display_power_put_async_delay(struct drm_i915_private *i915,
+					 enum intel_display_power_domain domain,
+					 intel_wakeref_t wakeref,
+					 int delay_ms);
 
 void
 intel_display_power_get_in_set(struct drm_i915_private *i915,
-- 
2.39.5

