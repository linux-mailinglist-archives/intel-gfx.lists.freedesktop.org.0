Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 175FAA984EF
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Apr 2025 11:10:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7248B10E422;
	Wed, 23 Apr 2025 09:10:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Moz6P6Kc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D0DB10E64E;
 Wed, 23 Apr 2025 09:10:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745399416; x=1776935416;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FeA6rLz2sSPWSi0F9Xn82U+zVB7OnZ4fe/pNo8JsGik=;
 b=Moz6P6Kc64f+trG+ffFiuvUU594km/td2kZWnWde6ApMXywo8AXLxKLI
 WtWKhEdl2F5/jPp/GD8EtdAq843AeMrmsxUUGiCXfg+hb0GYKf1nHHaE7
 BWeqXk/rGxY+a+Twy+8DP2ECwwAXmW6ZEUE9O/F0J1LHO4oWXLOkh1hbh
 C9Pz2BIOCC66WNkqede/YHEMA3/1+PdF57D7n4KWllfa09tcK65tFDul1
 W/b45i9S46Cc6b/7dw4SJEyR5ioTcwdIix2cRT/0Rkxj1600C0crZhxxy
 zkUuiWrVABv+ZVYnFNPk8ykE1AXHp7Zs0hYxSBJ7yPFvxiS+oE0FQq06B w==;
X-CSE-ConnectionGUID: 8BJ7Tj4fSmSb3acsG6i+9w==
X-CSE-MsgGUID: wXy4aea+RlG26V4Wv/LQ/g==
X-IronPort-AV: E=McAfee;i="6700,10204,11411"; a="46686959"
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="46686959"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 02:10:16 -0700
X-CSE-ConnectionGUID: YWh6KauFT8265ioJM9l56g==
X-CSE-MsgGUID: tW+rEW1eQP+4E6s214gRxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="163317724"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.175])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 02:10:14 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 3/3] drm/i915/de: drop drm_i915_private compat wrappers from
 intel_de_*()
Date: Wed, 23 Apr 2025 12:09:48 +0300
Message-Id: <c8dc8fdd8815b9e0ef233b4aa6f071cd84c2a867.1745399318.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1745399318.git.jani.nikula@intel.com>
References: <cover.1745399318.git.jani.nikula@intel.com>
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

All the users of intel_de_*() functions now pass in struct
intel_display, and we can remove the __to_intel_display() _Generic()
compat wrappers.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_de.h | 14 ++++----------
 1 file changed, 4 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i915/display/intel_de.h
index 655467a6ba87..54ce3e4f8fd9 100644
--- a/drivers/gpu/drm/i915/display/intel_de.h
+++ b/drivers/gpu/drm/i915/display/intel_de.h
@@ -6,7 +6,6 @@
 #ifndef __INTEL_DE_H__
 #define __INTEL_DE_H__
 
-#include "intel_display_conversion.h"
 #include "intel_display_core.h"
 #include "intel_dmc_wl.h"
 #include "intel_dsb.h"
@@ -19,7 +18,7 @@ static inline struct intel_uncore *__to_uncore(struct intel_display *display)
 }
 
 static inline u32
-__intel_de_read(struct intel_display *display, i915_reg_t reg)
+intel_de_read(struct intel_display *display, i915_reg_t reg)
 {
 	u32 val;
 
@@ -31,7 +30,6 @@ __intel_de_read(struct intel_display *display, i915_reg_t reg)
 
 	return val;
 }
-#define intel_de_read(p,...) __intel_de_read(__to_intel_display(p), __VA_ARGS__)
 
 static inline u8
 intel_de_read8(struct intel_display *display, i915_reg_t reg)
@@ -66,7 +64,7 @@ intel_de_read64_2x32(struct intel_display *display,
 }
 
 static inline void
-__intel_de_posting_read(struct intel_display *display, i915_reg_t reg)
+intel_de_posting_read(struct intel_display *display, i915_reg_t reg)
 {
 	intel_dmc_wl_get(display, reg);
 
@@ -74,10 +72,9 @@ __intel_de_posting_read(struct intel_display *display, i915_reg_t reg)
 
 	intel_dmc_wl_put(display, reg);
 }
-#define intel_de_posting_read(p,...) __intel_de_posting_read(__to_intel_display(p), __VA_ARGS__)
 
 static inline void
-__intel_de_write(struct intel_display *display, i915_reg_t reg, u32 val)
+intel_de_write(struct intel_display *display, i915_reg_t reg, u32 val)
 {
 	intel_dmc_wl_get(display, reg);
 
@@ -85,7 +82,6 @@ __intel_de_write(struct intel_display *display, i915_reg_t reg, u32 val)
 
 	intel_dmc_wl_put(display, reg);
 }
-#define intel_de_write(p,...) __intel_de_write(__to_intel_display(p), __VA_ARGS__)
 
 static inline u32
 __intel_de_rmw_nowl(struct intel_display *display, i915_reg_t reg,
@@ -95,8 +91,7 @@ __intel_de_rmw_nowl(struct intel_display *display, i915_reg_t reg,
 }
 
 static inline u32
-__intel_de_rmw(struct intel_display *display, i915_reg_t reg, u32 clear,
-	       u32 set)
+intel_de_rmw(struct intel_display *display, i915_reg_t reg, u32 clear, u32 set)
 {
 	u32 val;
 
@@ -108,7 +103,6 @@ __intel_de_rmw(struct intel_display *display, i915_reg_t reg, u32 clear,
 
 	return val;
 }
-#define intel_de_rmw(p,...) __intel_de_rmw(__to_intel_display(p), __VA_ARGS__)
 
 static inline int
 __intel_de_wait_for_register_nowl(struct intel_display *display,
-- 
2.39.5

