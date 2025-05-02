Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC87CAA6CEC
	for <lists+intel-gfx@lfdr.de>; Fri,  2 May 2025 10:50:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83AAA10E8C7;
	Fri,  2 May 2025 08:50:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B+aFqs9x";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EEFF10E8C6;
 Fri,  2 May 2025 08:50:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746175816; x=1777711816;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FeA6rLz2sSPWSi0F9Xn82U+zVB7OnZ4fe/pNo8JsGik=;
 b=B+aFqs9xdeYYqWRWwrepxBUdYjvkmBxYgfrIbpwJBqzhngtXQKizEZp+
 LGeLBv8OrIX0RArYS5w84mURHCjgMmmOfJFQCsspZejsggXDQXYY5WcSU
 TBKswfU7cJ2hMIoOY112iUmJlvaGesbewvlaPI32VC1I+e7dzW7Szt+E+
 Fau4wn7FUT4QwcaWIXG0KwajrXB3KGPsNl/0TgAgYI29Xou4ZMK2lfODH
 +U37LtPCOkDUtmr1zNCPeoIw8QaKCXpnBenbSNLZC1VfBhfgfcyr07Vtt
 P7CMeGmb1maep/ZuMyiZsRnxaXHgT7uVeY9l5YBKa346Nuk67vtk3b4vN g==;
X-CSE-ConnectionGUID: 7jqmlVsnRuq91ni63GbkUg==
X-CSE-MsgGUID: 0Y+vbneyQu+1/S4Rf0Tsfw==
X-IronPort-AV: E=McAfee;i="6700,10204,11420"; a="47115185"
X-IronPort-AV: E=Sophos;i="6.15,256,1739865600"; d="scan'208";a="47115185"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2025 01:50:16 -0700
X-CSE-ConnectionGUID: mucoCw6bSlqzGMDpyryuwg==
X-CSE-MsgGUID: U25gJVPpQxWpUOm4Fj/QbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,256,1739865600"; d="scan'208";a="138612663"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.144])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2025 01:50:14 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 3/3] drm/i915/de: drop drm_i915_private compat wrappers
 from intel_de_*()
Date: Fri,  2 May 2025 11:49:56 +0300
Message-Id: <3aac42eab7b03c791afee940d0a647770afc99c5.1746175756.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1746175756.git.jani.nikula@intel.com>
References: <cover.1746175756.git.jani.nikula@intel.com>
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

