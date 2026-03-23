Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eKcBDDELwWmtPwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 10:43:13 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F1522EF40F
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 10:43:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F59410E33E;
	Mon, 23 Mar 2026 09:43:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GZnwYuho";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A03B10E2D2;
 Mon, 23 Mar 2026 09:43:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774258989; x=1805794989;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vB1QTTyhDeeBKmBcWngZg6efg3UnrLdCthN4nKTGKUo=;
 b=GZnwYuhoUnjrbF2VkF6UHj8uWuwbkuZG4eaIHwgWQDvwQNycM85Jfqa9
 LlntC2hNQupGVmQGGIZnIs87HBgCuSgzlkQ6O/pn+AoAaiwpH8DmmLpDK
 TvI4KxGT8J45iN6DcKCwtuJc2FV1mUNGjudEkxGPvKczoVU0CnwGFNFXH
 MILCEryxdWCXnUEV9CDgZI2SeioK2UxlaOwXwnK8dQ6f0qJNN2dYjln1G
 jo29LiQ48uGfas4YPCnyiXY9pvsP8k+QQ/NnYGPBdS+u5OWF8OujpAVFh
 3a4RvuB31dJilP/QJxVPkbY6cwpE66ljSaMewN80T/A69mGCFh/diyccw g==;
X-CSE-ConnectionGUID: U3hLfqSDQW+lZ2uSuq9rvA==
X-CSE-MsgGUID: N/xFirbcSnet08RfFIm1/w==
X-IronPort-AV: E=McAfee;i="6800,10657,11737"; a="75318629"
X-IronPort-AV: E=Sophos;i="6.23,137,1770624000"; d="scan'208";a="75318629"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2026 02:43:09 -0700
X-CSE-ConnectionGUID: syFpOAQWS+yyVrvfo1WjXw==
X-CSE-MsgGUID: 5XrUeqZjSF27jjYfEeBP7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,137,1770624000"; d="scan'208";a="223171585"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.55])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2026 02:43:08 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 3/3] drm/i915/de: Implement register polling in the display
 code
Date: Mon, 23 Mar 2026 11:43:04 +0200
Message-ID: <20260323094304.8171-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260313111028.25159-4-ville.syrjala@linux.intel.com>
References: <20260313111028.25159-4-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 8F1522EF40F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The plan is to move all the mmio stuff into the display code itself.
As a first step implement the register polling in intel_de.c.

Currently i915 and xe implement this stuff in slightly different
ways, so there are some functional changes here. Try to go for a
reasonable middle ground between the i915 and xe implementations:
- the exponential backoff limit is the simpler approach taken
  by i915 (== just clamp the max sleep duration to 1 ms)
- the fast vs. slow timeout handling is similar to i915 where
  we first try the fast timeout and then again the slow timeout
  if the condition still isn't satisfied. xe just adds up the
  timeouts together, which is a bit weird.
- the atomic wait variant uses udelay() like xe, whereas i915
  has no udelay()s in its atomic loop. As a compromise go for a
  fixed 1 usec delay  for short waits, instead of the somewhat
  peculiar xe behaviour where it effectively just does one
  iteration of the loop.
- keep the "use udelay() for < 10 usec waits" logic (which
  more or less mirrors fsleep()), but include an explicit
  might_sleep() even for these short waits when called from
  a non-atomic intel_de_wait*() function. This should prevent
  people from calling the non-atomic functions from the wrong
  place.

Eventually we may want to switch over to poll_timeout*(),
but that lacks the exponential backoff, so a bit too
radical to change in one go.

v2: Initialize ret in intel_de_wait_for_register() to avoid a
    warning from the compiler. This is actually a false positive
    since we always have fast_timeout_us!=0 when slow_timeout_us!=0,
    but the compiler can't see that

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_de.c       | 99 +++++++++++++++++--
 .../drm/xe/compat-i915-headers/intel_uncore.h | 31 ------
 2 files changed, 91 insertions(+), 39 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_de.c b/drivers/gpu/drm/i915/display/intel_de.c
index fce92535bd6a..d2a418da2d54 100644
--- a/drivers/gpu/drm/i915/display/intel_de.c
+++ b/drivers/gpu/drm/i915/display/intel_de.c
@@ -3,10 +3,85 @@
  * Copyright © 2026 Intel Corporation
  */
 
+#include <linux/delay.h>
+
 #include <drm/drm_print.h>
 
 #include "intel_de.h"
 
+static int __intel_de_wait_for_register(struct intel_display *display,
+					i915_reg_t reg, u32 mask, u32 value,
+					unsigned int timeout_us,
+					u32 (*read)(struct intel_display *display, i915_reg_t reg),
+					u32 *out_val, bool is_atomic)
+{
+	const ktime_t end = ktime_add_us(ktime_get_raw(), timeout_us);
+	int wait_max = 1000;
+	int wait = 10;
+	u32 reg_value;
+	int ret;
+
+	might_sleep_if(!is_atomic);
+
+	if (timeout_us <= 10) {
+		is_atomic = true;
+		wait = 1;
+	}
+
+	for (;;) {
+		bool expired = ktime_after(ktime_get_raw(), end);
+
+		/* guarantee the condition is evaluated after timeout expired */
+		barrier();
+
+		reg_value = read(display, reg);
+		if ((reg_value & mask) == value) {
+			ret = 0;
+			break;
+		}
+
+		if (expired) {
+			ret = -ETIMEDOUT;
+			break;
+		}
+
+		if (is_atomic)
+			udelay(wait);
+		else
+			usleep_range(wait, wait << 1);
+
+		if (wait < wait_max)
+			wait <<= 1;
+	}
+
+	if (out_val)
+		*out_val = reg_value;
+
+	return ret;
+}
+
+static int intel_de_wait_for_register(struct intel_display *display,
+				      i915_reg_t reg, u32 mask, u32 value,
+				      unsigned int fast_timeout_us,
+				      unsigned int slow_timeout_us,
+				      u32 (*read)(struct intel_display *display, i915_reg_t reg),
+				      u32 *out_value, bool is_atomic)
+{
+	int ret = -EINVAL;
+
+	if (fast_timeout_us)
+		ret = __intel_de_wait_for_register(display, reg, mask, value,
+						   fast_timeout_us, read,
+						   out_value, is_atomic);
+
+	if (ret && slow_timeout_us)
+		ret = __intel_de_wait_for_register(display, reg, mask, value,
+						   slow_timeout_us, read,
+						   out_value, is_atomic);
+
+	return ret;
+}
+
 int intel_de_wait_us(struct intel_display *display, i915_reg_t reg,
 		     u32 mask, u32 value, unsigned int timeout_us,
 		     u32 *out_value)
@@ -15,8 +90,10 @@ int intel_de_wait_us(struct intel_display *display, i915_reg_t reg,
 
 	intel_dmc_wl_get(display, reg);
 
-	ret = __intel_wait_for_register(__to_uncore(display), reg, mask,
-					value, timeout_us, 0, out_value);
+	ret = intel_de_wait_for_register(display, reg, mask, value,
+					 timeout_us, 0,
+					 intel_de_read,
+					 out_value, false);
 
 	intel_dmc_wl_put(display, reg);
 
@@ -31,8 +108,10 @@ int intel_de_wait_ms(struct intel_display *display, i915_reg_t reg,
 
 	intel_dmc_wl_get(display, reg);
 
-	ret = __intel_wait_for_register(__to_uncore(display), reg, mask,
-					value, 2, timeout_ms, out_value);
+	ret = intel_de_wait_for_register(display, reg, mask, value,
+					 2, timeout_ms * 1000,
+					 intel_de_read,
+					 out_value, false);
 
 	intel_dmc_wl_put(display, reg);
 
@@ -43,16 +122,20 @@ int intel_de_wait_fw_ms(struct intel_display *display, i915_reg_t reg,
 			u32 mask, u32 value, unsigned int timeout_ms,
 			u32 *out_value)
 {
-	return __intel_wait_for_register_fw(__to_uncore(display), reg, mask,
-					    value, 2, timeout_ms, out_value);
+	return intel_de_wait_for_register(display, reg, mask, value,
+					  2, timeout_ms * 1000,
+					  intel_de_read_fw,
+					  out_value, false);
 }
 
 int intel_de_wait_fw_us_atomic(struct intel_display *display, i915_reg_t reg,
 			       u32 mask, u32 value, unsigned int timeout_us,
 			       u32 *out_value)
 {
-	return __intel_wait_for_register_fw(__to_uncore(display), reg, mask,
-					    value, timeout_us, 0, out_value);
+	return intel_de_wait_for_register(display, reg, mask, value,
+					  timeout_us, 0,
+					  intel_de_read_fw,
+					  out_value, true);
 }
 
 int intel_de_wait_for_set_us(struct intel_display *display, i915_reg_t reg,
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h b/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
index a8cfd65119e0..08d7ab933672 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
@@ -98,37 +98,6 @@ static inline u32 intel_uncore_rmw(struct intel_uncore *uncore,
 	return xe_mmio_rmw32(__compat_uncore_to_mmio(uncore), reg, clear, set);
 }
 
-static inline int
-__intel_wait_for_register(struct intel_uncore *uncore, i915_reg_t i915_reg,
-			  u32 mask, u32 value, unsigned int fast_timeout_us,
-			  unsigned int slow_timeout_ms, u32 *out_value)
-{
-	struct xe_reg reg = XE_REG(i915_mmio_reg_offset(i915_reg));
-	bool atomic;
-
-	/*
-	 * Replicate the behavior from i915 here, in which sleep is not
-	 * performed if slow_timeout_ms == 0. This is necessary because
-	 * of some paths in display code where waits are done in atomic
-	 * context.
-	 */
-	atomic = !slow_timeout_ms && fast_timeout_us > 0;
-
-	return xe_mmio_wait32(__compat_uncore_to_mmio(uncore), reg, mask, value,
-			      fast_timeout_us + 1000 * slow_timeout_ms,
-			      out_value, atomic);
-}
-
-static inline int
-__intel_wait_for_register_fw(struct intel_uncore *uncore, i915_reg_t i915_reg,
-			     u32 mask, u32 value, unsigned int fast_timeout_us,
-			     unsigned int slow_timeout_ms, u32 *out_value)
-{
-	return __intel_wait_for_register(uncore, i915_reg, mask, value,
-					 fast_timeout_us, slow_timeout_ms,
-					 out_value);
-}
-
 static inline u32 intel_uncore_read_fw(struct intel_uncore *uncore,
 				       i915_reg_t i915_reg)
 {
-- 
2.52.0

