Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D3B1C4854F
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Nov 2025 18:29:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFAC010E4A3;
	Mon, 10 Nov 2025 17:29:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DGQxrTam";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0C3C10E4A3;
 Mon, 10 Nov 2025 17:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762795740; x=1794331740;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nXYczxJP1ROGuYmI1ncxjbr5fozjiexbSPYj+QUePkI=;
 b=DGQxrTamH7atVFW6uXW0w87DN342u1ysqR0HIf5L5tsZj8iEquvuM7Mv
 XWzMWu1aP8zN9mrCxBVlup3+AaR5BVlALMs15WVWKwSuQCOjpfy9a2Va9
 c3jKasBYLLnm5kHeQ/j4mrrnC/gLdIJfRk6FYnMXH7qcDrevfequDt4ql
 Tsgwl3pdiyJ5SwG5RW4XDr7d2L30nnBZUPbhhEHbVfVMaIgvoREDkd2Vu
 Ln8HhhxNq87fBWaqGS3dKFMOk31i4PU1DrMgFTg3xwvrNxpEPfmMPiL/J
 ERQLRrvRwU9FxkY28QWu6AQPUHWaBD8NpuoqRc0IeDxY/tUmQTsIWYQiG A==;
X-CSE-ConnectionGUID: ZUwx21+vTtiJ7b3BP8VCDQ==
X-CSE-MsgGUID: wcg6aPMvTbWjXMTbjWmqWg==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="64551597"
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; d="scan'208";a="64551597"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 09:29:00 -0800
X-CSE-ConnectionGUID: VkxI7+9SSD2LuaosNQOKZA==
X-CSE-MsgGUID: 2IToial6SxK6F/ryreFkWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; d="scan'208";a="225985953"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.30])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 09:28:59 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 14/16] drm/i915/de: Replace
 __intel_de_wait_for_register_nowl() with intel_de_wait_fw_us_atomic()
Date: Mon, 10 Nov 2025 19:27:53 +0200
Message-ID: <20251110172756.2132-15-ville.syrjala@linux.intel.com>
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

Nuke the remaining _nowl() stuff from the wakelock code in the
form of __intel_de_wait_for_register_nowl(), and replace it with
intel_de_wait_fw_us_atomic() that uses the low level _fw() register
accessors on line with the rest of the code.

No change in behaviour since wakelocks are only supported on xe,
and xe doesn't have uncore.lock nor unclaimed register detection
stuff.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_de.h     | 19 +++++++++----------
 drivers/gpu/drm/i915/display/intel_dmc_wl.c | 14 +++++++-------
 2 files changed, 16 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i915/display/intel_de.h
index 655867ea76b8..a7ce3b875e06 100644
--- a/drivers/gpu/drm/i915/display/intel_de.h
+++ b/drivers/gpu/drm/i915/display/intel_de.h
@@ -97,16 +97,6 @@ intel_de_rmw(struct intel_display *display, i915_reg_t reg, u32 clear, u32 set)
 	return val;
 }
 
-static inline int
-__intel_de_wait_for_register_atomic_nowl(struct intel_display *display,
-					 i915_reg_t reg,
-					 u32 mask, u32 value,
-					 unsigned int fast_timeout_us)
-{
-	return __intel_wait_for_register(__to_uncore(display), reg, mask,
-					 value, fast_timeout_us, 0, NULL);
-}
-
 static inline int
 intel_de_wait_us(struct intel_display *display, i915_reg_t reg,
 		 u32 mask, u32 value, unsigned int timeout_us,
@@ -150,6 +140,15 @@ intel_de_wait_fw_ms(struct intel_display *display, i915_reg_t reg,
 					    value, 2, timeout_ms, out_value);
 }
 
+static inline int
+intel_de_wait_fw_us_atomic(struct intel_display *display, i915_reg_t reg,
+			   u32 mask, u32 value, unsigned int timeout_us,
+			   u32 *out_value)
+{
+	return __intel_wait_for_register_fw(__to_uncore(display), reg, mask,
+					    value, timeout_us, 0, out_value);
+}
+
 static inline int
 intel_de_wait_for_set_us(struct intel_display *display, i915_reg_t reg,
 			 u32 mask, unsigned int timeout_us)
diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
index 869beb6f280d..73a3101514f3 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
@@ -181,9 +181,9 @@ static void intel_dmc_wl_work(struct work_struct *work)
 
 	intel_de_rmw_fw(display, DMC_WAKELOCK1_CTL, DMC_WAKELOCK_CTL_REQ, 0);
 
-	if (__intel_de_wait_for_register_atomic_nowl(display, DMC_WAKELOCK1_CTL,
-						     DMC_WAKELOCK_CTL_ACK, 0,
-						     DMC_WAKELOCK_CTL_TIMEOUT_US)) {
+	if (intel_de_wait_fw_us_atomic(display, DMC_WAKELOCK1_CTL,
+				       DMC_WAKELOCK_CTL_ACK, 0,
+				       DMC_WAKELOCK_CTL_TIMEOUT_US, NULL)) {
 		WARN_RATELIMIT(1, "DMC wakelock release timed out");
 		goto out_unlock;
 	}
@@ -213,10 +213,10 @@ static void __intel_dmc_wl_take(struct intel_display *display)
 	 * We need to use the atomic variant of the waiting routine
 	 * because the DMC wakelock is also taken in atomic context.
 	 */
-	if (__intel_de_wait_for_register_atomic_nowl(display, DMC_WAKELOCK1_CTL,
-						     DMC_WAKELOCK_CTL_ACK,
-						     DMC_WAKELOCK_CTL_ACK,
-						     DMC_WAKELOCK_CTL_TIMEOUT_US)) {
+	if (intel_de_wait_fw_us_atomic(display, DMC_WAKELOCK1_CTL,
+				       DMC_WAKELOCK_CTL_ACK,
+				       DMC_WAKELOCK_CTL_ACK,
+				       DMC_WAKELOCK_CTL_TIMEOUT_US, NULL)) {
 		WARN_RATELIMIT(1, "DMC wakelock ack timed out");
 		return;
 	}
-- 
2.49.1

