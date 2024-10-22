Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE7079AB2F0
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 17:58:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 719D610E6BA;
	Tue, 22 Oct 2024 15:58:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WY8j1T42";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C22C410E053;
 Tue, 22 Oct 2024 15:58:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729612710; x=1761148710;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bLC8dEB+y5NnUqRGCzewbqUQmfSCXUmIPTyP1b23Zd4=;
 b=WY8j1T42Ct9YrLdTuf2slPH+Co/aNPoedIeYC2hkn9pJItZoxVboVXQE
 M45D08J0c0HUawNT3MMJ6mnzMuMEGTT01QIGp93YMHCi9Ove7qh2Pr9Y5
 3VJhO9jvbtgGv8Wr2cb0MVkLbF2ejWIPLqmIxAsWuvqNlJ8+DMmlZMZ3u
 9dJYnoW+U5M1uCiaxOD0AvU60kONLxw67lIv5DsTK8X+Kl8lUOAgOc+Hb
 AKP71SYi10IuIb5d0t+t7H6USr+ip6u0FjtZqOf71STzxL56ENfXBexGy
 h5I8byQMVatJZWt++tTbGzkVnlyLCdPigxw93eI/RpPSbeciIWb+xRmfQ Q==;
X-CSE-ConnectionGUID: hVTd91aPQL6TlqU7l7KNnQ==
X-CSE-MsgGUID: OGAnGBk1Q9eruvh1HpuCCA==
X-IronPort-AV: E=McAfee;i="6700,10204,11233"; a="28612903"
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="28612903"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 08:58:29 -0700
X-CSE-ConnectionGUID: kqwoJQjDTWijivRlKae8sQ==
X-CSE-MsgGUID: l8DXjm7ZRj6kZnkRFXOd1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="83891898"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.58])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 08:58:28 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 11/11] drm/i915/de: remove unnecessary generic wrappers
Date: Tue, 22 Oct 2024 18:57:28 +0300
Message-Id: <b0021a61df9f23e95a6e791f160d2ea41a839aa5.1729612605.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1729612605.git.jani.nikula@intel.com>
References: <cover.1729612605.git.jani.nikula@intel.com>
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

