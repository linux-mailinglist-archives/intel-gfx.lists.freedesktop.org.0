Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 548719AE653
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 15:28:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF77710E94B;
	Thu, 24 Oct 2024 13:28:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M4S/b5ge";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85F6010E941;
 Thu, 24 Oct 2024 13:28:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729776525; x=1761312525;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7aXHdgfRc5JnV8kAZwK7Q6ILdgsvRgqSNkc9hEYvcJQ=;
 b=M4S/b5ge/Tg33bsm+H4FbtrYeqjsNrG1ZmT5Z5LfskgudTTfxmXEdyi0
 s1D4UirE0KywOTbrFFL970v+VjTeRxFVWkC32EQmz7MeJ3eRCJT/0u1KW
 HtjQgl8R6QQOti5aPp29rCZAH3WQS5Ew57vFxrE3zx0t26MP1xaeydVfT
 vufGd0Rt2V4HbOC50PUiBvYoz/Fk97prGGptryT9VJ9XPDeQByKyLo0qN
 yZxqfXk4Ci79eBt2JxPV2T6JMp4vZxLIFoLGZbazcKIBU0QNXlWJPa3r6
 YErSv312LBfLatqJ8MDM9X4LhukppU7yXFJRj9OyVLOC1WzFgd0esoAro A==;
X-CSE-ConnectionGUID: K6CFjs+DS+ewFRMqswS+Eg==
X-CSE-MsgGUID: q9fFvSxURaOIZzSP+HrvEg==
X-IronPort-AV: E=McAfee;i="6700,10204,11235"; a="33308250"
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="33308250"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 06:28:45 -0700
X-CSE-ConnectionGUID: 8i0oC4G4SseyuSO0fbZLcw==
X-CSE-MsgGUID: SiFkfXRgSWiZfr/LrXEO5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="81406904"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 06:28:44 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com,
	jani.nikula@intel.com
Subject: [PATCH v2 12/12] drm/i915/de: remove unnecessary generic wrappers
Date: Thu, 24 Oct 2024 16:27:42 +0300
Message-Id: <4b489643610be32802170f84c040f8a12038795a.1729776384.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1729776384.git.jani.nikula@intel.com>
References: <cover.1729776384.git.jani.nikula@intel.com>
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

