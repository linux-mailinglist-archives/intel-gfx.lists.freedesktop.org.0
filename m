Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ECC389A59F
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Apr 2024 22:26:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7252910E99C;
	Fri,  5 Apr 2024 20:26:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jG/FaJ6q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24EA910E99C
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Apr 2024 20:26:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712348792; x=1743884792;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=C5a71T20BhCqIWXBRW4Dqe2PZ4fIggkdLwk9ANfmwrs=;
 b=jG/FaJ6qxUVIgtuRiDUAB5fnv/D4oyAVqKxXgh5PCJN7/Qj96OdOeLDY
 rHhTIrERUIKRx0fJwTZkg0XFDALPZ3W21/KXeiCM2nf2PsY4F19JXEcFs
 pH+ECqhQrW4VHqnucL2xtQZRW0PBaVZCbgarszBUmWtH4aCjAZPSPEzKJ
 R4jWcm6qApXcZS7109AqGXeQoyElCcldEzQR9Cv+Fq2VbZXQp0LiRINPc
 xafpaaK8vk7cHhtjkq+g9ua5lacmkZin4IGXeurWdGT6VaWemSP2PQngM
 FPhpM8HMqv+6rXC/asq5drL3GIvrdfxqiI0dTT8cy7DE6M9CZu7VZQbw8 g==;
X-CSE-ConnectionGUID: vnibA59/SnuSjKUbgLujJg==
X-CSE-MsgGUID: 5zRsuXd8RQONU+gB1phbVA==
X-IronPort-AV: E=McAfee;i="6600,9927,11035"; a="33097975"
X-IronPort-AV: E=Sophos;i="6.07,182,1708416000"; d="scan'208";a="33097975"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 13:26:31 -0700
X-CSE-ConnectionGUID: vWR4U1NFS+G6a4xYluUwqg==
X-CSE-MsgGUID: gHaAcVbtTiiwgaciv5fqPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,182,1708416000"; d="scan'208";a="19343486"
Received: from dtorrice-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.41.202])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 13:26:29 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Kees Cook <keescook@chromium.org>
Subject: [PATCH] drm/i915: use check_add_overflow() and drop local variants
Date: Fri,  5 Apr 2024 23:26:25 +0300
Message-Id: <20240405202625.2525671-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
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

Prefer common check_add_overflow() from overflow.h over the locally
rolled versions of it. While check_add_overflow() does require a
variable to assign to, unlike add_overflows_t(), it's still better than
having multiple versions around.

Cc: Kees Cook <keescook@chromium.org>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c |  6 +++---
 drivers/gpu/drm/i915/i915_utils.h       | 14 --------------
 2 files changed, 3 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 3ea6470d6d92..86b443433e8b 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -1106,7 +1106,7 @@ static int intel_fb_offset_to_xy(int *x, int *y,
 {
 	struct drm_i915_private *i915 = to_i915(fb->dev);
 	unsigned int height;
-	u32 alignment;
+	u32 alignment, unused;
 
 	if (DISPLAY_VER(i915) >= 12 &&
 	    !intel_fb_needs_pot_stride_remap(to_intel_framebuffer(fb)) &&
@@ -1128,8 +1128,8 @@ static int intel_fb_offset_to_xy(int *x, int *y,
 	height = ALIGN(height, intel_tile_height(fb, color_plane));
 
 	/* Catch potential overflows early */
-	if (add_overflows_t(u32, mul_u32_u32(height, fb->pitches[color_plane]),
-			    fb->offsets[color_plane])) {
+	if (check_add_overflow(mul_u32_u32(height, fb->pitches[color_plane]),
+			       fb->offsets[color_plane], &unused)) {
 		drm_dbg_kms(&i915->drm,
 			    "Bad offset 0x%08x or pitch %d for color plane %d\n",
 			    fb->offsets[color_plane], fb->pitches[color_plane],
diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
index b45ef0560611..06ec6ceb61d5 100644
--- a/drivers/gpu/drm/i915/i915_utils.h
+++ b/drivers/gpu/drm/i915/i915_utils.h
@@ -73,20 +73,6 @@ bool i915_error_injected(void);
 	__i915_printk(i915, i915_error_injected() ? KERN_DEBUG : KERN_ERR, \
 		      fmt, ##__VA_ARGS__)
 
-#if defined(GCC_VERSION) && GCC_VERSION >= 70000
-#define add_overflows_t(T, A, B) \
-	__builtin_add_overflow_p((A), (B), (T)0)
-#else
-#define add_overflows_t(T, A, B) ({ \
-	typeof(A) a = (A); \
-	typeof(B) b = (B); \
-	(T)(a + b) < a; \
-})
-#endif
-
-#define add_overflows(A, B) \
-	add_overflows_t(typeof((A) + (B)), (A), (B))
-
 #define range_overflows(start, size, max) ({ \
 	typeof(start) start__ = (start); \
 	typeof(size) size__ = (size); \
-- 
2.39.2

