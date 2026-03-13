Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EO2DOLjws2nYdgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 12:10:48 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B316281F83
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 12:10:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D951010EB88;
	Fri, 13 Mar 2026 11:10:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y6p/ir+P";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7B0010EB84;
 Fri, 13 Mar 2026 11:10:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773400245; x=1804936245;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=k/rN6TYzorWCpYGJCHmOtkBfduUgjFxzdy8C8VukrMo=;
 b=Y6p/ir+PgOH7uAS9Xh4dFUFlmyDh6moUsWOZG1IKTbl7OM7N2jXIvwWY
 T6MHNvUePLy8XFXwjW3fljhIcj1Nzm61TwkBGJcvroOvOsaQy9N7QKrW+
 6pQhQyQptpYAjvQ1gXeUs9MEUewUiYJlwhMY1937W9JFT/2BpxqrWRdEQ
 zo+TS1GW4Wu2+7z9XjOdcXA1t0o09bwtSqVJ/EnsT+XVqgBo/O9ocdxJd
 aEPzx8toPMY45E0nu4okH1syxy2U6G2tg3JLZbkykZE5YW6Qh9aU8cikv
 OL7q+KFof3nX9wYUCpd/xyal1cj87GJP4eTJgaoVoYwA/+hXoHDVaCOb6 Q==;
X-CSE-ConnectionGUID: RyM7HII4QM+mBhohK7dgew==
X-CSE-MsgGUID: np22ItYyTeKuFfDkA62d9w==
X-IronPort-AV: E=McAfee;i="6800,10657,11727"; a="78396165"
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="78396165"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 04:10:45 -0700
X-CSE-ConnectionGUID: PGOsDvuwTeOalVKC8qKnPA==
X-CSE-MsgGUID: APEATFyHQhyFfYECly9KnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="251649949"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.21])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 04:10:44 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 3/3] drm/i915/de: Implement register polling in the display
 code
Date: Fri, 13 Mar 2026 13:10:28 +0200
Message-ID: <20260313111028.25159-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260313111028.25159-1-ville.syrjala@linux.intel.com>
References: <20260313111028.25159-1-ville.syrjala@linux.intel.com>
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,linux.intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 5B316281F83
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

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_de.c       | 99 +++++++++++++++++--
 .../drm/xe/compat-i915-headers/intel_uncore.h | 31 ------
 2 files changed, 91 insertions(+), 39 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_de.c b/drivers/gpu/drm/i915/display/intel_de.c
index fce92535bd6a..6cbe50f3e2b4 100644
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
+	int ret;
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

