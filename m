Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 296F7AE7F5E
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jun 2025 12:32:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C86A10E6CE;
	Wed, 25 Jun 2025 10:32:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q+kOtmeV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D970E10E6C9;
 Wed, 25 Jun 2025 10:32:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750847575; x=1782383575;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OK7FOIxTXFDJMlfV2+s2qZE05xSbgfypR04vFhHJ8ys=;
 b=Q+kOtmeVeGWcoEXiJsLPndOJIE396Pp6HMrqClEBnFeT82YHXlZNxrVj
 skw0TsCsDhrsZy9fWukf78a4YsuiZpzO9pTOxc8R9qpkVfVwZ/fsWs8jk
 Whhjfos/BDIFNTrlpPsiNDZodufYfVqVSvyOuQ+8H39hfgFc3uNGv4HBP
 AZyBH0c/Gy6hJviV05OCOgBheyKQjXOybXxQqdPC2bmSgcBnSysXBPPLB
 9icDXfrVNeCE7Yd7RynTWpmVKA7Qrzr95L4rrLyzW7lfK9BRy5/bszDA/
 z6QB4N/uR3tin4U7dDjurFftEVvE4l0HALbdw46Ap5CeeBizyROWRTnul Q==;
X-CSE-ConnectionGUID: AvWoO5xjT1SFx+5gb2dWrw==
X-CSE-MsgGUID: AdR9BFXdQNyJ+UdxtNdMFg==
X-IronPort-AV: E=McAfee;i="6800,10657,11474"; a="53080422"
X-IronPort-AV: E=Sophos;i="6.16,264,1744095600"; d="scan'208";a="53080422"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 03:32:55 -0700
X-CSE-ConnectionGUID: m2ZB5CsIRaal7VoeTeu5lw==
X-CSE-MsgGUID: lYBG8xO5S1Ku+dC7cHNcTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,264,1744095600"; d="scan'208";a="152476447"
Received: from monicael-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.78])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 03:32:52 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	imre.deak@intel.com
Subject: [CI v2 03/16] drm/i915/wm: make struct intel_dbuf_state opaque type
Date: Wed, 25 Jun 2025 13:32:21 +0300
Message-Id: <83ae5f022a1d6d83c031e5c079b04dc739102565.1750847509.git.jani.nikula@intel.com>
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

With all the code touching struct intel_dbuf_state moved inside
skl_watermark.c, we move the struct definition there too, and make the
type opaque. This nicely reduces includes from skl_watermark.h.

Reviewed-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 12 ++++++++++++
 drivers/gpu/drm/i915/display/skl_watermark.h | 19 +++----------------
 2 files changed, 15 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 3574df9b1df7..8b8cf74e64a7 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -39,6 +39,18 @@
  */
 #define DSB_EXE_TIME 100
 
+struct intel_dbuf_state {
+	struct intel_global_state base;
+
+	struct skl_ddb_entry ddb[I915_MAX_PIPES];
+	unsigned int weight[I915_MAX_PIPES];
+	u8 slices[I915_MAX_PIPES];
+	u8 enabled_slices;
+	u8 active_pipes;
+	u8 mdclk_cdclk_ratio;
+	bool joined_mbus;
+};
+
 #define to_intel_dbuf_state(global_state) \
 	container_of_const((global_state), struct intel_dbuf_state, base)
 
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/drm/i915/display/skl_watermark.h
index a1993ded034a..87d052b640b3 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.h
+++ b/drivers/gpu/drm/i915/display/skl_watermark.h
@@ -8,17 +8,16 @@
 
 #include <linux/types.h>
 
-#include "intel_display_limits.h"
-#include "intel_global_state.h"
-#include "intel_wm_types.h"
-
+enum plane_id;
 struct intel_atomic_state;
 struct intel_bw_state;
 struct intel_crtc;
 struct intel_crtc_state;
+struct intel_dbuf_state;
 struct intel_display;
 struct intel_plane;
 struct intel_plane_state;
+struct skl_ddb_entry;
 struct skl_pipe_wm;
 struct skl_wm_level;
 
@@ -63,18 +62,6 @@ unsigned int skl_plane_relative_data_rate(const struct intel_crtc_state *crtc_st
 					  struct intel_plane *plane, int width,
 					  int height, int cpp);
 
-struct intel_dbuf_state {
-	struct intel_global_state base;
-
-	struct skl_ddb_entry ddb[I915_MAX_PIPES];
-	unsigned int weight[I915_MAX_PIPES];
-	u8 slices[I915_MAX_PIPES];
-	u8 enabled_slices;
-	u8 active_pipes;
-	u8 mdclk_cdclk_ratio;
-	bool joined_mbus;
-};
-
 struct intel_dbuf_state *
 intel_atomic_get_dbuf_state(struct intel_atomic_state *state);
 
-- 
2.39.5

