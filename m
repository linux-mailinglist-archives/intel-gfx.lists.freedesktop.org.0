Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A62A8AE7F7F
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jun 2025 12:34:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B789710E6DF;
	Wed, 25 Jun 2025 10:33:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LTAkN+r4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93E6F10E6DD;
 Wed, 25 Jun 2025 10:33:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750847638; x=1782383638;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Q1EbZCpmlqYzErGxyK833Hs+CqSv3PktjbriKOa8I3o=;
 b=LTAkN+r4B92B4+XSXZCrDTyez8V4/5V2NIJKh1OCvny9MUAzgkYArlrg
 5Y2hi99z7OsmZcFM63NXYA6HRoTZQxSZdIBMFzlzdBSd1G2Yu1c1Q9zZ0
 aCRXnKvYk4LhAn5Jwnk6VjsUeCeyMRPtsEXlpI75V7twzxSs56YsGzJyO
 fZ0XC1wRkHMJoY+15KptA4zDVLMvfkiWo0BXIwgW50jdr6NwQPUI25nxi
 kLyy1eISktTEzh6Z9GAkthxBn7hn3lxSvzcRa8/vlbpDSHZsGB2SgpVH7
 BoRk1zKVDxcmVxZUyT/3kRg3Ac+455rK81IArKJZYVwMWHG1UkfDPUIry g==;
X-CSE-ConnectionGUID: Z1c24/QNRbqGLtLcE3Xaxw==
X-CSE-MsgGUID: Nhb8Vzo/Ts6X9kjFWP2UEA==
X-IronPort-AV: E=McAfee;i="6800,10657,11474"; a="78537667"
X-IronPort-AV: E=Sophos;i="6.16,264,1744095600"; d="scan'208";a="78537667"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 03:33:58 -0700
X-CSE-ConnectionGUID: PqoU2GESR8yXVlvmsTsaZg==
X-CSE-MsgGUID: /ZyKa6f8TNOeuDwThew4hw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,264,1744095600"; d="scan'208";a="151936741"
Received: from monicael-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.78])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 03:33:56 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	imre.deak@intel.com
Subject: [CI v2 16/16] drm/i915/cdclk: make struct intel_cdclk_state opaque
Date: Wed, 25 Jun 2025 13:32:34 +0300
Message-Id: <2b58c52e8cbcb66a48ecd4a1453e49dc7bd66289.1750847509.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1750847509.git.jani.nikula@intel.com>
References: <cover.1750847509.git.jani.nikula@intel.com>
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

Reviewed-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 36 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_cdclk.h | 41 ++--------------------
 2 files changed, 38 insertions(+), 39 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 588d776e8624..228aa64c1349 100644
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
index 07f8b184b5fe..cacee598af0e 100644
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

