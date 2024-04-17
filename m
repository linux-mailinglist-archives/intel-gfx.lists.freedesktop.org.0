Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4425B8A83A7
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Apr 2024 15:03:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B768F1134B8;
	Wed, 17 Apr 2024 13:03:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="clee1Xtl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D9831134C9;
 Wed, 17 Apr 2024 13:03:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713359013; x=1744895013;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hL7o9/SBg/Q6jv/saSjdRyqT9Kzqwkh2U5LyDpSvy6M=;
 b=clee1XtloYrJeordmIgSigD/JzYVzFNMl171P9gXbsAQgQVjZTh35MfY
 HxEGhAu5nsz2ibBz9I3NrtW4g7zkpH8ozwQB63o99cMwodXuDg+hJHMnD
 4S4Tvxh2jqaiDExBCYSVTOYZKtQ72WWsxkUXRhYk/NMLkUGxj/6iR07sp
 GyHDExScLCV4mGho1O6OqSROv7SWtstEky9imskemg5hOx9w+RTwIpQ95
 SUvhJyxrFOQKKqvPppqqG1gA5tQV04T1zCZJPsyKR5UJyxzVZEdpqjsdy
 b3Eo4K7aXgdNBc+OJQL4/FXVk9P/nXrbcNEtvuVc4ASiqh44X+LhDhFWO w==;
X-CSE-ConnectionGUID: AR/BK3yCR16EI0Ouwg0IzQ==
X-CSE-MsgGUID: TnaNbCFxQtqv8DVEtRqUsw==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="8976890"
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; 
   d="scan'208";a="8976890"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 06:03:32 -0700
X-CSE-ConnectionGUID: JcOguKJwTnavX59k0vS2GQ==
X-CSE-MsgGUID: WUuw+86xQBOwLgXV9+jthw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; d="scan'208";a="27199526"
Received: from vpus-mobl1.ger.corp.intel.com (HELO localhost) ([10.252.45.164])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 06:03:31 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, Luca Coelho <luciano.coelho@intel.com>,
 jani.nikula@intel.com
Subject: [PATCH v4 8/9] drm/i915/de: allow intel_display and drm_i915_private
 for de functions
Date: Wed, 17 Apr 2024 16:02:46 +0300
Message-Id: <1b0e8e7c732535e18c8498a2e18fe1e4c123e2f5.1713358679.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1713358679.git.jani.nikula@intel.com>
References: <cover.1713358679.git.jani.nikula@intel.com>
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

It would be too much noise to convert the intel_de_* functions from
using struct drm_i915_private to struct intel_display all at once. Add
generic wrappers using __to_intel_display() to accept both.

v2: Take the intel_dmc_wl_* changes into account

Cc: Luca Coelho <luciano.coelho@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com> # v1
Signed-off-by: Jani Nikula <jani.nikula@intel.com>

---

This was done using a cocci + shell script combo:

    #!/bin/bash

    set -e

    FILE=drivers/gpu/drm/i915/display/intel_de.h

    cocci=$(mktemp)
    cat >$cocci <<EOF
    @@
    identifier ptr;
    identifier fn =~ "^_*intel_de_.*";
    fresh identifier __fn = "__" ## fn;
    @@

    - fn(struct drm_i915_private *ptr,
    + __fn(struct intel_display *display,
      ...) {
      <...
    (
    - &ptr->uncore
    + __to_uncore(display)
    |
    - &ptr->display
    + display
    |
    - ptr
    + display
    )
      ...>
      }
    + #define fn(p, VARARGS_PLACEHOLDER) __fn(__to_intel_display(p), __VA_ARGS__)

    EOF

    spatch --sp-file $cocci --in-place --linux-spacing $FILE >/dev/null

    # Fixup varargs
    sed -i "s/VARARGS_PLACEHOLDER/.../g" $FILE

    # Add the __to_uncore() helper
    snip=$(mktemp)
    cat >$snip <<EOF

    static inline struct intel_uncore *__to_uncore(struct intel_display *display)
    {
    	return &to_i915(display->drm)->uncore;
    }
    EOF

    sed -ie "/\#include \"intel_uncore\.h\"/r $snip" $FILE

    rm -f $cocci $snip
---
 drivers/gpu/drm/i915/display/intel_de.h | 157 ++++++++++++++----------
 1 file changed, 93 insertions(+), 64 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i915/display/intel_de.h
index 15440058ad2a..e881bfeafb47 100644
--- a/drivers/gpu/drm/i915/display/intel_de.h
+++ b/drivers/gpu/drm/i915/display/intel_de.h
@@ -10,161 +10,185 @@
 #include "i915_trace.h"
 #include "intel_uncore.h"
 
+static inline struct intel_uncore *__to_uncore(struct intel_display *display)
+{
+	return &to_i915(display->drm)->uncore;
+}
+
 static inline u32
-intel_de_read(struct drm_i915_private *i915, i915_reg_t reg)
+__intel_de_read(struct intel_display *display, i915_reg_t reg)
 {
 	u32 val;
 
-	intel_dmc_wl_get(&i915->display, reg);
+	intel_dmc_wl_get(display, reg);
 
-	val = intel_uncore_read(&i915->uncore, reg);
+	val = intel_uncore_read(__to_uncore(display), reg);
 
-	intel_dmc_wl_put(&i915->display, reg);
+	intel_dmc_wl_put(display, reg);
 
 	return val;
 }
+#define intel_de_read(p,...) __intel_de_read(__to_intel_display(p), __VA_ARGS__)
 
 static inline u8
-intel_de_read8(struct drm_i915_private *i915, i915_reg_t reg)
+__intel_de_read8(struct intel_display *display, i915_reg_t reg)
 {
 	u8 val;
 
-	intel_dmc_wl_get(&i915->display, reg);
+	intel_dmc_wl_get(display, reg);
 
-	val = intel_uncore_read8(&i915->uncore, reg);
+	val = intel_uncore_read8(__to_uncore(display), reg);
 
-	intel_dmc_wl_put(&i915->display, reg);
+	intel_dmc_wl_put(display, reg);
 
 	return val;
 }
+#define intel_de_read8(p,...) __intel_de_read8(__to_intel_display(p), __VA_ARGS__)
 
 static inline u64
-intel_de_read64_2x32(struct drm_i915_private *i915,
-		     i915_reg_t lower_reg, i915_reg_t upper_reg)
+__intel_de_read64_2x32(struct intel_display *display,
+		       i915_reg_t lower_reg, i915_reg_t upper_reg)
 {
 	u64 val;
 
-	intel_dmc_wl_get(&i915->display, lower_reg);
-	intel_dmc_wl_get(&i915->display, upper_reg);
+	intel_dmc_wl_get(display, lower_reg);
+	intel_dmc_wl_get(display, upper_reg);
 
-	val = intel_uncore_read64_2x32(&i915->uncore, lower_reg, upper_reg);
+	val = intel_uncore_read64_2x32(__to_uncore(display), lower_reg,
+				       upper_reg);
 
-	intel_dmc_wl_put(&i915->display, upper_reg);
-	intel_dmc_wl_put(&i915->display, lower_reg);
+	intel_dmc_wl_put(display, upper_reg);
+	intel_dmc_wl_put(display, lower_reg);
 
 	return val;
 }
+#define intel_de_read64_2x32(p,...) __intel_de_read64_2x32(__to_intel_display(p), __VA_ARGS__)
 
 static inline void
-intel_de_posting_read(struct drm_i915_private *i915, i915_reg_t reg)
+__intel_de_posting_read(struct intel_display *display, i915_reg_t reg)
 {
-	intel_dmc_wl_get(&i915->display, reg);
+	intel_dmc_wl_get(display, reg);
 
-	intel_uncore_posting_read(&i915->uncore, reg);
+	intel_uncore_posting_read(__to_uncore(display), reg);
 
-	intel_dmc_wl_put(&i915->display, reg);
+	intel_dmc_wl_put(display, reg);
 }
+#define intel_de_posting_read(p,...) __intel_de_posting_read(__to_intel_display(p), __VA_ARGS__)
 
 static inline void
-intel_de_write(struct drm_i915_private *i915, i915_reg_t reg, u32 val)
+__intel_de_write(struct intel_display *display, i915_reg_t reg, u32 val)
 {
-	intel_dmc_wl_get(&i915->display, reg);
+	intel_dmc_wl_get(display, reg);
 
-	intel_uncore_write(&i915->uncore, reg, val);
+	intel_uncore_write(__to_uncore(display), reg, val);
 
-	intel_dmc_wl_put(&i915->display, reg);
+	intel_dmc_wl_put(display, reg);
 }
+#define intel_de_write(p,...) __intel_de_write(__to_intel_display(p), __VA_ARGS__)
 
 static inline u32
-__intel_de_rmw_nowl(struct drm_i915_private *i915, i915_reg_t reg,
-		    u32 clear, u32 set)
+____intel_de_rmw_nowl(struct intel_display *display, i915_reg_t reg,
+		      u32 clear, u32 set)
 {
-	return intel_uncore_rmw(&i915->uncore, reg, clear, set);
+	return intel_uncore_rmw(__to_uncore(display), reg, clear, set);
 }
+#define __intel_de_rmw_nowl(p,...) ____intel_de_rmw_nowl(__to_intel_display(p), __VA_ARGS__)
 
 static inline u32
-intel_de_rmw(struct drm_i915_private *i915, i915_reg_t reg, u32 clear, u32 set)
+__intel_de_rmw(struct intel_display *display, i915_reg_t reg, u32 clear,
+	       u32 set)
 {
 	u32 val;
 
-	intel_dmc_wl_get(&i915->display, reg);
+	intel_dmc_wl_get(display, reg);
 
-	val = __intel_de_rmw_nowl(i915, reg, clear, set);
+	val = __intel_de_rmw_nowl(display, reg, clear, set);
 
-	intel_dmc_wl_put(&i915->display, reg);
+	intel_dmc_wl_put(display, reg);
 
 	return val;
 }
+#define intel_de_rmw(p,...) __intel_de_rmw(__to_intel_display(p), __VA_ARGS__)
 
 static inline int
-__intel_de_wait_for_register_nowl(struct drm_i915_private *i915, i915_reg_t reg,
-				  u32 mask, u32 value, unsigned int timeout)
+____intel_de_wait_for_register_nowl(struct intel_display *display,
+				    i915_reg_t reg,
+				    u32 mask, u32 value, unsigned int timeout)
 {
-	return intel_wait_for_register(&i915->uncore, reg, mask,
+	return intel_wait_for_register(__to_uncore(display), reg, mask,
 				       value, timeout);
 }
+#define __intel_de_wait_for_register_nowl(p,...) ____intel_de_wait_for_register_nowl(__to_intel_display(p), __VA_ARGS__)
 
 static inline int
-intel_de_wait(struct drm_i915_private *i915, i915_reg_t reg,
-	      u32 mask, u32 value, unsigned int timeout)
+__intel_de_wait(struct intel_display *display, i915_reg_t reg,
+		u32 mask, u32 value, unsigned int timeout)
 {
 	int ret;
 
-	intel_dmc_wl_get(&i915->display, reg);
+	intel_dmc_wl_get(display, reg);
 
-	ret = __intel_de_wait_for_register_nowl(i915, reg, mask, value, timeout);
+	ret = __intel_de_wait_for_register_nowl(display, reg, mask, value,
+						timeout);
 
-	intel_dmc_wl_put(&i915->display, reg);
+	intel_dmc_wl_put(display, reg);
 
 	return ret;
 }
+#define intel_de_wait(p,...) __intel_de_wait(__to_intel_display(p), __VA_ARGS__)
 
 static inline int
-intel_de_wait_fw(struct drm_i915_private *i915, i915_reg_t reg,
-		 u32 mask, u32 value, unsigned int timeout)
+__intel_de_wait_fw(struct intel_display *display, i915_reg_t reg,
+		   u32 mask, u32 value, unsigned int timeout)
 {
 	int ret;
 
-	intel_dmc_wl_get(&i915->display, reg);
+	intel_dmc_wl_get(display, reg);
 
-	ret = intel_wait_for_register_fw(&i915->uncore, reg, mask, value, timeout);
+	ret = intel_wait_for_register_fw(__to_uncore(display), reg, mask,
+					 value, timeout);
 
-	intel_dmc_wl_put(&i915->display, reg);
+	intel_dmc_wl_put(display, reg);
 
 	return ret;
 }
+#define intel_de_wait_fw(p,...) __intel_de_wait_fw(__to_intel_display(p), __VA_ARGS__)
 
 static inline int
-intel_de_wait_custom(struct drm_i915_private *i915, i915_reg_t reg,
-		     u32 mask, u32 value,
-		     unsigned int fast_timeout_us,
-		     unsigned int slow_timeout_ms, u32 *out_value)
+__intel_de_wait_custom(struct intel_display *display, i915_reg_t reg,
+		       u32 mask, u32 value,
+		       unsigned int fast_timeout_us,
+		       unsigned int slow_timeout_ms, u32 *out_value)
 {
 	int ret;
 
-	intel_dmc_wl_get(&i915->display, reg);
+	intel_dmc_wl_get(display, reg);
 
-	ret = __intel_wait_for_register(&i915->uncore, reg, mask, value,
+	ret = __intel_wait_for_register(__to_uncore(display), reg, mask,
+					value,
 					fast_timeout_us, slow_timeout_ms, out_value);
 
-	intel_dmc_wl_put(&i915->display, reg);
+	intel_dmc_wl_put(display, reg);
 
 	return ret;
 }
+#define intel_de_wait_custom(p,...) __intel_de_wait_custom(__to_intel_display(p), __VA_ARGS__)
 
 static inline int
-intel_de_wait_for_set(struct drm_i915_private *i915, i915_reg_t reg,
-		      u32 mask, unsigned int timeout)
+__intel_de_wait_for_set(struct intel_display *display, i915_reg_t reg,
+			u32 mask, unsigned int timeout)
 {
-	return intel_de_wait(i915, reg, mask, mask, timeout);
+	return intel_de_wait(display, reg, mask, mask, timeout);
 }
+#define intel_de_wait_for_set(p,...) __intel_de_wait_for_set(__to_intel_display(p), __VA_ARGS__)
 
 static inline int
-intel_de_wait_for_clear(struct drm_i915_private *i915, i915_reg_t reg,
-			u32 mask, unsigned int timeout)
+__intel_de_wait_for_clear(struct intel_display *display, i915_reg_t reg,
+			  u32 mask, unsigned int timeout)
 {
-	return intel_de_wait(i915, reg, mask, 0, timeout);
+	return intel_de_wait(display, reg, mask, 0, timeout);
 }
+#define intel_de_wait_for_clear(p,...) __intel_de_wait_for_clear(__to_intel_display(p), __VA_ARGS__)
 
 /*
  * Unlocked mmio-accessors, think carefully before using these.
@@ -175,33 +199,38 @@ intel_de_wait_for_clear(struct drm_i915_private *i915, i915_reg_t reg,
  * a more localised lock guarding all access to that bank of registers.
  */
 static inline u32
-intel_de_read_fw(struct drm_i915_private *i915, i915_reg_t reg)
+__intel_de_read_fw(struct intel_display *display, i915_reg_t reg)
 {
 	u32 val;
 
-	val = intel_uncore_read_fw(&i915->uncore, reg);
+	val = intel_uncore_read_fw(__to_uncore(display), reg);
 	trace_i915_reg_rw(false, reg, val, sizeof(val), true);
 
 	return val;
 }
+#define intel_de_read_fw(p,...) __intel_de_read_fw(__to_intel_display(p), __VA_ARGS__)
 
 static inline void
-intel_de_write_fw(struct drm_i915_private *i915, i915_reg_t reg, u32 val)
+__intel_de_write_fw(struct intel_display *display, i915_reg_t reg, u32 val)
 {
 	trace_i915_reg_rw(true, reg, val, sizeof(val), true);
-	intel_uncore_write_fw(&i915->uncore, reg, val);
+	intel_uncore_write_fw(__to_uncore(display), reg, val);
 }
+#define intel_de_write_fw(p,...) __intel_de_write_fw(__to_intel_display(p), __VA_ARGS__)
 
 static inline u32
-intel_de_read_notrace(struct drm_i915_private *i915, i915_reg_t reg)
+__intel_de_read_notrace(struct intel_display *display, i915_reg_t reg)
 {
-	return intel_uncore_read_notrace(&i915->uncore, reg);
+	return intel_uncore_read_notrace(__to_uncore(display), reg);
 }
+#define intel_de_read_notrace(p,...) __intel_de_read_notrace(__to_intel_display(p), __VA_ARGS__)
 
 static inline void
-intel_de_write_notrace(struct drm_i915_private *i915, i915_reg_t reg, u32 val)
+__intel_de_write_notrace(struct intel_display *display, i915_reg_t reg,
+			 u32 val)
 {
-	intel_uncore_write_notrace(&i915->uncore, reg, val);
+	intel_uncore_write_notrace(__to_uncore(display), reg, val);
 }
+#define intel_de_write_notrace(p,...) __intel_de_write_notrace(__to_intel_display(p), __VA_ARGS__)
 
 #endif /* __INTEL_DE_H__ */
-- 
2.39.2

