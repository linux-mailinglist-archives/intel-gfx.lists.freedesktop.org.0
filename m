Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61A41C4851F
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Nov 2025 18:28:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C719910E2AC;
	Mon, 10 Nov 2025 17:28:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fK77uaXp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5809210E44A;
 Mon, 10 Nov 2025 17:28:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762795685; x=1794331685;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Mk+H7K0G0W7Nu7rajJc15lAHq45SqMpPh03o6mwlJsI=;
 b=fK77uaXppKE389GjwSrEFdp/zJn3HCTTEk+w+u4asMuf9M5IK/78ITL+
 5Dp985+csPy1boj71MY0ZvlzHQNDKV6OAVjX8Gg1fGMZGuw3uKPZCPhtu
 783R6N/uOG2saoEnJ12ud3j2CzNK/ep7VC7+/0SgPHlZ7U2KeFsnswoS6
 ws20ud/MVYB407cezawulLPteKQVxbKNKF/7/aQmRk0t+R2RSUGCBO8Rg
 DaMHINkjZ4eRJTtl15GTmQEHl/qZ5Aisi5XrOugxG+pd4sAZdqFpAz6eY
 bsXoW/Ivzh+MfCEYaEeFHJWUbHAAiL4QYj2vKvM2ss56ATB4pWubCdwb/ g==;
X-CSE-ConnectionGUID: 2D7vPDuGTpOYZsuxhLyraA==
X-CSE-MsgGUID: BbL6Wi0IRJWOrQsPamvZtg==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="64890957"
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; d="scan'208";a="64890957"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 09:28:05 -0800
X-CSE-ConnectionGUID: kJ+wqCIwQQmgjl6IgprCyg==
X-CSE-MsgGUID: 2gE51UloR6aJ1fRDhfaSiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; d="scan'208";a="188896423"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.30])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 09:28:03 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 01/16] drm/i915/de: Implement register waits one way
Date: Mon, 10 Nov 2025 19:27:40 +0200
Message-ID: <20251110172756.2132-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251110172756.2132-1-ville.syrjala@linux.intel.com>
References: <20251110172756.2132-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Currently we use a messy mix of intel_wait_for_register*()
and __intel_wait_for_register*() to implement various
register polling functions. Make the mess a bit more understandable
by always using the __intel_wait_for_register*() stuff.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_de.h       | 17 +++-------
 .../drm/xe/compat-i915-headers/intel_uncore.h | 31 ++++++-------------
 2 files changed, 14 insertions(+), 34 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i915/display/intel_de.h
index 9ecdcf6b73e4..ea9973dbbffc 100644
--- a/drivers/gpu/drm/i915/display/intel_de.h
+++ b/drivers/gpu/drm/i915/display/intel_de.h
@@ -104,15 +104,6 @@ intel_de_rmw(struct intel_display *display, i915_reg_t reg, u32 clear, u32 set)
 	return val;
 }
 
-static inline int
-__intel_de_wait_for_register_nowl(struct intel_display *display,
-				  i915_reg_t reg,
-				  u32 mask, u32 value, unsigned int timeout_ms)
-{
-	return intel_wait_for_register(__to_uncore(display), reg, mask,
-				       value, timeout_ms);
-}
-
 static inline int
 __intel_de_wait_for_register_atomic_nowl(struct intel_display *display,
 					 i915_reg_t reg,
@@ -131,8 +122,8 @@ intel_de_wait(struct intel_display *display, i915_reg_t reg,
 
 	intel_dmc_wl_get(display, reg);
 
-	ret = __intel_de_wait_for_register_nowl(display, reg, mask, value,
-						timeout_ms);
+	ret = __intel_wait_for_register(__to_uncore(display), reg, mask,
+					value, 2, timeout_ms, NULL);
 
 	intel_dmc_wl_put(display, reg);
 
@@ -147,8 +138,8 @@ intel_de_wait_fw(struct intel_display *display, i915_reg_t reg,
 
 	intel_dmc_wl_get(display, reg);
 
-	ret = intel_wait_for_register_fw(__to_uncore(display), reg, mask,
-					 value, timeout_ms, out_value);
+	ret = __intel_wait_for_register_fw(__to_uncore(display), reg, mask,
+					   value, 2, timeout_ms, out_value);
 
 	intel_dmc_wl_put(display, reg);
 
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h b/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
index d012f02bc84f..d93ddacdf743 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
@@ -91,27 +91,6 @@ static inline u32 intel_uncore_rmw(struct intel_uncore *uncore,
 	return xe_mmio_rmw32(__compat_uncore_to_mmio(uncore), reg, clear, set);
 }
 
-static inline int intel_wait_for_register(struct intel_uncore *uncore,
-					  i915_reg_t i915_reg, u32 mask,
-					  u32 value, unsigned int timeout)
-{
-	struct xe_reg reg = XE_REG(i915_mmio_reg_offset(i915_reg));
-
-	return xe_mmio_wait32(__compat_uncore_to_mmio(uncore), reg, mask, value,
-			      timeout * USEC_PER_MSEC, NULL, false);
-}
-
-static inline int intel_wait_for_register_fw(struct intel_uncore *uncore,
-					     i915_reg_t i915_reg, u32 mask,
-					     u32 value, unsigned int timeout,
-					     u32 *out_value)
-{
-	struct xe_reg reg = XE_REG(i915_mmio_reg_offset(i915_reg));
-
-	return xe_mmio_wait32(__compat_uncore_to_mmio(uncore), reg, mask, value,
-			      timeout * USEC_PER_MSEC, out_value, false);
-}
-
 static inline int
 __intel_wait_for_register(struct intel_uncore *uncore, i915_reg_t i915_reg,
 			  u32 mask, u32 value, unsigned int fast_timeout_us,
@@ -133,6 +112,16 @@ __intel_wait_for_register(struct intel_uncore *uncore, i915_reg_t i915_reg,
 			      out_value, atomic);
 }
 
+static inline int
+__intel_wait_for_register_fw(struct intel_uncore *uncore, i915_reg_t i915_reg,
+			     u32 mask, u32 value, unsigned int fast_timeout_us,
+			     unsigned int slow_timeout_ms, u32 *out_value)
+{
+	return __intel_wait_for_register(uncore, i915_reg, mask, value,
+					 fast_timeout_us, slow_timeout_ms,
+					 out_value);
+}
+
 static inline u32 intel_uncore_read_fw(struct intel_uncore *uncore,
 				       i915_reg_t i915_reg)
 {
-- 
2.49.1

