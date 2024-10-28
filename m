Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 977259B3B1E
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 21:08:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA80810E572;
	Mon, 28 Oct 2024 20:08:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jwVQBvO/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFB5E10E56D;
 Mon, 28 Oct 2024 20:08:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730146119; x=1761682119;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7aXHdgfRc5JnV8kAZwK7Q6ILdgsvRgqSNkc9hEYvcJQ=;
 b=jwVQBvO/83cf2kT9T34VCSMU+zKq0MmEONeMQOuGjHo4lg8+ip4X4GIc
 Pd/8L1LDP21/K5fHXawcGUkssYj8Ei7C5e74mgbEQPMI4+z4JmBfJ023Y
 tzuNa0rLnG8o88di6WZOiYoRNIEIEp7GgReV2FuexQ0rr7sDq8f8wNt9Q
 oaXYEtYjDtlmpT5alrXZpigTjOEqKSmU8WkjszoRJ7Ph8s2riTIPNnras
 EU5c6o2kH6BmKLKkMuVaWn+9uRgssOzb/DltWqAmeQHxCwy2cbaG/sg0C
 1c/pIKnxjhA99dm2vPf4pt5MOaGuZ4df+Ns6SwSNYyy9VvqimlCY9YDuB A==;
X-CSE-ConnectionGUID: PZAZfKwrRTOW1DupTg8Z6w==
X-CSE-MsgGUID: PSoxhOmARLyVBG/QejkV0Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="40859947"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="40859947"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 13:08:38 -0700
X-CSE-ConnectionGUID: Ja3/g+m/QoO8YTGyq9UNhw==
X-CSE-MsgGUID: E4mLIwaxT5+YUaMIF2tnow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="86863418"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.21])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 13:08:37 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [CI v2 v2 12/12] drm/i915/de: remove unnecessary generic wrappers
Date: Mon, 28 Oct 2024 22:07:30 +0200
Message-Id: <82da66027a122b336278daa2c9a9eb39843082ba.1730146000.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1730146000.git.jani.nikula@intel.com>
References: <cover.1730146000.git.jani.nikula@intel.com>
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

With many of the intel_de_* callers switched over to struct
intel_display, we can remove some of the unnecessary generic wrappers.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_de.h | 46 ++++++++++---------------
 1 file changed, 18 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i915/display/intel_de.h
index e017cd4a8168..bb51f974e9e2 100644
--- a/drivers/gpu/drm/i915/display/intel_de.h
+++ b/drivers/gpu/drm/i915/display/intel_de.h
@@ -32,7 +32,7 @@ __intel_de_read(struct intel_display *display, i915_reg_t reg)
 #define intel_de_read(p,...) __intel_de_read(__to_intel_display(p), __VA_ARGS__)
 
 static inline u8
-__intel_de_read8(struct intel_display *display, i915_reg_t reg)
+intel_de_read8(struct intel_display *display, i915_reg_t reg)
 {
 	u8 val;
 
@@ -44,11 +44,10 @@ __intel_de_read8(struct intel_display *display, i915_reg_t reg)
 
 	return val;
 }
-#define intel_de_read8(p,...) __intel_de_read8(__to_intel_display(p), __VA_ARGS__)
 
 static inline u64
-__intel_de_read64_2x32(struct intel_display *display,
-		       i915_reg_t lower_reg, i915_reg_t upper_reg)
+intel_de_read64_2x32(struct intel_display *display,
+		     i915_reg_t lower_reg, i915_reg_t upper_reg)
 {
 	u64 val;
 
@@ -63,7 +62,6 @@ __intel_de_read64_2x32(struct intel_display *display,
 
 	return val;
 }
-#define intel_de_read64_2x32(p,...) __intel_de_read64_2x32(__to_intel_display(p), __VA_ARGS__)
 
 static inline void
 __intel_de_posting_read(struct intel_display *display, i915_reg_t reg)
@@ -88,12 +86,11 @@ __intel_de_write(struct intel_display *display, i915_reg_t reg, u32 val)
 #define intel_de_write(p,...) __intel_de_write(__to_intel_display(p), __VA_ARGS__)
 
 static inline u32
-____intel_de_rmw_nowl(struct intel_display *display, i915_reg_t reg,
-		      u32 clear, u32 set)
+__intel_de_rmw_nowl(struct intel_display *display, i915_reg_t reg,
+		    u32 clear, u32 set)
 {
 	return intel_uncore_rmw(__to_uncore(display), reg, clear, set);
 }
-#define __intel_de_rmw_nowl(p,...) ____intel_de_rmw_nowl(__to_intel_display(p), __VA_ARGS__)
 
 static inline u32
 __intel_de_rmw(struct intel_display *display, i915_reg_t reg, u32 clear,
@@ -112,18 +109,17 @@ __intel_de_rmw(struct intel_display *display, i915_reg_t reg, u32 clear,
 #define intel_de_rmw(p,...) __intel_de_rmw(__to_intel_display(p), __VA_ARGS__)
 
 static inline int
-____intel_de_wait_for_register_nowl(struct intel_display *display,
-				    i915_reg_t reg,
-				    u32 mask, u32 value, unsigned int timeout)
+__intel_de_wait_for_register_nowl(struct intel_display *display,
+				  i915_reg_t reg,
+				  u32 mask, u32 value, unsigned int timeout)
 {
 	return intel_wait_for_register(__to_uncore(display), reg, mask,
 				       value, timeout);
 }
-#define __intel_de_wait_for_register_nowl(p,...) ____intel_de_wait_for_register_nowl(__to_intel_display(p), __VA_ARGS__)
 
 static inline int
-__intel_de_wait(struct intel_display *display, i915_reg_t reg,
-		u32 mask, u32 value, unsigned int timeout)
+intel_de_wait(struct intel_display *display, i915_reg_t reg,
+	      u32 mask, u32 value, unsigned int timeout)
 {
 	int ret;
 
@@ -136,11 +132,10 @@ __intel_de_wait(struct intel_display *display, i915_reg_t reg,
 
 	return ret;
 }
-#define intel_de_wait(p,...) __intel_de_wait(__to_intel_display(p), __VA_ARGS__)
 
 static inline int
-__intel_de_wait_fw(struct intel_display *display, i915_reg_t reg,
-		   u32 mask, u32 value, unsigned int timeout)
+intel_de_wait_fw(struct intel_display *display, i915_reg_t reg,
+		 u32 mask, u32 value, unsigned int timeout)
 {
 	int ret;
 
@@ -153,13 +148,12 @@ __intel_de_wait_fw(struct intel_display *display, i915_reg_t reg,
 
 	return ret;
 }
-#define intel_de_wait_fw(p,...) __intel_de_wait_fw(__to_intel_display(p), __VA_ARGS__)
 
 static inline int
-__intel_de_wait_custom(struct intel_display *display, i915_reg_t reg,
-		       u32 mask, u32 value,
-		       unsigned int fast_timeout_us,
-		       unsigned int slow_timeout_ms, u32 *out_value)
+intel_de_wait_custom(struct intel_display *display, i915_reg_t reg,
+		     u32 mask, u32 value,
+		     unsigned int fast_timeout_us,
+		     unsigned int slow_timeout_ms, u32 *out_value)
 {
 	int ret;
 
@@ -173,7 +167,6 @@ __intel_de_wait_custom(struct intel_display *display, i915_reg_t reg,
 
 	return ret;
 }
-#define intel_de_wait_custom(p,...) __intel_de_wait_custom(__to_intel_display(p), __VA_ARGS__)
 
 static inline int
 __intel_de_wait_for_set(struct intel_display *display, i915_reg_t reg,
@@ -220,19 +213,16 @@ __intel_de_write_fw(struct intel_display *display, i915_reg_t reg, u32 val)
 #define intel_de_write_fw(p,...) __intel_de_write_fw(__to_intel_display(p), __VA_ARGS__)
 
 static inline u32
-__intel_de_read_notrace(struct intel_display *display, i915_reg_t reg)
+intel_de_read_notrace(struct intel_display *display, i915_reg_t reg)
 {
 	return intel_uncore_read_notrace(__to_uncore(display), reg);
 }
-#define intel_de_read_notrace(p,...) __intel_de_read_notrace(__to_intel_display(p), __VA_ARGS__)
 
 static inline void
-__intel_de_write_notrace(struct intel_display *display, i915_reg_t reg,
-			 u32 val)
+intel_de_write_notrace(struct intel_display *display, i915_reg_t reg, u32 val)
 {
 	intel_uncore_write_notrace(__to_uncore(display), reg, val);
 }
-#define intel_de_write_notrace(p,...) __intel_de_write_notrace(__to_intel_display(p), __VA_ARGS__)
 
 static __always_inline void
 intel_de_write_dsb(struct intel_display *display, struct intel_dsb *dsb,
-- 
2.39.5

