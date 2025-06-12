Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B8F9AD6FE4
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jun 2025 14:13:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 362E210E812;
	Thu, 12 Jun 2025 12:13:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lRFttEkR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A8A010E80F;
 Thu, 12 Jun 2025 12:13:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749730414; x=1781266414;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0qcv4sPad6jJf8guppwGtdDnzVsLFk882gyx+Eh7u8I=;
 b=lRFttEkREl6co7vlRCEICCtZMeKNkCejOkEnbl9f4fjCLpHuA54XkqNV
 xt4OI/IegQvq0kWUuyTlwqSOsQbVOjVDvd5LAjauC6PTbINEs/vj1YwtS
 3fbGJ4XhXemJdZerT1o27HQdZSfi3Dji16gli0T90phszgEVoAgd8KH+c
 jXGhvTfsAgIodse/cysKNscNC/oDnkS3mhIc4oJm/cwJQp06PZamBhCPW
 YJd7u9d5pTCsjpdeTE6xwNqGEn2vKkTj0f0fFx4d6KBr4k3ZQCrnNE1l0
 XFHOYhDJI/2/LrGBZd8+1DhFTFoklHcBmTIv2K/Sag1bOAdJYtD0/KRo8 Q==;
X-CSE-ConnectionGUID: HzZo4k96SMOCbDTtl9OyDA==
X-CSE-MsgGUID: tYCnmkjcT6WnEBUvDO+7dw==
X-IronPort-AV: E=McAfee;i="6800,10657,11461"; a="51779460"
X-IronPort-AV: E=Sophos;i="6.16,230,1744095600"; d="scan'208";a="51779460"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 05:13:34 -0700
X-CSE-ConnectionGUID: HmO7LxddSOWeCiACAStPjA==
X-CSE-MsgGUID: nKZs2vklRPeyq0AVZFbVSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,230,1744095600"; d="scan'208";a="152267590"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.242])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 05:13:33 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 16/16] drm/i915/cdclk: make struct intel_cdclk_state opaque
Date: Thu, 12 Jun 2025 15:12:11 +0300
Message-Id: <1ce76651d9b795e7c8ca3431af2271c4bf16f0f1.1749730224.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1749730224.git.jani.nikula@intel.com>
References: <cover.1749730224.git.jani.nikula@intel.com>
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

With all the code touching struct intel_cdclk_state moved inside
intel_cdclk.c, we move the struct definition there too, and make the
type opaque. This nicely reduces includes from intel_cdclk.h.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 36 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_cdclk.h | 41 ++--------------------
 2 files changed, 38 insertions(+), 39 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 2e8abf237bd1..ad7a6a53a082 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -114,6 +114,42 @@
  * dividers can be programmed correctly.
  */
 
+struct intel_cdclk_state {
+	struct intel_global_state base;
+
+	/*
+	 * Logical configuration of cdclk (used for all scaling,
+	 * watermark, etc. calculations and checks). This is
+	 * computed as if all enabled crtcs were active.
+	 */
+	struct intel_cdclk_config logical;
+
+	/*
+	 * Actual configuration of cdclk, can be different from the
+	 * logical configuration only when all crtc's are DPMS off.
+	 */
+	struct intel_cdclk_config actual;
+
+	/* minimum acceptable cdclk to satisfy bandwidth requirements */
+	int bw_min_cdclk;
+	/* minimum acceptable cdclk for each pipe */
+	int min_cdclk[I915_MAX_PIPES];
+	/* minimum acceptable voltage level for each pipe */
+	u8 min_voltage_level[I915_MAX_PIPES];
+
+	/* pipe to which cd2x update is synchronized */
+	enum pipe pipe;
+
+	/* forced minimum cdclk for glk+ audio w/a */
+	int force_min_cdclk;
+
+	/* bitmask of active pipes */
+	u8 active_pipes;
+
+	/* update cdclk with pipes disabled */
+	bool disable_pipes;
+};
+
 struct intel_cdclk_funcs {
 	void (*get_cdclk)(struct intel_display *display,
 			  struct intel_cdclk_config *cdclk_config);
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
index f38605c6ab72..4a2821bf6c65 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
@@ -8,10 +8,9 @@
 
 #include <linux/types.h>
 
-#include "intel_display_limits.h"
-#include "intel_global_state.h"
-
+enum pipe;
 struct intel_atomic_state;
+struct intel_cdclk_state;
 struct intel_crtc;
 struct intel_crtc_state;
 struct intel_display;
@@ -23,42 +22,6 @@ struct intel_cdclk_config {
 	bool joined_mbus;
 };
 
-struct intel_cdclk_state {
-	struct intel_global_state base;
-
-	/*
-	 * Logical configuration of cdclk (used for all scaling,
-	 * watermark, etc. calculations and checks). This is
-	 * computed as if all enabled crtcs were active.
-	 */
-	struct intel_cdclk_config logical;
-
-	/*
-	 * Actual configuration of cdclk, can be different from the
-	 * logical configuration only when all crtc's are DPMS off.
-	 */
-	struct intel_cdclk_config actual;
-
-	/* minimum acceptable cdclk to satisfy bandwidth requirements */
-	int bw_min_cdclk;
-	/* minimum acceptable cdclk for each pipe */
-	int min_cdclk[I915_MAX_PIPES];
-	/* minimum acceptable voltage level for each pipe */
-	u8 min_voltage_level[I915_MAX_PIPES];
-
-	/* pipe to which cd2x update is synchronized */
-	enum pipe pipe;
-
-	/* forced minimum cdclk for glk+ audio w/a */
-	int force_min_cdclk;
-
-	/* bitmask of active pipes */
-	u8 active_pipes;
-
-	/* update cdclk with pipes disabled */
-	bool disable_pipes;
-};
-
 void intel_cdclk_init_hw(struct intel_display *display);
 void intel_cdclk_uninit_hw(struct intel_display *display);
 void intel_init_cdclk_hooks(struct intel_display *display);
-- 
2.39.5

